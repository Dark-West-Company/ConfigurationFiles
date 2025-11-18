Config = {}

Config.Framework                                    =               "vorp"                                   -- vorp / rsg
Config.Debug                                        =               false

-- Webhook
Config.Logs                                         =               true 
Config.Discord                                      =               false                                    -- for discord whitelist
Config.Webhook                                      =               ""
Config.Title                                        =               "🤵Robbery"
Config.TitleBank                                    =               "🤵Bank Robbery"
Config.TitleCashRegister                            =               "🤵General Robbery"                     -- cash register means everything else apart from banks
Config.TitleWagon                                   =               "🤵Wagon Lock Robbery"
Config.TitleFreeroam                                =               "🤵Freeroam Gunpoint Robbery"

Config.Ui = {
    Locks                                           =               4,                                      -- number from 1-6
    Sound                                           =               1,                                      -- sound preset 1-3 for safecrack sounds
    Indicator                                       =               false,                                  -- visual indicator on correct spot
    Background                                      =               true
}

Config.Alerts = {
    UseAlertAPI                                     =               false,                                  -- for this option alert needs to be turned off in the specific / all robberies
    BlipType                                        =               "radius",                               -- radius or normal
    Blip                                            =               -1282792512,
    BlipMod                                         =               1871037390,
    BlipName                                        =               "Robbery Witnessed",
    BlipActiveTime                                  =               120,                                    -- in seconds
}

Config.SecuritySystem = {
    Enable                                          =               true,                                   -- if turned on, players have to find and disable security box before they can crack the vaults
    Type                                            =               2,                                      -- alarm sound 1 or 2
    Volume                                          =               2,                                      -- alarm volume
    Minigame                                        =               "wire",                                 -- syn / outsider / rsd / sirec / qbr / wire / t3
    Smoke                                           =               true,
    SmokeTime                                       =               5                                       -- in minutes
}

Config.BankerFunctions = {
    Enable                                          =               true,                                   -- enable or disable the unlock door prompt here        
    BankerJobs                                      =               {"banker"},
    NeedsJobToUnlockDoors                           =               true,
    NeedsKeyToUnlockDoors                           =               false,
    KeyItems                                        =               {"vaultkey"}
}

Config.Distances = {
    ToStopRobbery                                   =               70,                                     -- if robber flees before finishing
    ToStartBank                                     =               7,                                      -- shoot distance
    ToStartOther                                    =               7,                                      -- shoot distance
}

Config.OpenTimes = {
    Banks = {
        Enable                                      =               false,                                  -- if enabled people cant rob outside of these open times
        Type                                        =               "game",                                 -- "game" or "real" for game or reallife time
        OpenFrom                                    =               7,
        OpenTo                                      =               22,
    },
    Registers = {
        Enable                                      =               false,
        Type                                        =               "game",
        OpenFrom                                    =               23,
        OpenTo                                      =               7,
    },
    Wagons = {
        Enable                                      =               false,
        Type                                        =               "game",
        OpenFrom                                    =               7,
        OpenTo                                      =               22,
    },
    Freeroam = {
        Enable                                      =               false,
        Type                                        =               "game",
        OpenFrom                                    =               7,
        OpenTo                                      =               22,
    },
}

Config.EnableBankRobbery                            =               true
Config.EnableCashRegisterRobbery                    =               true
Config.EnableWagonChestRobbery                      =               true
Config.EnableFreeroamGunpointRobbery                =               true

Config.NoNeedToShoot                                =               false                                   -- timer countdown starts without shooting requirement
Config.CigAnim                                      =               false
Config.DrawText                                     =               true

Config.DynamiteItem                                 =               "dynamite"
Config.LockpickItem                                 =               "lockpick"
Config.QbrCircles                                   =               {4,6}                                   -- only if above is qbr

Config.PoliceJobs                                   =               {"policeVal","policeBW","policeSD","policeArm","marshal"} -- only needed if alertall is true in a robbery setup
Config.RequiredPoliceForGuardDisable                =               0                                       -- amount of online police needed to not spawn any guards (or 0 to use guards always)
Config.NeedsBandanaForRobberies                     =               false                                    -- for jo libs ccheck readme
Config.RemoveLockpickOnSuccess                      =               {chance = 0}                            -- chance to remove lockpick on minigame success
Config.NPCWait                                      =               {true, 3, 9}                            -- time before npcs spawn in seconds
Config.GuardsCanFreeHostages                        =               true

