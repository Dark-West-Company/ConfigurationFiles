Config = {}

-- DW Crafting Configuration
-- This file will be renamed to config.lua when deployed

Config.Locale = 'en'

Config.Debug = false

-- Crafting Settings
Config.CraftingDistance = 3.0
Config.MarkerDistance = 10.0

-- Crafting Locations
Config.CraftingLocations = {
    {
        name = "Blacksmith",
        coords = vector3(-1834.8, -431.2, 159.8),
        blip = {
            sprite = 436,
            color = 17,
            scale = 0.8,
            name = "Blacksmith"
        },
        categories = {"tools", "weapons"}
    },
    {
        name = "Tailor",
        coords = vector3(-1789.1, -387.2, 160.3),
        blip = {
            sprite = 366,
            color = 8,
            scale = 0.8,
            name = "Tailor"
        },
        categories = {"clothing", "bags"}
    }
}

-- Crafting Categories
Config.Categories = {
    tools = {
        label = "Tools",
        items = {
            {
                name = "hammer",
                label = "Hammer",
                materials = {
                    {item = "iron", amount = 5},
                    {item = "wood", amount = 2}
                },
                time = 5000,
                experience = 10
            },
            {
                name = "pickaxe",
                label = "Pickaxe", 
                materials = {
                    {item = "iron", amount = 8},
                    {item = "wood", amount = 3}
                },
                time = 8000,
                experience = 15
            }
        }
    },
    weapons = {
        label = "Weapons",
        items = {
            {
                name = "knife",
                label = "Knife",
                materials = {
                    {item = "iron", amount = 3},
                    {item = "leather", amount = 1}
                },
                time = 6000,
                experience = 20
            }
        }
    },
    clothing = {
        label = "Clothing",
        items = {
            {
                name = "shirt",
                label = "Basic Shirt",
                materials = {
                    {item = "cloth", amount = 4},
                    {item = "thread", amount = 2}
                },
                time = 4000,
                experience = 8
            }
        }
    },
    bags = {
        label = "Bags",
        items = {
            {
                name = "satchel",
                label = "Leather Satchel",
                materials = {
                    {item = "leather", amount = 6},
                    {item = "thread", amount = 3}
                },
                time = 10000,
                experience = 25
            }
        }
    }
}

-- Experience Settings
Config.Experience = {
    enabled = true,
    maxLevel = 100,
    baseXP = 1000,
    multiplier = 1.2
}

-- Animation Settings
Config.Animations = {
    crafting = {
        dict = "amb@world_human_hammering@male@base",
        anim = "base",
        flag = 1
    }
}
