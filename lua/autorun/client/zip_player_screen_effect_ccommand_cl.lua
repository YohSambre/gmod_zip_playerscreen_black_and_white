local blackandwhitesettings = {
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 0,
}
concommand.Add( "disable_player_screen_effect", function( ply, cmd, args )
	if ply:IsValid(ply) and ply:IsAdmin() then
		for _, ply in player.Iterator() do
		hook.Remove("RenderScreenspaceEffects", "ZIPBlackAndWhitePlayerVision")
			end
				else
				surface.PlaySound( "buttons/combine_button_locked.wav" )
			RunConsoleCommand("-menu")
		notification.AddLegacy( "Only admins can change this setting.", NOTIFY_ERROR, 4 )
	end
end)
concommand.Add( "enable_player_screen_effect", function( ply, cmd, args )
	if ply:IsValid(ply) and ply:IsAdmin() then
		for _, ply in player.Iterator() do
		hook.Add("RenderScreenspaceEffects", "ZIPBlackAndWhitePlayerVision", function()
				DrawColorModify(blackandwhitesettings) --Draws Color Modify effect
					end)
						end
					else
				surface.PlaySound( "buttons/combine_button_locked.wav" )
			RunConsoleCommand("-menu")
		notification.AddLegacy( "Only admins can change this setting.", NOTIFY_ERROR, 4 )
	end
end)