Config.Cooldowns    = {
    perspot = {banks = 369, cashregisters = 369}, -- 0 will insta relock so keep higher num in minutes, for each spot after rob
    global = {banks = 0, cashregisters = 0}  -- 0 to turn off, for all robbery after rob
}

Config.InfamySystem = {
    --[[ simple explanation:
    gain infamy from doing all crime activities / robberies
    the more infamy you have the higher the chance that some npcs / gangs might get observant of you
    that means in turn: if you do lots of crime you better not walk alone because npc bandits / gangs might try to get you
    you can also just use the infamy gain and needed system without the bandits function

        default config setup:
    npc robberies until you reach 20 infamyxp, then you can do wagon robberies aswell
    once you reach 100 infamyxp you can also do cash registers apart from those in SD
    once you reach 300 infamyxp you can also do sd cash registers, forts and sd art gallery
    once you reach 500 infamyxp you can start to do bank robberies apart from rhodes and SD, those get unlocked at 700 and 1000
    ]]
    Enable = true,
    ShowNeededPoints = false, -- to show how much infamy is needed in notify
    Command = {true, "infamy"}, -- check command
    Extra = {
        Bandits = {enable = true, name = "Bandit"}, -- npc gangs that see players with high infamy as competition (currently attacking solo, not in group)
        BraveCitizens = {enable = true, flagged = 3, name = "Brave Citizen"}, -- for these badboys bandits and infamy need to be enabled, 3 minutes after robbery start flagged for citizens near the player to attack
        Clock = {enable = true, from = 21, to = 4}, -- bandits + brave citizens only active at night
    },

    -- let b be bandits, let bc be brave citizens
    -- infamy level, chance "cv" for b to visit player, chance "ca" for b to attack while visiting player, chance "cc" for bc to attack while player is robbing
    Ranks = {
        [1] = {infamy  = 20,  cv = 0, ca = 0, cc = 50},
        [2] = {infamy  = 100,  cv = 2, ca = 0, cc = 40},
        [3] = {infamy  = 300,  cv = 6, ca = 75, cc = 30},
        [4] = {infamy  = 500,  cv = 10, ca = 75, cc = 20},
        [5] = {infamy  = 700,  cv = 15, ca = 100, cc = 10},
        [6] = {infamy  = 1000,  cv = 20, ca = 100, cc = 1}
    },
}

