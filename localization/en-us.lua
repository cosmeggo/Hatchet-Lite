return {
    descriptions = { -- Backs start below
        Back = {
            b_hatchl_holy = {
                name = "Holy Deck",
                text = {
                    "{C:green}Sephirot{} cards may",
                    "appear in the shop,",
                    "start with a {C:green}Kether{} card"
                },
            },
        }, -- Blinds start below
        Blind = {
            bl_hatchl_axe = {
                name = "The Axe",
                text = {
                    "Destroy first played card",
                    "after every played hand"
                },
            },
            bl_hatchl_sack = {
                name = "The Sack",
                text = {
                    "Downgrade scored",
                    "cards by rank"
                },
            },
        }, -- Enhancements start below
        Enhanced = {
            m_hatchl_sulfur = {
                name = "Sulfur",
                text = {
                    "Permanently gain {C:mult}+1{}",
                    "Mult when scored"
                },
            },
            m_hatchl_mercury = {
                name = "Mercury",
                text = {
                    "Enhanced card gives",
                    "between {C:blue}+0{} to {C:blue}+75{}",
                    "Chips when scored"
                },
            },
            m_hatchl_salt = {
                name = "Salt",
                text = {
                    "Enhanced card has a",
                    "{C:green}#1# in #2#{} chance",
                    "to {C:attention}retrigger{} twice",
                    "when scored"
                },
            },
        },
        Joker = {
            j_hatchl_hatchet = {
                name = "Hatchet",
                text = {
                    {
                        "{X:red,C:white}X#1#{} Mult on",
                        "{C:attention}first hand of round{}",
                    },
                    {
                        "{C:red}Destroy{} played cards"
                    }
                },
            },
            j_hatchl_blueshoes = {
                name = "Blue Shoes",
                text = {
                    "{C:blue}+#1#{} Chips",
                    "{C:blue}-#2#{} Chips per",
                    "{C:planet}poker hand{} upgrade"
                },
            },
            j_hatchl_savinggrace = {
                name = "Saving Grace",
                text = {
                    "Upgrade the last played {C:attention}poker hand{}",
                    "by {C:attention}#1#{} levels in {C:attention}final hand{} of round",
                    "{C:red}Self destructs{}"
                },
            },
            j_hatchl_diaryentry = {
                name = "Diary Entry",
                text = {
                    "{C:blue}Common Jokers{} each give {C:blue}50{} Chips"
                },
            },
            j_hatchl_interstice = {
                name = "Interstice",
                text = {
                    "Sell this card to",
                    "halve {C:attention}Blind{} size"
                },
            },
            j_hatchl_lossleader = {
                name = "Loss Leader",
                text = {
                    "All cards and packs in",
                    "shop are {C:attention}25%{} off"
                },
            },
            j_hatchl_dakimakura = {
                name = "Dakimakura",
                text = {
                    "If played hand contains a {C:attention}Flush{}",
                    "give each card a {C:attention}random{} suit"
                },
            },
            j_hatchl_riskyrevolver = {
                name = "Risky Revolver",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "{C:red}destroy{} a random {C:attention}Joker{}",
                    "Else, give {C:white,X:mult}X#3#{} Mult"
                },
            },
            j_hatchl_ninelives = {
                name = "Nine Lives",
                text = {
                    "Every {C:attention}9{} held in hand",
                    "gives {C:red}+#1#{} Mult"
                },
            },
            j_hatchl_swindler = {
                name = "Swindler",
                text = {
                    "{C:red}+#1#{} Mult",
                    "{C:money}-#2#{} {C:attention}sell value{}"
                },
            },
            j_hatchl_snakeeyes = {
                name = "Snake Eyes",
                text = {
                    "All {C:attention}listed {C:green,E:1}denominators",
                    "are set to {C:attention}2"
                },
            },
            j_hatchl_staircase = {
                name = "Staircase",
                text = {
                    "Every played {C:attention}face card{}",
                    "has a {C:green}#1# in #2#{} chance",
                    "to create a {C:green}Sephirot{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_hatchl_wildside = {
                name = "Wildside",
                text = {
                    "Retrigger each",
                    "played {C:attention}Wild Card{}"
                },
            },
            j_hatchl_fourleaf = {
                name = "Four-Leaf Clover",
                text = {
                    "{C:attention}Four of a Kinds",
                    "can be made with",
                    "{C:attention}Three of a Kinds"
                },
            },
            j_hatchl_foolsgold = {
                name = "Fool's Gold",
                text = {
                    "Played {C:attention}Gold{} cards",
                    "have a {C:green}#1# in #2#{} chance to",
                    "create a {C:tarot}Fool{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            j_hatchl_topsyturvy = {
                name = "Topsy Turvy",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "{C:tarot}swap{} {C:blue}Chips{} and {C:mult}Mult{}"
                },
            },
            j_hatchl_limepie = {
                name = "Lime Pie",
                text = {
                    "Earn {C:money}$#1#{} at end of round",
                    "Payout {C:attention}reduced{} by {C:money}$#2#{}",
                    "per discarded hand"
                },
            },
            j_hatchl_emptycrown = {
                name = "Empty Crown",
                text = {
                    "At the end of every round,",
                    "create a {C:green}Kether{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_hatchl_royalguard = {
                name = "Royal Guard",
                text = {
                    "{C:red}+1{} Mult for every",
                    "{C:attention}face card{} in your deck",
                    "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
                },
            },
            j_hatchl_meteorite = {
                name = "Meteorite",
                text = {
                    "Sell this card to create",
                    "a free {C:attention}Meteor Tag{}"
                },
            },
            j_hatchl_bonusround = {
                name = "Bonus Round",
                text = {
                    "Played {C:attention}Bonus Cards{}",
                    "give {C:money}$#1#{} when scored"
                },
            },
            j_hatchl_textile = {
                name = "Textile Joker",
                text = {
                    "Gain {C:mult}+#2#{} Mult if {C:attention}Blind{}",
                    "is cleared in {C:attention}one{} hand",
                    "{C:inactive}(Currently {C:mult}+#1#{}{C:inactive} Mult){}"
                },
            },
            j_hatchl_medicine = {
                name = "Medicine Cabinet",
                text = {
                    "{C:white,X:mult}X#3#{} Mult in a {C:attention}Boss Blind{}",
                    "{C:green}#1# in #2#{} chance to expire",
                    "after a {C:attention}Boss Blind{}"
                },
            },
            j_hatchl_room202 = {
                name = "Room No. 202",
                text = {
                    "If played hand contains a {C:attention}#2#{}",
                    "add {C:attention}+1{} hand size, resets when",
                    "{C:attention}Boss Blind{} is defeated"
                },
            },
            j_hatchl_sourmilk = {
                name = "Soured Milk",
                text = {
                    "Lose {C:money}$#1#{} per round",
                    "If balance is below {C:money}-$#2#{}",
                    "this {C:attention}Joker{} spoils"
                },
            },
            j_hatchl_milkman = {
                name = "Milkman",
                text = {
                    "Gain {C:white,X:mult}X#1#{} Mult",
                    "per {C:attention}dollar{} below zero",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} Mult)"
                },
            },
            j_hatchl_finalace = {
                name = "Final Ace",
                text = {
                    "If {C:attention}scored hand{} contains",
                    "only one {C:attention}Ace{}, destroy it",
                    "and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently{} {C:mult}+#1#{} {C:inactive}Mult){}"
                },
            },
            j_hatchl_pleadeal = {
                name = "Plea Deal",
                text = {
                    "At the start of round",
                    "{C:red}discards{} are added",
                    "to {C:attention}hand size{}"
                },
            },
            j_hatchl_capbells = {
                name = "Cap and Bells",
                text = {
                    "{C:red}+1{} {C:attention}Booster Pack{} each round",
                },
            },
            j_hatchl_prion = {
                name = "Cap and Bells",
                text = {
                    "Discards have a {C:green}#1# in #2#{} chance",
                    "to {C:red}destroy{} the card"
                },
            },
        },
        Other = {
            p_hatchl_sephirot_normal_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatchl_sephirot_normal_2 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatchl_sephirot_jumbo_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
            p_hatchl_sephirot_mega_1 = {
                name = "Sephirot Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:green} Sephirot{} cards to",
                    "be used immediately",
                },
            },
        },
        hatchl_sephirot = {
            c_hatchl_kether = {
                name = "Kether",
                text = {
                    "Create a random",
                    "{C:green}Sephirot{} card",
                    "{C:inactive}(Must have room){}",
                },
            },
            c_hatchl_chokmah = {
                name = "Chokmah",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2# Cards{}",
                },
            },
            c_hatchl_binah = {
                name = "Binah",
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2# Cards{}",
                },
            },
            c_hatchl_chesed = {
                name = "Chesed",
                text = {
                    "Enhances {C:attention}3{}",
                    "selected cards to a",
                    "{C:green}random{} enhancement",
                },
            },
            c_hatchl_gevurah = {
                name = "Gevurah",
                text = {
                    "Creates a random",
                    "{C:dark_edition}Negative{} {C:attention}Joker{}",
                },
            },
            c_hatchl_tiferet = {
                name = "Tiferet",
                text = {
                    "Add a {C:green}random{} seal",
                    "to {C:attention}1{} selected",
                    "card in your hand",
                },
            },
            c_hatchl_netzach = {
                name = "Netzach",
                text = {
                    "Create a random",
                    "{C:spectral}Spectral{} card",
                    "{C:inactive}(Must have room){}",
                },
            },
            c_hatchl_hod = {
                name = "Hod",
                text = {
                    "Decreases rank of",
                    "up to {C:attention}#1#{} selected",
                    "cards by {C:attention}1",
                },
            },
            c_hatchl_yesod = {
                name = "Yesod",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2# Card{}",
                },
            },
        }
    }
}
