ConfigPoliceRadial = {}


-- Keybindings
ConfigPoliceRadial.SearchSuspect = 0xA1ABB953      --  [G] Key binding for steal action
ConfigPoliceRadial.Keybind = 0xD8F73058 -- [U] Key binding for Police Radial Menu
ConfigPoliceRadial.KeybindJS = "U"


ConfigPoliceRadial.MenuItems = {
    -- {
    --     id = 'Duty',
    --     title = 'Duty',
    --     image = 'sheriff.png',
    --     items = {
    --         {
    --             id = 'GoOnDuty',
    --             title = 'Go on Duty',
    --             icon = "briefcase",
    --             type = 'client',
    --             event = 'pogue_police:goonduty',
    --             shouldClose = true,
    --         },
    --         {
    --             id = 'GoOffDuty',
    --             title = 'Go off Duty',
    --             icon = "briefcase",
    --             type = 'client',
    --             event = 'pogue_police:gooffduty',
    --             shouldClose = true,
    --         },
    --         {
    --             id = 'ToggleBadge',
    --             title = 'Toggle Badge',
    --             image = "sheriff.png",
    --             type = 'server',
    --             event = 'pogue_police:checkjob',
    --             shouldClose = true,
    --         },
    --         {
    --             id = 'AdjustBadge',
    --             title = 'Adjust Badge',
    --             image = "sheriff.png",
    --             type = 'client',
    --             event = 'pogue_police:adjustbadge',
    --             shouldClose = true,
    --         },
    --     }
    -- },
    {
        id = 'Action',
        title = 'Action',
        image = 'cowboy.png',
        items = {
            {
                id = 'Cuffs',
                title = 'Cuff/Uncuff',
                image = "handcuffs.png",
                type = 'client',
                event = 'pogue_police:cuffs',
                shouldClose = true,
            },
            {
                id = 'Escort',
                title = 'Escort',
                icon = "person-walking",
                type = 'client',
                event = 'pogue_police:triggerCuffDrag',
                shouldClose = true,
            },
            {
                id = 'PutInOutVehicle',
                title = 'Put In/Out Vehicle',
                image = 'wheel.png',
                type = 'client',
                event = 'pogue_police:PutInOutVehicle',
                shouldClose = true,
            },
            {
                id = 'CheckID',
                title = 'Check ID',
                image = "id.png",
                type = 'client',
                event = 'pogue_police:ShowID',
                shouldClose = true
            }
        }
    },
    {
        id = 'CRB',
        title = 'Criminal Records Book',
        image = "crb.png",
        type = 'client',
        event = 'pogue_police:togglecrbMenu',
        shouldClose = true
    },
}