Config.Banks = {
    ["Rhodes"] =                                                    {{x = 1282.266, y = -1308.51, z = 77.089, h = 230.0, -- start
                                                                    door = {hash = 3483244267, attach = {-0.55, -0.09, 1.08, 0.0, 180.0, 0.0}}, -- custom bank doors test, you can now add up to 3 new locations with custom doors for example from mlos
                                                                    timer = {true, 120}, -- former "waitbefore"
                                                                    infamy  = {needed = 500, gain = 1}, -- with enabled infamy system
                                                                    vaults = {
                                                                    {x = 1288.201, y = -1313.29, z = 77.089, h = 320.0},
                                                                    {x = 1288.030, y = -1315.02, z = 77.089, h = 234.0},
                                                                    {x = 1286.221, y = -1315.78, z = 77.089, h = 140.0},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = 1294.526, y = -1309.96, z = 76.602, h = 48.1},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, -- general luck to receive something at all
                                                                    random  = {false}, -- if enabled only picks 1 reward randomly
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}, -- {1,10} = random amount between 1 and 10
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, -- can only rob with these jobs
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}}, -- can not rob with these jobs
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 4, alertall = false}, -- enabled = police with these jobs needs to be online. not enabled = Config.PoliceJobs need to be online, alertall enabled = alert Config.PoliceJobs, alertall disabled = alert these jobs
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10}, -- number of random picks from coords or true for half of the coords or false for all coords, difficulties: "easy", "normal", "hard" or "impossible" (no hs), attackallinarea: false = attack starter, number = attack all in this radius, true = radius 10
                                                                    waves   = {enable = true, max = 3, cd = 30}, -- use waves, max waves during rob countdown, cooldown between waves
                                                                    coords  = { -- amount of preset guards
                                                                    { x = 1355.538, y = -1266.79, z = 77.713 },
                                                                    { x = 1362.312, y = -1295.72, z = 76.789 },
                                                                    { x = 1308.983, y = -1358.53, z = 78.012 },
                                                                    { x = 1303.838, y = -1352.29, z = 77.978 },
                                                                    }}}},
                                                                    
    ["Blackwater"] =                                                {{x = -817.195, y = -1273.73, z = 43.697, h = 100.0,
                                                                    door = {hash = 1462330364, attach = {0.54, -0.09, 1.08, 0.0, 180.0, 0.0}},
                                                                    timer = {true, 120},
                                                                    infamy  = {needed = 500, gain = 1},
                                                                    vaults = {
                                                                    {x = -820.035, y = -1273.45, z = 43.701, h = 5.03},
                                                                    {x = -820.950, y = -1274.72, z = 43.696, h = 92.03},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = -817.288, y = -1275.32, z = 43.687, h = 86.1},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 4, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -812.130, y = -1292.31, z = 43.713 },
                                                                    { x = -822.902, y = -1306.68, z = 43.630 },
                                                                    { x = -813.968, y = -1309.47, z = 43.715 },
                                                                    { x = -778.664, y = -1306.96, z = 43.768 },
                                                                    }}}},

    ["Valentine"] =                                                 {{x = -307.308, y = 767.1924, z = 118.75, h = 190.0,
                                                                    door = {hash = 576950805, attach = {-0.55, -0.09, 1.08, 0.0, 180.0, 0.0}},
                                                                    timer = {true, 120},
                                                                    infamy  = {needed = 500, gain = 1},
                                                                    vaults = {
                                                                    {x = -308.262, y = 762.7039, z = 118.75, h = 190.0},
                                                                    {x = -308.820, y = 763.8513, z = 118.75, h = 102.0},
                                                                    {x = -308.646, y = 765.2492, z = 118.75, h = 10.0},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = -309.475, y = 769.8248, z = 118.75, h = 1.1},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 4, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -287.370, y = 765.8325, z = 118.93 },
                                                                    { x = -272.812, y = 739.0137, z = 117.29 },
                                                                    { x = -314.742, y = 749.9166, z = 117.50 },
                                                                    { x = -327.146, y = 812.2933, z = 117.27 },
                                                                    }}}},

    ["SaintDenis"] =                                                {{x = 2643.988, y = -1300.14, z = 52.296, h = 160.0,
                                                                    door = {hash = 1751238140, attach = {-0.55, -0.09, 1.08, 0.0, 180.0, 0.0}},
                                                                    timer = {true, 120},
                                                                    infamy  = {needed = 900, gain = 1},
                                                                    vaults = {
                                                                    {x = 2644.442, y = -1306.59, z = 52.296, h = 206.0},
                                                                    {x = 2644.409, y = -1303.66, z = 52.296, h = 292.0},
                                                                    {x = 2641.613, y = -1303.31, z = 52.296, h = 112.0},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = 2657.839, y = -1303.16, z = 52.066, h = 303.1},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 4, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2646.997, y = -1310.48, z = 50.423 },
                                                                    { x = 2655.590, y = -1308.66, z = 50.428 },
                                                                    { x = 2572.684, y = -1297.49, z = 52.320 },
                                                                    { x = 2581.363, y = -1317.13, z = 52.326 },
                                                                    }}}},

    ["Annesburg"] =                                                {{x = 2934.568, y = 1284.405, z = 44.702, h = 349.0,
                                                                    door = {hash = 1321590180, attach = {-0.55, -0.09, 1.08, 0.0, 180.0, 0.0}},
                                                                    timer = {true, 120},
                                                                    infamy  = {needed = 500, gain = 1},
                                                                    vaults = {
                                                                    {x = 2935.322, y = 1287.851, z = 44.702, h = 349.0},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = 2936.772, y = 1274.902, z = 44.685, h = 71.1},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 4, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2955.172, y = 1327.081, z = 44.309 },
                                                                    { x = 2907.662, y = 1333.095, z = 48.204 },
                                                                    { x = 2907.718, y = 1318.182, z = 44.980 },
                                                                    }}}},

                                                                    --[[
    ["Armadillo"] =                                                 {{x = -3665.957, y = -2632.196, z = -13.691, h = 180.0,
                                                                    door = {hash = 3708259109, attach = {0.54, -0.09, 1.08, 0.0, 180.0, 0.0}},
                                                                    timer = {true, 120},
                                                                    infamy  = {needed = 500, gain = 1},
                                                                    vaults = {
                                                                    {x = -3666.842, y = -2638.093, z = -13.638, h = 180.0},
                                                                    {x = -3668.915, y = -2637.172, z = -13.638, h = 100.0},
                                                                    {x = -3669.0993, y = -2634.330, z = -13.638, h = 100.0},
                                                                    },
                                                                    alarmbox = {
                                                                    {x = -3669.02, y = -2640.04, z = -13.68, h = 4.36},
                                                                    },
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {0,150}, WEAPON_REVOLVER_NAVY= {0,1}, diamond = {1,10}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"sheriff","marshal","police","deputy","banker"}},
                                                                    police    = {enable = false, jobs = {"sheriff","marshal","police","deputy"}, required = 4, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A bank robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -3682.069, y = -2598.1108, z = -13.732 },
                                                                    { x = -3657.394, y = -2601.597, z = -13.28 },
                                                                    { x = -3645.758, y = -2632.625, z = -13.84 },
                                                                    { x = -3691.154, y = -2634.618, z = -13.86 },
                                                                    }}}},
                                                                    ]]
    }


