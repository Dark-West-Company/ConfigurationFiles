Config = {}

Config.framework = "vorp"
Config.BankLocations = {
    {name = 'Banque de Rhodes',     coords = vector3(1292.307, -1301.539, 77.04012),    showblip = true},
    {name = 'Banque de Saint-Denis',    coords = vector3(2644.579, -1292.313, 52.24956),    showblip = true},
    {name = 'Banque de BlackWater',    coords = vector3(-813.1633, -1277.486, 43.63771),   showblip = true},
}

Config.Jobgrade = 3 ---- jobgrade to access job's account by default
Config.JobAccessBoss = {
    sherifblackwater = 3,
    scieriestrawberry = 2
}

Config.TransferDelay = 60 -- in seconds
-----------------------
---- Translations -----
------------------------
Config.PromptText = "Banque de Lafayette"
Config.PersonnalAccountKey = 0x6319DB71
Config.PersonnalAccountText = "Personnal Account"
Config.JobAccountKey = 0x05CA7C52
Config.JobAccountText = "Job Account"

-- when having no account--
Config.Name = "Unknown"
Config.NoAccount = "You do not have an account"
Config.AccountInfo = "00000"


--- statements ---
Config.OutgoingTransfer = "Outgoing Transfer"
Config.IncomingTransfer = "Incoming Transfer"
Config.Deposit = "Deposit"
Config.Withdraw = "Withdraw"

----- notify -----
Config.Title = "Bank"
Config.NoAccess = "You do not have access to this account."
Config.NoAccount = "You don't gave an account."

----- notify on bank ui ---
Config.Transfertext1 = "You transferred"
Config.Transfertext2 = "to account"
Config.Deposittext = "You deposited"
Config.Withdrawtext = "You withdrew"

--------------------------
--------------------------

