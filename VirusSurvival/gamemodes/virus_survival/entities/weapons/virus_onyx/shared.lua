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
SWEP.PrintName				= "Onyx"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 68			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"

SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_sg550.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_sg550.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Weapon_Onyx.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 60		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip			= 36	-- Bullets you start with
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 86.5	--base damage per bullet
SWEP.Primary.Spread		= .005	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.401, -5.94, 1.279)
SWEP.IronSightsAng = Vector(1.18, 0, 0)
SWEP.SightsPos = Vector(-7.401, -5.94, 1.279)
SWEP.SightsAng = Vector(1.18, 0, 0)
SWEP.RunSightsPos = Vector(10.786, -18.347, 0)
SWEP.RunSightsAng = Vector(-7.982, 70, 0)
	
SWEP.VElements = {
		["svu++"] = { type = "Model", model = "models/props_wasteland/gaspump001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(2, 0, 0.5), angle = Angle(-90, 0, 73.636), size = Vector(0.029, 0.059, 0.1), color = Color(49, 54, 52, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["svu+++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(9, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.034, 0.034, 0.034), color = Color(90, 85, 75, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(-2, 0.6, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.019, 0.039, 0.15), color = Color(69, 94, 138, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["svu++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "v_weapon.sg550_Clip", rel = "", pos = Vector(0, 1.6, 0.5), angle = Angle(0, 0, 11), size = Vector(0.013, 0.109, 0.068), color = Color(27, 31, 34, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["svu++++++++++++"] = { type = "Model", model = "models/props_junk/ibeam01a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(2.5, -1, 0.5), angle = Angle(0, 0, 90), size = Vector(0.009, 0.09, 0.15), color = Color(128, 113, 94, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++++++++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(11, 0.6, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.017, 0.035, 0.14), color = Color(85, 113, 160, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["svu"] = { type = "Model", model = "models/props_phx/torpedo.mdl", bone = "v_weapon.sg550_Parent", rel = "", pos = Vector(0.6, -5, -3), angle = Angle(90, 0, 0), size = Vector(0.15, 0.09, 0.05), color = Color(80, 78, 85, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["svu++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(-14, 0, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.019, 0.019, 0.15), color = Color(74, 94, 138, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["svu+++++++++++++"] = { type = "Model", model = "models/props_junk/ibeam01a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(6.5, -1, 0.5), angle = Angle(0, 0, 90), size = Vector(0.009, 0.09, 0.15), color = Color(128, 113, 94, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(6, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.029, 0.029, 0.09), color = Color(161, 163, 132, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++++++++"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(9.5, -2.6, 0.5), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.029), color = Color(25, 33, 51, 255), surpresslightning = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["svu++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(9.5, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.037, 0.037, 0.009), color = Color(72, 67, 62, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+"] = { type = "Model", model = "models/props_wasteland/gaspump001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(13, 0, 0.5), angle = Angle(-90, 0, 90), size = Vector(0.05, 0.119, 0.059), color = Color(49, 44, 49, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["svu+++++"] = { type = "Model", model = "models/props_wasteland/prison_flourescentlight001a.mdl", bone = "v_weapon.sg550_Parent", rel = "svu", pos = Vector(4, -0.741, 0.5), angle = Angle(90, 0, 90), size = Vector(0.119, 0.119, 0.039), color = Color(176, 170, 153, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["svu++"] = { type = "Model", model = "models/props_wasteland/gaspump001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(2, 0, 0.5), angle = Angle(-90, 0, 73.636), size = Vector(0.029, 0.059, 0.1), color = Color(49, 54, 52, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["svu+++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(9, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.034, 0.034, 0.034), color = Color(90, 85, 75, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(-2, 0.6, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.019, 0.039, 0.15), color = Color(69, 94, 138, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["svu+++++"] = { type = "Model", model = "models/props_wasteland/prison_flourescentlight001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(4, -0.741, 0.5), angle = Angle(90, 0, 90), size = Vector(0.119, 0.119, 0.039), color = Color(176, 170, 153, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+"] = { type = "Model", model = "models/props_wasteland/gaspump001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(13, 0, 0.5), angle = Angle(-90, 0, 90), size = Vector(0.05, 0.119, 0.059), color = Color(49, 44, 49, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["svu++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(-1, 2, 0.25), angle = Angle(90, 0, 11), size = Vector(0.013, 0.109, 0.068), color = Color(27, 31, 34, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["svu"] = { type = "Model", model = "models/props_phx/torpedo.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.5, 0, -4), angle = Angle(171.817, 0, 90), size = Vector(0.15, 0.09, 0.05), color = Color(80, 78, 85, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["svu++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(-14, 0, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.019, 0.019, 0.159), color = Color(74, 94, 138, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} },
		["svu+++++++++++++"] = { type = "Model", model = "models/props_junk/ibeam01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(6.5, -1, 0.5), angle = Angle(0, 0, 90), size = Vector(0.009, 0.09, 0.15), color = Color(128, 113, 94, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(6, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.029, 0.029, 0.09), color = Color(161, 163, 132, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++++++++"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(9.5, -2.6, 0.5), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.029), color = Color(25, 33, 51, 255), surpresslightning = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["svu++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(9.5, -2.6, 0.5), angle = Angle(90, 0, 0), size = Vector(0.037, 0.037, 0.009), color = Color(72, 67, 62, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu++++++++++++"] = { type = "Model", model = "models/props_junk/ibeam01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(2.5, -1, 0.5), angle = Angle(0, 0, 90), size = Vector(0.009, 0.09, 0.15), color = Color(128, 113, 94, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["svu+++++++++++"] = { type = "Model", model = "models/props_wasteland/laundry_washer001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "svu", pos = Vector(11, 0.6, 0.5), angle = Angle(92.337, -90, -90), size = Vector(0.017, 0.035, 0.14), color = Color(85, 113, 160, 255), surpresslightning = false, material = "models/props_pipes/pipeset_metal", skin = 0, bodygroup = {} }
	}

SWEP.ViewModelBoneMods = {
	["v_weapon.sg550_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.ShowWorldModel = false
--redacted