Config.CashRegisters = {
    -- possible animations: "cash" for cash registers, "painting" for paint grab, "chest" for chest or "" for only lockpick animation
    -- CASH REGISTERS:         
    ["Valentine"] ={                        
                                                                    {x = -324.271, y = 804.1619, z = 117.93, h = 275.0,
                                                                    timer   = {true, 40}, -- former "waitbefore"
                                                                    infamy  = {needed = 0, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3", -- syn / outsider / rsd / sirec / gum / qbr / t3
                                                                    rewards = {
                                                                    luck    = {true, 98}, -- general luck to receive something at all
                                                                    random  = {false}, -- if enabled only picks 1 reward randomly
                                                                    items   = {moneydecimal2 = {5,200}}, -- {1,10} = random amount between 1 and 10
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, -- can only rob with these jobs
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}}, -- can not rob with these jobs
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false}, -- enabled = police with these jobs needs to be online. not enabled = Config.PoliceJobs need to be online, alertall enabled = alert Config.PoliceJobs, alertall disabled = alert these jobs
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"}, 
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "hard", name = "Deputy", attackallinarea = 10}, -- number of random picks from coords or true for half of the coords or false for all coords, difficulties: "easy", "normal", "hard" or "impossible" (no hs), attackallinarea: false = attack starter, number = attack all in this radius, true = radius 10
                                                                    waves   = {enable = true, max = 5, cd = 30}, -- use waves, max waves during rob countdown, cooldown between waves
                                                                    coords  = { -- amount of preset guards
                                                                    { x = -287.370, y = 765.8325, z = 118.93 },
                                                                    { x = -272.812, y = 739.0137, z = 117.29 },
                                                                    { x = -314.742, y = 749.9166, z = 117.50 },
                                                                    { x = -327.146, y = 812.2933, z = 117.27 },
                                                                    { x = -373.152, y = 797.1261, z = 116.16 },
                                                                    }}}},
    ["Rhodes"] ={                       
                                                                    {x = 1330.149, y = -1293.67, z = 77.071, h = 61.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 200, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 1355.538, y = -1266.79, z = 77.713 },
                                                                    { x = 1362.312, y = -1295.72, z = 76.789 },
                                                                    { x = 1308.983, y = -1358.53, z = 78.012 },
                                                                    { x = 1303.838, y = -1352.29, z = 77.978 },
                                                                    }}}},
    ["SaintDenis"] ={                       
                                                                    {x = 2825.200, y = -1320.01, z = 46.805, h = 327.0, -- general store
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2646.997, y = -1310.48, z = 50.423 },
                                                                    { x = 2655.590, y = -1308.66, z = 50.428 },
                                                                    { x = 2572.684, y = -1297.49, z = 52.320 },
                                                                    { x = 2581.363, y = -1317.13, z = 52.326 },
                                                                    }},
                                                                    },

                                                                    {x = 2555.899, y = -1166.80, z = 53.733, h = 181.0, -- clothing store
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2516.151, y = -1181.10, z = 53.731 },
                                                                    { x = 2523.367, y = -1170.82, z = 50.363 },
                                                                    { x = 2548.595, y = -1120.35, z = 50.792 },
                                                                    }}}},
    ["Annesburg"] ={                        
                                                                    {x = 2948.166, y = 1318.624, z = 44.870, h = 72.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 100, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2955.172, y = 1327.081, z = 44.309 },
                                                                    { x = 2907.662, y = 1333.095, z = 48.204 },
                                                                    { x = 2907.718, y = 1318.182, z = 44.980 },
                                                                    }}}},
    ["Strawberry"] ={                       
                                                                    {x = -1789.21, y = -387.425, z = 160.37, h = 53.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 100, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -1772.85, y = -363.124, z = 160.21 },
                                                                    { x = -1810.90, y = -342.289, z = 164.80 },
                                                                    }}}},
    ["Armadillo"] ={                        
                                                                    {x = -3687.37, y = -2622.67, z = -13.38, h = 269.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 100, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -3664.10, y = -2641.75, z = -13.74 },
                                                                    { x = -3648.17, y = -2585.58, z = -13.51 },
                                                                    { x = -3739.94, y = -2598.51, z = -13.14 },
                                                                    { x = -3650.25, y = -2634.55, z = -13.78 },
                                                                    }}}},
    ["Blackwater"] ={                       
                                                                    {x = -785.295, y = -1322.11, z = 43.934, h = 185.0,
                                                                    timer   = {true, 400},
                                                                    infamy  = {needed = 100, gain = 1},
                                                                    anim    = "cash",
                                                                    prompt  = "Cash Register",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A store robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 9, cd = 20},
                                                                    coords  = {
                                                                    { x = -812.130, y = -1292.31, z = 43.713 },
                                                                    { x = -822.902, y = -1306.68, z = 43.630 },
                                                                    { x = -813.968, y = -1309.47, z = 43.715 },
                                                                    { x = -778.664, y = -1306.96, z = 43.768 },
                                                                    { x = -811.710, y = -1305.47, z = 51.470 },
                                                                    { x = -810.443, y = -1343.66, z = 46.928 },
                                                                    { x = -771.489, y = -1300.35, z = 42.730 },
                                                                    }}}},

    -- ART GALLERY ROBBERY:
    ["SD Gallery"] ={                       
                                                                    {x = 2696.271, y = -1207.11, z = 56.469, h = 182.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "painting",
                                                                    prompt  = "Painting",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "An art gallery robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2698.390, y = -1189.463, z = 52.058 },
                                                                    }}},

                                                                    {x = 2701.563, y = -1206.96, z = 56.469, h = 245.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "painting",
                                                                    prompt  = "Painting",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "An art gallery robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2698.390, y = -1189.463, z = 52.058 },
                                                                    }}},

                                                                    {x = 2696.357, y = -1200.22, z = 56.473, h = 92.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "painting",
                                                                    prompt  = "Painting",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "An art gallery robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2698.390, y = -1189.463, z = 52.058 },
                                                                    }}},

                                                                    {x = 2685.941, y = -1205.34, z = 56.469, h = 135.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "painting",
                                                                    prompt  = "Painting",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "An art gallery robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 2698.390, y = -1189.463, z = 52.058 },
                                                                    }}},

},

