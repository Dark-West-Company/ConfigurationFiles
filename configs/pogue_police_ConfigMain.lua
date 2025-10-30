ConfigMain = {}


Locale = 'en'

ConfigMain.DevMode = false -- Enables or disables developer mode


ConfigMain.Badges = {
     ["polioceBW"] = { -- Blackwater Sheriff
         ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 5 },
         ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 6 }
     },
     ["policeVal"] = { -- Valentine Sheriff
         ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 5 },
         ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 6 }
     },
     ["policeArm"] = { -- Armadillo Sheriff
         ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 5 },
         ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 6 }
     },
    --  ["twsheriff"] = { -- Tumbleweed Sheriff
    --      ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 4 },
    --      ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 5 }
    --  },
    --  ["stbsheriff"] = { -- Strawberry Sheriff
    --      ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 4 },
    --      ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 5 }
    --  },
    --  ["rhdsheriff"] = { -- Rhodes Sheriff
    --      ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 4 },
    --      ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 5 }
    --  },
     ["policeSD"] = { -- Saint Denis Sheriff
         ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 5 },
         ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 6 }
     },
    --  ["annsheriff"] = { -- Annesburg Sheriff
    --      ["deputy"] = { model = "s_badgedeputy01x", jobgrade_max = 4 },
    --      ["sheriff"] = { model = "s_badgesherif01x", jobgrade_max = 5 }
    --  },
     ["marshal"] = { -- US Marshal
         ["usmarshal"] = { model = "s_badgeusmarshal01x", jobgrade_max = nil }
     },
    --  ["pinkerton"] = { -- Pinkerton Agency
    --      ["agent"] = { model = "s_badgepinkerton01x", jobgrade_max = nil }
    --  },
     ["police"] = { -- Police Department
        ["officer"] = { model = "s_badgepolice01x", jobgrade_max = 3 },
        ["sergeant"] = { model = "s_badgepolice01x", jobgrade_max = 4 },
        ["chief"] = { model = "s_badgepolice01x", jobgrade_max = 5 }
    }
 }



  -- Badge Attach setting 
 ConfigMain.BadgeAttach = {
     male = { x = 0.17, y = -0.19, z = -0.25, rx = -12.5, ry = 0.0, rz = 30.0 },
     female = { x = 0.17, y = -0.19, z = -0.25, rx = -12.5, ry = 0.0, rz = 30.0 }
 }

OffDutyJobs = {
    -- 'offbwsheriff',
    -- 'offvalsheriff',
    -- 'offarmsheriff',
    -- 'offtwsheriff',
    -- 'offstbsheriff',
    -- 'offrhdsheriff',
    -- 'offsdsheriff',
    -- 'offannsheriff',
    'offmarshal',
    -- 'offpinkerton',
    'offpolice',
}


OnDutyJobs = {
    -- 'bwsheriff',
    -- 'valsheriff',
    -- 'armheriff',
    -- 'twsheriff',
    -- 'stbsheriff',
    -- 'rhdsheriff',
    -- 'sdsheriff',
    -- 'annsheriff',
    'marshal',
    -- 'pinkerton',
    'policeVal',
}

ConfigMain.RadialOffDutyJobs = {
    -- 'offbwsheriff',
    -- 'offvalsheriff',
    -- 'offarmsheriff',
    -- 'offtwsheriff',
    -- 'offstbsheriff',
    -- 'offrhdsheriff',
    -- 'offsdsheriff',
    -- 'offannsheriff',
    'offmarshal',
    -- 'offpinkerton',
    'offpolice',
}

ConfigMain.RadialOnDutyJobs = {
    -- 'bwsheriff',
    -- 'valsheriff',
    -- 'armheriff',
    -- 'twsheriff',
    -- 'stbsheriff',
    -- 'rhdsheriff',
    -- 'sdsheriff',
    -- 'annsheriff',
    'marshal',
    -- 'pinkerton',
    'policeVal',
}



ConfigMain.unservicecommand = 'unservice'     --Command to unservice for cops and admins
ConfigMain.unjailcommand = 'unjail'           --Command to unjail for cops and admins
ConfigMain.callpolice = 'callpolice'          --Command to call cops for everyone
