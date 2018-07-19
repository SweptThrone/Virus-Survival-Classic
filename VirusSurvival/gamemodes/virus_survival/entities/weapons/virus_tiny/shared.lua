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
SWEP.PrintName				= "Tiny"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
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

SWEP.Primary.Sound			= Sound("Weapon_AWP.1")		-- script that calls the primary fire sound
SWEP.Primary.RPM				= 46		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 4			-- Size of a clip
SWEP.Primary.DefaultClip			= 12	-- Default number of bullets in a clip
SWEP.Primary.KickUp			= 1				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.8		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.6	-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "SniperPenetratedRound"

SWEP.Secondary.IronFOV			= 25		-- How much you 'zoom' in. Less is more! 

SWEP.ShellTime			= .6

SWEP.Secondary.ScopeZoom = 9
SWEP.Secondary.UseACOG = false
SWEP.Secondary.UseMilDot = true
SWEP.Secondary.UseSVD = false
SWEP.Secondary.UseParabolic = false
SWEP.Secondary.UseElcan = false
SWEP.Secondary.UseGreenDuplex = false
SWEP.Scoped = true
SWEP.BoltAction = false

SWEP.Primary.NumShots	= 1		-- How many bullets to shoot per trigger pull, AKA pellets
SWEP.Primary.Damage		= 118	-- Base damage per bullet
SWEP.Primary.Spread		= .035	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .00001	-- Ironsight accuracy, should be the same for shotguns
-- Because irons don't magically give you less pellet spread!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.IronSightsAng = Vector(-0.139, -0.803, 0)
SWEP.SightsPos = Vector(-6.96, -4.16, 2.707)
SWEP.SightsAng = Vector(-0.139, -0.803, 0)
SWEP.RunSightsPos = Vector(5.748, -13.78, 4.015)
SWEP.RunSightsAng = Vector(-20.67, 46.023, 0)

SWEP.VElements = {
		["scopemid"] = { type = "Model", model = "models/xqm/rails/funnel.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(4.645, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.02, 0.02, 0.075), color = Color(95, 95, 95, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(0.079, -6.515, -0.695), angle = Angle(-90, 0, 0), size = Vector(0.019, 0.041, 0.041), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["knobs+"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(5.763, -0.769, 0), angle = Angle(180, 90, 98.054), size = Vector(0.079, 0.079, 0.079), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["mount"] = { type = "Model", model = "models/XQM/CoasterTrack/track_guide.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(6.022, 1.996, 0), angle = Angle(90, -90, 0), size = Vector(0.037, 0.041, 0.056), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopemid+"] = { type = "Model", model = "models/xqm/rails/funnel.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(8.166, 0, 0), angle = Angle(-90, 0, 0), size = Vector(0.02, 0.02, 0.014), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning+++"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "v_weapon.xm1014_Parent", rel = "scopebeginning", pos = Vector(9.295, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.014, 0.041, 0.041), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["midsection"] = { type = "Model", model = "models/props_phx/misc/smallcannonball.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(5.747, -0.026, -0.81), angle = Angle(-90, 0, 0), size = Vector(0.114, 0.114, 0.114), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning++"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "v_weapon.xm1014_Parent", rel = "scopebeginning", pos = Vector(7.31, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.043, 0.019, 0.017), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning+"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "v_weapon.xm1014_Parent", rel = "scopebeginning", pos = Vector(4.828, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.028, 0.019, 0.014), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["glass"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(-0.238, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome_side", skin = 0, bodygroup = {} },
		["knobs"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "scopebeginning", pos = Vector(5.763, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.159, 0.079, 0.079), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["scopemid"] = { type = "Model", model = "models/xqm/rails/funnel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(4.645, 0, -0.04), angle = Angle(90, 0, 0), size = Vector(0.02, 0.02, 0.075), color = Color(95, 95, 95, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.928, 0.908, -5.581), angle = Angle(-10, 0, -90), size = Vector(0.019, 0.041, 0.041), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["knobs+"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(5.763, -0.769, 0), angle = Angle(180, 90, 98.054), size = Vector(0.079, 0.079, 0.079), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["glass+"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(9.529, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome_side", skin = 0, bodygroup = {} },
		["mount"] = { type = "Model", model = "models/XQM/CoasterTrack/track_guide.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(6.022, 1.996, 0), angle = Angle(90, -90, 0), size = Vector(0.037, 0.041, 0.056), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["glass"] = { type = "Model", model = "models/XQM/panel360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(-0.238, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/dome_side", skin = 0, bodygroup = {} },
		["scopebeginning+++"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(9.274, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.014, 0.041, 0.041), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning++"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(7.31, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.043, 0.019, 0.017), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopemid+"] = { type = "Model", model = "models/xqm/rails/funnel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(8.166, 0, 0.05), angle = Angle(-90, 0, 0), size = Vector(0.02, 0.02, 0.014), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["scopebeginning+"] = { type = "Model", model = "models/XQM/deg360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(4.828, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.028, 0.019, 0.014), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["midsection"] = { type = "Model", model = "models/props_phx/misc/smallcannonball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(5.747, -0.026, -0.81), angle = Angle(-90, 0, 0), size = Vector(0.114, 0.114, 0.114), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} },
		["knobs"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scopebeginning", pos = Vector(5.763, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.159, 0.079, 0.079), color = Color(105, 105, 105, 255), surpresslightning = false, material = "models/props_pipes/pipemetal001a", skin = 0, bodygroup = {} }
	}


--redacted