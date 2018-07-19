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
SWEP.PrintName				= "Colossus"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 62			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "physgun"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_shot_xm1014.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shot_xm1014.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("weapons/crossbow/bolt_skewer1.wav")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 60		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 1			-- Size of a clip
SWEP.Primary.DefaultClip			= 3	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 5				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 2	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.IronFOV			= 60		-- How much you 'zoom' in. Less is more! 

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.ShellTime			= 1.5

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 135	-- Base damage per bullet
SWEP.Primary.Spread		= .015	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!
SWEP.Primary.ReloadSound = Sound("ambient/machines/thumper_startup1.wav")
-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.IronSightsAng = Vector(-0.139, -0.803, 0)
SWEP.SightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.SightsAng = Vector(-0.139, -0.803, 0)
SWEP.RunSightsPos = Vector(5.748, -13.78, 4.015)
SWEP.RunSightsAng = Vector(-20.67, 46.023, 0)

SWEP.VElements = {
		["frontbit_inner"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit__behind_underbit", pos = Vector(0, 0, 0), angle = Angle(0, 141.695, 0), size = Vector(0.07, 0.07, 0.215), color = Color(255, 15, 15, 255), surpresslightning = false, material = "models/props_combine/masterinterface_disp", skin = 0, bodygroup = {} },
		["frontbit_behind"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "side", pos = Vector(6.011, 0.037, -3.062), angle = Angle(0, 0, 0), size = Vector(1.881, 0.136, 0.136), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["top"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(-0.262, -3.875, -25.164), angle = Angle(0, 100.58, 0), size = Vector(0.085, 0.085, 0.143), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit_behind_2+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind+", pos = Vector(-0.461, 2, 0), angle = Angle(90, 90, 0), size = Vector(0.032, 0.092, 0.089), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind_bottom"] = { type = "Model", model = "models/props_docks/dock03_pole01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind_2+", pos = Vector(0, 1.937, 3.118), angle = Angle(0, 0, 10), size = Vector(0.092, 0.092, 0.012), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind+"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind", pos = Vector(10.821, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 0.136, 0.136), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit_behind_mp5"] = { type = "Model", model = "models/weapons/w_smg_mp5.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind_2", pos = Vector(0, -2.057, -4.428), angle = Angle(0, 90, 0), size = Vector(0.977, 1.077, 0.354), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind_2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind+", pos = Vector(0, -1.275, 0), angle = Angle(-90, 90, 0), size = Vector(0.032, 0.085, 0.048), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_pipe"] = { type = "Model", model = "models/props_debris/rebar_smallnorm01c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "side", pos = Vector(0, 0.239, 0.003), angle = Angle(21.548, 0, 0), size = Vector(0.649, 0.666, 0.319), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metal_plate", skin = 0, bodygroup = {} },
		["side"] = { type = "Model", model = "models/props_wasteland/horizontalcoolingtank04.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top", pos = Vector(-0.736, -2.576, 0.358), angle = Angle(90, -78, 0), size = Vector(0.028, 0.041, 0.048), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit__behind_underbit"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "frontbit_behind", pos = Vector(5.613, 0.043, 0), angle = Angle(-45, 90, 90), size = Vector(0.074, 0.074, 0.231), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["frontbit_behind++"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "side", pos = Vector(-4.196, -0.069, -3.062), angle = Angle(0, 0, 0), size = Vector(1.205, 0.119, 0.119), color = Color(0, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
		["frontbit_inner"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit__behind_underbit", pos = Vector(0, 0, 0), angle = Angle(0, 141.695, 0), size = Vector(0.07, 0.07, 0.215), color = Color(255, 15, 15, 255), surpresslightning = false, material = "models/props_combine/masterinterface_disp", skin = 0, bodygroup = {} },
		["frontbit_behind"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "side", pos = Vector(6.011, 0.037, -3.062), angle = Angle(0, 0, 0), size = Vector(1.881, 0.136, 0.136), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["top"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20.954, 2.823, -8.398), angle = Angle(-78.195, 180, 0), size = Vector(0.085, 0.085, 0.143), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit_pipe"] = { type = "Model", model = "models/props_debris/rebar_smallnorm01c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "side", pos = Vector(0, 0.239, 0.003), angle = Angle(21.548, 0, 0), size = Vector(0.649, 0.666, 0.319), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metal_plate", skin = 0, bodygroup = {} },
		["side"] = { type = "Model", model = "models/props_wasteland/horizontalcoolingtank04.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "top", pos = Vector(-0.736, -2.576, 0.358), angle = Angle(90, -78, 0), size = Vector(0.028, 0.041, 0.048), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit_behind+"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind", pos = Vector(10.821, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 0.136, 0.136), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit__behind_underbit"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind", pos = Vector(5.613, 0.043, 0), angle = Angle(-45, 90, 90), size = Vector(0.074, 0.074, 0.231), color = Color(170, 155, 149, 255), surpresslightning = false, material = "models/props_wasteland/tugboat02", skin = 0, bodygroup = {} },
		["frontbit_behind_2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind+", pos = Vector(0, -1.275, 0), angle = Angle(-90, 90, 0), size = Vector(0.032, 0.085, 0.048), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind_2+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind+", pos = Vector(-0.461, 2, 0), angle = Angle(90, 90, 0), size = Vector(0.032, 0.092, 0.089), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind_bottom"] = { type = "Model", model = "models/props_docks/dock03_pole01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind_2+", pos = Vector(0, 1.937, 3.118), angle = Angle(0, 0, 10), size = Vector(0.092, 0.092, 0.012), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
		["frontbit_behind_mp5"] = { type = "Model", model = "models/weapons/w_smg_mp5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "frontbit_behind_2", pos = Vector(0, -2.057, -4.428), angle = Angle(0, 90, 0), size = Vector(0.977, 1.077, 0.354), color = Color(165, 165, 165, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} }
	}

	SWEP.ViewModelBoneMods = {
		["v_weapon.xm1014_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(-5, -2, -3), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1.004, 1.004, 1.004), pos = Vector(0, -30, -0.862), angle = Angle(0, 0, 0) }
	}