-- init.lua
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local passes = 0

function ENT:Initialize()

	self:SetModel("models/weapons/w_c4_planted.mdl")
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	if ( SERVER ) then self:PhysicsInit( SOLID_VPHYSICS ) end
	local phys = self:GetPhysicsObject()
	if ( IsValid( phys ) ) then phys:Wake() end
	self:SetCollisionGroup( COLLISION_GROUP_DEBRIS_TRIGGER )
	passes = 0
	
end

function ENT:Think()
	for k,v in pairs( ents.FindInSphere( self:GetPos(), 75 ) ) do
		if (v:IsPlayer() and v:Team() == 2 and passes == 0) then
			passes = 1
			self:EmitSound( "weapons/c4/c4_beep1.wav" )
			timer.Simple( 0.1, function()
				local explode = ents.Create( "env_explosion" )
				explode:SetPos( self:GetPos() )
				explode:Spawn()
				explode:SetKeyValue( "iMagnitude", "220" )
				explode:Fire( "Explode", 0, 0 )
				explode:EmitSound( "ambient/explosions/explode_7.wav" )
				self:Remove()
			end )
		end
	end

end