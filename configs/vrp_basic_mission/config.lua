Config = {}

-- Mission Settings
Config.EnableMissions = true
Config.MissionCooldown = 300 -- seconds between missions
Config.MaxActiveMissions = 3 -- max concurrent missions per player

-- Rewards
Config.BaseReward = 500      -- base reward amount
Config.BonusMultiplier = 1.5 -- multiplier for bonus rewards
Config.EnableExperienceRewards = true
Config.ExperiencePerMission = 25

-- Mission Types
Config.MissionTypes = {
  {
    id = "delivery",
    name = "Package Delivery",
    description = "Deliver packages to various locations",
    reward = 750,
    experience = 30,
    requiredLevel = 1,
    enabled = true
  },
  {
    id = "transport",
    name = "Passenger Transport",
    description = "Transport passengers safely",
    reward = 650,
    experience = 25,
    requiredLevel = 5,
    enabled = true
  },
  {
    id = "collection",
    name = "Item Collection",
    description = "Collect items from specific locations",
    reward = 850,
    experience = 35,
    requiredLevel = 10,
    enabled = true
  }
}

-- Mission Locations
Config.DeliveryLocations = {
  { x = 225.4,   y = -1357.8, z = 30.3, name = "Downtown Office" },
  { x = -47.5,   y = -1757.5, z = 29.4, name = "Grove Street" },
  { x = 1163.6,  y = -323.8,  z = 69.2, name = "Mirror Park" },
  { x = -1037.8, y = -2738.6, z = 20.2, name = "Airport Cargo" },
  { x = 1729.2,  y = 6414.1,  z = 35.0, name = "Sandy Shores" }
}

Config.PickupLocations = {
  { x = 147.3,   y = -1035.8, z = 29.3,  name = "Bank Plaza" },
  { x = -1045.2, y = -231.0,  z = 44.0,  name = "Rockford Plaza" },
  { x = 372.4,   y = 325.7,   z = 103.6, name = "City Hall" },
  { x = 454.0,   y = -986.2,  z = 30.7,  name = "Police Station" },
  { x = 295.0,   y = -1446.5, z = 29.9,  name = "Hospital" }
}

-- Vehicle Settings
Config.MissionVehicles = {
  "pony", "mule", "boxville", "rumpo", "speedo"
}

Config.SpawnVehicleForMissions = true
Config.VehicleSpawnLocation = { x = 408.9, y = -1625.1, z = 29.3, heading = 230.0 }
Config.DeleteVehicleOnMissionEnd = true

-- Notification Settings
Config.UseAdvancedNotifications = true
Config.NotificationDuration = 5000 -- milliseconds

-- Blip Settings
Config.ShowMissionBlips = true
Config.MissionBlipSprite = 1
Config.MissionBlipColor = 5
Config.MissionBlipScale = 0.8

-- Difficulty Settings
Config.EnableDifficulty = true
Config.DifficultyLevels = {
  {
    name = "Easy",
    multiplier = 1.0,
    requiredLevel = 1,
    timeLimit = 600     -- seconds
  },
  {
    name = "Medium",
    multiplier = 1.3,
    requiredLevel = 15,
    timeLimit = 450
  },
  {
    name = "Hard",
    multiplier = 1.8,
    requiredLevel = 30,
    timeLimit = 300
  }
}

-- Anti-Cheat Settings
Config.EnableAntiCheat = true
Config.MaxDistanceFromRoute = 500.0 -- meters
Config.FailMissionOnAntiCheat = false

-- Debug Settings
Config.DebugMode = false
Config.ShowDebugMessages = false
