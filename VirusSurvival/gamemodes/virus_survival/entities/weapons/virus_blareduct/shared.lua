SWEP.Primary.SpreadMultiplierMax = 1
SWEP.Primary.SpreadIncrement = 0
SWEP.Primary.SpreadRecovery = 1

SWEP.AllowSprintAttack = true
SWEP.DisableChambering = true
SWEP.Category = "Zombie Survival"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.PrintName				= "Blareduct"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 60		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative to other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_shotgun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/shotgun/shotgun_dbl_fire.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 80		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6			-- Size of a clip
SWEP.Primary.DefaultClip			= 36	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.3	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"

SWEP.Primary.ReloadSound = Sound("weapons/aug/aug_boltslap.wav")

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .45

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 7.7625	-- Base damage per bullet
SWEP.Primary.Spread		= .04	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .04	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

SWEP.VElements = {
		["pipe++"] = { type = "Model", model = "models/props_vehicles/carparts_axel01a.mdl", bone = "ValveBiped.Gun", rel = "pipe", pos = Vector(0.699, 0, 0), angle = Angle(0, 0, 90), size = Vector(0.15, 0.4, 0.2), color = Color(105, 115, 130, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["pipe+"] = { type = "Model", model = "models/props_vehicles/carparts_muffler01a.mdl", bone = "ValveBiped.Gun", rel = "pipe", pos = Vector(1, -0.201, -15), angle = Angle(90, -90, 0), size = Vector(0.2, 0.3, 0.25), color = Color(105, 115, 130, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["pipe+++"] = { type = "Model", model = "models/props_vehicles/carparts_axel01a.mdl", bone = "ValveBiped.Gun", rel = "pipe", pos = Vector(0, 0, -10), angle = Angle(0, 0, 90), size = Vector(0.25, 0.3, 0.15), color = Color(77, 77, 82, 255), surpresslightning = false, material = "models/props_lab/ravendoor_sheet", skin = 0, bodygroup = {} },
		["pipe"] = { type = "Model", model = "models/props_canal/mattpipe.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, 0.5, 7), angle = Angle(0, -90, 0), size = Vector(1, 1, 0.899), color = Color(65, 69, 84, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["pipe++"] = { type = "Model", model = "models/props_vehicles/carparts_axel01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "pipe", pos = Vector(0.699, 0, 0), angle = Angle(0, 0, 90), size = Vector(0.15, 0.4, 0.2), color = Color(105, 115, 130, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["pipe+"] = { type = "Model", model = "models/props_vehicles/carparts_muffler01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "pipe", pos = Vector(1, -0.201, -15), angle = Angle(90, -90, 0), size = Vector(0.2, 0.3, 0.25), color = Color(105, 115, 130, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["pipe+++"] = { type = "Model", model = "models/props_vehicles/carparts_axel01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "pipe", pos = Vector(0, 0, -10), angle = Angle(0, 0, 90), size = Vector(0.25, 0.3, 0.15), color = Color(77, 77, 82, 255), surpresslightning = false, material = "models/props_lab/ravendoor_sheet", skin = 0, bodygroup = {} },
		["pipe"] = { type = "Model", model = "models/props_canal/mattpipe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(19, 1, -5), angle = Angle(85.324, 0, 180), size = Vector(1, 1, 0.899), color = Color(65, 69, 84, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	
SWEP.ViewModelBoneMods = {
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

--SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
	
-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.IronSightsAng = Vector(0.13, 0.089, 0)
SWEP.SightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.SightsAng = Vector(0.13, 0.089, 0)
SWEP.RunSightsPos = Vector(9.843, -16.458, 0)
SWEP.RunSightsAng = Vector(-5.371, 70, 0)

SWEP.IronSightTime = 0.325