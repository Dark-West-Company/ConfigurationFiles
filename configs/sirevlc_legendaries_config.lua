Config = {}
 
-- VERSION 2.3 - 04.08.25
 
--------------------------------------------------

			-- FRAMEWORK SELECTION --
			
-------------------------------------------------- 
-- TURN YOUR FRAMEWORK TO TRUE AND ALL THE OTHERS TO FALSE

Config.REDEMRP2          				 			= false
Config.REDEMRP2023REBOOT 				 			= false
Config.VORP              				 			= true
Config.RSG               				 			= false
			
Config.Debug 							 			= false   -- ONLY SET TO TRUE FOR SUPPORT
Config.EnableGoldCurrencyNotifications   			= true   -- ONLY FOR VORP 
			
Config.EnableEagleEye 					 			= true 	 -- Enable Eagle eye to see the clues 
Config.EnableRunningEagleEye 			 			= true 	 -- Enable Eagle while running
			
Config.RoleRestriction 					 			= false  -- ENABLE / DISABLE ROLES RESTRICTION FOR ALLOWING TO GATHER AND ACCESS HERBS SHOPS AND MISSIONS 
Config.Roles = { 					     					 -- LIST THE ROLES ALLOWED TO GATHER AND ACCESS HERBS SHOPS
"trapper",
}

Config.CluesMissionChance 	   						= 10    -- % of chance that checking a clue will lead to another clue sequence
Config.LegendaryEscapeDistance 						= 150.0 -- If the legendary animal gets away from the player, it will automatically gets removed at this distance
 
Config.CooldownEnabled                  			= true  -- Enable / Disable the cooldown after every mission completed and every mission failed
Config.CooldownTimer                    			= 3     -- In minutes Cooldown after every mission before you can do another one / 1 min minimum

 
-- PROMPTS 
Config.legendariesMissionPromptTitle  				= "Open Shop"
Config.legendariesMissionPromptTitle2 				= "Legendary Hunter"
Config.legendariesMissionPrompt       				= 0xC7B5340A -- ENTER 
 
Config.Clues_legendariesMissionPromptTitle  		= "Check Clue"
Config.Clues_legendariesMissionPromptTitle2 		= "Legendary Hunter"
Config.Clues_legendariesMissionPrompt      			= 0xC7B5340A -- ENTER 

-- TRANSLATIONS
Config.Clues_legendariesMissionFound      			= "Clue found"

Config.LegendaryHunterNotifTitle      			    = "Legendary Hunter"
Config.LegendaryAnimalBlipName        			    = "Legendary Animal"
Config.LegendaryHunterNoChance        			    = "The legendary animal was not attracted this time"
Config.LegendaryHunterHour        	  			    = "Now is not the right time to hunt this legendary animal try again later"
Config.LegendaryHunterHourNoMission       	  		= "Now is not the right time to hunt any legendary animal"
Config.LegendaryHunterMissionStarted  			    = "Mission Started"
Config.LegendaryHunterMissionSuccess  			    = "Mission Success"
Config.LegendaryHunterMissionFailed   			    = "Mission Failed"
 
Config.NoRole                      	  			    = "You dont have the right role"
Config.SellAll                     	  			    = "Sell all"
Config.SellAllDesc                 	  			    = "Sell all herbs you have from your inventory"
Config.SellOne                     	  			    = "Sell one"
Config.SellOneDesc                 	  			    = "Sell only one herb from your inventory"
			   
Config.MissionObjective               			    = "Get to the zone and find the ~COLOR_GOLD~legendary animal"
Config.MissionObjective2              			    = "Use the right bait to lure the ~COLOR_GOLD~legendary animal"
Config.MissionObjective3              			    = "Wait for the ~COLOR_GOLD~legendary animal~COLOR_WHITE~ to come"
Config.MissionObjective4              			    = "Wait until the ~COLOR_GOLD~legendary animal~COLOR_WHITE~ has reached the bait and then kill it"
Config.MissionObjective5              			    = "The legendary animal has ~COLOR_RED~ spotted you"
																													   
Config.MissionObjective6              			    = "Go to the last ~COLOR_GOLD~legendary animal~COLOR_WHITE~ 's known location"
Config.MissionObjective7              			    = "Look for ~COLOR_GOLD~clues~COLOR_WHITE~ in the area"
Config.MissionObjective8              			    = "Find the next ~COLOR_GOLD~clue"
Config.MissionObjective9              			    = "A ~COLOR_GOLD~legendary animal~COLOR_WHITE~ is near your position"
Config.MissionObjective10              			    = "The Legendary animal has ~COLOR_RED~escaped"
Config.MissionObjective11              			    = "The ~COLOR_GOLD~Legendary animal has reached the location"
Config.MissionObjective12              			    = "Wait for the cooldown to end"
Config.MissionObjective13              			    = "You are using the ~COLOR_RED~wrong bait"
Config.MissionObjective14              			    = "You are already in a mission"

Config.Legendaries_CompendiumTitle 					= "Legendaries Compendium"
Config.TextNotifGoldSign 							= "Gold"
Config.MainMenuTitle     							= "<span style='color:gold;'>Legendary Hunter</span>" 


Config.MainMenu = {
[1]  = {label = "Purchase",            		   value = "action01", desc = "Purchase the baits that you need"          ,		       				 image = "items/provision_shop_sell.png" },
[2]  = {label = "Start Bait Mission",          value = "action02", desc = "Start a mission which uses baits and hunt a legendary animal",		 image = "items/consumable_herbivore_bait.png" },
[3]  = {label = "Start Clues Mission",         value = "action03", desc = "Start a mission where you need to track down the legendary animal",   image = "items/document_collector_map.png" },
}                                                                                                                       

Config.ShoppingItems = {
[1]  = {itemname = "consumable_herbivore_bait", 	        label = "Herbivore Bait", 	        txtdict = "INVENTORY_ITEMS", txtimage = "consumable_herbivore_bait" 	   ,   				description = "Purchase 1x Herbivore Bait", 	      menuimage = "items/consumable_herbivore_bait.png", 		        dollarprice = 6.0,    goldprice = 0.0},
[2]  = {itemname = "consumable_predator_bait",    	        label = "Predator Bait", 		    txtdict = "INVENTORY_ITEMS", txtimage = "consumable_predator_bait" 		   ,   				description = "Purchase 1x Predator Bait", 		      menuimage = "items/consumable_predator_bait.png", 		        dollarprice = 8.0,    goldprice = 0.0},	 
[3]  = {itemname = "consumable_potent_herbivore_bait",   	label = "Potent Herbivore Bait",	txtdict = "INVENTORY_ITEMS", txtimage = "consumable_potent_herbivore_bait" ,   				description = "Purchase 1x Potent Herbivore Bait",    menuimage = "items/consumable_potent_herbivore_bait.png",         dollarprice = 15.0,   goldprice = 0.0},
[4]  = {itemname = "consumable_potent_predator_bait",     	label = "Potent Predator Bait", 	txtdict = "INVENTORY_ITEMS", txtimage = "consumable_potent_predator_bait"  ,   				description = "Purchase 1x Potent Predator Bait",     menuimage = "items/consumable_potent_predator_bait.png", 	        dollarprice = 20.0,   goldprice = 0.0},
[5]  = {itemname = "provision_legendaries_compendium",     	label = "Legendary Compendium", 	txtdict = "INVENTORY_ITEMS_MP", txtimage = "document_map_role_naturalist_legendary_animal",    description = "Purchase 1x Legendary Map Compendium", menuimage = "items/provision_legendaries_compendium.png", 	    dollarprice = 200.0,  goldprice = 0.0},
} 

