-- Hatchet
SMODS.Joker {
    key = "hatchet",
    config = { extra = { xmult = 2.5 } },
    pos = { x = 0, y = 0 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_played == 0 then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.after and G.GAME.current_round.hands_played == 0 then
            SMODS.destroy_cards(context.full_hand, nil, nil, true)
            return {
                message = "Felled!",
                colour = G.C.RED,
            }
        end
    end,
}

-- Blue Shoes
SMODS.Joker {
    key = "blueshoes",
    config = { extra = { chips = 200, chips_sub = 50, } },
    pos = { x = 1, y = 0 },
    cost = 7,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_sub } }
    end,

    calculate = function(self, card, context)
        if context.poker_hand_changed == true then
            if card.ability.extra.chips - card.ability.extra.chips_sub <= 0 then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_extinct_ex'),
                    colour = G.C.CHIPS
                }
            else
                card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_sub
                return {
                    message = localize { type = 'variable', key = 'a_chips_minus', vars = { card.ability.extra.chips_sub } },
                    colour = G.C.CHIPS
                }
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- Saving Grace
SMODS.Joker {
    key = "savinggrace",
    config = { extra = { levels = 2, } },
    pos = { x = 2, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.levels } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_left == 0 then
            SMODS.destroy_cards(card, nil, nil, true)
            return {
                level_up = card.ability.extra.levels,
                message = localize('k_level_up_ex')
            }
        end
    end
}

-- Diary Entry
SMODS.Joker {
    key = "diaryentry",
    config = { extra = { chips = 50, } },
    pos = { x = 3, y = 0 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,

    calculate = function(self, card, context)
        if context.other_joker and (context.other_joker.config.center.rarity == 1 or context.other_joker.config.center.rarity == "Common") then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- Interstice
SMODS.Joker {
    key = "interstice",
    config = { extra = {} },
    pos = { x = 4, y = 0 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    calculate = function(self, card, context)
        if context.selling_self then
            G.GAME.blind.chips = G.GAME.blind.chips / 2
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end
}

-- Loss Leader
SMODS.Joker {
    key = "lossleader",
    config = { extra = { percent = 25 } },
    pos = { x = 5, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent } }
    end,

    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.discount_percent = card.ability.extra.percent
                for _, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.discount_percent = 0
                for _, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end
}

-- Dakimakura
SMODS.Joker {
    key = "dakimakura",
    config = { extra = {} },
    pos = { x = 6, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Flush"]) then
            for i = 1, #context.full_hand do
                local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.15,
                    func = function()
                        target:flip()
                        play_sound("card1", percent)
                        target:juice_up(0.3, 0.3)
                        return true
                    end,
                }))
            end
            for i = 1, #context.full_hand do
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    func = function()
                        assert(SMODS.change_base(target, pseudorandom_element(SMODS.Suits, "edit_card_suit").key, nil))
                        return true
                    end,
                }))
            end
            for i = 1, #context.full_hand do
                local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.15,
                    func = function()
                        target:flip()
                        play_sound("card1", percent)
                        target:juice_up(0.3, 0.3)
                        return true
                    end,
                }))
            end
        end
    end,
}

-- Risky Revolver
SMODS.Joker {
    key = "riskyrevolver",
    config = { extra = { xmult = 3, odds = 6 } },
    pos = { x = 7, y = 0 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            'j_hatch_riskyrevolver')
        return { vars = { numerator, denominator, card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and SMODS.pseudorandom_probability(card, 'j_hatch_riskyrevolver', 1, card.ability.extra.odds) then
            local destructable_jokers = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] ~= card and not SMODS.is_eternal(G.jokers.cards[i], card) and not G.jokers.cards[i].getting_sliced then
                    destructable_jokers[#destructable_jokers + 1] =
                        G.jokers.cards[i]
                end
            end
            local joker_to_destroy = pseudorandom_element(destructable_jokers, 'j_hatch_riskyrevolver')

            if joker_to_destroy then
                joker_to_destroy.getting_sliced = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        (context.blueprint_card or card):juice_up(0.8, 0.8)
                        joker_to_destroy:start_dissolve({ G.C.RED }, nil, 1.6)
                        return true
                    end
                }))
            end
        else
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end
}

-- Nine Lives
SMODS.Joker {
    key = "ninelives",
    config = { extra = { mult = 9 } },
    pos = { x = 8, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round and context.other_card:get_id() == 9 then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED
                }
            else
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
}

-- Swindler Localisations (Code by LasagnaFelidae and Somethingcom515)

local oldcardsetsellvalue = Card.set_sell_value
function Card:set_sell_value()
    g = oldcardsetsellvalue(self)
    if self.config.center.key == 'j_hatchl_swindler' then
        self.sell_cost = -20
    end
    return g
end


-- Swindler
SMODS.Joker {
    key = "swindler",
    config = { extra = { mult = 20, price = 20 } },
    pos = { x = 9, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

-- Snake Eyes
SMODS.Joker {
    key = "snakeeyes",
    config = { extra = { denominator = 2 } },
    pos = { x = 0, y = 1 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    calculate = function(self, card, context)
        if context.mod_probability and not context.blueprint then
            return {
                denominator = 2
            }
        end
    end,
}

-- Staircase
SMODS.Joker {
    key = "staircase",
    config = { extra = { denominator = 2 } },
    pos = { x = 1, y = 1 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            'j_hatchl_staircase')
        return { vars = { card.ability.extra.n, new_numerator, new_denominator } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
            #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            if (context.other_card:is_face()) and SMODS.pseudorandom_probability(card, 'j_hatchl_staircase', 1, card.ability.extra.odds) then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                return {
                    extra = {
                        message = localize('k_plus_tarot'),
                        message_card = card,
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        set = 'hatchl_sephirot',
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            end
        end
    end
}

-- Four-Leaf Clover Localisations

local x_same_ref = get_X_same
function get_X_same(num, hand, or_more)
    if next(SMODS.find_card("j_hatchl_fourleaf")) and num == 4 then
        num = 3
    end
    return x_same_ref(num, hand, or_more)
end

-- Four-Leaf Clover
SMODS.Joker {
    key = "fourleaf",
    config = {
        extra = { type = 'Three of a Kind' }
    },
    pos = { x = 3, y = 1 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HLJokers',
}
