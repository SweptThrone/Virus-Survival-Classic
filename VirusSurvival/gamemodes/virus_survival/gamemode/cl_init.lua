-------------------------
-------cl_init.lua-------
--Realm: Client
--Purpose: Set up HUD.
--Net usage: None.
-------------------------

include("shared.lua")
include("sh_sound.lua")
include("cl_scoreboard.lua")

local GMState = "Waiting"
local CurSnd
local dispMsg = ""
local Round = GM.Round
local lastpasses = 0
local topDisps = {
	["Waiting"] = "Waiting...",
	["Preparing"] = "Get ready...",
	["Finish"] = "Round over."
}

function GM:DrawDeathNotice( x, y ) x = 150 y = 150 end

function GM:PlayerTick( ply )

	if ply:Team() == 2 and ply:GetNWBool( "infect" ) and ply:Alive() then
		local vPoint = ply:GetPos()
		local effectdata = EffectData()
		effectdata:SetOrigin( vPoint )
		effectdata:SetScale( 4 )
		effectdata:SetAngles( Angle( -90, ply:GetAngles().y, ply:GetAngles().z ) )
		util.Effect( "MuzzleEffect", effectdata )
	end

	if team.NumPlayers( 1 ) == 1 and lastpasses == 0 and #player.GetAll() > 1 then
		surface.PlaySound( "virus/announce_lastchance.wav" )
		lastpasses = 1
	end
	
	if team.NumPlayers( 1 ) == 0 and lastpasses == 1 then
		lastpasses = 0
	end
	
	--[[for k,v in pairs( ents.FindInSphere( Vector(ply:GetPos().x, ply:GetPos().y, ply:GetPos().z ), 50 ) ) do
		--yes this is all necessary
		if v:IsPlayer() and v:Team() == 2 and v != ply and ply:Team() == 1 and v:Alive() and v:GetNWBool( "infect" )  then
			net.Start( "cltosvinfection" )
				net.WriteEntity( v )
			net.SendToServer()
		end
	end]]
	
end

hook.Add( "HUDPaint", "Virus HUD", function()
	--time background rectangle
	surface.SetDrawColor( team.GetColor(LocalPlayer():Team()).r, team.GetColor(LocalPlayer():Team()).g, team.GetColor(LocalPlayer():Team()).b, 128 )
	surface.DrawRect( ScrW() / 2 - 128, 0, 256, 64 )
	--setup our text
	surface.SetFont( "Trebuchet18" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( ScrW() / 2 - surface.GetTextSize( "Round: " .. Round ) / 2, 2 )
	surface.DrawText( "Round: " .. Round )
	
	surface.SetFont( "DermaLarge" )
	surface.SetTextColor( 255, 255, 255, 255 )
	if GMState == "Active" or GMState == "Last" then
		if timer.Exists( "RoundTimer" ) and timer.TimeLeft( "RoundTimer" ) <= 10 then
			surface.SetTextColor( 255, 0, 0, 255 )
		elseif timer.Exists( "RoundTimer" ) and timer.TimeLeft( "RoundTimer" ) <= 30 then
			surface.SetTextColor( 255, 255, 0, 255 )
		else
			surface.SetTextColor( 255, 255, 255, 255 )
		end
		--display the actual time
		--super hacky since we just duplicate the timer on the client
		local nicetime = string.ToMinutesSeconds( timer.TimeLeft( "RoundTimer" ) )
		surface.SetTextPos( ScrW() / 2 - surface.GetTextSize( nicetime ) / 2, 24 )
		surface.DrawText( nicetime )
	else
		--display the stage if its not active
		surface.SetTextPos( ScrW() / 2 - surface.GetTextSize( topDisps[GMState] ) / 2, 24 )
		surface.DrawText( topDisps[GMState] )
	end
	--we put the kill feed or whatever you wanna call it here
	surface.SetTextPos( ScrW() / 2 - surface.GetTextSize( dispMsg ) / 2, 128 )
	surface.SetTextColor( team.GetColor(LocalPlayer():Team()).r, team.GetColor(LocalPlayer():Team()).g, team.GetColor(LocalPlayer():Team()).b, 255 )
	surface.DrawText( dispMsg )
	
end )

--all taken from somewhere on facepunch
hook.Add( "CalcView", "ThirdPersonView", function( ply, pos, angles, fov )
	--make virus in third person
	--TODO: camera clips through walls
	if ply:Alive() and ply:Team() == 2 then
		local view = {}
		view.origin = pos - ( angles:Forward() * 70 ) + ( angles:Right() * 20 ) + ( angles:Up() * 5 )
		view.angles = ply:EyeAngles() + Angle( 1, 1, 0 )
		view.fov = fov

		return GAMEMODE:CalcView( ply, view.origin, view.angles, view.fov )

	end
end )

hook.Add( "ShouldDrawLocalPlayer", "ThirdPersonDrawPlayer", function()
	if LocalPlayer():Team() == 2 and LocalPlayer():Alive() then
		return true
	end
end )

hook.Add("RenderScreenspaceEffects", "AdrenEffect", function()
	if LocalPlayer():GetNWFloat("adrenshot") != 0 then
		DrawSharpen(5, 3 - math.Clamp((CurTime() - LocalPlayer():GetNWFloat("adrenshot", CurTime())), 0, 15) / 5)
	else
		DrawSharpen(5,0)
	end
end)

net.Receive( "creditsmenu", function( len, pl )

	local HelpWindow = vgui.Create( "DFrame" )
    HelpWindow:SetPos( ScrW() * 0.3525, ScrH() * 0.35 )
    HelpWindow:SetSize( ScrW() * 0.3, ScrH() * 0.3 )
    HelpWindow:SetTitle( "Virus Survival Credits" )
    HelpWindow:SetVisible( true )
    HelpWindow:SetDraggable( false )
    HelpWindow:ShowCloseButton( true )
	HelpWindow:Center()
    HelpWindow:MakePopup()
	HelpWindow.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, team.GetColor(LocalPlayer():Team()) )
	end
	
	local CreditsLabel = vgui.Create( "DLabel", HelpWindow )
	CreditsLabel:Dock(FILL)
	CreditsLabel:SetFont("Trebuchet24")
	CreditsLabel:SetContentAlignment(5)
	CreditsLabel:SetText([[Thanks to lots of people for providing a lot of stuff.
	
	PixelTail Games - Original Virus gamemode.
	Free Radical Design - Music.
	JetBoom - Weapon concepts.
	TFA - Weapon base used.
	Hide and Seek - Collision code.
	GMod Wiki - Some convenience functions.
	SweptThrone - All other code.
	]])

end )

