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
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Jackhammer"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 64			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_galil.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_galil.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("Weapon_Jackhammer.1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 193			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 12		-- Size of a clip
SWEP.Primary.DefaultClip		= 36		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 10.5	-- Base damage per bullet
SWEP.Primary.Spread		= .028	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .018 -- Ironsight accuracy, should be the same for shotguns

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.362, -3.52, 2.64)
SWEP.IronSightsAng = Vector(-0.159, 0, 0)
SWEP.SightsPos = Vector(-6.362, -3.52, 2.64)
SWEP.SightsAng = Vector(-0.159, 0, 0)
SWEP.RunSightsPos = Vector(9.369, -17.244, -3.689)
SWEP.RunSightsAng = Vector(6.446, 62.852, 0)

--SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.VElements = {
		["t4_shot_part+++++++"] = { type = "Model", model = Model("models/props_pipes/concrete_pipe001a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, 11, 1.5), angle = Angle(90, 0, 0), size = Vector(0.032, 0.009, 0.009), color = Color(30, 30, 30, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part++++++"] = { type = "Model", model = Model("models/props_pipes/pipe02_straight01_long.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, 13, -0.801), angle = Angle(0, 0, 0), size = Vector(0.17, 0.55, 0.17), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part++++"] = { type = "Model", model = Model("models/props_wasteland/controlroom_filecabinet002a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -13, 0.618), angle = Angle(0, 0, 100), size = Vector(0.039, 0.15, 0.009), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
		["t4_shot_part+++"] = { type = "Model", model = Model("models/props_junk/ibeam01a_cluster01.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -7.301, 0.66), angle = Angle(180, -90, 0), size = Vector(0.059, 0.029, 0.039), color = Color(47, 22, 1, 255), surpresslightning = false, material = "models/props_pipes/pipemetal004a", skin = 0, bodygroup = {} },
		["t4_shot_part++"] = { type = "Model", model = Model("models/props_combine/combine_interface003.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -6.301, 2.799), angle = Angle(180, -90, 0), size = Vector(0.059, 0.022, 0.059), color = Color(79, 100, 135, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["t4_shot_part+++++"] = { type = "Model", model = Model("models/props_wasteland/laundry_washer001a.mdl"), bone = "v_weapon.magazine", rel = "", pos = Vector(0, -0.801, 3), angle = Angle(0, 0, 0), size = Vector(0.054, 0.054, 0.07), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["t4_shot_part+"] = { type = "Model", model = Model("models/props_combine/combine_train02a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part", pos = Vector(24.5, 4.38, -4.1), angle = Angle(180, 90, 0), size = Vector(0.013, 0.024, 0.009), color = Color(60, 60, 60, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part"] = { type = "Model", model = Model("models/weapons/c_pistol.mdl"), bone = "v_weapon.galil", rel = "", pos = Vector(4.4, -5, -19.8), angle = Angle(90, 0, -90), size = Vector(0.8, 0.8, 1.21), color = Color(60, 60, 60, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["t4_shot_part++++++"] = { type = "Model", model = Model("models/props_pipes/pipe02_straight01_long.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, 13, -0.801), angle = Angle(0, 0, 0), size = Vector(0.17, 0.3, 0.17), color = Color(30, 30, 30, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part+++++++"] = { type = "Model", model = Model("models/props_pipes/concrete_pipe001a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, 11, 1.5), angle = Angle(90, 0, 0), size = Vector(0.032, 0.009, 0.009), color = Color(30, 30, 30, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part++++"] = { type = "Model", model = Model("models/props_wasteland/controlroom_filecabinet002a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -13, 0.618), angle = Angle(0, 0, 100), size = Vector(0.039, 0.15, 0.009), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
		["t4_shot_part+++"] = { type = "Model", model = Model("models/props_junk/ibeam01a_cluster01.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -7.301, 0.66), angle = Angle(180, -90, 0), size = Vector(0.059, 0.029, 0.039), color = Color(47, 22, 1, 255), surpresslightning = false, material = "models/props_pipes/pipemetal004a", skin = 0, bodygroup = {} },
		["t4_shot_part++"] = { type = "Model", model = Model("models/props_combine/combine_interface003.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, -6.301, 2.799), angle = Angle(180, -90, 0), size = Vector(0.059, 0.029, 0.059), color = Color(79, 100, 135, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["t4_shot_part+++++"] = { type = "Model", model = Model("models/props_wasteland/laundry_washer001a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part+", pos = Vector(0, 5, 2), angle = Angle(0, 0, 90), size = Vector(0.054, 0.054, 0.07), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["t4_shot_part+"] = { type = "Model", model = Model("models/props_combine/combine_train02a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "t4_shot_part", pos = Vector(-3.636, 0, 0.699), angle = Angle(0, 90, 180), size = Vector(0.013, 0.024, 0.009), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["t4_shot_part"] = { type = "Model", model = Model("models/weapons/w_pistol.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1, -4.5), angle = Angle(0, 180, 180), size = Vector(0.8, 0.8, 1.21), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} }
	}

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 21) }
	}

SWEP.ViewModelBoneMods = {
	["v_weapon.galil"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

	