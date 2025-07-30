Config = {}

Config.DrawDistance = 100.0
Config.MarkerColor = { r = 50, g = 50, b = 204 }
Config.MarkerSize = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerType = 1

Config.Locale = 'en'

Config.OxInventory = ESX.GetConfig().OxInventory
Config.MaxInService = -1
Config.EnablePlayerManagement = true
Config.EnableArmoryManagement = true
Config.EnableESXIdentity = true      -- enable if you're using esx_identity
Config.EnableNonFreemodePeds = false -- turn this on if you want custom peds
Config.EnableLicenses = true         -- enable if you're using esx_license

Config.EnableHandcuffTimer = true    -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer = 10 * 60000    -- 10 mins

Config.EnableJobBlip = true          -- enable blips for colleagues, requires esx_society

Config.EnableESXService = false      -- enable esx service?
Config.MaxInService = -1             -- max officers in service (-1 for no limit)

Config.PoliceStations = {

  LSPD = {

    Blip = {
      Coords = { x = 425.1, y = -979.5, z = 30.7 },
      Sprite = 60,
      Display = 4,
      Scale = 1.2,
      Colour = 29
    },

    Cloakrooms = {
      { x = 452.6, y = -992.8, z = 30.6 }
    },

    Armories = {
      { x = 451.7, y = -980.1, z = 30.6 }
    },

    Vehicles = {
      {
        Spawner = { x = 454.6, y = -1017.4, z = 28.4 },
        InsideShop = { x = 228.5, y = -993.5, z = 29.5 },
        SpawnPoints = {
          { x = 438.4, y = -1018.3, z = 27.7, heading = 90.0, radius = 6.0 },
          { x = 441.0, y = -1024.2, z = 28.3, heading = 90.0, radius = 6.0 },
          { x = 453.5, y = -1022.2, z = 28.0, heading = 90.0, radius = 6.0 },
          { x = 450.5, y = -1016.5, z = 28.1, heading = 90.0, radius = 6.0 }
        }
      }
    },

    Helicopters = {
      {
        Spawner = { x = 461.1, y = -981.5, z = 43.6 },
        InsideShop = { x = 477.0, y = -1106.4, z = 43.0 },
        SpawnPoints = {
          { x = 449.5, y = -981.2, z = 43.6, heading = 92.6, radius = 10.0 }
        }
      }
    },

    BossActions = {
      { x = 448.4, y = -973.2, z = 30.6 }
    }

  },

  SandyShores = {

    Blip = {
      Coords = { x = 1835.6, y = 3679.0, z = 34.2 },
      Sprite = 60,
      Display = 4,
      Scale = 1.2,
      Colour = 29
    },

    Cloakrooms = {
      { x = 1857.708, y = 3689.157, z = 34.267 }
    },

    Armories = {
      { x = 1848.998, y = 3695.462, z = 34.267 }
    },

    Vehicles = {
      {
        Spawner = { x = 1839.2, y = 3673.1, z = 33.2 },
        InsideShop = { x = 1839.2, y = 3673.1, z = 33.2 },
        SpawnPoints = {
          { x = 1831.9, y = 3679.6, z = 33.3, heading = 210.0, radius = 6.0 }
        }
      }
    },

    Helicopters = {
      {
        Spawner = { x = 1770.1, y = 3239.6, z = 42.1 },
        InsideShop = { x = 1770.1, y = 3239.6, z = 42.1 },
        SpawnPoints = {
          { x = 1770.1, y = 3239.6, z = 42.1, heading = 0.0, radius = 10.0 }
        }
      }
    },

    BossActions = {
      { x = 1848.061, y = 3690.365, z = 34.267 }
    }

  }

}

