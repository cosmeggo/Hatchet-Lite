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
                    "after every played hand",
                },
            },
            bl_hatchl_sack = {
                name = "The Sack",
                text = {
                    "Downgrade scored",
                    "cards by rank",
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
                    "{C:red}Destroy{} played cards",
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
        },
    }
}