net.Receive( "roundchanged", function( len, pl ) 
	--play the lovely music
	local state = net.ReadString()
	local laststate
	GMState = state
	local music = {
		["Waiting"] = {
			"virus/waiting_forplayers1.mp3",
			"virus/waiting_forplayers2.mp3",
			"virus/waiting_forplayers3.mp3",
			"virus/waiting_forplayers4.mp3",
			"virus/waiting_forplayers5.mp3",
			"virus/waiting_forplayers6.mp3",
			"virus/waiting_forplayers7.mp3",
			"virus/waiting_forplayers8.mp3"
		},
		["Preparing"] = {
			"virus/waiting_forinfection1.mp3",
			"virus/waiting_forinfection2.mp3",
			"virus/waiting_forinfection3.mp3",
			"virus/waiting_forinfection4.mp3",
			"virus/waiting_forinfection5.mp3",
			"virus/waiting_forinfection6.mp3",
			"virus/waiting_forinfection7.mp3",
			"virus/waiting_forinfection8.mp3"
		},
		["Active"] = {
			"virus/roundplay1.mp3",
			"virus/roundplay2.mp3",
			"virus/roundplay3.mp3",
			"virus/roundplay4.mp3",
			"virus/roundplay5.mp3"
		},
		["Last"] = {
			"virus/roundlastalive1.mp3",
			"virus/roundlastalive2.mp3"
		}
	}
	
	if CurSnd then
		CurSnd:Stop()
	end
	--sure
	if state != "Finish" then
		CurSnd = VReadSound( table.Random(music[state]) )
	end
	--alright i guess
	if state == "Active" then
		timer.Create( "RoundTimer", 120, 1, function()
			timer.Remove( "RoundTimer" )
		end )
	end
	--why don't I just pack everything in this callback?
end )

net.Receive( "roundcompleted", function( len, pl ) 

	if CurSnd then
		CurSnd:Stop()
	end
	
	--yee-haw for efficiency
	local result = net.ReadString()
	surface.PlaySound( "virus/announce_" .. result .. "win.wav" )
	local restab = { "survivors", "virus" }
	surface.PlaySound( "virus/roundend_" .. restab[LocalPlayer():Team()] .. ".mp3" )
	timer.Remove( "RoundTimer" )

end )

net.Receive( "actionmessage", function( len, pl ) 
	--display the killfeed or whatever for 5 seconds
	dispMsg = net.ReadString()
	timer.Create("MessageTimeOut", 5, 1, function()
		dispMsg = ""
	end)

end )

net.Receive( "nextround", function( len, pl )

	Round = net.ReadUInt(32)

end )

--hide the HUD
local hide = {
	CHudAmmo = true,
	CHudBattery = true,
	CHudHealth = true,
	CHudSecondaryAmmo = true
}

hook.Add( "HUDShouldDraw", "HideDefaults_ST", function(n) 
	if (hide[n]) then return false end
	--returning breaks shit, dont do it
end )
--don't show names, who's that you're aiming at?
hook.Add( "HUDDrawTargetID", "HideAimNames", function()

	return false

end )