Config.CompendiumTitleFont = 24
Config.CompendiumTextFont  = 2
 
Config.Legendaries_Compendium = {
 
 	[1] = {
 		 label    = "Legendary Gabbro Horn Ram",
 		 txtdict  = "inventory_items_mp" ,
 		 txtimage = "mp_animal_ram_legendary_01",
 		 mapdict  = "menu_camp_textures" ,
 		 mapimage = "map_camp_location_rio_bravo",
 		 image    = "items/mp_animal_ram_legendary_01.png",
 		 desc     = "This ram has been seen traversing the \n arid terrain of Rio Bravo \n It is known for its white skin and prominent black horns \n Fast and agile it can be hard to catch when moving \n at full speed so approach with care \n It is most active from dawn \n into the hottest part of the day \n You better use potent herbivore bait", 
         }, 
 
 	[2] = {
 		 label    = "Legendary Chalk Horn Ram",
 		 txtdict  = "inventory_items_mp" ,
 		 txtimage = "mp_animal_ram_legendary_02",
 		 mapdict  = "menu_camp_textures" ,
 		 mapimage = "map_camp_location_grizzlies",
 		 image    = "items/mp_animal_ram_legendary_02.png",
 		 desc     = "This Ram has been spotted high up \n in the Grizzlies east of the Calumet Ravine \n With a gray body and a bright white head  \n this ram is of great interest to Naturalists in the area  \n It has no issue negotiating the rocky landscape  \n and has been seen in both broad daylight  \n and the low light of dusk \n it has a taste for potent herbivore bait", 
         }, 
 		 
 	[3] = {
 		 label    = "Legendary Rutile Horn Ram",
 		 txtdict  = "inventory_items_mp" ,
 		 txtimage = "mp_animal_ram_legendary_03",
 		 mapdict  = "menu_camp_textures" ,
 		 mapimage = "map_camp_location_grizzlies",
 		 image    = "items/mp_animal_ram_legendary_03.png",
 		 desc     = "This rare ram has been sighted in Rio Bravo \n and in Cholla Springs \n Its wool is black and its horns dark red \n It is known to charge at passerby and attack \n other animals in its territory \n Word has spread fast \n due to the aggressive nature of the ram \n it can be seen in broad daylight \n and prefers potent herbivore bait", 
        }, 	
  
 	[4] = {
		 label    = "Legendary Teca Gator",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_alligator_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_bayou_nwa",
		 image    = "items/mp_animal_alligator_legendary_01.png",
 		 desc     = "This alligator is rumored to reside \n in the Lannahechee River southwest of Saint Denis \n it is famous for its slick black skin \n If approaching be wary of its powerful jaws \n which can deliver a deadly bite \n This species is most active at night \n when it is well camouflaged in the dark water", 
         },	
 
  	[5] = {
		 label    = "Legendary Banded Gator",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_alligator_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_bayou_nwa",
		 image    = "items/mp_animal_alligator_legendary_03.png",
 		 desc     = "Word has spread about a strange alligator \n near Saint Denis It is said to have white skin \n and a red striped back \n With a nest so close to the city \n the Legendary Banded Gator is likely to become \n defensive and territorial \n Do not be fooled by its size \n This gator can move with considerable speed \n it can be found anytime \n Better use potent predator bait", 
         },
 
  	[6] = {
		 label    = "Legendary Sun Gator",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_alligator_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_bayou_nwa",
		 image    = "items/mp_animal_alligator_legendary_02.png",
 		 desc     = "This alligator has been spotted by residents in Lakay \n It has a distinctive orange coloring \n which can be easy to spot among the green \n and brown of the bayou \n It is patient and cunning biding its time before \n it takes down prey \n It is rarely seen outside early hours \n of the morning and favors heavy predator bait", 
         }, 
 
 
   	[7] = {
		 label    = "Legendary Midnight Paw Coyote",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_coyote_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_coyote_legendary_02.png",
 		 desc     = "Hunting southeast of Strawberry \n this coyote is well known to the local people \n even if few have seen it firsthand \n With unique yellow eyes and black fur \n it is easily distinguished from the more \n common coyotes in the area \n Highly cautious coyotes will flee from nearby humans \n They are active from dawn hunting late into the day \n Some small herbivore bait should be enough to lure them", 
         }, 
 
   	[8] = {
		 label    = "Legendary Milk Coyote",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_coyote_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_tall_trees",
		 image    = "items/mp_animal_coyote_legendary_03.png",
 		 desc     = "Residents of Blackwater are concerned \n about a coyote that has been picking off livestock \n Its white fur and pale eyes are instantly recognizable \n With a den nearby it has learned to cross both the countryside \n and urban area with ease Locals have threatened \n to take on the coyote themselves \n if it continues to terrorize them \n Some small herbivore bait should be enough to lure them", 
         },  
  
   	[9] = {
		 label    = "Legendary Red Streak Coyote",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_coyote_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_hannigans_stead",
		 image    = "items/mp_animal_coyote_legendary_01.png",
 		 desc     = "Spotted around Pikes Basin \n this coyote is known for stalking \n the rocky cliffs and barren floor of the canyon \n Its red fur helps it stay hidden in arid landscape \n Distrusting of strangers it will give chase \n if you get too close It will only \n appear out in the open during the day \n and into the evening \n A tough creature \n Some small herbivore bait should be enough to lure them ", 
         },   
 
   	[10] = {
		 label    = "Legendary Katata Elk",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_elk_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cumberland_forest",
		 image    = "items/mp_animal_elk_legendary_01.png",
 		 desc     = "This elk is local to Cumberland Forest \n where travelers have reported seeing glimpses\n of its distinctive black coat and antlers \n it can be attracted using \n potent herbivore bait", 
         },  
		
		
    [11] = {
		 label    = "Legendary Inahme Elk",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_elk_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/mp_animal_elk_legendary_03.png",
 		 desc     = "This unusual elk has been sighted \n near Spider Gorge \n It has thick white fur and dark red antlers \n with which it has charged at human \n according to various accounts \n Those with intentions to study the animal \n are reminded to dress warmly to avoid being harmed \n by the harsh weather \n Use potent herbivore bait to catch it ", 
         },  
	
	
     [12] = {
		 label    = "Legendary Ozula Elk",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_elk_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cholla_springs",
		 image    = "items/mp_animal_elk_legendary_02.png",
 		 desc     = "Sightings of this rare elk \n have spanned the length of \n Cholla Springs and Rio Bravo \n It has a taste for potent herbivore bait", 
      },   
 
 
      [13] = {
		 label    = "Legendary Onyx Wolf",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_wolf_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/mp_animal_wolf_legendary_02.png",
 		 desc     = "The Legendary Onyx Wolf \n has been spotted passing by Wapiti \n It is famous for its bright yellow eyes \n which stand out against its dark fur \n Guarded and territorial it will attack \n if humans get too close \n This wolf is most active at night \n Using potent predator bait is recommended", 
      },   
		
		
 	
      [14] = {
		 label    = "Legendary Moonstone Wolf",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_wolf_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cumberland_forest",
		 image    = "items/mp_animal_wolf_legendary_03.png",
 		 desc     = "A wolf pack has gained notoriety just north \n of Cumberland Forest It has a distinctive leader \n a huge white wolf \n The pack is known to attack travelers on the roads nearby \n This wolf is more active during night \n Using potent predator bait is recommended", 
      }, 		 
		 
		 
      [15] = {
		 label    = "Legendary Emerald Wolf",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_wolf_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cumberland_forest",
		 image    = "items/mp_animal_wolf_legendary_01.png",
 		 desc     = "This wolf is frequently sighted around \n O Creagh s Run \n It is known for its rusty brown fur and striking green eyes \n It stealthy and highly intelligent \n unafraid to attack if it feels threatened \n by other animals or travelers \n It is a nocturnal creature that will \n continue to hunt even in the worst weather conditions", 
      }, 
 

      [16] = {
		 label    = "Legendary Cotorra Wolf",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_wolf_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/mp_animal_wolf_legendary_01.png",
 		 desc     = "The larger size of this wolf \n and the distinguishable brown and black fur \n  make this animal easily recognizable \n  compared to other wolves in the area of Cottora Springs \n Using potent predator bait is recommended", 
      }, 


      [17] = {
		 label    = "Legendary Ota Fox",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_fox_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_scarlett_meadows",
		 image    = "items/provision_role_naturalist_carcass_fox_legendary_01.png",
 		 desc     = "This distinctive subspecies is rumored \n to have dens in Scarlett Meadows \n With a bright white coat and patches \n of red \n it is relatively easy to spot against its green habitat \n Like all foxes it is shy and will run if intimidated \n It is most active at the start and end of the day \n you can use normal herbivore bait to catch it", 
      }, 


      [18] = {
		 label    = "Legendary Marble Fox",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_fox_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_scarlett_meadows",
		 image    = "items/provision_role_naturalist_carcass_fox_legendary_02.png",
 		 desc     = "This fox has been spotted near \n an abandoned settlement south \n of Spider Gorge It has a unique coat of marbled black \n and white It is silent and stealthy \n and rarely appears in middle \n of the day or at night \n preferring dim daylight \n you can use normal herbivore bait to catch it", 
      }, 


      [19] = {
		 label    = "Legendary Cross Fox",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_fox_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_bayou_nwa",
		 image    = "items/provision_role_naturalist_carcass_fox_legendary_03.png",
 		 desc     = "Locals in Bayou Nwa have been telling \n tales of the Legendary Cross Fox \n with its distinctive coat a bright mix of orange \n white and gray \n Its known to be sly and nimble \n and has even been sighted in the city", 
      }, 

      [20] = {
		 label    = "Legendary Owiza Bear",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bear_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_bear_legendary_02.png",
 		 desc     = "This bear has been sighting near the Dakota River \n It has dark stocky legs with a gray back and head \n A solitary animal it can be easily aggravated \n by the presence of humans and will lack out \n if provoked It prefers to hunt during the night \n its preferable to use potent predator \n bait to attract it", 
      }, 

       [21] = {
		 label    = "Legendary Ridgeback Spirit Bear",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bear_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_bear_legendary_01.png",
 		 desc     = "The Legendary Ridgeback Spirit Bear is occasionally \n seen near Little Creek River \n The distinctive red stripe down its back makes \n it easily recognizable These bears are extremely \n aggressive If you must approach do so with caution \n They are active during daylight hours and retreat at night \n its preferable to use potent predator bait to attract it", 
      }, 
 
        [22] = {
		 label    = "Legendary Golden Spirit Bear",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bear_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_bear_legendary_03.png",
 		 desc     = "The Legendary Golden Spirit Bear \n has been seen in Big Valley \n It is known for its blond coat thick and warm \n This bear has gained a reputation \n mauling travelers who come too close to its territory \n its preferable to use potent predator bait to attract it", 
      },
    
        [23] = {
		 label    = "Legendary Ghost Panther",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_panther_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_bayou_nwa",
		 image    = "items/provision_role_naturalist_carcass_panther_legendary_02.png",
 		 desc     = "Rumor has it that this albino panther prowls \n around Bluewater Marsh \n With fur that is bright white \n it stands out in its swampy surroundings \n This panther is extremely dangerous and will attack \n anyone who wanders into its territory \n provoked or otherwise \n It has been spotted at night \n use potent predator bait to attract it", 
      }, 
 
 
         [24] = {
		 label    = "Legendary Nightwalker Panther",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_panther_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_scarlett_meadows",
		 image    = "items/mp_animal_panther_legendary_01.png",
 		 desc     = "Travelers have sighted this panther southwest \n of Bolger Glade Although covered mostly in black fur \n this panther sports noticeable spots \n  Well hidden in the undergrowth \n  these creatures are dangerous to track \n They hunt at dusk during the hours \n of low light \n use potent predator bait to attract it", 
      },
    
  
       [25] = {
		 label    = "Legendary Iwakta Panther",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_panther_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_scarlett_meadows",
		 image    = "items/provision_role_naturalist_carcass_panther_legendary_03.png",
 		 desc     = "This panther has territory near Braithwaite Manor \n Nearby residents have described its bright spotted coat \n It is known for attacking other animals as well as lone  \n  laborers While those on the manor are afraid to wander too far \n use potent predator bait to attract it", 
      },
 
 
	    [26] = {
		 label    = "Legendary Mud Runner Buck",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_buck_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_heartlands",
		 image    = "items/provision_role_naturalist_carcass_buck_legendary_01.png",
 		 desc     = "This unusual buck has been spotted \n in the south of The Heartlands by Flat Iron Lake \n Its piebald coat sets it apart from the more common bucks \n living nearby With their large antlers \n these bucks are known to charge at humans \n if they feel threatened \n They are active during daylight hours \n use potent herbivore bait to attract it", 
      },  
 
 	    [27] = {
		 label    = "Legendary Shadow Buck",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_buck_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_roanoke_ridge",
		 image    = "items/mp_animal_buck_legendary_03.png",
 		 desc     = "Stories concerning this unusual buck \n have spread through Annesburg \n It is said to have an entirely black coat \n and dark set of antlers Like all dear \n this buck can be skittish and will flee if disturbed \n It has also been known to charge The popularity \n of these rumors has alerted poachers to its existence \n If tracking keep your distance and approach \n with considerable care use potent \n herbivore bait to attract it", 
      },  
    
  	    [28] = {
		 label    = "Legendary Moon Beaver",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_beaver_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_roanoke_ridge",
		 image    = "items/mp_animal_beaver_legendary_02.png",
 		 desc     = "This beaver can be found near the Kamassa River \n where they build their dams \n With its white fur and black tail \n it is of great interest to poachers and trappers \n Cautious of humans beavers will flee if approached \n They may also bite and nip \n This particular species is most active \n at the start and end of the day \n use herbivore bait to attract it ", 
      },  
	  
	  
  	    [29] = {
		 label    = "Legendary Zizi Beaver",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_beaver_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_beaver_legendary_01.png",
 		 desc     = "This beaver has been known to make its home \n around Owanjila It is known for its \n soft blond fur Beavers are timid so approach quietly \n Be warned they have been known \n to bite if agitated This species prefers \n the low light of dusk and dawn \n use herbivore bait to attract it", 
      },  
	  	  
  	    [30] = {
		 label    = "Legendary Night Beaver",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_beaver_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_big_valley",
		 image    = "items/mp_animal_beaver_legendary_03.png",
 		 desc     = "This beaver has been known to make its home \n around Owanjila It is known for its \n soft blond fur Beavers are timid so approach quietly \n Be warned they have been known \n to bite if agitated This species prefers \n the low light of dusk and dawn \n use herbivore bait to attract it", 
      },  	  
 
    
   	    [31] = {
		 label    = "Legendary Winyan Bison",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bison_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/mp_animal_bison_legendary_02.png",
 		 desc     = "This bison is said to make its home just west \n of Deadboot Creek and near Lake Isabella \n Its dense pale yellow fur helps adapt to the harsh \n winter environment in the Grizzlies West \n of Ambarino and camouflage it against \n the snowy conditions use potent herbivore bait to attract it", 
      },  
	
	
    	 [32] = {
		 label    = "Legendary Payta Bison",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bison_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/mp_animal_bison_legendary_01.png",
 		 desc     = "The rare Legendary Payta Bison has been spotted \n leading a herd in Little Creek \n It is easily recognized by its thick red coat \n This bison is sociable and can often be found \n with other bison nearby Both Naturalists \n and poachers have a keen interest in such rare creature \n use potent herbivore bait to attract it", 
      },  			
 			
 
     	 [33] = {
		 label    = "Legendary Tatanka Bison",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_bison_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_hannigans_stead",
		 image    = "items/mp_animal_bison_legendary_01.png",
 		 desc     = "The Legendary Tatanka Bison \n is native to Hennigans Stead in New Austin \n This bison can be recognized \n by its short black hair and thick light \n gray hair around its hump and head \n use potent herbivore bait to attract it ", 
      },   


     	 [34] = {
		 label    = "Legendary Iguga Cougar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_cougar_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_great_plains",
		 image    = "items/mp_animal_cougar_legendary_01.png",
 		 desc     = "This cougar has been spotted \n to the southeast of the Great Plains \n where it blends into its surroundings \n sporting light brown fur with a white neck and stomach \n use potent predator bait to attract it", 
      }, 	  
 
    
      	 [35] = {
		 label    = "Legendary Maza Cougar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_cougar_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_gaptooth_ridge",
		 image    = "items/mp_animal_cougar_legendary_02.png",
 		 desc     = "The Legendary Maza Cougar \n makes its home near the Sea of Coronado \n Its distinctive coat of black and white patches \n is instantly recognizable \n use potent predator bait to attract it", 
      },
   
   
       	 [36] = {
		 label    = "Legendary Sapa Cougar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_cougar_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cholla_springs",
		 image    = "items/mp_animal_cougar_legendary_03.png",
 		 desc     = "A rare cougar is rumored \n to stalk through the northeast of New Austin \n It is famous for its fully black coat \n Known to kill livestock \n this cougar has a fierce reputation among \n the locals who are afraid to cross its path \n  Stay alert If this cougar attacks it could be fatal \n use potent predator bait to attract it ", 
      },
   
   
       	 [37] = {
		 label    = "Legendary Knight Moose",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "mp_animal_moose_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_roanoke_ridge",
		 image    = "items/mp_animal_moose_legendary_02.png",
 		 desc     = "This moose has been seen in the north \n  of Roanoke Ridge grazing around the Kamassa River \n It is known for its unique dark coat \n Moose are shy creatures and will run if startled \n so approach quietly and carefully \n They are most active during the day \n use potent herbivore bait to attract it ", 
      }, 
    
	
		 [38] = {
		 label    = "Legendary Snowflake Moose",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_moose_legendary_03",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_grizzlies",
		 image    = "items/provision_role_naturalist_carcass_moose_legendary_03.png",
 		 desc     = "This moose has been sighted near \n Barrow Lagoon With its white coloring \n it blends naturally into the snowy landscape \n However its large black antlers are easier to spot \n It is a solitary creature and will flee \n if approached \n Sightings have been reported at night \n use potent herbivore bait to attract it ", 
      }, 
    
 		 [39] = {
		 label    = "Legendary Ruddy Moose",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_moose_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_tall_trees",
		 image    = "items/provision_role_naturalist_carcass_moose_legendary_01.png",
 		 desc     = "The Legendary Ruddy Moose has been sighted in Tall Trees \n It has a unique cream hide and a pair of broad red antlers \n This moose is solitary and famously elusive \n use potent herbivore bait to attract it", 
      }, 


  		 [40] = {
		 label    = "Legendary Icahi Boar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_boar_legendary_01",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_cholla_springs",
		 image    = "items/provision_role_naturalist_carcass_boar_legendary_01.png",
 		 desc     = "The Legendary Icahi Boar has been \n seen with a herd residing in the east of New Austin \n It can be distinguished by its piebald coat of black and white \n It is known to become aggressive and territorial in season \n Approach slowly and quietly or you risk startling it \n causing it to run or worse attack \n use potent herbivore bait to attract it", 
      }, 
	  
	  
   		 [41] = {
		 label    = "Legendary Wakpa Boar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_boar_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_hannigans_stead",
		 image    = "items/provision_role_naturalist_carcass_boar_legendary_02.png",
 		 desc     = "Travelers have spotted this boar \n around Stillwater Creek \n It sports a dark rusty coat and has a distinctive white face \n If approaching stay hidden and be prepared \n Boars have a tendency to charge", 
      }, 
	  
   		 [42] = {
		 label    = "Legendary Cogi Boar",
		 txtdict  = "inventory_items_mp" ,
		 txtimage = "provision_role_naturalist_carcass_boar_legendary_02",
		 mapdict  = "menu_camp_textures" ,
		 mapimage = "map_camp_location_hannigans_stead",
		 image    = "items/provision_role_naturalist_carcass_boar_legendary_02.png",
 		 desc     = "Travelers have spotted this boar \n around Stillwater Creek \n It sports a dark rusty coat and has a distinctive white face \n If approaching stay hidden and be prepared \n Boars have a tendency to charge", 
      }, 
 
} 		  
		  
