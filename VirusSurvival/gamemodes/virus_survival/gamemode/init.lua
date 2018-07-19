AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("sh_sound.lua")
AddCSLuaFile("cl_scoreboard.lua")
include("shared.lua")
include("sh_sound.lua")
include("cl_scoreboard.lua")

util.AddNetworkString( "roundchanged" )
util.AddNetworkString( "roundcompleted" )
util.AddNetworkString( "actionmessage" )
util.AddNetworkString( "creditsmenu" )
util.AddNetworkString( "nextround" )
util.AddNetworkString( "cltosvinfection" )

function GM:ShowHelp( ply )
	net.Start( "creditsmenu" )
	net.Send( ply )
end

--convenience function
local function VSendNotif( str )

	net.Start( "actionmessage" )
		net.WriteString( str )
	net.Broadcast()

end

function GM:AllowPlayerPickup( ply, ent )
	return false
end

function GM:CanPlayerSuicide( ply )
	return false
end

function GM:PlayerLoadout( ply )
	--reset color because to me, it's sometimes an anomaly
	ply:SetColor( Color( 255, 255, 255 ) )
	if ply:Team() == 1 then
		--survivor team setup--
		ply:SetWalkSpeed( 325 )
		ply:SetRunSpeed( 325 )

		ply:SetColor( Color( 255, 255, 255 ) )
		
		for k,v in pairs( self.zLoadout ) do
			ply:Give( v.ClassName )
		end
		ply:Give( "virus_adrenaline" )
		if math.random(1,3) == 3 then
			ply:Give( "virus_detpack" )
		end

		ply:RemoveAllAmmo()
		
		ply:GiveAmmo( 90, "AR2", true )
		ply:GiveAmmo( 60, "Pistol", true )
		ply:GiveAmmo( 90, "SMG1", true )
		ply:GiveAmmo( 36, "357", true )
		ply:GiveAmmo( 32, "Buckshot", true )
		ply:GiveAmmo( 30, "SniperPenetratedRound", true )
		
		ply:GodEnable()
		--just in case
		ply.DeathStreak = 0
	else
		--ready to infect is a baby-god type thing
		--but in the other direction
		ply:SetNWBool( "infect", false ) 
		ply:RemoveAllAmmo()
		if ply.DeathStreak < 3 then
			ply:SetWalkSpeed( 350 )
			ply:SetRunSpeed( 350 )
			timer.Simple(2, function()
				ply:SetColor( Color( 180, 255, 180 ) )
				ply:EmitSound( "ambient/fire/ignite.wav" )
				ply:SetNWBool( "infect", true ) 
			end)
		else
			--RAGE
			ply:SetWalkSpeed( 425 )
			ply:SetRunSpeed( 425 )
			timer.Simple(2, function()
				ply:EmitSound( "ambient/fire/ignite.wav" )
				VSendNotif( "The infected has become enraged!" )
				ply:SetColor( Color( 128, 0, 0 ) )
				ply:SetNWBool( "infect", true ) 
			end)
		end
	end
	--only works with teams 1-4
	--what a bunch of bs
	ply:SetNoCollideWithTeammates( true )
	ply:EmitSound( "virus/player_spawn.wav" )
end

function GM:PlayerInitialSpawn( ply )
	if self.State == "Active" or self.State == "Last" then
		ply:SetTeam( 2 )
		GAMEMODE:OnPlayerChangedTeam( ply, 0, 2 )
		ply.DeathStreak = 0
	else
		ply:SetTeam( 1 )
		GAMEMODE:OnPlayerChangedTeam( ply, 0, 1 )
		ply.DeathStreak = 0
	end
end

function GM:OnPlayerChangedTeam( ply, old, new )
	--if the player just became infected,
	--take all of their weapons and model them and stuff
	--TODO: redundant?
	if old == 1 and new == 2 then
		for k,v in pairs( ply:GetWeapons() ) do
			ply:StripWeapon( v.ClassName )
		end
		ply:SetModel( "models/player/zombie_fast.mdl" )
		ply:SetColor( Color( 180, 255, 180 ) )
		ply:SetWalkSpeed( 350 )
		ply:SetRunSpeed( 350 )
		ply:EmitSound( "ambient/fire/ignite.wav" )
		ply:GodDisable()
		ply:SetNWBool( "infect", true ) 
		ply:SetFrags( 0 )
	end

