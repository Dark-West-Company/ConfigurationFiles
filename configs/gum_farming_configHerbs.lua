Config.FarmHerbs = {
	["seed_hop"] = {--Item Seed ID
		enableHerbToSeed = false,--If you have enabeld after you use herb -> automaticaly get seeds
		multipleUse = false,--If you have enabled you can use herb and get input with "To seed" "Interact"
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount (multipleUse)
		herbToSeed = 3,--How much get from herb seeds
		herbName = "Hop",--Herb name
		herbItem = "crop_hop",--Herb item

		itIsTree = false,--Regrow system. Plant stay there but you can pick herb, and after again grow you an pick again. Good for apple trees etc.
		canPickAfterGrow = 0,--How much times from regrow system you can pick herb

		-- coordsLocks = {--If you want lock coords for plant herb
		-- 	[1] = {1397.2660, 210.4541, 91.6371, 20.00},
		-- 	[2] = {1410.5343, 224.5811, 90.9479, 20.00},
		-- 	[3] = {1387.0291, 235.8169, 91.3079, 20.00},
		-- 	[4] = {1373.8512, 224.7362, 90.9936, 20.00}
		-- },
		potStageProps = {--Stage is calculated automaticaly from grow time
			-- *STAGE   |   MODEL     |    TIME | HOW MUCH IN GROUND*(Z Value) --
			[1] = {"s_inv_milkweed01bx", 3, 0.0},--Must be +1 from grow time
			[2] = {"s_inv_milkweed01cx", 2, 0.0},
			[3] = {"s_inv_milkweed01x", 2, 0.0},
			[4] = {"s_milkweed01x", 1, 0.0},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 2,--300 min time without affecting temp
		temperatureSlow = -3,--If temperature is under -3 automaticaly slow grow
		temperatureGood = {-3, 30},--If temperature between this, herb grow normal
		temperatureHot = 30,--If temperature is bigger thjan 30 herb need more water (2x more)

		fertilizer = 0,--If you plant herb, how much have fertilize
		quality = 100,--If you plant herb, how much have quality
		procure = 100,--If you plant herb, how much have procure
		jerks = 0,--If you plant herb, how much have jerks

		gatherAnimation = {"mech_pickup@plant@yarrow","base", 3},--Animation for gather herb
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"crop_hop", 5},--Upper 80% to 100%
			[50] = {"crop_hop", 3},--Upper 50% to 80%
			[25] = {"crop_hop", 2},--Upper 25% to 50%
			[0] = {"crop_hop", 1},--Upper 0% to 25%
		},
	},

	["seed_carrot"] = {
		enableHerbToSeed = false,
		multipleUse = true,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Carrot",
		herbItem = "crop_carrot",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"s_inv_wildcarrot01x", 301, 0.8},
			[2] = {"s_inv_wildcarrot01x", 250, 0.6},
			[3] = {"s_inv_wildcarrot01x", 100, 0.3},
			[4] = {"s_inv_wildcarrot01x", 1, 0.0},
		},
		weatherAffect = true,
		growTime = 300,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,
		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 4},

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		rewardItem = {
			[80] = {"crop_carrot", 5},
			[50] = {"crop_carrot", 3},
			[25] = {"crop_carrot", 2},
			[0] = {"crop_carrot", 1},
		},
	},

	["seed_apple"] = {
		enableHerbToSeed = false,
		multipleUse = true,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Apple",
		herbItem = "consumable_apple",
		itIsTree = true,
		canPickAfterGrow = 10,
		potStageProps = {
			[1] = {"p_tree_apple_01", 301, 3.0},
			[2] = {"p_tree_apple_01", 250, 2.2},
			[3] = {"p_tree_apple_01", 100, 1.4},
			[4] = {"p_tree_apple_01", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 300,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_tree","base", 5},
		rewardItem = {
			[80] = {"consumable_apple", 5},
			[50] = {"consumable_apple", 3},
			[25] = {"consumable_apple", 2},
			[0] = {"consumable_apple", 1},
		},
	},
}