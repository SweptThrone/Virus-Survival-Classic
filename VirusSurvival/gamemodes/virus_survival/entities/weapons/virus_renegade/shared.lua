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
SWEP.PrintName				= "Renegade"		-- Weapon name (Shown on HUD)	
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

SWEP.Primary.Sound			= Sound("Weapon_Renegade.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 50		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 4		-- Size of a clip
SWEP.Primary.DefaultClip			= 36	-- Bullets you start with
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true	

SWEP.data 				= {}
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 127	--base damage per bullet
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
		["kickstand_hold"] = { type = "Model", model = "models/Mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "canister_front", pos = Vector(-0.242, 0, 4.394), angle = Angle(0, 90, 90), size = Vector(0.254, 0.144, 0.144), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["scopebase"] = { type = "Model", model = "models/Mechanics/roboticslarge/g1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scope", pos = Vector(-2.064, 0, -0.262), angle = Angle(0, 0, 90), size = Vector(0.061, 0.037, 0.129), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["kickstand"] = { type = "Model", model = "models/props_c17/metalladder002b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel", pos = Vector(-6.031, 0, 25.576), angle = Angle(135, 0, 180), size = Vector(0.164, 0.245, 0.368), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["clip"] = { type = "Model", model = "models/props_c17/consolebox01a.mdl", bone = "v_weapon.sg550_Clip", rel = "", pos = Vector(0.902, 3.177, 0.266), angle = Angle(0, 90, -90), size = Vector(0.104, 0.134, 0.15), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["canister_front"] = { type = "Model", model = "models/props_c17/canister_propane01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scope", pos = Vector(0.779, 0, -1.066), angle = Angle(-90, 0, 0), size = Vector(0.1, 0.1, 0.15), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["scope"] = { type = "Model", model = "models/props_lab/citizenradio.mdl", bone = "v_weapon.sg550_Parent", rel = "", pos = Vector(0, -6.222, -4.554), angle = Angle(-90, 90, 0), size = Vector(0.731, 0.127, 0.182), color = Color(75, 65, 55, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bottom_grip"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bottom", pos = Vector(0, -2.5, -6.072), angle = Angle(0, -90, 0), size = Vector(0.882, 0.865, 0.992), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_rooftop/roof_vent001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "canister_front", pos = Vector(0, 0, 36.013), angle = Angle(180, 0, 0), size = Vector(0.173, 0.36, 0.727), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["thing_that_moves_back_when_you_shoot"] = { type = "Model", model = "models/props_rooftop/roof_vent001.mdl", bone = "v_weapon.sg550_Chamber", rel = "", pos = Vector(-0.077, 1.86, -2.192), angle = Angle(90, 0, 0), size = Vector(0.18, 0.18, 0.063), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["blackbars"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "canister_front", pos = Vector(0, 0, 4.34), angle = Angle(0, -90, 90), size = Vector(0.179, 0.5, 0.25), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["scope_screen"] = { type = "Model", model = "models/props_junk/cardboard_box001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scope", pos = Vector(-3.105, 0, 1.746), angle = Angle(0, -90, 0), size = Vector(0.078, 0.116, 0.064), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/props_combine/masterinterface_alert", skin = 0, bodygroup = {} },
		["bottom_back"] = { type = "Model", model = "models/props_c17/furniturefridge001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bottom", pos = Vector(0, -12.132, 0.768), angle = Angle(0, -90, 0), size = Vector(0.057, 0.133, 0.052), color = Color(65, 65, 65, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["bottom"] = { type = "Model", model = "models/props_trainstation/train003.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel", pos = Vector(-1.348, 0, 39.881), angle = Angle(0, 90, 90), size = Vector(0.027, 0.048, 0.019), color = Color(75, 85, 95, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["kickstand_hold"] = { type = "Model", model = "models/Mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "canister_front", pos = Vector(-0.242, 0, 4.394), angle = Angle(0, 90, 90), size = Vector(0.254, 0.144, 0.144), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["scopebase"] = { type = "Model", model = "models/Mechanics/roboticslarge/g1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(-2.064, 0, -0.262), angle = Angle(0, 0, 90), size = Vector(0.061, 0.037, 0.129), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["kickstand"] = { type = "Model", model = "models/props_c17/metalladder002b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-6.031, 0, 19.576), angle = Angle(135, 0, 180), size = Vector(0.164, 0.245, 0.368), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["clip"] = { type = "Model", model = "models/props_c17/consolebox01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bottom", pos = Vector(0.758, 4.119, -3.109), angle = Angle(90, 0, 0), size = Vector(0.104, 0.134, 0.15), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["canister_front"] = { type = "Model", model = "models/props_c17/canister_propane01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0.779, 0, -1.066), angle = Angle(-90, 0, 0), size = Vector(0.1, 0.1, 0.15), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["scope"] = { type = "Model", model = "models/props_lab/citizenradio.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.354, 1.194, -6.069), angle = Angle(-171.883, 180, 0), size = Vector(0.731, 0.127, 0.182), color = Color(75, 65, 55, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bottom_grip"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bottom", pos = Vector(0, -2.5, -6.072), angle = Angle(0, -90, 0), size = Vector(0.882, 0.865, 0.992), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_rooftop/roof_vent001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "canister_front", pos = Vector(0, 0, 29.892), angle = Angle(180, 0, 0), size = Vector(0.173, 0.36, 0.579), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["thing_that_moves_back_when_you_shoot"] = { type = "Model", model = "models/props_rooftop/roof_vent001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bottom", pos = Vector(0.153, 5.056, 0.425), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.063), color = Color(75, 75, 75, 255), surpresslightning = false, material = "models/props_c17/metalladder001", skin = 0, bodygroup = {} },
		["bottom"] = { type = "Model", model = "models/props_trainstation/train003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-1.348, 0, 33.347), angle = Angle(0, 90, 90), size = Vector(0.027, 0.048, 0.019), color = Color(75, 85, 95, 255), surpresslightning = false, material = "models/props_pipes/valve001_skin2", skin = 0, bodygroup = {} },
		["bottom_back"] = { type = "Model", model = "models/props_c17/furniturefridge001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bottom", pos = Vector(0, -12.132, 0.768), angle = Angle(0, -90, 0), size = Vector(0.057, 0.133, 0.052), color = Color(65, 65, 65, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
		["scope_screen"] = { type = "Model", model = "models/props_junk/cardboard_box001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(-3.105, 0, 1.746), angle = Angle(0, -90, 0), size = Vector(0.078, 0.116, 0.064), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/props_combine/masterinterface_alert", skin = 0, bodygroup = {} },
		["blackbars"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "canister_front", pos = Vector(0, 0, 4.34), angle = Angle(0, -90, 90), size = Vector(0.179, 0.5, 0.25), color = Color(115, 115, 115, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} }
	}
	
SWEP.ViewModelBoneMods = {
	["v_weapon.sg550_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
--redacted