end

function GM:PlayerDeathSound()
	return true
end

hook.Add("PlayerDeath", "DeathStreak", function( vic, ent, atk )
	--reset color just to be sure
	--TODO: redundant?
	vic:SetColor( Color(255,255,255,255) )
	--reset infectibility just to be sure
	--TODO: redundant?
	vic:SetNWBool( "infect", false )
	--my fun death notifications
	local verbs = {
		" smoked ",
		" fragged ",
		" decimated ",
		" offed ",
		" floored ",
		" clocked ",
		" dropped "
	}
	--I think I covered every way to die
	if ent == "virus_thrown_detpack" then
		VSendNotif( vic:Name() .. " exploded!" )
	elseif !atk:IsPlayer() or vic == atk then
		VSendNotif( vic:Name() .. " died!" )
	else
		VSendNotif( atk:Name() .. table.Random( verbs ) .. vic:Name() .. " with the " .. atk:GetActiveWeapon().PrintName .. "." )
	end
	--if the player is the only infected, increment their deathstreak
	--at three deaths in a row, they become enraged
	--more speed and double health
	if vic:Team() == 2 and team.NumPlayers( 2 ) == 1 then
		vic.DeathStreak = vic.DeathStreak + 1
	end
end )

function GM:PlayerDisconnected( ply )
	 if ply:Team() == 2 and team.NumPlayers( 2 ) == 1 then
		for k,v in pairs(player.GetAll()) do
			v:ChatPrint( "The infected left!  Chose a random player to take their place." )
		end
		
		local randply = table.Random( player.GetAll() )
		VSendNotif( randply:Name() .. " has been infected!" )
		randply:SetTeam( 2 )
		GAMEMODE:OnPlayerChangedTeam( randply, 1, 2 )
		randply:SetNWBool( "infect", true ) 
	 end
end

--warning:
--nasty jazz below
function GM:Tick()
	--if there aren't enough players to play the game,
	--don't.
	if #player.GetAll() <= 1 then
		self.State = "Waiting"
		timer.Remove( "RoundTimer" )
		timer.Remove( "InfectionCountdown" )
	else
		--makes a lot of sense, huh?
		if self.State == "Waiting" then
			self.State = "Preparing"
		end
	end
	
	--being called 6 times a second has its advantages
	--but there are also some disadvantages
	if self.State == self.LastState then return end
	
	if #player.GetAll() <= 1 then
		local pl = player.GetAll()[1]
		if IsValid(pl) then
			pl:SetTeam(1)
			GAMEMODE:OnPlayerChangedTeam( pl, 2, 1 )
			GAMEMODE:OnPlayerChangedTeam( pl, 1, 1 )
			for k,v in pairs( pl:GetWeapons() ) do
				pl:StripWeapon( v.ClassName )
			end
			pl:Spawn()
		end
	end
	
	--round state changed
	net.Start( "roundchanged" )
		net.WriteString( self.State )
	net.Broadcast()
	
	if self.State == "Preparing" then
		--the secret suspenseful time where no one knows who will be infected
		timer.Create("InfectionCountdown", 20, 1, function()
			local randply = table.Random( player.GetAll() )
			for k,v in pairs(player.GetAll()) do
				--i left this in here?
				--oh well.
				v:StopSound( self.State .. "_music" )
				v:EmitSound( "virus/stinger.mp3" )
			end
			--AAAA MAKE THEM A ZOMBIE
			VSendNotif( randply:Name() .. " has been infected!" )
			randply:SetTeam( 2 )
			GAMEMODE:OnPlayerChangedTeam( randply, 1, 2 )
			randply:SetNWBool( "infect", true ) 
			self.State = "Active"
			timer.Create( "RoundTimer", 120, 1, function()
				--if there are more than 0 survivors after two minutes,
				--they win
				if team.NumPlayers( 1 ) > 0 then
					VSendNotif( "The survivors win!" )
					net.Start( "roundcompleted" )
						net.WriteString( "survivors" )
					net.Broadcast()
					self.State = "Finish"
				else
					--otherwise, the infected win
					VSendNotif( "The infected win!" )
					net.Start( "roundcompleted" )
						net.WriteString( "infected" )
					net.Broadcast()
					self.State = "Finish"
				end
			end	)
		end )
	end
	--freeze everyone because I'm too lazy to code an anti-infect after the round
	if self.State == "Finish" then
		for k,v in pairs(player.GetAll()) do
			v:Freeze(true)
		end
		--ten second "cooldown"
		if self.Round == 10 then
			MapVote.Start(20, true, 50)
		else
			timer.Create("NextRoundSetup", 10, 1, function()
				self:NextRound()
				for k,v in pairs(player.GetAll()) do
					v:Freeze(false)
					VSendNotif( "A new round will begin soon..." )
					--word has it that SetTeam doesn't call everything it needs to...
					v:SetTeam( 1 )
					GAMEMODE:OnPlayerChangedTeam( v, 2, 1 )
					GAMEMODE:OnPlayerChangedTeam( v, 1, 1 )
					for a,b in pairs( v:GetWeapons() ) do
						v:StripWeapon( b.ClassName )
					end
					game.CleanUpMap( true )
					self:RecycleWeapons()
					self:BreakAllBreakables()
					v:Spawn()
					v:SetFrags( 0 )
				end
				self.State = "Preparing"
				net.Start( "nextround" )
					net.WriteUInt( self.Round, 32 )
				net.Broadcast()
			end )
		end
	end
	--call every tick so we do this
	self.LastState = self.State
