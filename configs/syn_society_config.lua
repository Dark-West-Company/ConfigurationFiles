
Config = {}

Config.vorp = true
Config.redem = false
Config.metadata = true 

Config.useDecayitems = true     --New set false if you dont use vorp inv 4.0 or higher 

--New Item Blacklist for storage items in this list will not beable to be stored in the storage
Config.ItemBlacklist = {
    "wood",
    "stone",
    "metal",
    "p_ambpack02x",

}

-------- only have 1 enabled----------
Config.normaldrawtext = true -- 
Config.drawtext3d = false --
--------------------------------------
Config.discordid = true 
Config.OpenMenu = 0x760A9C6F -- Key: G
Config.unemployed = "unemployed" --- make sure u set this up in vorp core config as well 
Config.salarytime = 15 -- every 30 minutes players get a salary from the jobs ledger (only if the job has a ledger set up and is included in the config below yes the money gets taken out of the ledger)
Config.maxsalary = 25 -- 30$ max salary --max salary job owners are allowed to set to ranks


Config.autocollect = true -- set to false if you dont want bills from the jobs mentioned below to be auto collected on the spot and instead go to the billing menu 
Config.autocollectjob = {
    "doctor",
    "policeVal",
    "policeSD",
    "policeBW",
    "policeArm",
    "marshal"
}

Config.Locations = { 
	--[[ Valentine = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=-182.842, y=629.662, z=114.08}, -- location of job center 
        blipsprite = -272216216, -- blip sprite for job center
		Name = 'Job Center', -- blip name 
    }, ]]
    --[[ Valentine = {	   -- add more 
        Pos = {x=-182.842, y=629.662, z=114.08}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	}, ]]
}

Config.AllowedJobCenterjobs = { -- make sure all these jobs are the same as the ones set for "group": in the configNui.js
    "horsetrainer",    -- job name
    "miner",
    "police",
    "doctor",
    -- Add more allowed jobs here that are set in the configNui.js file
}

