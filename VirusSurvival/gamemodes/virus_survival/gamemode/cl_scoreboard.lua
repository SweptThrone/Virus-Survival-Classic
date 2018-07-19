--DISCLAIMER: Most of this code was taken from the GMod wiki
scoreboard = scoreboard or {}

function scoreboard:show()

		local header = vgui.Create( "DImage" )
		header:SetPos( ScrW() / 2 - 250, ScrH() / 5 )
		header:SetSize( 501, 128 )
		header:SetImage( "virus_surv/logo.png" )

		local playerlist = vgui.Create("DListView")
		playerlist:SetSize(ScrW() / 3, ScrH() / 3)
		playerlist:Center()
		playerlist:AddColumn("Name")
		playerlist:AddColumn("Score")
		playerlist:AddColumn("Role")
		playerlist:AddColumn("Ping")
		--[[ Line painting ]]--
		playerlist.Think = function()
			for k,v in pairs(player.GetAll()) do
				v.GrabPing = v:Ping()
			end
		end
		
		for _, v in pairs ( player.GetAll() ) do
			local line = playerlist:AddLine( v:Name(), v:Frags(), team.GetName(v:Team()), v.GrabPing )
			function line:Paint( w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) )
			end
		end
		
		playerlist:SortByColumn( 2, true )
		
			--[[ Column header painting ]]--
		for _, v in pairs( playerlist.Columns ) do
			function v.Header:Paint( w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color(60,180,60,255) )
			end
			v.Header:SetTextColor( Color( 255, 255, 255, 255 ) )
		end

	function scoreboard:hide()
		playerlist:Remove()
		header:Remove()
	end
end

function GM:ScoreboardShow()
	scoreboard:show()
end

function GM:ScoreboardHide()
	scoreboard:hide()
end