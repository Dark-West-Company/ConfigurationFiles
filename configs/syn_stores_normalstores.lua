-- these shops are only templates ! items inside here and shop locations are up to you to manage, add and set up as per your server needs ! 
-- not all items in these shops will work on all servers they are meant to be configured as per your needs  

-- you can add weapons to shops now ! by using a line like this 
--{name = "WEAPON_SHOTGUN_SAWEDOFF", label = "Sawed off", price = "15",type = "item_weapon"},
-- shops can sell weapons but they cannot buy weapons ! 

Config.normalstores = {  -- delete everything inside here if you dont want normal shops 
    {	   
        Pos = {x=-322.3, y=803.93, z=117.88}, -- location of shop
        blipsprite = 1475879922, -- blip sprite for shop
        Name = 'Valentine Store', -- blip name 
        joblock = {},-- leave empty if you want the shop to be available to everyone, if u wana lock it to a job set it as such {"police","doctor"} etc
        showblip = true,
        sellitems = { -- items sold by shop
            {name = "craftbook", label = "Craftbook", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "meat", label = "Meat", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "consumable_handpie", label = "Meat Handpie", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "consumable_faygo", label = "A little Fizzy Drink", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "ironhammer", label = "Iron hammer", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "pickaxe", label = "Pickaxe", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "lumberaxe", label = "Wood Axe", price = "1",type = "item_standard"}, -- change label of items shown
             {name = "iron_ore", label = "Iron Ore", price = "1",type = "item_standard"}, -- change label of items shown
             {name = "wood", label = "Soft Wood", price = "1",type = "item_standard"}, -- change label of items shown
             {name = "hwood", label = "Hardwood", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "water", label = "water", price = "2",type = "item_standard"}, -- change label of items shown 
            {name = "seed_cherry", label = "Cherry Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "wateringcan_empty", label = "Empty Bucket", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "rake", label = "rake", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "hoe", label = "hoe", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_hop", label = "Hop Seeds", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_carrot", label = "Carrot Seeds", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_apple", label = "Apple Seeds", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_wheat", label = "Wheat Seeds", price = "1",type = "item_standard"}, -- change label of items shown 
            {name = "seed_corn", label = "Corn Seeds", price = "1",type = "item_standard"}, -- change label of items shown   
            {name = "seed_potato", label = "Potato Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_pumpkin", label = "Pumpkin Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_lettuce", label = "Lettuce Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_orange", label = "Orange Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_grape", label = "Grape Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_onion", label = "Onion Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_cherry", label = "Cherry Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_tomato", label = "Tomato Seeds", price = "1",type = "item_standard"}, -- change label of items shown
            {name = "seed_sugarcane", label = "Sugarcane Seeds", price = "1",type = "item_standard"}, -- change label of items shown
        },
        buyitems = { -- Items the shop will buy, these will only show if the player has them in his inventory 
            {name = "water", label = "water", price = "1",type = "item_standard"},
        },
    },
    
}
