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
SWEP.PrintName				= "Splinter"		-- Weapon name (Shown on HUD)	
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
SWEP.ViewModel				= "models/weapons/c_crossbow.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/xm1014/xm1014-1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 100		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2		-- Size of a clip
SWEP.Primary.DefaultClip			= 6	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 5			-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 5		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.3	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .8

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 11.35	-- Base damage per bullet
SWEP.Primary.Spread		= .05	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .05	-- Ironsight accuracy, should be the same for shotguns
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
		["base"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0.052, 1.702, -7.329), angle = Angle(-54.559, -90, -180), size = Vector(0.057, 0.035, 0.041), color = Color(190, 150, 95, 255), surpresslightning = false, material = "models/props_wasteland/wood_fence01a", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/props_c17/canister01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-5.421, -0.101, -0.819), angle = Angle(-52.792, 0, 0), size = Vector(0.187, 0.382, 0.035), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "break", pos = Vector(-1.89, 0.186, 1.929), angle = Angle(0, 36.453, 0), size = Vector(0.1, 0.019, 0.019), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["break"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-1.063, 0.196, 2.507), angle = Angle(-126.469, 90, 90), size = Vector(0.019, 0.019, 0.045), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_lab/blastdoor001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-6.325, -0.13, -4.14), angle = Angle(0, 90, -36.279), size = Vector(0.211, 0.05, 0.014), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "break", pos = Vector(-1.89, 0.186, 0.338), angle = Angle(0, 36.453, 0), size = Vector(0.1, 0.019, 0.019), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props_combine/combine_interface003.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-2.258, 0, -1.691), angle = Angle(35.486, 0, 0), size = Vector(0.097, 0.041, 0.071), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/combine_dropship_container.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "break", pos = Vector(-1.009, 1.552, 1.004), angle = Angle(0, 37.951, -90), size = Vector(0.018, 0.019, 0.014), color = Color(190, 150, 95, 255), surpresslightning = false, material = "models/props_wasteland/wood_fence01a", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["break"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-8.749, -1.099, -4.579), angle = Angle(135, 0, 90), size = Vector(0.019, 0.019, 0.045), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/props_c17/canister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-5.421, -0.101, -0.819), angle = Angle(-52.792, 0, 0), size = Vector(0.187, 0.382, 0.035), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-10.634, 0.66, -4.819), angle = Angle(37.5, 0, 0), size = Vector(0.1, 0.019, 0.019), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/combine_dropship_container.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-9.98, -0.201, -6.435), angle = Angle(39.694, 0, 0), size = Vector(0.018, 0.019, 0.014), color = Color(190, 150, 95, 255), surpresslightning = false, material = "models/props_wasteland/wood_fence01a", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.888, 1.406, -0.543), angle = Angle(130.128, 5.808, 0), size = Vector(0.057, 0.035, 0.041), color = Color(190, 150, 95, 255), surpresslightning = false, material = "models/props_wasteland/wood_fence01a", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-10.634, -0.854, -4.819), angle = Angle(37.5, 0, 0), size = Vector(0.1, 0.019, 0.019), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props_combine/combine_interface003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-2.258, 0, -1.691), angle = Angle(35.486, 0, 0), size = Vector(0.097, 0.041, 0.071), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_lab/blastdoor001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-6.325, -0.13, -4.14), angle = Angle(0, 90, -36.279), size = Vector(0.211, 0.05, 0.014), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} }
	}
	
SWEP.ViewModelBoneMods = {
	["ValveBiped.pull"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Crossbow_base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bolt"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowr1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowl1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowr2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowl2"] = { scale = Vector(0.017, 0.017, 0.017), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
