ConfigJail = {}


ConfigJail.JailSettings = {
     MaxJailDistance = 600,    -- Max Distance before more time added if using triggered
     IncreaseSentence = false, -- False breaking out lets player escape, true they get jailed longer
     IncreaseTime = 2,         -- amount of minutes extra to jail if using Config.IncreaseSentence
     BreakoutDistance = 500,   --Max Distance before breakout started
     UpdateJailTime = 30000,
     --How many MS you want to update jail db timer, making it so if they relog the time will be saved every so often
     --Can do 60000 * # of minutes even, IE, I get jailed for 10 minutes the timer updates every 5 minutes, I leave 7 minutes in come back and have 5 minutes left
}

ConfigJail.jailchores = {
     { x = 3343.25, y = -692.97, z = 43.84 },
}

ConfigJail.Jails = {
     sisika = {
          Commisary = {
               enable = true, --if enabled players will be able to go to this location hit g and get 1 of the food item and water item
               coords = {x = 3371.04, y = -658.16, z = 46.29}, --coords the commisary will be at
               FoodItem = 'consumable_salmon_can', --db name of the food item to give
               WaterItem = 'water', --db name of the water item to give
          },
          entrance = {
               x = 3359.64, y = -668.57, z = 45.78 --Sisika
          },
          exit = {
               x = 2670.49, y = -1545.06, z = 45.97
          }
     },
     blackwater = {
          entrance = {
               x = -766.87, y = -1262.36, z = 44.02
          },
          exit = {
               x = -755.13, y = -1269.58, z = 44.02
          }
     },
     valentine = {
          entrance = {
               x = -273.05, y = 810.97, z = 119.37
          },
          exit = {
               x = -276.76, y = 815.19, z = 119.21
          }
     },
     armadillo = {
          entrance = {
               x = -3619.05, y = -2600.14, z = -13.34
          },
          exit = {
               x = -3629.63, y = -2606.69, z = -13.73
          }
     },
     tumbleweed = {
          entrance = {
               x = -5528.43, y = -2926.27, z = -1.36
          },
          exit = {
               x = -5525.88, y = -2930.76, z = -2.01
          }
     },
     strawberry = {
          entrance = {
               x = -1810.91, y = -351.38, z = 161.43
          },
          exit = {
               x = -1806.98, y = -353.38, z = 164.15
          }
     },
     rhodes = {
          entrance = {
               x = 1356.05, y = -1301.87, z = 77.76
          },
          exit = {
               x = 1356.59, y = -1297.34, z = 76.81
          }
     },
     stdenis = {
          entrance = {
               x = 2502.75, y = -1310.78, z = 48.95
          },
          exit = {
               x = 2490.69, y = -1315.26, z = 48.87
          }
     },
     annesburg = {
          entrance = {
               x = 2901.57, y = 1310.95, z = 44.93
          },
          exit = {
               x = 2911.99, y = 1307.32, z = 44.66
          }
     }
}


ConfigJail.CommunityServices = {
     blackwater = {
          entrance = vector3(-752.92, -1263.17, 43.46),
          serviceschore = {
               vector3(-770.32, -1258.44, 44.02),
               vector3(-765.98, -1255.62, 44.02),
               vector3(-762.45, -1260.84, 44.02),
               vector3(-744.46, -1248.6, 43.43),
               vector3(-745.42, -1236.95, 43.3),
               vector3(-745.84, -1230.84, 43.3)
          }
     },
     valentine = {
          entrance = vector3(-272.56, 799.2, 119.1),
          serviceschore = {
               vector3(-270.23, 812.48, 119.37),
               vector3(-275.56, 817.92, 119.21),
               vector3(-278.12, 814.36, 119.37),
               vector3(-272.45, 808.61, 119.37),
               vector3(-269.88, 805.15, 119.37),
               vector3(-265.72, 799.98, 119.37)
          }
     },
     armadillo = {
          entrance = vector3(-3619.05, -2600.14, -13.34),
          serviceschore = {
               vector3(-3621.45, -2595.32, -13.34),
               vector3(-3615.78, -2599.71, -13.34),
               vector3(-3612.87, -2603.22, -13.34),
               vector3(-3610.49, -2608.12, -13.34),
               vector3(-3607.98, -2612.65, -13.34),
               vector3(-3604.35, -2618.07, -13.34)
          }
     },
     tumbleweed = {
          entrance = vector3(-5528.43, -2926.27, -1.36),
          serviceschore = {
               vector3(-5530.85, -2922.41, -1.36),
               vector3(-5523.67, -2928.94, -1.36),
               vector3(-5520.42, -2932.77, -1.36),
               vector3(-5517.94, -2937.19, -1.36),
               vector3(-5514.29, -2942.15, -1.36),
               vector3(-5510.72, -2947.08, -1.36)
          }
     },
     strawberry = {
          entrance = vector3(-1810.91, -351.38, 161.43),
          serviceschore = {
               vector3(-1812.56, -348.92, 161.43),
               vector3(-1807.43, -345.76, 161.43),
               vector3(-1804.89, -350.34, 161.43),
               vector3(-1802.67, -355.82, 161.43),
               vector3(-1799.91, -360.47, 161.43),
               vector3(-1796.24, -364.92, 161.43)
          }
     },
     rhodes = {
          entrance = vector3(1356.05, -1301.87, 77.76),
          serviceschore = {
               vector3(1358.45, -1299.32, 77.76),
               vector3(1352.78, -1305.71, 77.76),
               vector3(1349.87, -1309.22, 77.76),
               vector3(1347.49, -1314.12, 77.76),
               vector3(1344.98, -1318.65, 77.76),
               vector3(1341.35, -1324.07, 77.76)
          }
     },
     stdenis = {
          entrance = vector3(2502.75, -1310.78, 48.95),
          serviceschore = {
               vector3(2504.85, -1308.41, 48.95),
               vector3(2498.67, -1314.94, 48.95),
               vector3(2495.42, -1318.77, 48.95),
               vector3(2492.94, -1323.19, 48.95),
               vector3(2489.29, -1328.15, 48.95),
               vector3(2485.72, -1333.08, 48.95)
          }
     },
     annesburg = {
          entrance = vector3(2901.57, 1310.95, 44.93),
          serviceschore = {
               vector3(2903.45, 1312.32, 44.93),
               vector3(2897.78, 1306.71, 44.93),
               vector3(2894.87, 1303.22, 44.93),
               vector3(2892.49, 1298.12, 44.93),
               vector3(2889.98, 1293.65, 44.93),
               vector3(2886.35, 1289.07, 44.93)
          }
     }
}



