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
SWEP.PrintName				= "Tempest"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 39		-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_fiveseven.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_fiveseven.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/ar2/npc_ar2_altfire.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 900			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 21		-- Size of a clip
SWEP.Primary.DefaultClip		= 63		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"
SWEP.FireModes = {"Semi","3Burst"}
SWEP.DefaultFireMode     = "3Burst"
SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 37	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.961, -3.412, 3.039)
SWEP.IronSightsAng = Vector(-0.353, 0, 0)
SWEP.SightsPos = Vector(-5.961, -3.412, 3.039)
SWEP.SightsAng = Vector(-0.353, 0, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)

SWEP.VElements = {
		["top2"] = { type = "Model", model = "models/combine_turrets/ground_turret.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top+", pos = Vector(0.1, 0, 1.5), angle = Angle(-90, 0, 0), size = Vector(0.2, 0.079, 0.1), color = Color(208, 229, 255, 255), surpresslightning = false, material = "models/weapons/v_models/pist_fiveseven/pist_fiveseven", skin = 0, bodygroup = {} },
		["bottom"] = { type = "Model", model = "models/props_combine/combinethumper001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top+", pos = Vector(0.699, 0, -2), angle = Angle(0, 90, 0), size = Vector(0.009, 0.014, 0.019), color = Color(171, 191, 204, 255), surpresslightning = false, material = "models/weapons/v_models/pist_fiveseven/pist_fiveseven", skin = 0, bodygroup = {} },
		["top"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "", pos = Vector(0, 7.989, -0.28), angle = Angle(-90, 90, 0), size = Vector(0.029, 0.028, 0.104), color = Color(49, 55, 62, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["top+"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "", pos = Vector(0, -2, -9.429), angle = Angle(0, -90, 0), size = Vector(0.025, 0.035, 0.108), color = Color(49, 52, 55, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["top2"] = { type = "Model", model = "models/combine_turrets/ground_turret.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "top+", pos = Vector(0.1, 0, 1.5), angle = Angle(-90, 0, 0), size = Vector(0.2, 0.079, 0.1), color = Color(208, 229, 255, 255), surpresslightning = false, material = "models/weapons/v_models/pist_fiveseven/pist_fiveseven", skin = 0, bodygroup = {} },
		["bottom"] = { type = "Model", model = "models/props_combine/combinethumper001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "top+", pos = Vector(0.699, 0, -2), angle = Angle(0, 90, 0), size = Vector(0.009, 0.014, 0.019), color = Color(171, 191, 204, 255), surpresslightning = false, material = "models/weapons/v_models/pist_fiveseven/pist_fiveseven", skin = 0, bodygroup = {} },
		["top+"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.5, 2.2, -2.5), angle = Angle(90, 174, 180), size = Vector(0.025, 0.035, 0.108), color = Color(49, 52, 55, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["top"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "top+", pos = Vector(-2, 0, -0.101), angle = Angle(180, 0, 180), size = Vector(0.029, 0.028, 0.104), color = Color(49, 55, 62, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} }
	}