end

function GM:PlayerButtonDown( ply, but )

	if ply:Team() == 1 and ply:HasWeapon( "virus_adrenaline" ) and but == KEY_Q then
		ply:SelectWeapon( "virus_adrenaline" )
		timer.Simple( 1.4, function()
			ply:ConCommand( "+attack" )
			timer.Simple( 0.1, function()
				ply:ConCommand( "-attack" )
			end )
		end )
	end

end

function GM:PlayerTick( ply )
	--is the player close enough to be infected?
	
	local range = 50+(ply:Ping()/24)
	local zup = (ply:Crouching()) and 64 or 76
	local zdn = (ply:GetGroundEntity() == NULL) and -9 or -3
	for k,v in pairs(ents.FindInBox(ply:GetPos()+Vector(range,range,zdn),ply:GetPos()+Vector(-range,-range,zup))) do
		if v:IsValid() and v:IsPlayer() and v:Team() == 1 and v != ply and ply:Team() == 2 and ply:Alive() and ply:GetNWBool( "infect" ) then
			v:SetTeam( 2 )
			GAMEMODE:OnPlayerChangedTeam( v, 1, 2 )
			VSendNotif( ply:Name() .. " infected " .. v:Name() .. "." )
			ply:AddFrags( 1 )
			v:SetFrags( 0 )
			if ply.DeathStreak >= 3 then
				ply.DeathStreak = 0
				ply:SetColor( Color( 180, 255, 180 ) )
				ply:SetWalkSpeed( 350 )
				ply:SetRunSpeed( 350 )
				ply:SetHealth( ply:Health() / 2 )
			end
			--I don't think I need the Finish test...
			if team.NumPlayers(1) == 1 and self.State != "Last" then
				VSendNotif( team.GetPlayers(1)[1]:Name() .. " is the last survivor!" )
				self.State = "Last"
				net.Start( "roundchanged" )
					net.WriteString( self.State )
				net.Broadcast()
			end
			--hm...
			if team.NumPlayers(1) == 0 and self.State != "Finish" then
				VSendNotif( "The infected win." )
				net.Start( "roundcompleted" )
					net.WriteString( "infected" )
				net.Broadcast()
				self.State = "Finish"
				timer.Remove( "RoundTimer" )
			end
		end
	end
	
	--[[for k,v in pairs( ents.FindInSphere( Vector(ply:GetPos().x, ply:GetPos().y, ply:GetPos().z + 32 ), 50 ) ) do
		--yes this is all necessary
		if v:IsPlayer() and v:Team() == 2 and v != ply and ply:Team() == 1 and v:Alive() and v:GetNWBool( "infect" )  then
			ply:SetTeam( 2 )
			GAMEMODE:OnPlayerChangedTeam( ply, 1, 2 )
			VSendNotif( v:Name() .. " infected " .. ply:Name() .. "." )
			v:AddFrags( 1 )
			ply:SetFrags( 0 )
			if v.DeathStreak >= 3 then
				v.DeathStreak = 0
				v:SetColor( Color( 180, 255, 180 ) )
				v:SetWalkSpeed( 350 )
				v:SetRunSpeed( 350 )
				v:SetHealth( v:Health() / 2 )
			end
			--I don't think I need the Finish test...
			if team.NumPlayers(1) == 1 and self.State != "Last" then
				VSendNotif( team.GetPlayers(1)[1]:Name() .. " is the last survivor!" )
				self.State = "Last"
				net.Start( "roundchanged" )
					net.WriteString( self.State )
				net.Broadcast()
			end
			--hm...
			if team.NumPlayers(1) == 0 and self.State != "Finish" then
				VSendNotif( "The infected win." )
				net.Start( "roundcompleted" )
					net.WriteString( "infected" )
				net.Broadcast()
				self.State = "Finish"
				timer.Remove( "RoundTimer" )
			end
		end
	end]]
	
	if ply:Team() == 2 and ply:GetNWBool( "infect" ) and ply:Alive() then
		local vPoint = ply:GetPos()
		local effectdata = EffectData()
		effectdata:SetOrigin( vPoint )
		effectdata:SetScale( 4 )
		effectdata:SetAngles( Angle( -90, ply:GetAngles().y, ply:GetAngles().z ) )
		util.Effect( "MuzzleEffect", effectdata )
	end
		
	if ply:GetNWFloat("adrenshot") then
		if CurTime() - ply:GetNWFloat("adrenshot") >= 15 and ply:Team() == 1 then
			ply:SetWalkSpeed( 325 )
			ply:SetRunSpeed( 325 )
			ply:SetNWFloat("adrenshot", nil)
		end
	end
