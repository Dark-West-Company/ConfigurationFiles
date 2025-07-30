Config = {}

Config.Locale = 'en'

Config.AntiCombatLog = true       -- enable anti-combat logging?
Config.MaxInService = -1          -- max EMS players allowed (-1 for no limits)
Config.MaxInServiceAmbulance = -1 -- max Ambulance players allowed (-1 for no limits)

Config.Helicopter = true          -- enable helicopter spawning?

Config.DrawDistance = 100.0

Config.Marker = {
  type = 1,
  x = 1.5,
  y = 1.5,
  z = 0.5,
  r = 102,
  g = 0,
  b = 102,
  a = 100,
}

Config.ReviveReward = 700   -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog = true -- enable anti-combat logging?
Config.LoadIpl = true       -- disable if you're using fivem-ipl or other IPL loaders

Config.Locations = {

  LSPD = {
    name = 'LSPD',
    coords = { x = 461.1, y = -986.2, z = 30.7 },
    heading = 96.0
  },

  MorgueSpawn = {
    name = 'Morgue Spawn',
    coords = { x = 275.0, y = -1361.5, z = 24.5 },
    heading = 238.7
  },

  Pharmacy = {
    name = 'Pharmacy',
    coords = { x = 230.1, y = -1366.1, z = 39.5 }
  },

  PillboxHospital = {
    name = 'Pillbox Hospital',
    coords = { x = 295.0, y = -1446.5, z = 29.9 },
    heading = 142.6,

    Blip = {
      coords = { x = 307.7, y = -1433.4, z = 28.9 },
      sprite = 61,
      scale = 1.2,
      color = 2
    },

    AmbulanceActions = {
      { x = 299.1, y = -1448.1, z = 28.9 }
    },

    Pharmacies = {
      { x = 230.1, y = -1366.1, z = 38.5 }
    },

    Vehicles = {
      {
        Spawner = { x = 297.2, y = -1429.5, z = 28.9 },
        InsideShop = { x = 297.2, y = -1429.5, z = 28.9 },
        Marker = { x = 297.2, y = -1429.5, z = 28.9 },
        SpawnPoints = {
          { x = 297.2, y = -1429.5, z = 28.9, heading = 227.8, radius = 4.0 },
          { x = 294.3, y = -1433.1, z = 28.9, heading = 227.8, radius = 4.0 },
          { x = 309.4, y = -1442.5, z = 28.9, heading = 227.8, radius = 6.0 }
        }
      }
    },

    Helicopters = {
      {
        Spawner = { x = 317.5, y = -1449.5, z = 46.5 },
        InsideShop = { x = 305.6, y = -1419.9, z = 41.4 },
        Marker = { x = 317.5, y = -1449.5, z = 46.5 },
        SpawnPoints = {
          { x = 313.5, y = -1465.1, z = 46.5, heading = 142.7, radius = 10.0 },
          { x = 299.5, y = -1453.2, z = 46.5, heading = 142.7, radius = 10.0 }
        }
      }
    }

  }

}

Config.AuthorizedVehicles = {

  ambulance = {
    { model = 'ambulance', label = 'Ambulance' },
  },

  doctor = {
    { model = 'ambulance', label = 'Ambulance' },
  },

  chief_doctor = {
    { model = 'ambulance', label = 'Ambulance' },
    { model = 'lguard',    label = 'Lifeguard' },
  },

  boss = {
    { model = 'ambulance', label = 'Ambulance' },
    { model = 'lguard',    label = 'Lifeguard' },
  }

}

Config.AuthorizedHelicopters = {

  doctor = {},

  chief_doctor = {
    { model = 'polmav', label = 'Medical Helicopter' },
  },

  boss = {
    { model = 'polmav', label = 'Medical Helicopter' },
  }

}