Config.jobs = { 
	policeVal = {	   
        Pos = { 
            {x=-279.21, y=809.9, z=119.3},
            {x=1361.56, y=-1303.22, z=77.76},
            {x=2508.43, y=-1308.72, z=48.95},
            {x=-763.41, y=-1271.52, z=43.99},
            {x=-3624.99, y=-2601.39, z=-13.39},
            {x=2907.72, y=1312.85, z=44.93},
            {x=-1807.44, y=-348.05, z=164.70},
            {x=-5530.88,y=-2929.16,z=-1.36,},

    
        }, -- position of blip
        jobmenu = { 
            {x=-279.21, y=809.9, z=119.3},
            {x=1361.56, y=-1303.22, z=77.76},
            {x=2508.43, y=-1308.72, z=48.95},
            {x=-763.41, y=-1271.52, z=43.99},
            {x=-3624.99, y=-2601.39, z=-13.39},
            {x=2907.72, y=1312.85, z=44.93},
            {x=-1807.44, y=-348.05, z=164.70},
            {x=-5530.88,y=-2929.16,z=-1.36,},
        }, -- position of job menu
        blipsprite = 778811758, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Police', -- name of blip
        recruitmentrank = 4,
        bossrank = 7, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 1, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Police Inv.", -- the name displayed when the container is open
        billing = true, -- allow players with this job to use billing by doing /bill amount
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true, -- (added line) enable/disable salary system.
    },
    marshal = {	   
        Pos = { 
            {x=2598.01, y=-1299.41, z=51.82},
        }, 
        jobmenu = { 
            {x=2598.01, y=-1299.41, z=51.82},
        },
        blipsprite = -592068833,
		Name = 'Fedral Marshals',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 5,
        containername = "Marshals Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    doj = {	   
        Pos = { 
            {x=-291.44, y=784.12, z=120.90}, -- Valentine Law Firm 
            
        }, 
        jobmenu = { 
            {x=-291.44, y=784.12, z=120.90}, -- Valentine Law Firm 
            
        },
        blipsprite = -592068833,
		Name = 'Dept. of Justice',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 10,
        containername = "DOJ Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    doctor = {	   
        Pos = { 
            {x=-288.89, y=808.89, z=119.38},
            {x=2976.17, y=571.99, z=44.81},
            {x=-1803.24, y=-432.46, z=158.83},
            {x=1370.36, y=-1312.08, z=77.93},
            {x=2721.72, y=-1225.92, z=50.36},
            {x=-831.95, y=-1269.82, z=43.68},
            {x=-5516.48, y=-2962.84, z=-0.81},
            {x=-3661.31, y=-2600.28, z=-13.28},
            {x=2921.79, y=1350.44, z=44.86},
        }, 
        jobmenu = { 
            {x=-288.89, y=808.89, z=119.38},
            {x=2976.17, y=571.99, z=44.81},
            {x=-1803.24, y=-432.46, z=158.83},
            {x=1370.36, y=-1312.08, z=77.93},
            {x=2721.72, y=-1225.92, z=50.36},
            {x=-831.95, y=-1269.82, z=43.68},
            {x=-5520.48, y=-2973.68, z=-0.86},
            {x=-3661.31, y=-2600.28, z=-13.28},
            {x=2921.79, y=1350.44, z=44.86},
        },
        blipsprite = -592068833,
		Name = 'Doctor',
        recruitmentrank = 6,
        bossrank = 7,
        containerid = 4,
        containername = "Doctor Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,

    },
    sta_val = {	   
        Pos = { 
            {x=-363.84, y=791.39, z=118.71},
            
        }, 
        jobmenu = { 
            {x=-363.84, y=791.39, z=118.71},
        },
        blipsprite = -592068833,
		Name = 'Valentine Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 3,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sta_straw = {	   
        Pos = {
            {x=-1823.63, y=-558.85, z=155.07},
        },
        jobmenu = {
            {x=-1823.63, y=-558.85, z=155.07},
        },
        blipsprite = -592068833,
		Name = 'Strawberry Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 42,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sta_bw = {	   
        Pos = {
            {x=-877.91, y=-1361.54, z=42.53},
        },
        jobmenu = {
            {x=-877.91, y=-1361.54, z=42.53},
        },
        blipsprite = -592068833,
		Name = 'Blackwater Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 45,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sta_annes = {	   
        Pos = { 
            {x=2969.97, y=794.65, z=50.40}, -- Stables near Van Horn, in SireVLC marked as Van Horn Stables. Fix it.
        }, 
        jobmenu = { 
            {x=2969.97, y=794.65, z=50.40},
        },
        blipsprite = -592068833,
		Name = 'Roanoke Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 43,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sta_sd = {	   
        Pos = { 
            {x=2508.48, y=-1462.46, z=45.32},
        }, 
        jobmenu = { 
            {x=2508.48, y=-1462.46, z=45.32},
        },
        blipsprite = -592068833,
		Name = 'Saint Denis Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 44,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sta_rhodes = {	   
        Pos = { 
            {x=1458.49, y=-1364.54, z=79.59},
        },
        jobmenu = { 
            {x=1458.49, y=-1364.54, z=79.59},
        },
        blipsprite = -592068833,
		Name = 'Rhodes Stables',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 46,
        containername = "Stables Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    smth_val = {	   
        Pos = { 
            {x=-368.84, y=796.38, z=117.61},
        }, 
        jobmenu = { 
            {x=-368.84, y=796.38, z=117.61},
        },
        blipsprite = -592068833,
		Name = 'Valentine Smithy',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 47,
        containername = "Smithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    smth_rho = {	   
        Pos = {
            {x=1308.31, y=-1348.51, z=76.58},
        },
        jobmenu = {
            {x=1308.31, y=-1348.51, z=76.58},
        },
        blipsprite = -592068833,
		Name = 'Rhodes Smithy',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 48,
        containername = "Smithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    smth_sd = {	   
        Pos = { 
            {x=2513.49, y=-1452.64, z=45.31},
        }, 
        jobmenu = { 
            {x=2513.49, y=-1452.64, z=45.31},
        },
        blipsprite = -592068833,
		Name = 'Saint Denis Smithy',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 49,
        containername = "Smithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    smth_straw = {	   
        Pos = {
            {x=-1822.57, y=-570.41, z=155.01},
        },
        jobmenu = {
            {x=-1822.57, y=-570.41, z=155.01},
        },
        blipsprite = -592068833,
		Name = 'Strawberry Smithy',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 50,
        containername = "Smithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    smth_arm = {	   
        Pos = {
            {x=-3684.41, y=-2564.15, z=-14.58},
        },
        jobmenu = {
            {x=-3684.41, y=-2564.15, z=-14.58},
        },
        blipsprite = -592068833,
		Name = 'Armadillo Smithy',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 51,
        containername = "Smithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    ran_prong = {	   
        Pos = {
            {x=-2559.97, y=404.66, z=147.34},
        },
        jobmenu = {
            {x=-2559.97, y=404.66, z=147.34},
        },
        blipsprite = -592068833,
		Name = 'Pronghorn Ranch',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 39,
        containername = "Ranch Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    ran_emcross = {	   
        Pos = {
            {x=1400.95, y=280.20, z=88.16},
        },
        jobmenu = {
            {x=1400.95, y=280.20, z=88.16},
        },
        blipsprite = -592068833,
		Name = 'Emerald Crossing Ranch',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 40,
        containername = "Ranch Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    ran_mcfar = {	   
        Pos = {
            {x=-2417.45, y=-2425.65, z=59.25},
        },
        jobmenu = {
            {x=-2417.45, y=-2425.65, z=59.25},
        },
        blipsprite = -592068833,
		Name = 'MacFarlens Ranch',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 41,
        containername = "Ranch Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gun_val = {	   
        Pos = { 
            {x=-283.05, y=777.53, z=121.11},
        }, 
        jobmenu = { 
            {x=-283.05, y=777.53, z=121.11},
        },
        blipsprite = -592068833,
		Name = 'Valentine Gunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 32,
        containername = "Gunsmithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    -- gun_straw = { --TODO: No suitable location, add buisness when we get one. 
    --     Pos = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     }, 
    --     jobmenu = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     },
    --     blipsprite = -592068833,
	-- 	Name = 'Strawberry Gunsmith',
    --     recruitmentrank = 0,
    --     bossrank = 3,
    --     containerid = 33,
    --     containername = "Gunsmithy Inv.",
    --     billing = true,
    --     webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
    --     salary = true,
    -- },
    gun_sd = {	   
        Pos = { 
            {x=2711.66, y=-1290.80, z=48.63},
        }, 
        jobmenu = { 
            {x=-288.89, y=808.89, z=119.38},
        },
        blipsprite = -592068833,
		Name = 'Saint Denis Gunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 34,
        containername = "Gunsmithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    -- gun_arm = { --TODO: No suitable location, need MLO
    --     Pos = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     }, 
    --     jobmenu = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     },
    --     blipsprite = -592068833,
	-- 	Name = 'Armadillo Gunsmith',
    --     recruitmentrank = 0,
    --     bossrank = 3,
    --     containerid = 35,
    --     containername = "Gunsmithy Inv.",
    --     billing = true,
    --     webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
    --     salary = true,
    -- },
    -- gun_bw = {  --TODO: Vanilla Blackwater has no suitable building??? Like at all. Once we get it - place the buisness
    --     Pos = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     }, 
    --     jobmenu = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     },
    --     blipsprite = -592068833,
	-- 	Name = 'Blackwater Gunsmith',
    --     recruitmentrank = 0,
    --     bossrank = 3,
    --     containerid = 36,
    --     containername = "Gunsmithy Inv.",
    --     billing = true,
    --     webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
    --     salary = true,
    -- },
    gun_annes = {	   
        Pos = { 
            {x=2949.96, y=1321.56, z=43.82},
        }, 
        jobmenu = { 
            {x=2949.96, y=1321.56, z=43.82},
        },
        blipsprite = -592068833,
		Name = 'Annesburg Gunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 37,
        containername = "Gunsmithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gun_rho = {	   
        Pos = {
            {x=1320.59, y=-1325.90, z=76.88},
        },
        jobmenu = {
            {x=1320.59, y=-1325.90, z=76.88},
        },
        blipsprite = -592068833,
		Name = 'Rhodes Gunsmith',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 38,
        containername = "Gunsmithy Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_val1 = {	   
        Pos = { 
            {x=-314.13, y=809.87, z=117.98},
        }, 
        jobmenu = { 
            {x=-314.13, y=809.87, z=117.98},
        },
        blipsprite = -592068833,
		Name = 'Smithfield\'s Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 31,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_val2 = {	   
        Pos = { 
            {x=-238.97, y=770.30, z=117.10},
        }, 
        jobmenu = { 
            {x=-238.97, y=770.30, z=117.10},
        },
        blipsprite = -592068833,
		Name = 'Keane\'s Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 22,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_sd1 = {	   
        Pos = { 
            {x=2639.92, y=-1223.51, z=52.38},
        }, 
        jobmenu = { 
            {x=2639.92, y=-1223.51, z=52.38},
        },
        blipsprite = -592068833,
		Name = 'The Bastille Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 23,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_sd2 = {	   
        Pos = { 
            {x=2793.49, y=-1165.76, z=46.93},
        }, 
        jobmenu = { 
            {x=2793.49, y=-1165.76, z=46.93},
        },
        blipsprite = -592068833,
		Name = 'Doyle\'s Tavern',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 24,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_rho = {	   
        Pos = {
            {x=1336.62, y=-1372.87, z=79.49},
        },
        jobmenu = {
            {x=1336.62, y=-1372.87, z=79.49},
        },
        blipsprite = -592068833,
		Name = 'Rhodes Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 25,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_annes = {	   
        Pos = { 
            {x=2952.16, y=1359.57, z=43.86}, -- TODO: temp position until we get Annesburg Reborn.
        }, 
        jobmenu = { 
            {x=2952.16, y=1359.57, z=43.86},
        },
        blipsprite = -592068833,
		Name = 'Annesburg Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 26,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_vanhorn = {	   
        Pos = { 
            {x=2948.50, y=529.21, z=44.33},
        }, 
        jobmenu = { 
            {x=2948.50, y=529.21, z=44.33},
        },
        blipsprite = -592068833,
		Name = 'Van Horn Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 27,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    -- sal_straw = { --TODO: No suitable place, need MLO or smth. 
    --     Pos = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     }, 
    --     jobmenu = { 
    --         {x=-288.89, y=808.89, z=119.38},
            
    --     },
    --     blipsprite = -592068833,
	-- 	Name = 'Strawberry Saloon',
    --     recruitmentrank = 0,
    --     bossrank = 3,
    --     containerid = 28,
    --     containername = "Saloon Inv.",
    --     billing = true,
    --     webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
    --     salary = true,
    -- },
    sal_bw = {
        Pos = {
            {x=-819.63, y=-1320.41, z=42.68},
        },
        jobmenu = {
            {x=-819.63, y=-1320.41, z=42.68},
        },
        blipsprite = -592068833,
		Name = 'Blackwater Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 29,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_arm = {	   
        Pos = {
            {x=-3698.25, y=-2600.91, z=-14.31},
        },
        jobmenu = {
            {x=-3698.25, y=-2600.91, z=-14.31},
        },
        blipsprite = -592068833,
		Name = 'Armadillo Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 30,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    sal_tumbl = {	   
        Pos = {
            {x=-5515.42, y=-2902.97, z=-2.75},
        },
        jobmenu = {
            {x=-5515.42, y=-2902.97, z=-2.75},
        },
        blipsprite = -592068833,
		Name = 'Tumbleweed Saloon',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 31,
        containername = "Saloon Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_val = {	   
        Pos = { 
            {x=-325.53, y=803.98, z=116.88},
        }, 
        jobmenu = { 
            {x=-325.53, y=803.98, z=116.88},
        },
        blipsprite = -592068833,
		Name = 'Valentine General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 12,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_straw = {	   
        Pos = {
            {x=-1789.35, y=-388.38, z=159.33},
        },
        jobmenu = {
            {x=-1789.35, y=-388.38, z=159.33},
        },
        blipsprite = -592068833,
		Name = 'Strawberry General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 13,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_rho = {	   
        Pos = {
            {x=1331.45, y=-1290.89, z=76.02},
        },
        jobmenu = {
            {x=1331.45, y=-1290.89, z=76.02},
        },
        blipsprite = -592068833,
		Name = 'Rhodes General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 14,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_annes = {	   
        Pos = { 
            {x=2933.31, y=1367.28, z=44.18}, -- TODO: Temp location until we get Annesburg Reborn
        }, 
        jobmenu = { 
            {x=2933.31, y=1367.28, z=44.18},
        },
        blipsprite = -592068833,
		Name = 'Annesburg Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 15,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_vanhorn = {	   
        Pos = { 
            {x=3022.81, y=558.57, z=43.73},
        }, 
        jobmenu = { 
            {x=3022.81, y=558.57, z=43.73},
        },
        blipsprite = -592068833,
		Name = 'Van Horn Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 16,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_arm = {	   
        Pos = {
            {x=-3690.19, y=-2627.08, z=-14.41},
        },
        jobmenu = {
            {x=-3690.19, y=-2627.08, z=-14.41},
        },
        blipsprite = -592068833,
		Name = 'Armadillo General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 17,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_bw = {	   
        Pos = {
            {x=-777.09, y=-1320.97, z=42.88},
        },
        jobmenu = {
            {x=-777.09, y=-1320.97, z=42.88},
        },
        blipsprite = -592068833,
		Name = 'Blackwater General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 18,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_tumbl = {	   
        Pos = {
            {x=-5483.10, y=-2934.11, z=-1.40},
        },
        jobmenu = {
            {x=-5483.10, y=-2934.11, z=-1.40},
        },
        blipsprite = -592068833,
		Name = 'Tumbleweed General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 19,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
    gs_sd = {	   
        Pos = { 
            {x=2821.61, y=-1318.24, z=45.76},
        }, 
        jobmenu = { 
            {x=2821.61, y=-1318.24, z=45.76},
        },
        blipsprite = -592068833,
		Name = 'Saint Denis General Store',
        recruitmentrank = 0,
        bossrank = 3,
        containerid = 20,
        containername = "General Store Inv.",
        billing = true,
        webhook = true, -- set true if you want to use webhooks for this job, input your webhook link in the Logs.dutywebhooks table in logs.lua
        salary = true,
    },
}
-------------------
Config.alertsfunction = true

