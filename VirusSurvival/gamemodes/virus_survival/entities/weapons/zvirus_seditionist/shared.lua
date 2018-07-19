SWEP.Primary.SpreadMultiplierMax = 1
SWEP.Primary.SpreadIncrement = 0
SWEP.Primary.SpreadRecovery = 1
SWEP.AllowSprintAttack = true
SWEP.DisableChambering = true
SWEP.Category				= "Zombie Survival"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Seditionist"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 35			-- Position in the slot
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
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_deagle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_deagle.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("Weapon_DEagle.1")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 187			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 7		-- Size of a clip
SWEP.Primary.DefaultClip		= 21		-- Bullets you start with
SWEP.Primary.KickUp				= 1.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "357"

SWEP.Secondary.IronFOV			= 65		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 53	-- Base damage per bullet
SWEP.Primary.Spread		= .015	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.361, -5.579, 1.919)
SWEP.IronSightsAng = Vector(0.718, 0, 0)
SWEP.SightsPos = Vector(-6.361, -5.579, 1.919)
SWEP.SightsAng = Vector(0.718, 0, 0)
SWEP.RunSightsPos = Vector(2.405, -17.334, -15.011)
SWEP.RunSightsAng = Vector(70, 0, 0)

SWEP.VElements = {
		["laserbeam"] = { type = "Sprite", sprite = "sprites/glow01", bone = "ValveBiped.Bip01_Spine4", rel = "back", pos = Vector(-0.018, -3.799, -1.691), size = { x = 0.79, y = 0.79 }, color = Color(255, 0, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["back++++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.Deagle_Parent", rel = "back", pos = Vector(0, -0.387, -1.553), angle = Angle(0, 0, -180), size = Vector(0.018, 0.01, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["back"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(0.02, -3.869, -4.113), angle = Angle(0, 0, -90), size = Vector(0.018, 0.013, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["scope"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "back+", pos = Vector(2.154, 0, 2.752), angle = Angle(90, 0, 0), size = Vector(0.028, 0.024, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["scopeinnard+"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scope", pos = Vector(0.426, 0, 0.323), angle = Angle(90, 0, 0), size = Vector(0.025, 0.024, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
		["back+"] = { type = "Model", model = "models/props_combine/combinetrain01a.mdl", bone = "v_weapon.Deagle_Slide", rel = "", pos = Vector(0, 1.519, 1.187), angle = Angle(90, -0.288, -90), size = Vector(0.01, 0.021, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["back+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Deagle_Parent", rel = "back", pos = Vector(0, -3.51, -0.551), angle = Angle(0, 0, -90), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["dribble+"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "back", pos = Vector(-1.209, 3.344, 0.642), angle = Angle(-105, 0, -90), size = Vector(0.025, 0.016, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["scopeinnard"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scope", pos = Vector(0.423, 0, 0.323), angle = Angle(90, 180, 0), size = Vector(0.025, 0.024, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
		["laser"] = { type = "Model", model = "models/props_phx/trains/wheel_medium.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "back", pos = Vector(0, -3.399, -1.675), angle = Angle(0, 0, -90), size = Vector(0.016, 0.016, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["dribble"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "back", pos = Vector(1.208, 3.344, 0.094), angle = Angle(105, 0, -90), size = Vector(0.025, 0.016, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["scopeinnard+"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0.029, 8.166, 1.659), angle = Angle(180, 90, 0), size = Vector(0.025, 0.024, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
		["laserbegins"] = { type = "Sprite", sprite = "sprites/glow01", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(-0.018, -3.799, -1.691), size = { x = 0.79, y = 0.79 }, color = Color(255, 0, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["scopeinnard++"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0.029, 8.166, 1.659), angle = Angle(0, 90, 0), size = Vector(0.025, 0.024, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
		["scope"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0.029, 7.666, 1.121), angle = Angle(90, 90, 0), size = Vector(0.028, 0.024, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["back"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.425, 2.095, -4.106), angle = Angle(180, -94.622, 2.526), size = Vector(0.018, 0.013, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["back+"] = { type = "Model", model = "models/props_combine/combinetrain01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.125, 1.56, -2.293), angle = Angle(178.087, -4.79, 0), size = Vector(0.01, 0.021, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["back+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0, -3.51, -0.551), angle = Angle(0, 0, -90), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["back++++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0, -0.387, -1.553), angle = Angle(0, 0, -180), size = Vector(0.018, 0.01, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["dribble+"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(-1.209, 3.344, 0.642), angle = Angle(-105, 0, -90), size = Vector(0.025, 0.016, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser"] = { type = "Model", model = "models/props_phx/trains/wheel_medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(0, -3.399, -1.675), angle = Angle(0, 0, -90), size = Vector(0.016, 0.016, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_train002", skin = 0, bodygroup = {} },
		["dribble"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "back", pos = Vector(1.208, 3.344, 0.094), angle = Angle(105, 0, -90), size = Vector(0.025, 0.016, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}