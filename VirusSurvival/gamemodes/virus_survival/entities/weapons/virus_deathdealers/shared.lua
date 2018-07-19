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
SWEP.ShellEjectAttachment			= "3" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Deathdealers"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 37			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "duel"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_elite.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("weapons/shotgun/shotgun_dbl_fire.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 100			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 24		-- Bullets you start with
SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.3		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 0		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 8		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 15.75	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .025 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(0, 0, 0)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(0, 0, 2.131)
SWEP.RunSightsAng = Vector(-13.771, 0, 0)

--SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.DisableChambering = true
SWEP.DoProceduralReload = true--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 3.45

SWEP.Akimbo = true

SWEP.VElements = {
		["handle+"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel++", pos = Vector(-0.308, 20.618, -2.906), angle = Angle(-60.416, 89, 0), size = Vector(0.685, 1.394, 1.488), color = Color(105, 105, 105, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel", pos = Vector(-0.308, 20.618, -2.906), angle = Angle(-60.416, 89, 0), size = Vector(0.685, 1.394, 1.488), color = Color(105, 105, 105, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.elite_right", rel = "barrel", pos = Vector(0, 11.961, 0), angle = Angle(0, 0, 0), size = Vector(0.035, 0.004, 0.029), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["barrel+++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.elite_right", rel = "barrel++", pos = Vector(0, 11.961, 0), angle = Angle(0, 0, 0), size = Vector(0.035, 0.004, 0.029), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["bottom2"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel", pos = Vector(0, -5.393, -3.069), angle = Angle(180, 90, 0), size = Vector(0.143, 0.07, 0.057), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(0.028, -2.34, 17.02), angle = Angle(180, 0, -90), size = Vector(0.034, 0.045, 0.029), color = Color(165, 165, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["BARREL2+"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel++", pos = Vector(-0.138, -14.155, -0.889), angle = Angle(180, -90, -90), size = Vector(0.352, 0.356, 0.18), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["bottom2+"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel++", pos = Vector(0, -5.393, -3.069), angle = Angle(180, 90, 0), size = Vector(0.143, 0.07, 0.057), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["barrel++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(-0.213, -2.34, 17.02), angle = Angle(180, 0, -90), size = Vector(0.034, 0.045, 0.029), color = Color(165, 165, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["BARREL2"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel", pos = Vector(-0.138, -14.155, -0.889), angle = Angle(180, -90, -90), size = Vector(0.352, 0.356, 0.18), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["handle+"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel++", pos = Vector(-0.308, 20.618, -2.906), angle = Angle(-60.416, 89, 0), size = Vector(0.685, 1.394, 1.488), color = Color(105, 105, 105, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-0.308, 20.618, -2.906), angle = Angle(-60.416, 89, 0), size = Vector(0.685, 1.394, 1.488), color = Color(105, 105, 105, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, 11.961, 0), angle = Angle(0, 0, 0), size = Vector(0.035, 0.004, 0.029), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["BARREL2+"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel++", pos = Vector(-0.138, -14.155, -0.889), angle = Angle(180, -90, -90), size = Vector(0.352, 0.356, 0.18), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["bottom2+"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel++", pos = Vector(0, -5.393, -3.069), angle = Angle(180, 90, 0), size = Vector(0.143, 0.07, 0.057), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20.041, 2.372, -3.764), angle = Angle(180, -95, 8), size = Vector(0.034, 0.045, 0.029), color = Color(165, 165, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["BARREL2"] = { type = "Model", model = "models/props_combine/combinebutton.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-0.138, -14.155, -0.889), angle = Angle(180, -90, -90), size = Vector(0.352, 0.356, 0.18), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["bottom2"] = { type = "Model", model = "models/props_wasteland/laundry_washer003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, -5.393, -3.069), angle = Angle(180, 90, 0), size = Vector(0.143, 0.07, 0.057), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} },
		["barrel++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(19.978, 2.829, 4.127), angle = Angle(0, -95, 8), size = Vector(0.034, 0.045, 0.029), color = Color(165, 165, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["barrel+++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel++", pos = Vector(0, 11.961, 0), angle = Angle(0, 0, 0), size = Vector(0.035, 0.004, 0.029), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/destroyedpipes01a", skin = 0, bodygroup = {} }
	}

	SWEP.ViewModelBoneMods = {
		["v_weapon.elite_right"] = { scale = Vector(.1, .1, .1), pos = Vector(0, -0.19, -4.318), angle = Angle(0, 0, -3) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 4.721, 0) },
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7, 0, 0) },
		["v_weapon.elite_left"] = { scale = Vector(.1, .1, .1), pos = Vector(0, 0.126, -3.794), angle = Angle(0, 0, -3) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7, 0, 0) }
	}