Config.AuthorizedWeapons = {
  recruit = {
    { weapon = 'WEAPON_FLASHLIGHT',   components = {}, price = 80 },
    { weapon = 'WEAPON_NIGHTSTICK',   components = {}, price = 120 },
    { weapon = 'WEAPON_STUNGUN',      components = {}, price = 500 },
    { weapon = 'WEAPON_PISTOL',       components = {}, price = 1500 },
    { weapon = 'WEAPON_COMBATPISTOL', components = {}, price = 2000 }
  },

  officer = {
    { weapon = 'WEAPON_FLASHLIGHT',   components = {}, price = 80 },
    { weapon = 'WEAPON_NIGHTSTICK',   components = {}, price = 120 },
    { weapon = 'WEAPON_STUNGUN',      components = {}, price = 500 },
    { weapon = 'WEAPON_PISTOL',       components = {}, price = 1500 },
    { weapon = 'WEAPON_COMBATPISTOL', components = {}, price = 2000 },
    { weapon = 'WEAPON_CARBINERIFLE', components = {}, price = 12000 }
  },

  sergeant = {
    { weapon = 'WEAPON_FLASHLIGHT',   components = {}, price = 80 },
    { weapon = 'WEAPON_NIGHTSTICK',   components = {}, price = 120 },
    { weapon = 'WEAPON_STUNGUN',      components = {}, price = 500 },
    { weapon = 'WEAPON_PISTOL',       components = {}, price = 1500 },
    { weapon = 'WEAPON_COMBATPISTOL', components = {}, price = 2000 },
    { weapon = 'WEAPON_CARBINERIFLE', components = {}, price = 12000 },
    { weapon = 'WEAPON_SHOTGUN',      components = {}, price = 8000 }
  },

  lieutenant = {
    { weapon = 'WEAPON_FLASHLIGHT',     components = {}, price = 80 },
    { weapon = 'WEAPON_NIGHTSTICK',     components = {}, price = 120 },
    { weapon = 'WEAPON_STUNGUN',        components = {}, price = 500 },
    { weapon = 'WEAPON_PISTOL',         components = {}, price = 1500 },
    { weapon = 'WEAPON_COMBATPISTOL',   components = {}, price = 2000 },
    { weapon = 'WEAPON_CARBINERIFLE',   components = {}, price = 12000 },
    { weapon = 'WEAPON_SHOTGUN',        components = {}, price = 8000 },
    { weapon = 'WEAPON_SPECIALCARBINE', components = {}, price = 17500 }
  },

  boss = {
    { weapon = 'WEAPON_FLASHLIGHT',     components = {}, price = 80 },
    { weapon = 'WEAPON_NIGHTSTICK',     components = {}, price = 120 },
    { weapon = 'WEAPON_STUNGUN',        components = {}, price = 500 },
    { weapon = 'WEAPON_PISTOL',         components = {}, price = 1500 },
    { weapon = 'WEAPON_COMBATPISTOL',   components = {}, price = 2000 },
    { weapon = 'WEAPON_CARBINERIFLE',   components = {}, price = 12000 },
    { weapon = 'WEAPON_SHOTGUN',        components = {}, price = 8000 },
    { weapon = 'WEAPON_SPECIALCARBINE', components = {}, price = 17500 },
    { weapon = 'WEAPON_SNIPERRIFLE',    components = {}, price = 22000 }
  }
}

Config.AuthorizedVehicles = {
  Shared = {},

  recruit = {
    { model = 'police', label = 'Police Cruiser', price = 5000 }
  },

  officer = {
    { model = 'police',  label = 'Police Cruiser', price = 5000 },
    { model = 'police2', label = 'Police Buffalo', price = 7500 }
  },

  sergeant = {
    { model = 'police',  label = 'Police Cruiser',    price = 5000 },
    { model = 'police2', label = 'Police Buffalo',    price = 7500 },
    { model = 'policeb', label = 'Police Motorcycle', price = 3000 }
  },

  lieutenant = {
    { model = 'police',  label = 'Police Cruiser',     price = 5000 },
    { model = 'police2', label = 'Police Buffalo',     price = 7500 },
    { model = 'policeb', label = 'Police Motorcycle',  price = 3000 },
    { model = 'police3', label = 'Police Interceptor', price = 10000 }
  },

  boss = {
    { model = 'police',  label = 'Police Cruiser',     price = 5000 },
    { model = 'police2', label = 'Police Buffalo',     price = 7500 },
    { model = 'policeb', label = 'Police Motorcycle',  price = 3000 },
    { model = 'police3', label = 'Police Interceptor', price = 10000 },
    { model = 'police4', label = 'Unmarked Police',    price = 12000 }
  }
}

Config.AuthorizedHelicopters = {
  recruit = {},

  officer = {},

  sergeant = {
    { model = 'polmav', label = 'Police Maverick', price = 200000 }
  },

  lieutenant = {
    { model = 'polmav', label = 'Police Maverick', price = 200000 }
  },

  boss = {
    { model = 'polmav', label = 'Police Maverick', price = 200000 }
  }
}
