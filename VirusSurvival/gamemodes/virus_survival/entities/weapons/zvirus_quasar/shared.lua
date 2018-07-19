SWEP.Primary.SpreadMultiplierMax = 1
SWEP.Primary.SpreadIncrement = 0
SWEP.Primary.SpreadRecovery = 1
SWEP.AllowSprintAttack = true
SWEP.DisableChambering = true
SWEP.TracerName = "ToolTracer"
SWEP.TracerCount = 1
SWEP.Category				= "Zombie Survival"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Quasar"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4			-- Slot in the weapon selection menu
SWEP.SlotPos				= 52			-- Position in the slot
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
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_awp.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"	-- Weapon world model
SWEP.Base 				= "tfa_scoped_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true

sound.Add(
{
	name = "Weapon_Quasar.Single",
	channel = CHAN_AUTO,
	volume = 1,
	soundlevel = 100,
	pitch = {105,115},
	sound = {"npc/sniper/sniper1.wav"}
})

SWEP.Primary.Sound			= Sound("Weapon_Quasar.Single")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 57		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 6		-- Size of a clip
SWEP.Primary.DefaultClip			= 18	-- Bullets you start with
SWEP.Primary.KickUp			= 2				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.ScopeZoom			= 9	
SWEP.Secondary.UseParabolic		= false	-- Choose your scope type, 
SWEP.Secondary.UseACOG			= false
SWEP.Secondary.UseMilDot		= false		
SWEP.Secondary.UseSVD			= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= true	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1
SWEP.ScopeScale 			= 0.7

SWEP.Primary.NumShots	= 1		--how many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 110	--base damage per bullet
SWEP.Primary.Spread		= .01	--define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .0001 -- ironsight accuracy, should be the same for shotguns
SWEP.BoltAction	=	true
-- enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-7.722, 0.827, 2.079)
SWEP.IronSightsAng = Vector(0.892, -0.81, -2.309)
SWEP.SightsPos = Vector(-7.722, 0.827, 2.079)
SWEP.SightsAng = Vector(0.892, -0.81, -2.309)
SWEP.RunSightsPos = Vector(13.868, -12.744, -2.05)
SWEP.RunSightsAng = Vector(-4.435, 62.558, 0)

SWEP.VElements = {
		["base+++"] = { type = "Model", model = Model("models/props_combine/combinecrane002.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-19.8, -0.774, 2.871), angle = Angle(90, 90, 90), size = Vector(0.026, 0.017, 0.059), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = Model("models/props_combine/combinecrane002.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-19.8, 0.518, 0.902), angle = Angle(-90, 90, 90), size = Vector(0.026, 0.017, 0.059), color = Color(194, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++++++"] = { type = "Model", model = Model("models/props_combine/combine_binocular01.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(4.922, 0.052, 1.103), angle = Angle(-9.115, 0, 0), size = Vector(0.246, 0.261, 0.115), color = Color(143, 195, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = Model("models/props_combine/combinethumper002.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-3.194, -0.471, 2.769), angle = Angle(-180, 90, -90), size = Vector(0.034, 0.052, 0.068), color = Color(165, 214, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++"] = { type = "Model", model = Model("models/props_combine/combine_light002a.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(6.977, 0, 4.546), angle = Angle(-90, -90, 90), size = Vector(0.167, 0.196, 0.273), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++++"] = { type = "Model", model = Model("models/props_combine/combine_barricade_bracket01a.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(11.1, -0.592, 2.599), angle = Angle(166.227, 0, 90), size = Vector(0.423, 0.317, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = Model("models/props_combine/combinecamera001.mdl"), bone = "v_weapon.awm_bolt_action", rel = "", pos = Vector(-2.214, 0.8, -1.382), angle = Angle(-7.282, -6.264, 1.56), size = Vector(0.104, 0.184, 0.209), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = Model("models/props_combine/combinetrain01a.mdl"), bone = "v_weapon.awm_parent", rel = "", pos = Vector(0.082, -2.309, -5.773), angle = Angle(90, -90, 0), size = Vector(0.02, 0.017, 0.014), color = Color(150, 206, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++++++"] = { type = "Model", model = Model("models/props_c17/light_decklight01_on.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(6.581, 0, 5.449), angle = Angle(0, 0, 90), size = Vector(0.029, 0.039, 0.029), color = Color(150, 200, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = Model("models/Items/combine_rifle_cartridge01.mdl"), bone = "v_weapon.awm_clip", rel = "", pos = Vector(0.1, 0.294, -0.501), angle = Angle(127.601, -90, 0), size = Vector(0.321, 0.605, 0.337), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++++"] = { type = "Model", model = Model("models/props_combine/combine_barricade_bracket01b.mdl"), bone = "v_weapon.awm_parent", rel = "base", pos = Vector(10.55, -0.592, -3.32), angle = Angle(-172.286, 0, 90), size = Vector(0.423, 0.23, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base+++"] = { type = "Model", model = Model("models/props_combine/combinecrane002.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-19.8, -0.774, 2.871), angle = Angle(90, 90, 90), size = Vector(0.026, 0.017, 0.059), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = Model("models/props_combine/combinecrane002.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-19.8, 0.518, 0.902), angle = Angle(-90, 90, 90), size = Vector(0.026, 0.017, 0.059), color = Color(194, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++++++"] = { type = "Model", model = Model("models/props_combine/combine_binocular01.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.922, 0.052, 1.103), angle = Angle(-9.115, 0, 0), size = Vector(0.246, 0.261, 0.115), color = Color(143, 195, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = Model("models/props_combine/combinethumper002.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-3.194, -0.471, 2.769), angle = Angle(-180, 90, -90), size = Vector(0.034, 0.052, 0.068), color = Color(165, 214, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++"] = { type = "Model", model = Model("models/props_combine/combine_light002a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(6.977, 0, 4.546), angle = Angle(-90, -90, 90), size = Vector(0.167, 0.196, 0.273), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++++"] = { type = "Model", model = Model("models/props_combine/combine_barricade_bracket01a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(11.1, -0.592, 2.599), angle = Angle(166.227, 0, 90), size = Vector(0.423, 0.317, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = Model("models/props_combine/combinecamera001.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.754, 2.461, 1.468), angle = Angle(-7.752, 89.405, 92.916), size = Vector(0.104, 0.184, 0.209), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = Model("models/props_combine/combinetrain01a.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.618, 1.266, -2.902), angle = Angle(169.628, 0, 0), size = Vector(0.02, 0.017, 0.014), color = Color(150, 206, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++++"] = { type = "Model", model = Model("models/props_combine/combine_barricade_bracket01b.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(10.55, -0.592, -3.32), angle = Angle(-172.286, 0, 90), size = Vector(0.423, 0.23, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = Model("models/Items/combine_rifle_cartridge01.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.837, 0, -0.113), angle = Angle(62.376, 0, 0), size = Vector(0.321, 0.605, 0.337), color = Color(200, 228, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++++++++"] = { type = "Model", model = Model("models/props_c17/light_decklight01_on.mdl"), bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(6.581, 0, 5.449), angle = Angle(0, 0, 90), size = Vector(0.029, 0.039, 0.029), color = Color(150, 200, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