end

net.Receive( "cltosvinfection", function( len, ply )
	local infector = net.ReadEntity()
	
	if infector:IsPlayer() and infector:Team() == 2 and infector != ply and ply:Team() == 1 and infector:Alive() and infector:GetNWBool( "infect" ) and table.HasValue( ents.FindInSphere( Vector(ply:GetPos().x, ply:GetPos().y, ply:GetPos().z ), 75 ), infector ) then
		ply:SetTeam( 2 )
		GAMEMODE:OnPlayerChangedTeam( ply, 1, 2 )
		VSendNotif( infector:Name() .. " infected " .. ply:Name() .. "." )
		infector:AddFrags( 1 )
		ply:SetFrags( 0 )
		if infector.DeathStreak >= 3 then
			infector.DeathStreak = 0
			infector:SetColor( Color( 180, 255, 180 ) )
			infector:SetWalkSpeed( 350 )
			infector:SetRunSpeed( 350 )
			infector:SetHealth( infector:Health() / 2 )
		end
		--I don't think I need the Finish test...
		if team.NumPlayers(1) == 1 and GAMEMODE.State != "Last" then
			VSendNotif( team.GetPlayers(1)[1]:Name() .. " is the last survivor!" )
			GAMEMODE.State = "Last"
			net.Start( "roundchanged" )
				net.WriteString( GAMEMODE.State )
			net.Broadcast()
		end
		--hm...
		if team.NumPlayers(1) == 0 and GAMEMODE.State != "Finish" then
			VSendNotif( "The infected win." )
			net.Start( "roundcompleted" )
				net.WriteString( "infected" )
			net.Broadcast()
			GAMEMODE.State = "Finish"
			timer.Remove( "RoundTimer" )
		end
	end
end )