-----------------------
-- TYPES OF BAITS -- 
-----------------------
--"herbivore_bait"
--"predator_bait"
--"potent_herbivore_bait"
--"potent_predator_bait"

--Triggerable events : 
--TriggerEvent("sirevlc_legendaries_place_bait", "herbivore_bait")   	  
--TriggerEvent("sirevlc_legendaries_place_bait", "predator_bait")   	      
--TriggerEvent("sirevlc_legendaries_place_bait", "potent_herbivore_bait")  
--TriggerEvent("sirevlc_legendaries_place_bait", "potent_predator_bait")   
--TriggerEvent("sirevlc_legendaries_display_map") 

 
Config.LegendaryAnimals = {

  [1]  	= {
 			["name"]  						= "Legendary Gabbro Horn Ram", 
 			["texturedict"] 				= "inventory_items_mp",  
 			["image"] 						= "mp_animal_ram_legendary_01",                                                             
 			["outfit"] 						= 0,
 			["model"] 						= `mp_a_c_bighornram_01`,
 			["health"] 						= 1000,
 			["missionzones"] 		= {
 			-- LAKE DON JULIO 
 			 {-3610.93212890625, -3085.27587890625, 9.84743404388427, 	60.0, 100, 20}, -- x, y, z, (zone radius), (chance of spawn), (cooldown before spawn after setting the bait)
 			 {-3583.41064453125, -3246.18310546875, 2.98156332969665, 	60.0, 100, 20},  
 			 {-3349.7548828125, -3120.0283203125, -3.42183995246887,  	60.0, 100, 20},  
 			 {-3182.17919921875, -3224.33203125, -4.42464542388916, 	60.0, 100, 20},  
 			 {-3472.91552734375, -3349.656005859375, 14.96736907958984, 60.0, 100, 20},  
 			},
 			["baittype"]    				= "potent_herbivore_bait", -- type of bait that must be used to attract it. See the different types of baits above this table
 			["ispredator"]  				= false,  -- If turned true it will be considered as a predator and will likely attack you instead of fleeing
 	        ["timeofspawn"] 				= {5,6,7,8,9,10,11,12,13,14,15,16,17},
    },
 
 
    [2]    = {
  			["name"]  		 				= "Legendary Chalk Horn Ram",
  			["texturedict"]  				= "inventory_items_mp",   
  			["image"] 		 				= "mp_animal_ram_legendary_02",
  			["outfit"] 		 				= 1,
  			["model"] 		 				= `mp_a_c_bighornram_01`,
  			["health"] 						= 1000,
  			["missionzones"] 				= {
  			--AMBARINO
  			{709.7161865234375, 1872.960693359375, 239.42755126953125, 60.0, 100, 20},   			
  			{1194.7935791015625, 2026.882568359375, 322.26025390625,   60.0, 100, 20},   			
  			{1584.298095703125, 2184.876953125, 323.4026184082031,     60.0, 100, 20},   			
  			},
  			["baittype"]					= "potent_herbivore_bait",
  			["ispredator"]  				= false,
  			["timeofspawn"] 				= {9,10,11,12,13,14,15,16,17,18,19,20,21},
     },
  		
  		
   [3]    = {
  			["name"]  		 				= "Legendary Rutile Horn Ram",
  			["texturedict"]  				= "inventory_items_mp",   
  			["image"] 		 				= "provision_role_naturalist_carcass_ram_legendary_03",
  			["outfit"] 		 				= 2,
  			["model"]		 				= `mp_a_c_bighornram_01`,  
  			["health"] 						= 1000,			
  			["missionzones"] 				= {
  			-- RIO BRAVO AND CHOLLA SPRINGS 
  			{-5088.8935546875, -3505.18603515625, 4.79160642623901,    70.0, 80, 20},   
  			{-4974.4208984375, -3661.156005859375, -1.55223858356475,  70.0, 80, 20},   
  			{-4712.10693359375, -3735.407958984375, 11.91243457794189, 70.0, 80, 20},   
  			{-4629.3017578125, -2528.90283203125, 15.26721286773681,   70.0, 80, 20},   
  			{-4768.9765625, -2457.38330078125, 8.62099838256836,       70.0, 80, 20},   
  			{-5179.30078125, -2508.5908203125, -0.27223080396652,      70.0, 80, 20},   
  			},
  			["baittype"] 	 				= "potent_herbivore_bait",
  			["ispredator"]  				= false,			
  			["timeofspawn"] 				= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23},
    },		
  
   [4]    = {
  			["name"]          			= "Legendary Teca Gator",         
  			["texturedict"]   			= "inventory_items_mp",
  			["image"]         			= "mp_animal_alligator_legendary_01",                          
  			["outfit"]        			= 0,
  			["model"]         			= `mp_a_c_alligator_01`,   
  			["health"] 					= 1000,			
  			["missionzones"]  			= {
  			-- SOUTH WEST OF SAINT DENIS 
  			{2022.0264892578125, -1984.932373046875, 41.97107696533203,    40.0, 100, 20},   
  			{2056.535400390625, -1918.07470703125, 42.33666229248047,      40.0, 100, 20},   
  			{2119.84765625, -1863.5611572265625, 41.60231018066406,    	   40.0, 100, 20},   
  			{2059.850830078125, -1769.132080078125, 41.56644439697265,     40.0, 100, 20},   
  			},
  			["baittype"]      			= "potent_predator_bait",
  			["ispredator"]    			= true,				
  			["timeofspawn"]   			= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23},
    },			
  			
  			
    [5]    = {
   			["name"]          			= "Legendary Banded Gator", 
   			["texturedict"]   			= "inventory_items_mp",   
   			["image"]         			= "provision_role_naturalist_carcass_alligator_legendary_03",
   			["outfit"]        			= 2,
   			["model"]         			= `mp_a_c_alligator_01`,
   			["health"] 					= 1000,			
   			["missionzones"]  			= {
   			-- NORTH OF CALIGA HALL 
   			{1813.968994140625, -1096.0399169921875, 41.66620635986328, 30.0, 80, 20},   
   			},
   			["baittype"]      			= "potent_predator_bait",
   			["ispredator"]    			= true,				
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23},
     },			
   		
   			
    [6]    = {
   			["name"]           			= "Legendary Sun Gator",
   			["texturedict"]    			= "inventory_items_mp",  
   			["image"]          			= "provision_role_naturalist_carcass_alligator_legendary_02",
   			["outfit"]         			= 1,
   			["model"]          			= `mp_a_c_alligator_01`,
   			["health"] 					= 1000,			
   			["missionzones"]   			= {
   			-- BAYOU NWA 
   			{2080.880859375, -477.04913330078125, 41.31145858764648,      30.0, 80, 20},   
   			{1987.277587890625, -464.2586364746094, 41.4941520690918,     30.0, 80, 20},   
   			{2129.43798828125, -497.8870544433594, 41.61970901489258,     30.0, 80, 20},   
   			},
   			["baittype"]        		= "potent_predator_bait",
   			["ispredator"]    			= true,				
   			["timeofspawn"]   			= {6,7,8,9},
     },	
   
      
     [7]    = {
   			["name"]  					= "Legendary Midnight Paw Coyote", 
   			["texturedict"] 			= "inventory_items_mp",   
   			["image"] 					= "mp_animal_coyote_legendary_02",
   			["outfit"] 					= 1,
   			["model"] 					= `mp_a_c_coyote_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			-- SOUTH STRAWBERRY
   			{-1685.408935546875, -646.264892578125, 146.375732421875,         40.0, 80, 20},   
   			{-1601.4886474609375, -648.3135375976562, 131.6806182861328,      40.0, 80, 20},   
   			},
   			["baittype"] 				= "herbivore_bait",
   			["ispredator"]    			= false,				
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,18,19,20,21,22,23},
     },
   
    [8]   = {
   			["name"]  		 			= "Legendary Milk Coyote", 
   			["texturedict"]  			= "inventory_items_mp",   
   			["image"] 		 			= "provision_role_naturalist_carcass_coyote_legendary_03",
   			["outfit"] 		 			= 2,
   			["model"]		 			= `mp_a_c_coyote_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			-- TALL TREES
   			{-1881.6728515625, -1819.402587890625, 113.49504852294922, 40.0, 100, 20},   
   			},
   			["baittype"] 				= "herbivore_bait",
   			["ispredator"]    			= false,				
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23},
     },
     
    [9]   = {
   			["name"]  					= "Legendary Red Streak Coyote", 
   			["texturedict"] 			= "inventory_items_mp",   
   			["image"] 					= "provision_role_naturalist_carcass_coyote_legendary_01",
   			["outfit"] 					= 0,
   			["model"] 					= `mp_a_c_coyote_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			--HENNIGAN STEAD CANYON
   			{-2739.65283203125, -2369.786865234375, 44.6553726196289, 40.0, 80, 20},   
   			},
   			["baittype"] 				= "herbivore_bait",
   			["ispredator"]    			= false,				
   			["timeofspawn"]   			= {8,9,10,11,12,13,14,15,16,17,18,19,20,21,22},
     },
    
   
    [10]   = {
   			["name"]  					= "Legendary Katata Elk",
   			["texturedict"] 			= "inventory_items_mp",   
   			["image"] 					= "mp_animal_elk_legendary_01",
   			["outfit"] 					= 0,
   			["model"] 					= `mp_a_c_elk_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			--CUMBERLAND FOREST 
   			{7.58789205551147, 1218.55517578125, 174.6943817138672,	   			40.0, 80, 20},   
   			{225.30923461914062, 1112.5491943359375, 179.08848571777344,	   	40.0, 80, 20},    
   			},
   			["baittype"] 				= "potent_herbivore_bait",
   			["ispredator"]    			= false,				
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,21,22,23},
     },
     
   	
    [11]   = {
   			["name"]  			= "Legendary Inahme Elk", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_elk_legendary_03",
   			["outfit"] 			= 2,
   			["model"] 			= `mp_a_c_elk_01`,  
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			--ADLER'S RANCH 
   			{225.30923461914062, 1112.5491943359375, 179.08848571777344, 40.0, 80, 20},   
   			{-903.5848388671875, 2607.834716796875, 329.0357666015625,	 40.0, 80, 20},   
   			},
   			["baittype"]		 = "potent_herbivore_bait",
   			["ispredator"]    	 = false,			
   			["timeofspawn"]   	 = {0,1,2,3,4,5,6,21,22,23},
     },
     
   	
    [12]   = {
   			["name"]  			= "Legendary Ozula Elk",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"]			= "mp_animal_elk_legendary_02",
   			["outfit"] 			= 1,
   			["model"] 			= `mp_a_c_elk_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- CHOLLA SPRINGS 
   			{-3963.1748046875, -2135.95068359375, -5.13242244720459,	 50.0, 80, 20}, 
   			{-4366.41064453125, -3068.032958984375, -10.11540222167968,	 50.0, 80, 20}, 
   			},
   			["baittype"] 		= "potent_herbivore_bait",
   			["ispredator"]      = false,				
   			["timeofspawn"]     = {6,7,8,9,10,11,12,13,14,15,16,17,18},
     },
     
    [13]   = {
   			["name"]  			= "Legendary Onyx Wolf",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"]	 		= "mp_animal_wolf_legendary_02",
   			["outfit"] 			= 1,
   			["model"]			= `mp_a_c_wolf_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- COTORRA SPRINGS 
   			{182.3638153076172, 1839.6898193359375, 201.67987060546875,	 60.0, 80, 20}, 
   			},
   			["baittype"] 		 = "potent_predator_bait",
   			["ispredator"]    	 = true,	
   			["timeofspawn"]   	 = {0,1,2,3,4,5,6,18,19,20,21,22,23},
     },
     
    [14]   = {
   			["name"] 			 = "Legendary Moonstone Wolf", 
   			["texturedict"] 	 = "inventory_items_mp",   
   			["image"] 			 = "mp_animal_wolf_legendary_03",
   			["outfit"] 			 = 2,
   			["model"]		 	 = `mp_a_c_wolf_01`,
   			["health"] 			 = 1000,			
   			["missionzones"] 	 = {
   			--CUMBERLAND FOREST 
   			{383.9608154296875, 1297.1724853515625, 200.08946228027344,	 60.0, 80, 20}, 
   			{599.5621948242188, 1457.3848876953125, 190.9343719482422,	 60.0, 80, 20}, 
   			},
   			["baittype"] 		 = "potent_predator_bait",
   			["ispredator"]    	 = true,	
   			["timeofspawn"]   	 = {0,1,2,3,4,5,6,18,19,20,21,22,23},
     },
   
     
    [15]   = {
   			["name"]  			= "Legendary Emerald Wolf",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_wolf_legendary_01",
   			["outfit"] 			= 0,
   			["model"] 			= `mp_a_c_wolf_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- O CREAGH RUNS
   			{1669.9857177734375, 1342.655517578125, 146.4250030517578,	 30.0, 80, 20}, 
   			{1719.087646484375, 1470.3099365234375, 147.35568237304688,	 30.0, 80, 20}, 
   			{1531.986083984375, 1651.9263916015625, 141.44747924804688,	 30.0, 80, 20}, 
   			},
   			["baittype"] 		 = "potent_predator_bait",
   			["ispredator"]    	 = true,	
   			["timeofspawn"]   	 = {0,1,2,3,4,5,6,18,19,20,21,22,23},
     },
   
     
    [16]   = {
   			["name"] 				= "Legendary Ota Fox", 
   			["texturedict"]			= "inventory_items_mp",   
   			["image"]				= "provision_role_naturalist_carcass_fox_legendary_01",
   			["outfit"]				= 0,
   			["model"] 				= `mp_a_c_fox_01`,
   			["health"] 				= 1000,			
   			["missionzones"]		= {
   			-- SCARLETT MEADOWS 
   			{733.5354614257812, -1131.4405517578125, 56.72011566162109,	 40.0, 80, 20}, 
   			{887.9629516601562, -993.870849609375, 57.05930709838867,	 40.0, 80, 20}, 
   			{772.7186889648438, -690.597412109375, 68.45774841308594,	 40.0, 80, 20}, 
   			},
   			["baittype"] 		 	= "herbivore_bait",
   			["ispredator"]    	 	= false,	
   			["timeofspawn"]   	 	= {6,7,8,9},
     },
     
    [17]   = {
   			["name"]  				= "Legendary Marble Fox", 
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "provision_role_naturalist_carcass_fox_legendary_02",
   			["outfit"] 				= 1,
   			["model"] 				= `mp_a_c_fox_01`,
   			["health"] 				= 1000,			
   			["missionzones"] 		= {
   			-- CAIRN LAKE 
   			{-1218.806396484375, 2269.41064453125, 321.72076416015625,	 60.0, 80, 20}, 
   			{-1475.3387451171875, 2096.79833984375, 324.8287048339844,	 60.0, 80, 20}, 
   
   			},
   			["baittype"] 		 	= "herbivore_bait",
   			["ispredator"]    	 	= false,	
   			["timeofspawn"]   	 	= {6,7,8,9,17,18,19,20,21},
     },
     
    [18]   = {
   			["name"]  					= "Legendary Cross Fox", 
   			["texturedict"] 			= "inventory_items_mp",   
   			["image"]		 			= "provision_role_naturalist_carcass_fox_legendary_03",
   			["outfit"] 					= 2,
   			["model"] 					= `mp_a_c_fox_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			-- SCARLETT MEADOWS 
   			{1237.8330078125, -542.6547241210938, 67.39434814453125,	 80.0, 80, 20}, 
   			},
   			["baittype"] 		 		= "herbivore_bait",
   			["ispredator"]    	 		= false,	
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,21,22,23},
     },
     
    [19]   = {
   			["name"]  					= "Legendary Owiza Bear",
   			["texturedict"] 			= "inventory_items_mp",
   			["image"] 					= "mp_animal_bear_legendary_01",
   			["outfit"] 					= 1,
   			["model"] 					= `mp_a_c_bear_01`,
   			["health"] 					= 1000,			
   			["missionzones"] 			= {
   			--  WALLACE STATION 
   			{-1410.7431640625, 523.0939331054688, 98.36402130126953,	 80.0, 80, 20}, 
   			},
   			["baittype"] 		 		= "potent_predator_bait",
   			["ispredator"]    	 		= true,	
   			["timeofspawn"]   			= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}
     },
     
    [20]   = {
   			["name"]  				= "Legendary Ridgeback Spirit Bear",
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_bear_legendary_01",
   			["outfit"] 				= 2,
   			["model"] 				= `mp_a_c_bear_01`,
   			["health"] 				= 1000,			
   			["missionzones"] 		= {
   			-- BIG VALLEY  
   			{-1868.4852294921875, 697.642578125, 135.52099609375,	 	 80.0, 80, 20}, 
   			{-2429.22509765625, 499.2727355957031, 135.832763671875,	 80.0, 80, 20}, 
   			},
   			["baittype"] 		 	= "potent_predator_bait",
   			["ispredator"]    	 	= true,	
   			["timeofspawn"]   		= {8,9,10,11,12,13,14,15,16,17,18,19,20},
     },
     
    [21]   = {
   			["name"]  				 = "Legendary Golden Spirit Bear",
   			["texturedict"] 		 = "inventory_items_mp",  
   			["image"] 				 = "mp_animal_bear_legendary_03",
   			["outfit"] 				 = 3,
   			["model"] 				 = `mp_a_c_bear_01`,
   			["health"] 				 = 1000,			
   			["missionzones"] 		 = {
   			-- BIG VALLEY  
   			{-2299.068359375, 834.1533813476562, 141.23275756835938,	 	 80.0, 80, 20}, 
    			},
   			["baittype"] 		 	 = "potent_predator_bait",
   			["ispredator"]    	 	 = true,	
   			["timeofspawn"]   		 = {8,9,10,11,12,13,14,15,16,17,18,19,20},
     },
   
   			
    [22]   = {
   			["name"]  				= "Legendary Ghost Panther",
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "provision_role_naturalist_carcass_panther_legendary_02",
   			["outfit"] 				= 1,
   			["model"]  				= `mp_a_c_panther_01`,
   			["health"] 			    = 1000,			
   			["missionzones"] 		= {
   			-- BLUEWATER MARSH 
   			{2197.966064453125, -236.9447784423828, 45.67446136474609, 50.0, 80, 20}, 
    			},
   			["baittype"] 		    = "potent_predator_bait",
   			["ispredator"]    	    = true,	
   			["timeofspawn"]   	    = {21,22,23,0,1,2,3,4,5,6},
   		},
   
     
   
    [23]   = {
   			["name"] 			 	= "Legendary Nightwalker Panther",
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_panther_legendary_01",
   			["outfit"] 				= 0,
   			["model"] 				= `mp_a_c_panther_01`,
   			["health"] 			    = 1000,			
   			["missionzones"] 		= {
   			-- SOUTH SCARLETT MEADOWS
   			{1198.568359375, -2217.420166015625, 58.46323013305664, 60.0, 80, 20}, 
    			},
   			["baittype"] 		    = "potent_predator_bait",
   			["ispredator"]    	    = true,	
   			["timeofspawn"]   	    = {21,22,23,0,1,2,3,4,5,6},
   		},
     
    [24]   = {
   			["name"]  			= "Legendary Iwakta Panther", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_panther_legendary_03",
   			["outfit"] 			= 2,
   			["model"] 			= `mp_a_c_panther_01`, 
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- SOUTH SCARLETT MEADOWS
   			{1451.3541259765625, -2126.48828125, 49.24375534057617, 60.0, 80, 20}, 
    			},
   			["baittype"] 		 = "potent_predator_bait",
   			["ispredator"]    	 = true,	
   			["timeofspawn"]   	 = {6,7,8,9,10,11,12,13,14,15,16,17,18}
   		},
     
   
     
    [25]   = {
   			["name"] 			= "Legendary Mud Runner Buck", 
   			["texturedict"] 	= "inventory_items_mp",  
   			["image"] 			= "provision_role_naturalist_carcass_buck_legendary_01",
   			["outfit"] 			= 2,
   			["model"] 			= `mp_a_c_buck_01`,
   			["health"] 			= 1000,				
   			["missionzones"] = {
   			-- SOUTH HEARTLANDS
   			{193.6389617919922, -408.10369873046875, 87.87605285644531, 60.0, 80, 20}, 
    			},
   			["baittype"] 		 = "potent_herbivore_bait",
   			["ispredator"]    	 = false,	
   			["timeofspawn"]   	 = {9,10,11,12,13,14,15,16,17,18,19,20,21}
   
     },	
     
    [26]   = {
   			["name"]  			= "Legendary Shadow Buck",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_buck_legendary_03",
   			["outfit"] 			= 4,
   			["model"] 			= `mp_a_c_buck_01`, 
   			["health"] 			= 1000,				
   			["missionzones"] 	= {
   			-- BRANDYWINE DROP
   			{2725.41162109375, 2326.45166015625, 157.00595092773438, 60.0, 80, 20}, 
    			},
   			["baittype"] 		 = "potent_herbivore_bait",
   			["ispredator"]    	 = false,	
   			["timeofspawn"]   	 = {21,22,23,0,1,2,3,4,5,6},
   
     },	
   	
    [27]   = {
   			["name"] 				= "Legendary Moon Beaver",
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_beaver_legendary_02",
   			["outfit"] 				= 1,
   			["model"] 				= `mp_a_c_beaver_01`,
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			-- KAMASSA RIVER / VAN HORN  
   			{2443.09912109375, 675.78759765625, 69.4217758178711, 60.0, 80, 20}, 
    			},
   			["baittype"] 			= "herbivore_bait",
   			["ispredator"]    		= false,	
   			["timeofspawn"]   	    = {6,7,8,9,17,18,19,20,21}
   
     },	
     
   	
   [28]   = {
   			["name"]  				= "Legendary Zizi Beaver", 
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_beaver_legendary_01",
   			["outfit"] 				= 0,
   			["model"] 				= `mp_a_c_beaver_01`,  	
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			-- OWANJILA 
   			{-2691.934326171875, -407.4370422363281, 147.39404296875, 40.0, 80, 20}, 
   			{-2357.94970703125, -493.9762268066406, 145.04013061523438, 40.0, 80, 20}, 
   			},
   			["baittype"] 			= "herbivore_bait",
   			["ispredator"]    		= false,	
   			["timeofspawn"]   		= {21,22,23,0,1,2,3,4,5,6},
   
     },	
   	
    [29]   = {
   			["name"]  				= "Legendary Night Beaver", 
   			["texturedict"]			= "inventory_items_mp",   
   			["image"] 				= "mp_animal_beaver_legendary_03",
   			["outfit"] 				= 2,
   			["model"] 				= `mp_a_c_beaver_01`,
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			-- ROANOKE RIDGE
   			{2516.30126953125, 1780.5904541015625, 86.64024353027344, 40.0, 80, 20}, 
   			},
   			["baittype"] 			= "herbivore_bait",
   			["ispredator"]    		= false,	
   			["timeofspawn"]   	    = {21,22,23,0,1,2,3,4,5,6}
     },			
   			
    [30]   = {
   			["name"]  				= "Legendary Winyan Bison", 
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_bison_legendary_02",
   			["outfit"] 				= 1,
   			["model"] 				= `mp_a_c_buffalo_01`,
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			-- LAKE ISABELLA 
   			{-1777.4390869140625, 1702.1898193359375, 239.27842712402344, 40.0, 80, 20}, 
   			},
   			["baittype"] 			= "potent_herbivore_bait",
   			["ispredator"]    		= true,	
   			["timeofspawn"]   	    = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}
     },		
     
    [31]   = {
   			["name"]  		 		= "Legendary Payta Bison", 
   			["texturedict"]  		= "inventory_items_mp",   
   			["image"] 		 		= "mp_animal_bison_legendary_01",
   			["outfit"] 		 		= 2,
   			["model"] 		 		= `mp_a_c_buffalo_01`,
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			--
   			{-2026.1990966796875, 603.1525268554688, 117.45954895019531, 30.0, 80, 20}, 
   			},
   			["baittype"] 			= "potent_herbivore_bait",
   			["ispredator"]    		= true,	
   			["timeofspawn"]   	    = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}
     },	
     
    [32]   = {
   			["name"]  			= "Legendary Tatanka Bison", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_bison_legendary_01",
   			["outfit"] 			= 0,
   			["model"] 			= `mp_a_c_buffalo_01`,
   			["health"] 			= 1000,				
   			["missionzones"] 	= {
   			-- HENNIGAN STEAD CANYON 
   			{-3215.68359375, -2383.557373046875, 18.54610633850097, 30.0, 80, 20}, 
   			},
   			["baittype"] 			= "potent_herbivore_bait",
   			["ispredator"]    		= true,	
   			["timeofspawn"]   		= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}
     },	
     
   [33]   = {
   			["name"]  				= "Legendary Iguga Cougar", 
   			["texturedict"] 		= "inventory_items_mp",   
   			["image"] 				= "mp_animal_cougar_legendary_01",
   			["outfit"] 				= 0,
   			["model"] 				= `mp_a_c_cougar_01`,
   			["health"] 			    = 1000,				
   			["missionzones"] 		= {
   			-- GREAT PLAINS 
   			{-985.1094970703125, -1761.173583984375, 73.72246551513672, 80.0, 80, 20}, 
   			},
   			["baittype"] 			= "potent_predator_bait",
   			["ispredator"]    		= true,	
   			["timeofspawn"]   		= {6,7,8,9,10,11,12,13,14,15,16,17,18}
     },	
    
    [34]   = {
   			["name"]  			= "Legendary Maza Cougar", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_cougar_legendary_02",
   			["outfit"] 			= 1,
   			["model"] 			= `mp_a_c_cougar_01`,
   			["health"] 		    = 1000,			
   			["missionzones"] 	= {
   			-- CORONADO
   			{-6257.02685546875, -3602.6142578125, -29.76944923400879, 30.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_predator_bait",
   			["ispredator"]      = true,	
   			["timeofspawn"]     = {6,7,8,9}
     },	
    
     
    [35]   = {
   			["name"]  			= "Legendary Sapa Cougar",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_cougar_legendary_03",
   			["outfit"] 			= 2,
   			["model"] 			= `mp_a_c_cougar_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- ARMADILLO CEMETERY
   			{-3301.035400390625, -2901.757568359375, -4.611581325531, 60.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_predator_bait",
   			["ispredator"]      = true,	
   			["timeofspawn"]     = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23}
     },	 
     
    [36]   = {
   			["name"]  			= "Legendary Knight Moose",
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "mp_animal_moose_legendary_02",
   			["outfit"] 			= 2,
   			["model"] 			= `mp_a_c_moose_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- KAMASSA RIVER
   			{2432.5166015625, 102.23431396484375, 45.70945358276367, 60.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {8,9,10,11,12,13,14,15,16,17,18,19,20}
     },	  
     
    [37]   = {
   			["name"]  			= "Legendary Snowflake Moose", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_moose_legendary_03",
   			["outfit"] 			= 1,
   			["model"] 			= `mp_a_c_moose_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- BARROW LAGOON
   			{-968.3401489257812, 1625.51611328125, 247.11192321777344, 20.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {8,9,10,11,12,13,14,15,16,17,18,19,20}
     },	  
     
    [38]   = {
   			["name"]  			= "Legendary Ruddy Moose", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_moose_legendary_01",
   			["outfit"] 			= 3,
   			["model"] 			= `mp_a_c_moose_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- BETWEEN DEADBOOT CREEK AND SPIDER GORGE  
   			{-1762.3992919921875, 2151.955078125, 290.36810302734375, 40.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {8,9,10,11,12,13,14,15,16,17,18,19,20}
     },	 
   
   	
   		
   	[39]   = {
   			["name"]  			= "Legendary Icahi Boar", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_boar_legendary_01",
   			["outfit"] 			= 2,
   			["model"]		 	= `mp_a_c_boar_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- EAST OF NEW AUSTIN 
   			{-2136.51806640625, -2964.461669921875, 1.4247236251831, 40.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {6,7,8,9}
     },	
     
    [40]   = {
   			["name"]  			= "Legendary Wakpa Boar", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_boar_legendary_02",
   			["outfit"] 			= 1,
   			["model"] 			= `mp_a_c_boar_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			-- THIEVES LANDING 
   			{-1492.648681640625, -2492.558837890625, 53.97743225097656,  40.0, 80, 20}, 
   			{-1755.5433349609375, -2418.535888671875, 42.92610549926758, 40.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {6,7,8,9}
     },	
     
     
    [41]   = {
   			["name"]  			= "Legendary Cogi Boar", 
   			["texturedict"] 	= "inventory_items_mp",   
   			["image"] 			= "provision_role_naturalist_carcass_boar_legendary_02",
   			["outfit"] 			= 0,
   			["model"] 			= `mp_a_c_boar_01`,
   			["health"] 			= 1000,			
   			["missionzones"] 	= {
   			--BLUEWATER MARSH 
   			{2484.82666015625, -199.88534545898438, 42.26469039916992,  40.0, 80, 20}, 
   			{2526.64990234375, -422.8015441894531, 41.42001342773437, 	40.0, 80, 20}, 
   			},
   			["baittype"] 	    = "potent_herbivore_bait",
   			["ispredator"]      = false,	
   			["timeofspawn"]     = {6,7,8,9}
     },				
} 
 



 
----------------------------------
   -- LEGENDARY HUNTER SHOPS --
---------------------------------- 

Config.legendariesMissionPromptTitle  			= "Open Shop"
Config.legendariesMissionPromptTitle2 			= "Legendary Hunter"
Config.legendariesMissionPrompt       			= 0xC7B5340A -- ENTER 
 
Config.Clues_legendariesMissionPromptTitle  	= "Check Clue"
Config.Clues_legendariesMissionPromptTitle2 	= "Legendary Hunter"
Config.Clues_legendariesMissionPrompt      		= 0xC7B5340A -- ENTER 


Config.LegendaryRolesRoleRestriction = true 
Config.LegendaryRoles = { -- ALLOWED ROLES TO OPEN THE LEGENDARY SHOP AND START MISSIONS 
"horsetrainer"
}
 
Config.LegendaryShops = {
[1] = {["name"] = "Valentine",   ["blipenabled"] = true, ["blipname"] = "Legendary Hunter", ["blipsprite"] = -1733535731, ["coords"] = vector3(-1976.4317626953125, -1621.5377197265625, 117.17656707763672), 	["cameracoords"] = {a= -1974.63, b= -1620.98, c= 117.54, d= -1.93, e= 0.00, f= 119.84,  g= 50.00}},
}

Config.CreatePeds = true
Config.Peds = {
[1] = {["name"] = "Valentine",    ["pedmodel"] = "cs_mp_gus_macmillan",    ["pedcoords"] = vector3(-1976.4317626953125, -1621.5377197265625, 117.17656707763672),  ["pedheading"] = -56.0,   ["scenariotype"] = "WORLD_HUMAN_SMOKE"},
} 

 
 