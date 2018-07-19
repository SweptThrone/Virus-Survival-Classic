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
SWEP.PrintName				= "Terminus"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 68			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- Set false if you want no crosshair from hip
SWEP.Weight				= 50			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= true		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.HoldType 				= "rpg"
SWEP.ShowWorldModel = false
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_sg550.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_sg550.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("Weapon_SG550.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 600		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip			= 90	-- Bullets you start with
SWEP.Primary.KickUp			= 0.1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.ScopeZoom			= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.data 				= {}
SWEP.data.ironsights			= 0
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 27.5	--base damage per bullet
SWEP.Primary.Spread		= .025	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .001 -- ironsight accuracy, should be the same for shotguns

-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.401, -5.94, 1.279)
SWEP.IronSightsAng = Vector(1.18, 0, 0)
SWEP.SightsPos = Vector(-7.401, -5.94, 1.279)
SWEP.SightsAng = Vector(1.18, 0, 0)
SWEP.RunSightsPos = Vector(10.786, -18.347, 0)
SWEP.RunSightsAng = Vector(-7.982, 70, 0)
	
SWEP.VElements = {
		["base+++++"] = { type = "Model", model = "models/props_trainstation/trainstation_column001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.399, -10.077, 0.458), angle = Angle(0, 0, -90), size = Vector(0.09, 0.09, 0.041), color = Color(200, 200, 200, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++++++++++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(-1.147, -5.325, 0.579), angle = Angle(0, 90, 90), size = Vector(0.019, 0.008, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(0.133, -6.993, -0.058), angle = Angle(0, 0, 0), size = Vector(0.093, 0.067, 0.109), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(-0.431, -3.07, -1.063), angle = Angle(0, 90, 0), size = Vector(0.029, 0.004, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "v_weapon.sg550_Clip", rel = "", pos = Vector(-0.03, 2.838, -0.187), angle = Angle(0, 0, 11.232), size = Vector(0.017, 0.14, 0.068), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.401, 18.51, -1.601), angle = Angle(92.424, -90, 0), size = Vector(0.129, 0.028, 0.054), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(0, -5.474, -0.886), angle = Angle(0, 0, 0), size = Vector(0.074, 0.097, 0.078), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++++++++++"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.429, -10.79, 3.95), angle = Angle(-180, 90, 0), size = Vector(0.004, 0.009, 0.009), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_8x.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(-0.431, -3.901, 2.5), angle = Angle(180, 90, 0), size = Vector(0.017, 0.004, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base+++++++"] = { type = "Model", model = "models/weapons/w_pist_glock18.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.452, 7.76, -6.605), angle = Angle(0.172, 90, 0), size = Vector(1.18, 0.879, 1.059), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(-0.11, 0, 1.697), angle = Angle(0, 0, 0), size = Vector(0.054, 0.214, 0.056), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++++++++"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.581, 9.357, 2.319), angle = Angle(0, 0, 0), size = Vector(0.014, 0.012, 0.006), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++++++++++"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "v_weapon.sg550_Chamber", rel = "", pos = Vector(-0.633, -0.877, -4.751), angle = Angle(-180, 0, 0), size = Vector(0.008, 0.004, 0.004), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++"] = { type = "Model", model = "models/props_combine/combine_binocular01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.429, -10.709, 2.403), angle = Angle(-180, 90, 0), size = Vector(0.104, 0.076, 0.054), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.sg550_Parent", rel = "", pos = Vector(0.398, -4.837, -6.283), angle = Angle(0, 0, -90), size = Vector(0.074, 0.214, 0.142), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base+++++++++"] = { type = "Model", model = "models/Gibs/helicopter_brokenpiece_03.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.464, 12.635, -0.173), angle = Angle(13.321, 85.75, -18.448), size = Vector(0.123, 0.065, 0.14), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(0.05, 1.534, -2.869), angle = Angle(0, 0, 9.149), size = Vector(0.079, 0.082, 0.207), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
		["base++++++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(-0.401, 16.805, -1.68), angle = Angle(92.424, -90, 0), size = Vector(0.063, 0.027, 0.059), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.sg550_Parent", rel = "base", pos = Vector(-0.565, 1.32, 1.84), angle = Angle(0, 0, 0), size = Vector(0.02, 0.052, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base+++++"] = { type = "Model", model = "models/props_trainstation/trainstation_column001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.399, -10.077, 0.458), angle = Angle(0, 0, -90), size = Vector(0.09, 0.09, 0.041), color = Color(200, 200, 200, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++++++++++++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.282, -5.325, 0.579), angle = Angle(0, 90, -90), size = Vector(0.019, 0.008, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++++++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.147, -5.325, 0.579), angle = Angle(0, 90, 90), size = Vector(0.019, 0.008, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.133, -6.993, -0.058), angle = Angle(0, 0, 0), size = Vector(0.093, 0.067, 0.109), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.431, -3.07, -1.063), angle = Angle(0, 90, 0), size = Vector(0.029, 0.004, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.401, 18.51, -1.601), angle = Angle(92.424, -90, 0), size = Vector(0.129, 0.028, 0.054), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0, -5.474, -0.886), angle = Angle(0, 0, 0), size = Vector(0.074, 0.097, 0.078), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++++++++++"] = { type = "Model", model = "models/props_pipes/concrete_pipe001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.429, -10.79, 3.95), angle = Angle(-180, 90, 0), size = Vector(0.004, 0.009, 0.009), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_8x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.431, -3.901, 2.5), angle = Angle(180, 90, 0), size = Vector(0.017, 0.004, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base+++++++"] = { type = "Model", model = "models/weapons/w_pist_glock18.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.452, 7.76, -6.605), angle = Angle(0.172, 90, 0), size = Vector(1.18, 0.879, 1.059), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.11, 0, 1.697), angle = Angle(0, 0, 0), size = Vector(0.054, 0.214, 0.056), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++++++++"] = { type = "Model", model = "models/props_combine/combinethumper002.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.581, 9.357, 2.319), angle = Angle(0, 0, 0), size = Vector(0.014, 0.012, 0.006), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.472, 0.644, -4.957), angle = Angle(-180, -84.611, 9.975), size = Vector(0.074, 0.214, 0.142), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base++++++"] = { type = "Model", model = "models/props_combine/combine_binocular01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.429, -10.709, 2.403), angle = Angle(-180, 90, 0), size = Vector(0.104, 0.076, 0.054), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.408, 1.106, -5.235), angle = Angle(0, 0, 102.095), size = Vector(0.017, 0.14, 0.068), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base+++++++++"] = { type = "Model", model = "models/Gibs/helicopter_brokenpiece_03.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.464, 12.635, -0.173), angle = Angle(13.321, 85.75, -18.448), size = Vector(0.123, 0.065, 0.14), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} },
		["base++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.05, 1.534, -2.869), angle = Angle(0, 0, 9.149), size = Vector(0.079, 0.082, 0.207), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
		["base++++++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.401, 16.805, -1.68), angle = Angle(92.424, -90, 0), size = Vector(0.063, 0.027, 0.059), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
		["base++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.565, 1.32, 1.84), angle = Angle(0, 0, 0), size = Vector(0.02, 0.052, 0.029), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete2", skin = 0, bodygroup = {} }
	}

SWEP.ViewModelBoneMods = {
	["v_weapon.sg550_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

--redacted