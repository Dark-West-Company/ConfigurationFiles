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
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Carrot",
		herbItem = "crop_carrot",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"s_inv_wildcarrot01x", 5, 0.8},
			[2] = {"s_inv_wildcarrot01x", 3, 0.6},
			[3] = {"s_inv_wildcarrot01x", 2, 0.3},
			[4] = {"s_inv_wildcarrot01x", 1, 0.0},
		},
		weatherAffect = true,
		growTime = 5,
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
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Apple",
		herbItem = "consumable_apple",
		itIsTree = true,
		canPickAfterGrow = 10,
		potStageProps = {
			[1] = {"p_tree_apple_01", 5, 3.0},
			[2] = {"p_tree_apple_01", 3, 2.2},
			[3] = {"p_tree_apple_01", 2, 1.4},
			[4] = {"p_tree_apple_01", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
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

	["seed_wheat"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Wheat",
		herbItem = "crop_wheat",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"crp_wheat_dry_long_aa_sim", 5, 3.0},
			[2] = {"crp_wheat_dry_long_aa_sim", 3, 2.2},
			[3] = {"crp_wheat_dry_long_aa_sim", 2, 1.4},
			[4] = {"crp_wheat_dry_long_aa_sim", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_wheat", 5},
			[50] = {"crop_wheat", 3},
			[25] = {"crop_wheat", 2},
			[0] = {"crop_wheat", 1},
		},
	},
	
		["seed_corn"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Corn",
		herbItem = "crop_corn",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"crp_cornstalks_ab_sim", 5, 3.0},
			[2] = {"crp_cornstalks_ab_sim", 3, 2.2},
			[3] = {"crp_cornstalks_ab_sim", 2, 1.4},
			[4] = {"crp_cornstalks_ab_sim", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_corn", 5},
			[50] = {"crop_corn", 3},
			[25] = {"crop_corn", 2},
			[0] = {"crop_corn", 1},
		},
	},
	
			["seed_potato"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Potato",
		herbItem = "crop_potato",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"crp_potato_aa_sim", 301, 3.0},
			[2] = {"crp_potato_aa_sim", 250, 2.2},
			[3] = {"crp_potato_aa_sim", 100, 1.4},
			[4] = {"crp_potato_aa_sim", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_potato", 5},
			[50] = {"crop_potato", 3},
			[25] = {"crop_potato", 2},
			[0] = {"crop_potato", 1},
		},
	},
		
			["seed_pumpkin"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Pumpkin",
		herbItem = "crop_pumpkin",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"p_pumpkingroup01x", 5, 3.0},
			[2] = {"p_pumpkingroup01x", 3, 2.2},
			[3] = {"p_pumpkingroup01x", 2, 1.4},
			[4] = {"p_pumpkingroup01x", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_pumpkin", 5},
			[50] = {"crop_pumpkin", 3},
			[25] = {"crop_pumpkin", 2},
			[0] = {"crop_pumpkin", 1},
		},
	},
			
			["seed_lettuce"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Lettuce",
		herbItem = "crop_lettuce",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"crp_lettuce_aa_sim", 5, 3.0},
			[2] = {"crp_lettuce_aa_sim", 3, 2.2},
			[3] = {"crp_lettuce_aa_sim", 2, 1.4},
			[4] = {"crp_lettuce_aa_sim", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_lettuce", 5},
			[50] = {"crop_lettuce", 3},
			[25] = {"crop_lettuce", 2},
			[0] = {"crop_lettuce", 1},
		},
	},
			
			["seed_orange"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Orange",
		herbItem = "seed_orange",
		itIsTree = true,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"p_tree_mangrove_02", 301, 3.0},
			[2] = {"p_tree_mangrove_02", 250, 2.2},
			[3] = {"p_tree_mangrove_02", 100, 1.4},
			[4] = {"p_tree_mangrove_02", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_tree","base", 5},
		rewardItem = {
			[80] = {"crop_orange", 5},
			[50] = {"crop_orange", 3},
			[25] = {"crop_orange", 2},
			[0] = {"crop_orange", 1},
		},
	},
			
			["seed_grape"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Grape",
		herbItem = "seed_grape",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"orchid_v_p", 5, 3.0},
			[2] = {"orchid_v_p", 3, 2.2},
			[3] = {"orchid_v_p", 2, 1.4},
			[4] = {"orchid_v_p", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_grape", 5},
			[50] = {"crop_grape", 3},
			[25] = {"crop_grape", 2},
			[0] = {"crop_grape", 1},
		},
	},
				
			["seed_onion"] = {
		enableHerbToSeed = false,
		multipleUse = false,
		multipleEvent = "gum_stables:eatFunctionForFarming",
		herbToSeed = 3,
		herbName = "Onion",
		herbItem = "seed_onion",
		itIsTree = false,
		canPickAfterGrow = 0,
		potStageProps = {
			[1] = {"crp_wheat_sap_long_aa_sim", 301, 3.0},
			[2] = {"crp_wheat_sap_long_aa_sim", 250, 2.2},
			[3] = {"crp_wheat_sap_long_aa_sim", 100, 1.4},
			[4] = {"crp_wheat_sap_long_aa_sim", 1, 0.8},
		},
		weatherAffect = true,
		growTime = 5,
		temperatureSlow = -3,
		temperatureGood = {-3, 30},
		temperatureHot = 30,

		fertilizer = 0,
		quality = 100,
		procure = 100,
		jerks = 0,

		gatherAnimation = {"mech_pickup@plant@orchid_plant","base", 5},
		rewardItem = {
			[80] = {"crop_onion", 5},
			[50] = {"crop_onion", 3},
			[25] = {"crop_onion", 2},
			[0] = {"crop_onion", 1},
		},
	},
}
