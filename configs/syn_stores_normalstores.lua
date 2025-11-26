-- these shops are only templates ! items inside here and shop locations are up to you to manage, add and set up as per your server needs ! 
-- not all items in these shops will work on all servers they are meant to be configured as per your needs  

-- you can add weapons to shops now ! by using a line like this 
--{name = "WEAPON_SHOTGUN_SAWEDOFF", label = "Sawed off", price = "15",type = "item_weapon"},
-- shops can sell weapons but they cannot buy weapons ! 

Config.normalstores = {  -- delete everything inside here if you dont want normal shops 
    -- VALENTINE --
    {
        Pos = {x=-322.3, y=803.93, z=117.88}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'General Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "craftbook", label = "Craftbook", price = "0.5",type = "item_standard"}, -- change label of items shown
            {name = "consumable_handpie", label = "Meat Handpie", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "consumable_faygo", label = "A little Fizzy Drink", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "water", label = "Water", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "coffeebeans", label = "Coffee beans", price = "0.5",type = "item_standard"}, -- change label of items shown 
            {name = "coffeefilter", label = "Coffee filter", price = "0.3",type = "item_standard"}, -- change label of items shown 
            {name = "sugar", label = "Sugar", price = "1",type = "item_standard"}, -- change label of items shown 
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-284.82, y=689.22, z=114.43}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Farming Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "wateringcan", label = "Empty Bucket", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "rake", label = "rake", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "hoe", label = "hoe", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_hop", label = "Hop Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_carrot", label = "Carrot Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_apple", label = "Apple Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_wheat", label = "Wheat Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_corn", label = "Corn Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown   
            {name = "seed_potato", label = "Potato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_pumpkin", label = "Pumpkin Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_lettuce", label = "Lettuce Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_orange", label = "Orange Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_grape", label = "Grape Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_onion", label = "Onion Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_tomato", label = "Tomato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_sugarcane", label = "Sugarcane Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-362.00, y=796.25, z=115.25}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Industrial Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "ironhammer", label = "Iron hammer", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "pickaxe", label = "Pickaxe", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "lumberaxe", label = "Wood Axe", price = "10",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "iron_ore", label = "Iron Ore", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "coal_ore", label = "Coal Ore", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "saltpeter", label = "Saltpeter", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "limestone", label = "Limestone", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "rock", label = "Rock", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "sulfur", label = "Sulfur", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "goldnugget", label = "Gold Nugget", price = "0.19",type = "item_standard"}, -- change label of items shown
            {name = "silver_ore", label = "Silver Ore", price = "0.25",type = "item_standard"}, -- change label of items shown
            {name = "zinc_ore", label = "Zinc Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "copper_ore", label = "Copper Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "Salt", label = "Rock Salt", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "wood", label = "Soft Wood", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "hwood", label = "Hardwood", price = "0.14",type = "item_standard"}, -- change label of items shown
            {name = "fibers", label = "Fibers", price = "0.07",type = "item_standard"}, -- change label of items shown
            {name = "brokenpickaxe", label = "Broken Pickaxe", price = "1",type = "item_standard"}, -- change label of items shown
        },
    },
    {
        Pos = {x=-285.15, y=802.90, z=118.38}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Medical Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "bandage", label = "Bandages", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antipoison", label = "Antipoison", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antibiotic", label = "Cough Syrup", price = "1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    -- STRAWBERRY --
    {
        Pos = {x=-1795.02, y=-384.90, z=162.10}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'General Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "craftbook", label = "Craftbook", price = "0.5",type = "item_standard"}, -- change label of items shown
            {name = "consumable_handpie", label = "Meat Handpie", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "consumable_faygo", label = "A little Fizzy Drink", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "water", label = "Water", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "coffeebeans", label = "Coffee beans", price = "0.5",type = "item_standard"}, -- change label of items shown 
            {name = "coffeefilter", label = "Coffee filter", price = "0.3",type = "item_standard"}, -- change label of items shown 
            {name = "sugar", label = "Sugar", price = "1",type = "item_standard"}, -- change label of items shown 
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-1751.45, y=-387.13, z=157.76}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Farming Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "wateringcan", label = "Empty Bucket", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "rake", label = "rake", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "hoe", label = "hoe", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_hop", label = "Hop Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_carrot", label = "Carrot Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_apple", label = "Apple Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_wheat", label = "Wheat Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_corn", label = "Corn Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown   
            {name = "seed_potato", label = "Potato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_pumpkin", label = "Pumpkin Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_lettuce", label = "Lettuce Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_orange", label = "Orange Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_grape", label = "Grape Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_onion", label = "Onion Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_tomato", label = "Tomato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_sugarcane", label = "Sugarcane Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-1814.47, y=-423.36, z=161.59}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Industrial Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "ironhammer", label = "Iron hammer", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "pickaxe", label = "Pickaxe", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "lumberaxe", label = "Wood Axe", price = "10",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "iron_ore", label = "Iron Ore", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "coal_ore", label = "Coal Ore", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "saltpeter", label = "Saltpeter", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "limestone", label = "Limestone", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "rock", label = "Rock", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "sulfur", label = "Sulfur", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "goldnugget", label = "Gold Nugget", price = "0.19",type = "item_standard"}, -- change label of items shown
            {name = "silver_ore", label = "Silver Ore", price = "0.25",type = "item_standard"}, -- change label of items shown
            {name = "zinc_ore", label = "Zinc Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "copper_ore", label = "Copper Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "Salt", label = "Rock Salt", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "wood", label = "Soft Wood", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "hwood", label = "Hardwood", price = "0.14",type = "item_standard"}, -- change label of items shown
            {name = "fibers", label = "Fibers", price = "0.07",type = "item_standard"}, -- change label of items shown
            {name = "brokenpickaxe", label = "Broken Pickaxe", price = "1",type = "item_standard"}, -- change label of items shown
        },
    },
    {
        Pos = {x=-1802.25, y=-428.39, z=160.31}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Medical Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "bandage", label = "Bandages", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antipoison", label = "Antipoison", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antibiotic", label = "Cough Syrup", price = "1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-1782.18, y=-387.60, z=160.89}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Pawn Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Beatup Cattleman", price = "1",type = "item_standard"}, -- change label of items shown
        },
    },
    -- BLACKWATER --
    {
        Pos = {x=-785.37, y=-1324.82, z=45.54}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'General Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "craftbook", label = "Craftbook", price = "0.5",type = "item_standard"}, -- change label of items shown
            {name = "consumable_handpie", label = "Meat Handpie", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "consumable_faygo", label = "A little Fizzy Drink", price = "2",type = "item_standard"}, -- change label of items shown
            {name = "water", label = "Water", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "coffeebeans", label = "Coffee beans", price = "0.5",type = "item_standard"}, -- change label of items shown 
            {name = "coffeefilter", label = "Coffee filter", price = "0.3",type = "item_standard"}, -- change label of items shown 
            {name = "sugar", label = "Sugar", price = "1",type = "item_standard"}, -- change label of items shown 
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-841.80, y=-1366.06, z=45.93}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Farming Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "wateringcan", label = "Empty Bucket", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "rake", label = "rake", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "hoe", label = "hoe", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_hop", label = "Hop Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_carrot", label = "Carrot Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_apple", label = "Apple Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_wheat", label = "Wheat Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_corn", label = "Corn Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown   
            {name = "seed_potato", label = "Potato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_pumpkin", label = "Pumpkin Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_lettuce", label = "Lettuce Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_orange", label = "Orange Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_grape", label = "Grape Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_onion", label = "Onion Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_cherry", label = "Cherry Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_tomato", label = "Tomato Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "seed_sugarcane", label = "Sugarcane Seeds", price = "0.1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-859.70, y=-1277.20, z=45.35}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Industrial Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "ironhammer", label = "Iron hammer", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "pickaxe", label = "Pickaxe", price = "10",type = "item_standard"}, -- change label of items shown
            {name = "lumberaxe", label = "Wood Axe", price = "10",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "iron_ore", label = "Iron Ore", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "coal_ore", label = "Coal Ore", price = "0.1",type = "item_standard"}, -- change label of items shown
            {name = "saltpeter", label = "Saltpeter", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "limestone", label = "Limestone", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "rock", label = "Rock", price = "0.05",type = "item_standard"}, -- change label of items shown
            {name = "sulfur", label = "Sulfur", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "goldnugget", label = "Gold Nugget", price = "0.19",type = "item_standard"}, -- change label of items shown
            {name = "silver_ore", label = "Silver Ore", price = "0.25",type = "item_standard"}, -- change label of items shown
            {name = "zinc_ore", label = "Zinc Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "copper_ore", label = "Copper Ore", price = "0.17",type = "item_standard"}, -- change label of items shown
            {name = "Salt", label = "Rock Salt", price = "0.15",type = "item_standard"}, -- change label of items shown
            {name = "wood", label = "Soft Wood", price = "0.12",type = "item_standard"}, -- change label of items shown
            {name = "hwood", label = "Hardwood", price = "0.14",type = "item_standard"}, -- change label of items shown
            {name = "fibers", label = "Fibers", price = "0.07",type = "item_standard"}, -- change label of items shown
            {name = "brokenpickaxe", label = "Broken Pickaxe", price = "1",type = "item_standard"}, -- change label of items shown
        },
    },
    {
        Pos = {x=-814.28, y=-1363.87, z=45.27}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Medical Supply', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "bandage", label = "Bandages", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antipoison", label = "Antipoison", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "antibiotic", label = "Cough Syrup", price = "1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
    {
        Pos = {x=-840.12, y=-1349.25, z=45.88}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Pawn Shop', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "WEAPON_REVOLVER_CATTLEMAN", label = "Beatup Cattleman", price = "1",type = "item_standard"}, -- change label of items shown
        },
    },
    -- SAINT DENIS --
    {
        Pos = {x=-2779.97, y=-1363.13, z=45.37}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Imports Warehouse', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "milk", label = "Milk", price = "1.3",type = "item_standard"}, -- change label of items shown
            {name = "milk_goat", label = "Goat Milk", price = "1.3",type = "item_standard"}, -- change label of items shown
            {name = "egg", label = "Eggs", price = "1.3",type = "item_standard"}, -- change label of items shown
            {name = "wool", label = "Wool", price = "1.3",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
        },
    },
}