Config.alerts = {
    police = { -- job name
        command = "alertpolice",
        jobs = {
            "policeVal",
            "policeSD",
            "policeBW",
            "policeArm",
            "marshal"
        }, -- jobs the alert is sent to
        msg = "police help needed. check map for coords", -- alert sent to the players with the job name 
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Police Alert',
        }
    },
    doctor = {
        command = "alertdoctor",
        jobs = {"doctor"},
        msg = "doctor help needed. check map for coords",
        isdoctor = true,
        blip = {
            blipsprite = 2119977580,
            Name = 'Medic Alert',
        }
    },
   
}
Config.medicresponse = "resp"
Config.cancelblipcommand = "calert" -- removes alert blips
Config.alertcooldown = 60 -- seconds
Config.viewonduty = "viewduty" -- allows admins or job boss rank to viw who is on duty. for boss rank players its just /viewduty, for admins its /viewduty jobname
Config.ondutycommand = "onduty"
Config.offdutycommad = "offduty"
Config.checkduty = "checkduty"
Config.nosalaryoffduty = true -- dont pay salary to off duty players for the jobs listed below 
Config.dutyjobs = {
    "policeVal",
    "policeSD",
    "policeBW",
    "policeArm",
    "doctor"
}
Config.afkoffdutytimer = 5 -- go off duty if you are alerted and afk for 5 minutes
Config.ondutyinstant = true -- instantly go on duty when command is used 
Config.ondutytime = 2.5 -- minutes 


