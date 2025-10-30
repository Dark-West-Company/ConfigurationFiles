Config = {}

Config.DevMode = false -- only for testing, not for the live server

Config.Locale = 'en' -- select your language (en, de, fr, es)

--Webhook
Config.Logs         = false --enable or disable the webhook
Config.Discord      = false --if you use discord whitelist
Config.Webhook      = "https://discord.com/api/webhooks/"
Config.WebhookColor = 16711680 
Config.WebhookName         = "spooni_build_my_home" 
Config.WebhookLogo         = "https://via.placeholder.com/30x30" -- Header
Config.WebhookFooterLogo   = "https://via.placeholder.com/30x30" -- Footer
Config.WebhookAvatar       = "https://via.placeholder.com/30x30" -- Avatar


Config.Commands = {
    DeleteHouse = 'delHouse', -- command to delete the houses
    Housing = 'housing', -- command to manage the housing system
}
Config.CommandPerms = { 'admin', 'mod' }
Config.BuildingJob = false --  if you want to have a joblock {"job1", "job2"}
Config.NoTXAdmin = false -- if you have no txAdmin on your server
Config.Furniture = true -- if you want to furnish the houses
Config.Blip = true -- if you want a blip for the houses
Config.Dresser = true -- if you want to have a wardrobe in the houses
Config.Storage = true -- if you want to have a storage in the houses
Config.takeItemsFromStorage = false -- if you want to take items from storage (Vorp only but can be modified in sv_bridge.lua)
Config.Ledger = true -- if you want to have a ledger in the houses
Config.OnlyOwnerCanAccessLedger = true -- if you want only the owner to have access to the ledger
Config.TaxSystem = true -- if you want to have a tax for the houses
Config.DistanceBetweenHouses = 25.0 -- the minimum distance a new house must have before it can be built
Config.MaxHousesPerPlayer = 10 -- the maximum amount of houses a player may own
Config.KeyHolderRemoveWord = 'remove' -- the word that must be in the input field to confirm the removal of a key holder
Config.RentableHouseActionRadius = 200 -- the render distance in which you can interact with the house

Config.Housing = { -- NEW
    RentDays = 14, -- how long can the house be rented for
    FurnitureRadiusMax = 150.0, -- the radius in which you can place furniture for this house
    FurnitureLimit = 150, -- the maximum amount of furniture that can be placedaximum
}

Config.BlockedZones = {
    [1] = { -- St Denis
        coords = vector3(2605.814, -1263.41, 52.681),
        distance = 200.0,
    },
    [2] = { -- Rhodes
        coords = vector3(1331.761, -1309.36, 76.444),
        distance = 50.0,
    },
    [3] = { -- Blackwater
        coords = vector3(-801.510, -1293.28, 43.522),
        distance = 100.0,
    },
    [4] = { -- Valentine
        coords = vector3(-295.363, 750.4001, 117.95),
        distance = 50.0,
    },
    [5] = { -- Strawberry
        coords = vector3(-1799.77, -398.492, 152.55),
        distance = 50.0,
    },
    [6] = { -- Annesburg
        coords = vector3(2912.352, 1371.321, 46.675),
        distance = 100.0,
    },
    [7] = { -- Van Horn
        coords = vector3(2968.969, 526.4790, 44.078),
        distance = 50.0,
    },
    [8] = { -- Armadillo
        coords = vector3(-3676.72, -2605.03, -13.72),
        distance = 50.0,
    },
    [9] = { -- Tumbleweed
        coords = vector3(-5522.91, -2939.22, -1.980),
        distance = 50.0,
    },
}

Config.WhitelistedZones = {
    -- [1] = { -- St Denis
    --     coords = vector3(2605.814, -1263.41, 52.681),
    --     distance = 150.0,
    -- },
}

