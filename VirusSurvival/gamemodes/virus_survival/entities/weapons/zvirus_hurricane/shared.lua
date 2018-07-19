SWEP.Primary.SpreadMultiplierMax = 1
SWEP.Primary.SpreadIncrement = 0
SWEP.Primary.SpreadRecovery = 1
SWEP.AllowSprintAttack = true
SWEP.DisableChambering = true
SWEP.TracerName = "AR2Tracer"
SWEP.Category = "Zombie Survival"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "1" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Hurricane"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 72			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/c_smg1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
sound.Add(
{
	name = "Weapon_Hurricane.Single",
	channel = CHAN_WEAPON,
	volume = 0.7,
	soundlevel = 100,
	pitch = {70,80},
	sound = {"weapons/ar2/fire1.wav"}
})
SWEP.Primary.Sound			= Sound("Weapon_Hurricane.Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 666			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 40		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 14.5	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01 -- Ironsight accuracy, should be the same for shotguns

SWEP.SelectiveFire		= true

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.441, 0, 2.88)
SWEP.IronSightsAng = Vector(-1.201, -0.101, 0)
SWEP.SightsPos = Vector(-6.441, 0, 2.88)
SWEP.SightsAng = Vector(-1.201, -0.101, 0)
SWEP.RunSightsPos = Vector(5.748, -9.686, 0)
SWEP.RunSightsAng = Vector(-6.974, 49.881, -5.237)

SWEP.VElements = {
		["base"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -0.301, 4.731), angle = Angle(0, 180, 90), size = Vector(0.025, 0.025, 0.014), color = Color(255, 228, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/props_c17/light_domelight01_off.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0.559, -1.04, -3.651), angle = Angle(-90, -164.752, 0), size = Vector(0.043, 0.037, 0.052), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props_combine/eli_pod_inner.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0.079, -2.368, -6.355), angle = Angle(-0.703, -90.113, 0), size = Vector(0.12, 0.075, 0.116), color = Color(255, 204, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_combine/combine_teleportplatform.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(-0.002, -0.489, -8.968), angle = Angle(0, -90, -0), size = Vector(0.056, 0.019, 0.052), color = Color(255, 209, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base+++"] = { type = "Model", model = "models/props_c17/light_domelight01_off.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.773, 2.071, -5.448), angle = Angle(0, 0, -80.556), size = Vector(0.043, 0.037, 0.052), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["base++++"] = { type = "Model", model = "models/props_c17/light_domelight01_off.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.69, 0.799, -5.528), angle = Angle(0, 0, 80.789), size = Vector(0.043, 0.037, 0.052), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_combine/combine_teleportplatform.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-1.594, 1.468, -3.698), angle = Angle(103.306, 180, 0), size = Vector(0.056, 0.019, 0.052), color = Color(255, 209, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.47, 1.462, -6.394), angle = Angle(-175.984, -88.995, 11.291), size = Vector(0.025, 0.019, 0.014), color = Color(255, 228, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props_combine/eli_pod_inner.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.541, 1.491, -6.099), angle = Angle(98.305, 179.197, 0), size = Vector(0.12, 0.075, 0.116), color = Color(255, 204, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
