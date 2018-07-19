SWEP.AllowSprintAttack = true
SWEP.DisableChambering = true
SWEP.Category				= "ZZombie Survival"
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Detonation Pack"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 5				-- Slot in the weapon selection menu
SWEP.SlotPos				= 45			-- Position in the slot
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
SWEP.ViewModel				= "models/weapons/cstrike/c_c4.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_c4.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.UseHands = true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false

SWEP.Primary.Sound			= Sound("Weapon_Pistol.NPC_Single")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 300			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 1		-- Bullets you start with
SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "bomb"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots	= 0		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 0	-- Base damage per bullet
SWEP.Primary.Spread		= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .015 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-5.881, 0, 3.799)
SWEP.IronSightsAng = Vector(0.8, -0.9, 0)
SWEP.SightsPos = Vector(-5.881, 0, 3.799)
SWEP.SightsAng = Vector(0.8, -0.9, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)

SWEP.DisableIdleAnimations = false

function SWEP:PrimaryAttack()
	if SERVER then
		local bomb = ents.Create( "virus_thrown_detpack" )
		bomb:SetPos( Vector(self.Owner:GetPos().x, self.Owner:GetPos().y, self.Owner:GetPos().z + 32 ) )
		bomb:SetMoveType( MOVETYPE_VPHYSICS )
		bomb:SetSolid( SOLID_VPHYSICS )
		if ( SERVER ) then bomb:PhysicsInit( SOLID_VPHYSICS ) end
		local phys = bomb:GetPhysicsObject()
		if ( IsValid( phys ) ) then phys:Wake() end
		bomb:SetCollisionGroup( COLLISION_GROUP_DEBRIS_TRIGGER )
		local vel = self.Owner:GetAimVector()
		vel = vel * 100
		bomb:SetModel("models/weapons/w_c4_planted.mdl")
		bomb:Spawn()
		
		local velocity = self.Owner:GetAimVector()
		velocity = velocity * 500
		bomb:SetVelocity( velocity )
		
		bomb:EmitSound( "weapons/c4/c4_plant.wav" )
		bomb.Thrower = self.Owner
		self.Owner:StripWeapon( self:GetClass() )
	end
end