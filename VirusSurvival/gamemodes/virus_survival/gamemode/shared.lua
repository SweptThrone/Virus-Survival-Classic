GM.Name = "Virus Survival"
GM.Author = "SweptThrone"
GM.Email = "sweptthrone971@gmail.com"
GM.Website = "no website (yet)"

GM.zWeapons = {}
GM.zLoadout = {}

GM.State = "Waiting"
GM.LastState = ""

GM.Round = 1

function GM:NextRound()
	self.Round = self.Round + 1
end

function GM:RecycleWeapons()

	--store all zs weapons in a table
	--store 4 random weapons in a loadout table
	for k,v in pairs( weapons.GetList() ) do
		if v.Category == "Zombie Survival" then
			table.insert( self.zWeapons, v )
			for i = 1, 4 do
				--it's possible to get duplicates
				--oh well
				self.zLoadout[i] = table.Random( self.zWeapons )
			end
		end
	end

end

function GM:BreakAllBreakables()

	--break all glass and stuff so survivors can't hide behind an impenetrable barrier
	for k,v in pairs( ents.GetAll() ) do
		if v:GetClass() == "func_breakable_surf" or v:GetClass() == "func_breakable" then
			v:Fire( "break" )
		end
	end

end

function GM:InitPostEntity()
	--set up our two teams
	team.SetUp( 1, "Survivors", Color( 180, 180, 255 ) )
	team.SetUp( 2, "Virus", Color( 180, 255, 180 ) )
	
	self:RecycleWeapons()
	
	self:BreakAllBreakables()

end

--disable jumping, ducking, sprinting, but not walking

--ripped right from
--http://wiki.garrysmod.com/page/GM/SetupMove
local CMoveData = FindMetaTable( "CMoveData" )

function CMoveData:RemoveKeys( keys )
	-- Using bitwise operations to clear the key bits.
	local newbuttons = bit.band( self:GetButtons(), bit.bnot( keys ) )
	self:SetButtons( newbuttons )
end

hook.Add( "SetupMove", "Disable Jumping", function( ply, mvd, cmd )
	if mvd:KeyDown( IN_JUMP ) then
		mvd:RemoveKeys( IN_JUMP )
	end
	if mvd:KeyDown( IN_DUCK ) then
		mvd:RemoveKeys( IN_DUCK )
	end
	if mvd:KeyDown( IN_SPEED ) then
		mvd:RemoveKeys( IN_SPEED )
	end
	if mvd:KeyDown( IN_WALK ) then
		mvd:RemoveKeys( IN_WALK )
	end
end )

function GM:PlayerSetModel( ply )

	if ply:Team() == 1 then
		local models = {
			"models/player/group03/female_01.mdl",
			"models/player/group03/female_02.mdl",
			"models/player/group03/female_03.mdl",
			"models/player/group03/female_04.mdl",
			"models/player/group03/female_05.mdl",
			"models/player/group03/female_06.mdl",
			"models/player/group03/male_01.mdl",
			"models/player/group03/male_02.mdl",
			"models/player/group03/male_03.mdl",
			"models/player/group03/male_04.mdl",
			"models/player/group03/male_05.mdl",
			"models/player/group03/male_06.mdl",
			"models/player/group03/male_07.mdl",
			"models/player/group03/male_08.mdl",
			"models/player/group03/male_09.mdl",
		}
		--set the player's model to a random "survivor"
		ply:SetModel( table.Random(models) )
	else
		ply:SetModel( "models/player/zombie_fast.mdl" )
		if ply.DeathStreak >= 3 then
			--this shouldn't be here, but oh well
			ply:SetHealth(200)
		end
	end
end

--miscellaneous sound adds because I'm lazy
sound.Add({
	name = 			"Weapon_G3SG1.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/g3sg1/g3sg1-1.wav"
})

sound.Add({
	name = 			"Weapon_ELITE.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/elite/elite-1.wav"
})

sound.Add({
	name = 			"Weapon_Glock.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/glock/glock18-1.wav"
})

sound.Add({
	name = 			"Weapon_Galil.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/galil/galil-1.wav"
})

sound.Add({
	name = 			"Weapon_M249.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/m249/m249-1.wav"
})

sound.Add({
	name = 			"Weapon_XM1014.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/xm1014/xm1014-1.wav"
})

sound.Add({
	name = 			"Weapon_M3.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/m3/m3-1.wav"
})

sound.Add({
	name = 			"Weapon_MAC10.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/mac10/mac10-1.wav"
})

sound.Add({
	name = 			"Weapon_TMP.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/tmp/tmp-1.wav"
})

sound.Add({
	name = 			"Weapon_MP5Navy.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/mp5navy/mp5-1.wav"
})

sound.Add({
	name = 			"Weapon_P228.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/p228/p228-1.wav"
})

sound.Add({
	name = 			"Weapon_P90.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/p90/p90-1.wav"
})

sound.Add({
	name = 			"Weapon_Scout.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/scout/scout_fire-1.wav"
})

sound.Add({
	name = 			"Weapon_SG550.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/sg550/sg550-1.wav"
})

sound.Add({
	name = 			"Weapon_SG552.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/sg552/sg552-1.wav"
})

sound.Add({
	name = 			"Weapon_FiveSeven.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/fiveseven/fiveseven-1.wav"
})

sound.Add({
	name = 			"Weapon_UMP45.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/ump45/ump45-1.wav"
})

sound.Add({
	name = 			"Weapon_USP.2",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/usp/usp1.wav"
})

sound.Add({
	name = 			"Weapon_USP.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/usp/usp_unsil-1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/m4a1/m4a1_unsil-1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.2",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/m4a1/m4a1-1.wav"
})


sound.Add({
	name = 			"Weapon_FAMAS.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/famas/famas-1.wav"
})

sound.Add({
	name = 			"Weapon_AUG.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/aug/aug-1.wav"
})

sound.Add({
	name = 			"Weapon_AWP.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/awp/awp1.wav"
})

sound.Add({
	name = 			"Weapon_DEagle.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/DEagle/deagle-1.wav"
})

sound.Add({
	name = 			"Weapon_AK47.1",
	channel = 		CHAN_WEAPON,
	volume = 		1.0,
	sound = 			"weapons/ak47/ak47-1.wav"
})

sound.Add( {
	name = "Weapon_Onyx.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	pitch = {50, 50},
	sound = "^npc/sniper/echo1.wav"
} )

sound.Add( {
	name = "Weapon_Renegade.1",
	channel = CHAN_WEAPON,
	volume = 0.5,
	pitch = {50, 50},
	sound = "^weapons/scout/scout_fire-1.wav"
} )

sound.Add( {
	name = "Weapon_Prolif.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	pitch = {150, 150},
	sound = "weapons/p228/p228-1.wav"
} )

sound.Add( {
	name = "Weapon_Jackhammer.1",
	channel = CHAN_WEAPON,
	volume = 1.0,
	pitch = {175, 175},
	sound = "weapons/xm1014/xm1014-1.wav"
} )