Config.HousePromptKeys = {
    ['toggle_lock'] = `INPUT_INTERACT_OPTION1`,   -- [G]
    ['furniture_placement'] = `INPUT_FRONTEND_LEFT`, -- [LEFT ARROW]
    ['add_key_holder'] = `INPUT_FRONTEND_UP`,     -- [UP ARROW]
    ['remove_key_holder'] = `INPUT_FRONTEND_DOWN`, -- [DOWN ARROW]
    ['transfer_house'] = `INPUT_FRONTEND_RIGHT`,  -- [RIGHT ARROW]
    ['open_storage'] = `INPUT_INTERACT_POS`,      -- [R]
    ['upgrade_house'] = `INPUT_INTERACT_OPTION1`, -- [G]
    ['place_dresser'] = `INPUT_INTERACT_OPTION1`, -- [G]
    ['remove_dresser'] = `INPUT_INTERACT_POS`, -- [R]
    ['place_storage'] = `INPUT_INTERACT_OPTION1`, -- [G]
    ['remove_storage'] = `INPUT_INTERACT_POS`, -- [R]
    ['open_dresser'] = `INPUT_INTERACT_OPTION1`, -- [G]
    ['ledger_check_prompt'] = `INPUT_FRONTEND_LEFT`, -- [G]
    ['furniture_removal'] = `INPUT_FRONTEND_RUP`, -- [LEFT CONTROL]
}

Config.PlacementPromptKeys = {
    ['rotate_-'] = 'INPUT_SELECT_NEXT_WEAPON',       -- [MOUSE SCROLL DOWN]
    ['rotate_+'] = 'INPUT_SELECT_PREV_WEAPON',       -- [MOUSE SCROLL UP]
    ['up_prompt'] = 'INPUT_FRONTEND_UP',             -- [UP ARROW]
    ['down_prompt'] = 'INPUT_FRONTEND_DOWN',         -- [DOWN ARROW]
    ['place_prompt'] = 'INPUT_FRONTEND_ACCEPT',      -- [ENTER]
    ['cancel_prompt'] = 'INPUT_FRONTEND_CANCEL',     -- [ESC]
    ['confirm_place_prompt'] = 'INPUT_FRONTEND_ACCEPT', -- [ENTER]
    ['back_prompt'] = 'INPUT_FRONTEND_RLEFT',        -- [E]
    ['left_prompt'] = 'INPUT_FRONTEND_LEFT',         -- [LEFT ARROW]
    ['right_prompt'] = 'INPUT_FRONTEND_RIGHT',       -- [RIGHT ARROW]
    ['category_+'] = 'INPUT_SELECT_NEXT_WEAPON',     -- [MOUSE SCROLL DOWN]
    ['category_-'] = 'INPUT_SELECT_PREV_WEAPON',     -- [MOUSE SCROLL UP]
    ['rotate_furniture'] = 'INPUT_FRONTEND_Y',       -- [LEFT SHIFT]
    ['object_+'] = 'INPUT_FRONTEND_LEFT',            -- [LEFT ARROW]
    ['object_-'] = 'INPUT_FRONTEND_RIGHT',           -- [RIGHT ARROW]
}

Config.Houses = {
    [1] = {                     -- house
        StorageLimit = 25,      -- the maximum number of items you can have in storage
        StorageWeight = 3500,   -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [2] = {                    -- house
        StorageLimit = 25,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [3] = {                    -- house
        StorageLimit = 30,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [4] = {                    -- house
        StorageLimit = 75,     -- the maximum number of items you can have in storage
        StorageWeight = 7500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [5] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 200, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [10] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [11] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [12] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [13] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [14] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [15] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [16] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [17] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [18] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [19] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [20] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [21] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [6] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [7] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [8] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [9] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
    [10] = {                    -- house
        StorageLimit = 35,     -- the maximum number of items you can have in storage
        StorageWeight = 3500,  -- the maximum weight you can have in storage
        FurnitureRadius = 50.0, -- the radius in which you can place furniture for this house
        FurnitureLimit = 100, -- the maximum amount of furniture that can be placed
        TaxInDaysAfterBuilding = 14, -- 14 days after building tax will be acquired if enabled above
        TaxAmount = 500, -- amount in cash that must be in ledger
        LoadRadius = 200, -- the radius in which the house is loaded
        Setup = {
            [1] = {            -- step
                Timer = 10000, -- building time
                Items = {
                    wood = 1,  -- item name -- quantity
                },
            },
            [2] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [3] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [4] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [5] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [6] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [7] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [8] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
            [9] = {
                Timer = 10000,
                Items = {
                    wood = 1,
                },
            },
             [10] = {
                Timer = 10000,
                Items = {
                    wood = 1, -- This is no Step this is the finish House
                },
            },
        },
    },
}