Config.dutystationsenabled = false -- 
Config.menuoption = false -- if set to true players can still use the onduty command but will be prompted to select their region
Config.dutystationjobs = {
    -- "policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm"
}

-- TODO: When theres multiple departments - configure access properly
Config.dutystationlocations = {
    -- ["armadillo"] = {
    --     coords = {x = -3620.92, y = -2606.35, z = -13.33},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Armadillo Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["blackwater"] = {
    --     coords = {x = -761.7, y = -1268.1, z = 44.0},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Blackwater Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["strawberry"] = {
    --     coords = {x = -1814.0, y = -354.8, z = 164.6},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Strawberry Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["valentine"] = {
    --     coords = {x = -278.4, y = 805.3, z = 119.3},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Valentine Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["annes"] = {
    --     coords = {x = 2908.3, y = 1308.9, z = 44.9},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Annesburg Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["rhodes"] = {
    --     coords = {x = 1361.95, y = -1298.9, z = 77.76},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Rhodes Duty Station",
    --     blipsprite = -1656531561,
    -- },
    -- ["sd"] = {
    --     coords = {x = 2511.99, y = -1309.1, z = 48.95},
    --     job = {"policeVal",
    -- "policeSD",
    -- "policeBW",
    -- "policeArm","marshal"},
    --     showblip = true,
    --     blipname = "Saint Denis Duty Station",
    --     blipsprite = -1656531561,
    -- },
}

----------------
Config.Language = {
    usestation = "You Need To Use A Duty Station To Go On Duty", -- new language
    SelectedJob = "You have selected the job :", -- new language
    goonduty = "Press (G) To Go On Duty At: ", -- new language
    dutyregions = " Duty Regions", -- new language
    changingroom = "Changing Room",
    manageemployees = "Manage Employees",
    jobmenu = "Job Menu",
    nooutfits = "No saved outfits",
    outfits = "Outfits",
    yourjobis = "your job title is : ",
    hire = "Hire",
    fire = "Fire",
    setsalary = "Set Salary",
    setrank = "Set Rank",
    cantfire = "Cant Fire Yourself",
    canthire = "Cant Hire Yourself",
    youhired = "You Hired ",
    youfired = "You Fired ",
    hired = "You Were Hired as ",
    fired = "You Were Fired From ",
    changerank = "You Changed The Job Rank of ",
    rankchanged = "your Job Rank Was Changed To ",
    cantchangerank = "You Cant Change Your Own Rank",
    highestrank = "You Cant Rank Above Or Equal To The Highest Rank, Rank: ",
    Torank = " To Rank: ",
    listrank = " // Rank: ",
    confirm = "Confirm",
    playerid = "Player ID",
    rank = "Rank",
    salarys = "Salary",
    salary = "You Recieved A Salary Payment of: ",
    maxsalary = "Cannot exceed max salary of : ",
    salaryupdated = "You Updated The Salary Of Rank ",
    to = " To ",
    from = " From ",
    noledgercash = "Your Society Ledger Doesnt Have Enough Cash To Pay Salary",
    ledger = "Ledger",
    ledgercash = "Job Ledger Cash: ",
    depositcash = "Deposit Cash",
    withdrawcash = "Withdraw Cash",
    deposited = "You Deposited : ",
    invalidamount = "Invalid Amount",
    withdrew = "You Withdrew : ",
    inventory = "Inventory",
    qt = "Invalid quantity",
    carry = "You cant carry more items",
    limit = "You reached the limit for this item",
    someoneisclose = "Someone is too close to you",
    noplayer = "No Person Nearby",
    finesent = "You Sent A Bill Amount Of :",
    finerecieve = "You Recieved A Bill Amount Of :",
    bills = "Your Bills:",
    billpaid = "You Paid A Bill Amount Of: ",
    takena = " Has Taken A ",
    taken = " Has Taken ",
    put = " Deposited ",
    issuedbill = " Issued A Bill Amount Of ",
    paidbill = " Paid A Bill Amount Of",
    withdrews = " Withdrew An Amount Of ",
    deposits = " Deposited An Amount Of ",
    billss = "Bills:",
    viewbills = "View Bills",
    drawtextjobmenu = "Press G For Job Menu", 
    drawtextjobcenter = "Press G For Job Center", 
    nocash1 = "You Dont Have Enough Money", 
    maxslots = "cant store more items, slot limit is ", -- newline	
    dothis = "~e~do /",
    toremovenoti = " to remove notifications",
    needsyourhelp = "someone needs your help, check your map for a blip do ~e~(/",
    needsyourhelp2 = "~e~someone needs your help, check your map for a blip",
    torespond = ")~q~ to respond", 
    docontheway = "~e~Doctor is on the way",
    nodoc = "~e~ No Doctors Available",
    youonduty = "~e~ You Are on Duty",
    youoffduty = "~e~ You Are off Duty",
    duty = " On Duty",
    offD = " Off Duty",
    serverid = "Server ID: ",
    noneavailable = "None Available", 
    waitafew = "Cant Spam Wait a Few", 
    alertsent = "Alert Sent", 
    afkoffduty = "You were taken off duty for being AFK",
    wentonduty = "Is on Duty",
    wentoffduty = "Is off Duty",
    cantgoonduty = "cant go on duty if hogtied,dead or cuffed",
    issuedBillLogs = "Issued Bill",
    paidBillLogs = "Paid Bill",
    blacklistedItem = "Item Is Blacklisted", 
    
}
