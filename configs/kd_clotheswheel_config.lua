-------------------------------
-- DOCUMENTATION : https://docs.jumpon-studios.com/
--------------------------------

-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO OVERWRITE CONFIG VALUE, USE overwriteConfig.lua file instead
-------------------------------------------

Config = {}
Config.OpenKey = GetHashKey('INPUT_PHOTO_MODE') -- https://github.com/femga/rdr3_discoveries/tree/master/Controls
Config.CloseAfterSwitch = true --Close the wheel when player turn on/off clothes
Config.PlayAnim = true
Config.postFx = 'WheelHUDIn'

Config.Menus = {                                 -- Data that is passed to Javascript
    style = {                               -- Wheel style settings
        sizePx = 800,                       -- Wheel size in pixels
        titles = {                          -- Text style settings
            default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' }
        },
        iconSize = 80,
    },
}

Config.Clothes = {
    ["gunbelts"] = true,
    ["spats"] = true,
    ["gloves"] = true,
    ["satchels"] = true,
    ["belts"] = true,
    ["dresses"] = true,
    ["hats"] = true,
    ["boots"] = true,
    ["vests"] = true,
    ["chaps"] = true,
    ["boot_accessories"] = true,
    ["coats_closed"] = true,
    ["armor"] = true,
    ["jewelry_bracelets"] = true,
    ["ponchos"] = true,
    ["holsters_left"] = true,
    ["jewelry_rings_left"] = true,
    ["cloaks"] = true,
    ["neckwear"] = true,
    ["neckties"] = true,
    ["pants"] = true,
    ["loadouts"] = true,
    ["coats"] = true,
    ["masks"] = true,
    ["jewelry_rings_right"] = true,
    ["accessories"] = true,
    ["suspenders"] = true,
    ["belt_buckles"] = true,
    ["shirts_full"] = true,
    ["eyewear"] = true,
    ["gauntlets"] = true,
    ["badges"] = true,
    ["skirts"] = true,
    ["bodies_lower"] = false,
    ["hair_accessories"] = true,
    ["outfit"] = true
}

Config.animations = {
    gunbelts = {
        dict = "script_respawn@one_shot@fullbody@generic@unarmed@stand_adjust_belt@a",
        flag = 24,
        anim = "respawn_action",
        timer = 1000,
    },
    gloves = {
        dict = "mech_loco_m@character@arthur@fidgets@item_selection@gloves",
        flag = 24,
        anim = "gloves_b",
        timer = 500,
    },
    hats = {
        dict = "mech_respawn@nap_grnd",
        anim = "getup_v1_player",
        offset = 0.6,
        timer = 900,
        flag = 24,
        equip = {
            timer = 800
        }
    },
    boots = {
        dict = "script_respawn@one_shot@fullbody@generic@unarmed@stand_boot_clean@a",
        anim = "respawn_action",
        timer = 500,
    },
    neckwear = {
        dict = "mech_inventory@clothing@bandana",
        flag = 24,
        equip = {
            anim = "neck_2_satchel",
            timer = 1000
        },
        unequip = {
            anim = "satchel_2_neck",
            timer = 2000
        }
    },
    masks = {
        dict = "mech_inventory@clothing@mask",
        flag = 24,
        equip = {
            anim = "face_2_satchel",
            timer = 1000,
        },
        unequip = {
            anim = "satchel_2_face",
            timer = 2000,
        }
    },
    eyewear = {
        dict = "amb_wander@code_human_wander@male@generic",
        flag = 24,
        anim = "wipe_eyes_02",
        timer = 1000,
    }
}
