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
SWEP.PrintName				= "Gladiator"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/cstrike/c_shot_m3super90.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shot_m3super90.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Weapon_M3.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				=50		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 12			-- Size of a clip
SWEP.Primary.DefaultClip			= 36	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 1.6				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.6	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .3
SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0
SWEP.Primary.NumShots	= 16		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 7	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .035	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.IronSightsAng = Vector(0.13, 0.089, 0)
SWEP.SightsPos = Vector(-7.64, -3.225, 3.48)
SWEP.SightsAng = Vector(0.13, 0.089, 0)
SWEP.RunSightsPos = Vector(9.843, -16.458, 0)
SWEP.RunSightsAng = Vector(-5.371, 70, 0)

SWEP.IronSightTime = 0.325


SWEP.VElements = {
		["fracture+++++++"] = { type = "Model", model = "models/items/combine_rifle_cartridge01.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(0, 0, 0.25), angle = Angle(97.013, 0, 0), size = Vector(0.6, 0.4, 1.598), color = Color(77, 100, 135, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture+++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(-1.5, 0, -1), angle = Angle(0, -90, -90), size = Vector(0.035, 0.029, 0.25), color = Color(69, 77, 94, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["fracture++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(4.675, 0, -0.201), angle = Angle(0, -90, 0), size = Vector(0.625, 0.625, 0.625), color = Color(70, 87, 104, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["fracture"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -4.5, -10.91), angle = Angle(90, -90, 0), size = Vector(0.25, 0.039, 0.029), color = Color(69, 90, 123, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture++"] = { type = "Model", model = "models/props_c17/factorymachine01.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(-5.715, 0, -1.4), angle = Angle(180, -90, 0), size = Vector(0.025, 0.025, 0.045), color = Color(75, 100, 125, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture+"] = { type = "Model", model = "models/props_c17/traffic_light001a.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(-5.715, 0, 0), angle = Angle(0, 0, 90), size = Vector(1.399, 0.1, 0.119), color = Color(75, 100, 125, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture++++++"] = { type = "Model", model = "models/props_c17/trappropeller_lever.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(10.5, 0, -2), angle = Angle(0, -90, -33.896), size = Vector(1, 0.6, 1.2), color = Color(87, 109, 117, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture+++++"] = { type = "Model", model = "models/props_c17/utilityconnecter002.mdl", bone = "v_weapon.M3_PARENT", rel = "fracture", pos = Vector(8, 0, -2.597), angle = Angle(0, -90, 180), size = Vector(0.2, 0.2, 0.2), color = Color(70, 87, 104, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["fracture+++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(-1.5, 0, -1), angle = Angle(0, -90, -90), size = Vector(0.035, 0.029, 0.25), color = Color(69, 77, 94, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["fracture+"] = { type = "Model", model = "models/props_c17/traffic_light001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(-5.715, 0, 0), angle = Angle(0, 0, 90), size = Vector(1.399, 0.1, 0.119), color = Color(75, 100, 125, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16, 1, -4.301), angle = Angle(180, 0, 0), size = Vector(0.25, 0.039, 0.029), color = Color(69, 77, 94, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(4.675, 0, -0.201), angle = Angle(0, -90, 0), size = Vector(0.625, 0.625, 0.625), color = Color(70, 87, 104, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["fracture+++++"] = { type = "Model", model = "models/props_c17/utilityconnecter002.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(8, 0, -2.597), angle = Angle(0, -90, 180), size = Vector(0.2, 0.2, 0.2), color = Color(70, 87, 104, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["fracture+++++++"] = { type = "Model", model = "models/items/combine_rifle_cartridge01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(0, 0, 0.25), angle = Angle(97.013, 0, 0), size = Vector(0.6, 0.4, 1.598), color = Color(77, 100, 125, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture++++++"] = { type = "Model", model = "models/props_c17/trappropeller_lever.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(10.5, 0, -2), angle = Angle(0, -90, -33.896), size = Vector(1, 0.6, 1.2), color = Color(87, 99, 107, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} },
		["fracture++"] = { type = "Model", model = "models/props_c17/factorymachine01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "fracture", pos = Vector(-5.715, 0, -1.4), angle = Angle(180, -90, 0), size = Vector(0.025, 0.025, 0.045), color = Color(75, 100, 125, 255), surpresslightning = false, material = "models/props_pipes/guttermetal01a", skin = 0, bodygroup = {} }
	}
	
	
SWEP.ViewModelBoneMods = {
	["v_weapon.M3_PARENT"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
--SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
--redacted