-- FORT ROBBERIES:
    ["Fort Mercer"] ={                       
                                                                    {x = -4194.87, y = -3442.57, z = 37.028, h = 192.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "chest",
                                                                    prompt  = "Chest",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A fort robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -4222.16, y = -3433.26, z = 41.430 },
                                                                    { x = -4218.95, y = -3455.95, z = 41.434 },
                                                                    { x = -4191.67, y = -3463.69, z = 41.431 },
                                                                    { x = -4191.91, y = -3474.01, z = 41.429 },
                                                                    { x = -4219.58, y = -3475.00, z = 37.003 },
                                                                    { x = -4250.59, y = -3481.25, z = 36.992 },
                                                                    }}},
                                                                
                                                                    {x = -4204.72, y = -3435.99, z = 37.040, h = 50.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "chest",
                                                                    prompt  = "Chest",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A fort robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = -4222.16, y = -3433.26, z = 41.430 },
                                                                    { x = -4218.95, y = -3455.95, z = 41.434 },
                                                                    { x = -4191.67, y = -3463.69, z = 41.431 },
                                                                    { x = -4191.91, y = -3474.01, z = 41.429 },
                                                                    { x = -4219.58, y = -3475.00, z = 37.003 },
                                                                    { x = -4250.59, y = -3481.25, z = 36.992 },
                                                                    }}},

},      

    ["Fort Wallace"] ={                       
                                                                    {x = 365.4502, y = 1492.282, z = 180.62, h = 16.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "chest",
                                                                    prompt  = "Chest",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A fort robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 328.3188, y = 1504.611, z = 182.39 },
                                                                    { x = 321.8339, y = 1509.880, z = 186.80 },
                                                                    { x = 339.0710, y = 1510.878, z = 185.44 },
                                                                    { x = 363.7178, y = 1514.197, z = 184.81 },
                                                                    { x = 365.1643, y = 1471.695, z = 184.59 },
                                                                    { x = 337.1251, y = 1473.053, z = 183.38 },
                                                                    }}},
                                                                
                                                                    {x = 353.9237, y = 1484.043, z = 179.59, h = 304.0,
                                                                    timer   = {true, 40},
                                                                    infamy  = {needed = 300, gain = 1},
                                                                    anim    = "chest",
                                                                    prompt  = "Chest",
                                                                    minigame= "t3",
                                                                    rewards = {
                                                                    luck    = {true, 98}, 
                                                                    random  = {false}, 
                                                                    items   = {money = {20,70}}
                                                                    },
                                                                    jobs = {
                                                                    whitelist = {enable = false, jobs = {"gang"}}, 
                                                                    blacklist = {enable = true, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police    = {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert     = {enable = true, chance = 90, notify = "A fort robbery has been reported at"},
                                                                    },
                                                                    extraitemneeded = {
                                                                    enable  = false,
                                                                    items   = {{item = "documents", amount = 2, remove = true}}
                                                                    },
                                                                    guards  = {
                                                                    enable  = true,
                                                                    model   = {"s_m_m_unitrainguards_01","g_m_m_uniduster_01","mp_g_m_m_redbengang_01"},
                                                                    extra   = {randomspawns = false, difficulty = "normal", name = "Deputy", attackallinarea = 10},
                                                                    waves   = {enable = true, max = 3, cd = 30},
                                                                    coords  = {
                                                                    { x = 328.3188, y = 1504.611, z = 182.39 },
                                                                    { x = 321.8339, y = 1509.880, z = 186.80 },
                                                                    { x = 339.0710, y = 1510.878, z = 185.44 },
                                                                    { x = 363.7178, y = 1514.197, z = 184.81 },
                                                                    { x = 365.1643, y = 1471.695, z = 184.59 },
                                                                    { x = 337.1251, y = 1473.053, z = 183.38 },
                                                                    }}},

},      
}

