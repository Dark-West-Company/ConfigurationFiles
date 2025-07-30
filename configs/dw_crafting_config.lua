Config = {}
Config.Crafting = {}
Config.CraftPromptHandles = {}


-- Crafting Key
Config.Keys = {
    G = 0x760A9C6F
}

-- Restrict campfire usage to specific roles or set to 0 to allow any role
-- Example: { "butcher" }
-- set to 0 to allow any jobs, or like { "butcher" } to job restriction
Config.CampfireJobLock = 0

-- distance to interact with Locations and campfires
Config.Distances = {
    workbench = 1.5,
    locations = 2.5
}

-- TODO: REMOVE?
-- Craftable Locations
Config.Locations = {
    {
        name = 'Blackwater Crafting Station',
        id = 'blackwater',
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -872.222,
        y = -1390.924,
        z = 43.573,
        Blip = {
            enable = true,
            Hash = 1754365229
        },
        Categories = 0, -- set to 0 to allow all categories or like {"food"} to restrict
    }
}

-- Crafting Prop Location is resource intensive, turn this to false if you want to use less resources.
-- Disables/Enables Crafting Props
Config.CraftingPropsEnabled = true

-- Props for the player to craft at
-- List of porps you can use for crafting
-- "P_CAMPFIRECOMBINED01X","p_campfirefresh01x","p_fireplacelogs01x","p_woodstove01x","p_stove04x","p_campfire04x","p_campfire05x","p_campfire02x","p_campfirecombined02x","p_campfirecombined03x","p_kettle03x","p_campfirecombined04x", "P_CAMPFIRECOOK02X","P_CAMPFIRE_WIN2_01X","P_CRAFTINGPOT01X"
Config.CraftingProps = {
    {
        title = "Campfire",
        prop = { "P_CAMPFIRECOMBINED01X",
                "p_campfirefresh01x",
                "p_fireplacelogs01x",
                "p_campfire04x",
                "p_campfire05x",
                "p_campfire02x",
                "p_campfirecombined02x",
                "p_campfirecombined03x",
                "p_campfirecombined04x", 
                "P_CAMPFIRECOOK02X",
                "P_CAMPFIRE_WIN2_01X",
                "P_CRAFTINGPOT01X" 
            }
    },
    {
        title = "Oven",
        prop = {
            "p_furnace01x",
            "p_kettle03x",
            "p_stove04x",
            "p_woodstove01x",
        }
    },
    {
        title = "Forge",
        prop = {
            "p_forge01x",
        }
    }
}

-- TODO: Migrate to vorp-animations 
-- Animations config
Config.Animations = {
    ["dw_craft"] = { --Default Animation
        dict = "mech_inventory@crafting@fallbacks",
        name = "full_craft_and_stow",
        flag = 27,
        type = 'standard'
    },
    ["spindlecook"] = {
        dict = "amb_camp@world_camp_fire_cooking@male_d@wip_base",
        name = "wip_base",
        flag = 17,
        type = 'standard',
        prop = {
            model = 'p_stick04x',
            coords = {
                x = 0.2,
                y = 0.04,
                z = 0.12,
                xr = 170.0,
                yr = 50.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 's_meatbit_chunck_medium01x',
                coords = {
                    x = -0.30,
                    y = -0.08,
                    z = -0.30,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 70.0
                }
            }
        }
    },
    ["knifecooking"] = {
        dict = "amb_camp@world_player_fire_cook_knife@male_a@wip_base",
        name = "wip_base",
        flag = 17,
        type = 'standard',
        prop = {
            model = 'w_melee_knife06',
            coords = {
                x = -0.01,
                y = -0.02,
                z = 0.02,
                xr = 190.0,
                yr = 0.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 'p_redefleshymeat01xa',
                coords = {
                    x = 0.00,
                    y = 0.02,
                    z = -0.20,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 0.0
                }
            }
        }
    },
    ["campfire"] = {
        dict = "script_campfire@lighting_fire@male_male",
        name = "light_fire_b_p2_male_b",
        flag = 17,
        type = 'standard'
    }
}

-- Craftable item categories. ident and Config.crafting.Category must equal eachother.
Config.Categories = {
    {
        ident = 'basics',
        text = 'basics',
        Location = 0,
        Job = 0,
        Skill = "CraftingBasic"
    },
    {
        ident = 'food',
        text = 'Cooking',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingCooking"
    },
    {
        ident = 'brewing',
        text = 'Brewing',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingBrewing"
    },
    {
        ident = 'butchery',
        text = 'Butchery',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingButcher"
    },
    {
        ident = 'drugs',
        text = 'Drugs',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingDrugs"
    },
    {
        ident = 'medical',
        text = 'Medical',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingMedical"
    },
    {
        ident = 'survival',
        text = 'Survival',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingSurvival"
    },
    {
        ident = 'blacksmithing',
        text = 'Blacksmithing',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingBlacksmithing"
    },
    {
        ident = 'jewelry',
        text = 'Jewelry',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = 0,       -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingJewelsmithing"
    },
    {
        ident = 'magic',
        text = 'Dark Arts',
        Location = 0, -- set to 0 to allow any locations from Config.Locations
        Job = { "mage" },      -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Skill = "CraftingDrugs"
    },
}
