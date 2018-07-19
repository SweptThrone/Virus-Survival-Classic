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
SWEP.PrintName				= "Innervator"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 62			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_shot_xm1014.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shot_xm1014.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("beams/beamstart5.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 37		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30			-- Size of a clip
SWEP.Primary.DefaultClip			= 90	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.6	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .33
SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0
SWEP.Primary.NumShots	= 5		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 11	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .035	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.IronSightsAng = Vector(-0.139, -0.803, 0)
SWEP.SightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.SightsAng = Vector(-0.139, -0.803, 0)
SWEP.RunSightsPos = Vector(5.748, -13.78, 4.015)
SWEP.RunSightsAng = Vector(-20.67, 46.023, 0)


SWEP.ViewModelBoneMods = {
		["v_weapon.xm1014_Shell"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
		["v_weapon.xm1014_Parent"] = { scale = Vector(1.2, 1.2, 1.2), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
	}

	SWEP.VElements = {
		["laser+++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0.1, 3, -0.601), angle = Angle(180, 0, -91), size = Vector(0.019, 0.021, 0.3), color = Color(89, 89, 97, 255), surpresslightning = false, material = "models/props/de_nuke/coolingtower", skin = 0, bodygroup = {} },
		["laser+++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0.1, 4.9, 0.699), angle = Angle(180, 0, -90), size = Vector(0.449, 1, 0.1), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser++++"] = { type = "Model", model = "models/props_combine/combine_lock01.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(-0.301, -7.5, 0.5), angle = Angle(0, 180, -120.39), size = Vector(0.129, 0.1, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0.1, 9.869, 0.699), angle = Angle(180, 0, -90), size = Vector(0.5, 1, 0.1), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser+++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0.1, -4.901, 0.699), angle = Angle(180, 0, -90), size = Vector(0.349, 1, 0.4), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser++"] = { type = "Model", model = "models/props_combine/combine_generator01.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(-1, 15, 2), angle = Angle(0, 180, 90), size = Vector(0.079, 0.039, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser"] = { type = "Model", model = "models/props_pipes/pipe02_straight01_long.mdl", bone = "v_weapon.xm1014_Bolt", rel = "", pos = Vector(0, -1.601, -2.401), angle = Angle(0, 0, 90), size = Vector(0.2, 0.2, 0.2), color = Color(0, 255, 186, 255), surpresslightning = false, material = "models/props_lab/eyescanner_disp", skin = 0, bodygroup = {} },
		["laser+++"] = { type = "Model", model = "models/props_combine/combine_generator01.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(-0.22, 16, -0.5), angle = Angle(180, 0, 90), size = Vector(0.029, 0.059, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser+"] = { type = "Model", model = "models/props_pipes/pipe02_straight01_long.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0, 16.104, 0), angle = Angle(0, 0, 0), size = Vector(0.25, 0.25, 0.2), color = Color(0, 255, 186, 255), surpresslightning = false, material = "models/props_lab/eyescanner_disp", skin = 0, bodygroup = {} },
		["laser++++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.xm1014_Bolt", rel = "laser", pos = Vector(0.1, 3, 2.5), angle = Angle(180, 0, -90), size = Vector(0.029, 0.029, 0.449), color = Color(89, 89, 97, 255), surpresslightning = false, material = "models/props/de_nuke/coolingtower", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["laser+++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0.1, 3, -0.601), angle = Angle(180, 0, -91), size = Vector(0.019, 0.021, 0.3), color = Color(89, 89, 97, 255), surpresslightning = false, material = "models/props/de_nuke/coolingtower", skin = 0, bodygroup = {} },
		["laser++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0.1, 9.869, 0.699), angle = Angle(180, 0, -90), size = Vector(0.5, 1, 0.1), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser+++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0.1, 4.9, 0.699), angle = Angle(180, 0, -90), size = Vector(0.449, 1, 0.1), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser++++"] = { type = "Model", model = "models/props_combine/combine_lock01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(-0.301, -7.5, 0.5), angle = Angle(0, 180, -120.39), size = Vector(0.129, 0.1, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser+++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0.009, -4.901, 0.699), angle = Angle(180, 0, -90), size = Vector(0.349, 1, 0.4), color = Color(108, 118, 133, 255), surpresslightning = false, material = "models/props/de_train/fence_sheet01", skin = 0, bodygroup = {} },
		["laser+++"] = { type = "Model", model = "models/props_combine/combine_generator01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(-0.22, 16, -0.5), angle = Angle(180, 0, 90), size = Vector(0.029, 0.059, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser+"] = { type = "Model", model = "models/props_pipes/pipe02_straight01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0, 16.104, 0), angle = Angle(0, 0, 0), size = Vector(0.25, 0.25, 0.2), color = Color(0, 255, 186, 255), surpresslightning = false, material = "models/props_lab/eyescanner_disp", skin = 0, bodygroup = {} },
		["laser++"] = { type = "Model", model = "models/props_combine/combine_generator01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(-1, 15, 2), angle = Angle(0, 180, 90), size = Vector(0.079, 0.039, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["laser"] = { type = "Model", model = "models/props_pipes/pipe02_straight01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8, 1, -5), angle = Angle(0, 90, 10), size = Vector(0.2, 0.2, 0.2), color = Color(0, 255, 186, 255), surpresslightning = false, material = "models/props_lab/eyescanner_disp", skin = 0, bodygroup = {} },
		["laser++++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "laser", pos = Vector(0.1, 3, 2.5), angle = Angle(180, 0, -90), size = Vector(0.029, 0.029, 0.449), color = Color(89, 89, 97, 255), surpresslightning = false, material = "models/props/de_nuke/coolingtower", skin = 0, bodygroup = {} }
	}

--redacted