Config.WagonRob = {                                                 -- works on every wagon in the world
                                                                    -- NOTE! that there is no connection to your stable system so players will be able to rob their own wagon, enable with care
                                                                    breakwheel      =       {enable = true, win = 4, fail = 1},
                                                                    infamy          =       {needed = 20, gain = 1},
                                                                    anim            =       "chest",
                                                                    prompt          =       "Wagon",
                                                                    minigame        =       "t3",
                                                                    wagons          =       {
                                                                                            "wagon02x", 
                                                                                            "wagon04x", 
                                                                                            "wagon05x", 
                                                                                            "wagondoc01x", 
                                                                                            "coach2", 
                                                                                            "stagecoach002x", 
                                                                                            "stagecoach003x"
                                                                                            },
                                                                    rewards         =       {
                                                                    luck            =       {true, 98}, 
                                                                    random          =       {false}, 
                                                                    items           =       {money = {20,70}},
                                                                    },
                                                                    jobs            =       {
                                                                    whitelist       =       {enable = false, jobs = {"gang"}}, 
                                                                    blacklist       =       {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police          =       {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false},
                                                                    alert           =       {enable = true, chance = 90, notify = "A wagon robbery has been reported at"}, 
                                                                    special         =       {enable = false, jobs = {"native"}, items = {money = {20,40}}} -- special items for special jobs (eg. natives only find pelts, other players money)
                                                                    },
                                                                    extraitemneeded =       {
                                                                    enable          =       false,
                                                                    items           =       {{item = "documents", amount = 2, remove = true}}
                                                                    }
}   

Config.FreeroamGunpointRobbery = {                                  -- point gun at npc and get close to him
                                                                    infamy          =       {needed = 0, gain = 1},
                                                                    cooldown        =       {enable = false, minutes = 2},
                                                                    rewards         =       {
                                                                    luck            =       {true, 45}, -- if unlucky npc might attack
                                                                    random          =       {false}, 
                                                                    items           =       {moneydecimal = {4,40}}, -- find all reward options at bottom of config
                                                                    },
                                                                    jobs            =       {
                                                                    whitelist       =       {enable = false, jobs = {"gang"}},
                                                                    blacklist       =       {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm","marshal", "doj"}},
                                                                    police          =       {enable = false, jobs = {"policeVal","policeBW","policeSD","policeArm"}, required = 2, alertall = false}, -- enabled = police with these jobs needs to be online. not enabled = Config.PoliceJobs need to be online, alertall enabled = alert Config.PoliceJobs, alertall disabled = alert these jobs
                                                                    alert           =       {enable = true, chance = 90, notify = "A gunpoint robbery has been reported at"},
                                                                    special         =       {enable = false, jobs = {"native"}, items = {money = {1,5}}}, -- special items for special jobs (eg. natives)
                                                                    veryspecial     =       {enable = true, jobs = {"police"}, wep = 389133414, press = 0x760A9C6F, label = "Dawg"} -- unused atm
                                                                    },
                                                                    BannedTowns     =       {
                                                                    "StDenis","Blackwater","Annesburg","Strawberry","Rhodes","Armadillo","Caliga","Emerald","Siska","Tumbleweed","Vanhorn","Wapiti"
                                                                    }, -- https://www.rdr2mods.com/wiki/pages/list-of-map-zones-r27/
                                                                    BannedAreas     =       {
                                                                        {x = -4359.36, y = -3064.85, z = -10.30, r = 30},
                                                                    }, -- r is radius
                                                                    BannedPeds      =       {
                                                                        "mp_beau_bink_males_01",
                                                                    },
                                                                    VerySpecialPeds      =  { -- unused atm
                                                                        "a_m_m_valfarmer_01",
                                                                    },
}

Config.Prompts = {
                            DynamiteTitle           =               "Vault Door",
                            VaultTitle              =               "Vault",
                            CashRegisterTitle       =               "Cash Register",
                            SecurityTitle           =               "Security Box",
                            Vault                   =               {0x39336A4F, "Use Dial"},
                            VaultUnlock             =               {0x8AAA0AD4, "Unlock"},
                            CashRegister            =               {0x39336A4F, "Rob"},
                            Dynamite                =               {0x39336A4F, "Set Dynamite"},
                            Security                =               {0x39336A4F, "Crack"},
}

Config.Texts = {
                            BlacklistedJob          =               "You cant do this",
                            Collected               =               "You collected",
                            ChestCollected          =               "You collected a",  
                            CollectedNothing        =               "You collected nothing...",
                            NoTicket                =               "You dont have a ticket",
                            AboutToExplode          =               "Get back, its gonna blow!",
                            AlreadyRobbed           =               "This place has already been robbed",
                            NoDynamite              =               "You dont have any dynamite",
                            NotEnoughPolice         =               "Not enough law on duty for this activity",
                            CantUse                 =               "You cant use this right now",
                            NotEquipped             =               "You need to equip the dynamite first",
                            Found                   =               "You robbed",
                            FoundWeapon             =               "You robbed a weapon!",  
                            FoundNothing            =               "You found nothing...",
                            CantCarryWeapon         =               "You dont have enough space",
                            NoBandana               =               "You might want to use a bandana",
                            NoLockpick              =               "You dont have any lockpicks",
                            NotInTown               =               "Somewhere Out of Town",
                            Alert                   =               "ALERT",
                            CheckMap                =               "Check your map for details",
                            Shoot                   =               "Shoot your weapon!",
                            LockpickBroke           =               "Your Lockpick broke",
                            GoLockpick              =               "Now go and lockpick!",
                            LeftScene               =               "You left the crime scene",
                            CurrentlyRobbing        =               "This place is already being robbed",
                            GoBlow                  =               "Now blow up the vault door!",
                            LawArrived              =               "The law has arrived, take care!",
                            Wait                    =               "You have to wait",
                            Seconds                 =               "seconds",
                            WrongJob                =               "You have no permission",
                            NoKey                   =               "You dont have the right key",
                            RobberyAborted          =               "The robber left the scene at",
                            SecurityOn              =               "Security systems are on, find the security box",
                            SecurityOff             =               "You turned off the security systems",
                            WrongTime               =               "This is not the right time for this..",
                            MissingExtraItem        =               "You are missing",
                            Infamy                  =               "INFAMY",
                            LowInfamy               =               "You are not experienced enough!",
                            InfamyNeed              =               "Infamy needed:"
}

function DisplayInfamy(myInfamy, pointsNeededforNext, rank, xpBarValue)
    local text = Config.Texts.Infamy .. "  " .. myInfamy .. " / " .. pointsNeededforNext .. ""

    -- to disable just comment out / delete everything in this function
    local mpRankBar = DatabindingAddDataContainerFromPath("", "mp_rank_bar")
    DatabindingAddDataString(mpRankBar, "rank_header_text", text)
    DatabindingAddDataInt(mpRankBar, "rank_header_text_alpha", 90)
    DatabindingAddDataString(mpRankBar, "rank_text", tostring(rank))
    DatabindingAddDataFloat(mpRankBar, "xp_bar_minimum", 0.0)
    DatabindingAddDataFloat(mpRankBar, "xp_bar_maximum", 100.0)
    DatabindingAddDataFloat(mpRankBar, "xp_bar_value", xpBarValue)

--[[
    local RPGStatusIconsContainer = DatabindingAddDataContainerFromPath("", "RPGStatusIcons")
    local honorIconData = DatabindingAddDataContainer(RPGStatusIconsContainer, "HonorIcon")
    DatabindingAddDataInt(honorIconData, "State", 16) -- number from 1-16 so need to recalc infamy.ranks to use this nicely
    EnableHudContext(121713391)
    Wait(6000)
    DisableHudContext(121713391)
    ]]
end

function CustomAlertAPI(type)
    local dispatchAPI = exports['556_dispatch'].dispatchAPI()
    local alertType = "sheriffAlert"
    dispatchAPI.triggerDispatch(alertType)

    --TriggerServerEvent("syn_alert:sendalert",players,{"army"},"A robbery was reported!",0x1A7A040D,false)
end

function OnDutyAPI(src, playerid, player, job)
    -- vorp syn society:
    --[[
    if exports["syn_society"]:IsPlayerOnDuty(playerid, job) then
        return true
    end
    return false
    ]]
    if exports["syn_society"]:IsPlayerOnDuty(playerid, job) then
        return true
    end
    return false

    -- rsg:
    --[[
    if player.PlayerData.job.onduty then
        return true
    end
    return false
    ]]

    -- return true -- if you dont want to use onduty just return true
end


-- This is for players who have problems hearing or other problems that make them not enjoy the safe minigame
-- It replaces the minigame with one of the following lockpick/circle minigames

Config.SpecialThanksTo = {
    everybody = false,
    steamids = {
        "steam:110000000000000",
    },
    lockpickscript = "syn"          -- syn / outsider / rsd / sirec / qbr / t3
}

--[[
INFAMY EXPORTS EXAMPLE (SERVERSIDE)

RegisterCommand("commandName", function(source, args , rawCommand)

    -- kind: 1 = add, 2 = remove, 3 = check (no value needed on check obv)
    -- in below example (2, 10) 10 infamy gets removed from the player
    local kind, value = 2, 100
    local result = exports['556_robbery']:infamy(source, kind, value)
    print(result)

end)


REWARD OPTIONS:

luck    = {true, 98}, -- general luck to receive something at all
random  = {false}, -- if enabled only picks 1 reward randomly from the item table below

gold, money, moneydecimal( - /10 ), moneydecimal2( - /100 ), bloodmoney( rsg only ), itemname, WEAPON_HASH,
the two numbers in the table after the reward exist to choose a random number inbetween e.g moneydecimal = {5,50} will/can get you between 50 cents and 5 dollars
]]

-- Normal Notify
RegisterNetEvent('Notification:rowwerynoty')
AddEventHandler('Notification:rowwerynoty', function(title, text)
    exports[GetCurrentResourceName()]:DisplayLeftNotification(title,
    text,
    'INVENTORY_ITEMS', 
    'kit_mask_metal',
    3000)
end)

-- Alert Notify
RegisterNetEvent('Notification:rowweryalertnoty')
AddEventHandler('Notification:rowweryalertnoty', function(title, text)
    exports[GetCurrentResourceName()]:DisplayLeftNotification(title,
    text,
    'l_016e22bcpp', 
    'headshot_karen',
    6000)
end)