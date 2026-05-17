require("config.defaults")

hl.bind(
	"SUPER + RETURN",
	hl.dsp.exec_cmd(TERMINAL),
	{ description = "Opens your preferred terminal emulator (TERMINAL)" }
)
hl.bind("SUPER + S", hl.dsp.exec_cmd("wlogout"), { description = "Open power menu" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(FILEMANAGER), { description = "Opens your preferred filemanager (FILEMANAGER)" })
hl.bind("SUPER + Q", hl.dsp.window.kill(), { description = "Closes (not kill) current window" })
-- hl.bind($mainMod SHIFT, M, Exits Hyprland by terminating the user sessions, hl.dsp.exec_cmd("loginctl terminate-user """))
hl.bind(
	"SUPER + V",
	hl.dsp.window.float(),
	{ description = "Switches current window between floating and tiling mode" }
)
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(APPLAUNCHER), { description = "Runs your application launcher" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen(), { description = "Toggles current window fullscreen mode" })
-- hl.bind("SUPER + G", hl.dsp.exec_cmd("hyprland-minimizer --menu"), { description = "Minimizer menu"})
-- hl.bind("SUPER + H", hl.dsp.exec_cmd("hyprland-minimizer"), { description = "Minimize current window to tray"})
-- hl.bind($mainMod SHIFT, H, Restore last minimized window, hl.dsp.exec_cmd("hyprland-minimizer --restore-last"))
hl.bind(
	"SUPER + M",
	hl.dsp.window.fullscreen({ mode = "maximized" }),
	{ description = "Toggles current window maximize" }
)
hl.bind("SUPER + Y", hl.dsp.window.pin(), { description = "Pin current window (shows on all workspaces)" })
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"), { description = "Toggles current window split mode" })
hl.bind("ALT + Tab", hl.dsp.window.cycle_next(), { description = "Cycle open windows" })

hl.bind(
	"Print",
	hl.dsp.exec_cmd("hyprshot -z -m region -o /home/christian/Pictures/screenshots/"),
	{ description = "Creates a screenshot of an area" }
)
hl.bind(
	"CTRL + Print",
	hl.dsp.exec_cmd("hyprshot -m window -o /home/christian/Pictures/screenshots/"),
	{ description = "Creates a screenshot of the active window" }
)
-- hl.bind(ALT, Print, Creates a screenshot of the active display, hl.dsp.exec_cmd("$shot-screen,"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"), { description = "Reload/restarts Waybar" })

-- ======= Grouping Windows =======

-- hl.bind("SUPER + K", togglegroup,, { description = "Toggles  current window group mode (ungroup all related)"})
-- hl.bind("SUPER + Tab", changegroupactive, f, { description = "Switches to the next window in the group"})

-- ======= Toggle Gaps =======

-- hl.bind($mainMod SHIFT, G, Set CachyOS default gaps, hl.dsp.exec_cmd("hyprctl --batch "keyword general:gaps_out 5;keyword general:gaps_in 3""))
-- hl.bind("SUPER + G", hl.dsp.exec_cmd("hyprctl --batch "keyword general:gaps_out 0;keyword general:gaps_in 0""), { description = "Remove gaps between window"})

-- ======= Volume Control =======

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 0.02+"),
	{ description = "Raise volume", repeating = true, locked = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 0.02-"),
	{ description = "Raise volume", repeating = true, locked = true }
)

-- ======= Playback Control =======

-- hl.bind(, XF86AudioPlay, Toggles play/pause, hl.dsp.exec_cmd("playerctl play-pause"))
-- hl.bind(, XF86AudioNext, Next track, hl.dsp.exec_cmd("playerctl next"))
-- hl.bind(, XF86AudioPrev, Previous track, hl.dsp.exec_cmd("playerctl previous"))

-- ======= Screen Brightness =======

-- bindel = , XF86MonBrightnessUp, exec, brightnessctl s +5% 	#Increases brightness 5%
-- bindel = , XF86MonBrightnessDown, exec, brightnessctl s 5%- 	#Decreases brightness 5%
-- hl.bind("SUPER + L", hl.dsp.exec_cmd("swaylock-fancy -e -K -p 10 -f Hack-Regular"), { description = "Lock the screen"})

-- ======= Window Actions =======

--# Move window with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { description = "Move the window" })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { description = "Resize the window" })
--# Move window towards a direction
hl.bind(
	"SUPER + SHIFT + left",
	hl.dsp.window.move({ direction = "l" }),
	{ description = "Move active window to the left" }
)
hl.bind(
	"SUPER + SHIFT + right",
	hl.dsp.window.move({ direction = "r" }),
	{ description = "Move active window to the right" }
)
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }), { description = "Move active window upwards" })
hl.bind(
	"SUPER + SHIFT + down",
	hl.dsp.window.move({ direction = "d" }),
	{ description = "Move active window downwards" }
)
--# Move focus with mainMod + arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }), { description = "Move focus to the left" })
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }), { description = " Move focus to the right" })
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }), { description = "Move focus upwards" })
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }), { description = "Move focus downwards" })

--# Resizing windows
-- Activate keyboard window resize mode
-- https://wiki.hyprland.org/Configuring/Binds/#submaps
-- hl.bind("SUPER + R", submap, resize, { description = "Activates window resizing mode"})
-- submap = resize
-- hl.bind(, right, Resize to the right (resizing mode), resizeactive, 15 0)
-- hl.bind(, left, Resize to the left (resizing mode), resizeactive, -15 0)
-- hl.bind(, up, Resize upwards (resizing mode), resizeactive, 0 -15)
-- hl.bind(, down, Resize downwards (resizing mode), resizeactive, 0 15)
-- hl.bind(, l, Resize to the right (resizing mode), resizeactive, 15 0)
-- hl.bind(, h, Resize to the left (resizing mode), resizeactive, -15 0)
-- hl.bind(, k, Resize upwards (resizing mode), resizeactive, 0 -15)
-- hl.bind(, j, Resize downwards (resizing mode), resizeactive, 0 15)
-- hl.bind(, escape, Ends window resizing mode, submap, reset)
-- submap = reset
-- Quick resize window with keyboard
-- !!! added $mainMod here because CTRL + SHIFT is used for word selection in various text editors
-- hl.bind($mainMod CTRL SHIFT, right, Resize to the right, resizeactive, 15 0)
-- hl.bind($mainMod CTRL SHIFT, left, Resize to the left, resizeactive, -15 0)
-- hl.bind($mainMod CTRL SHIFT, up, Resize upwards, resizeactive, 0 -15)
-- hl.bind($mainMod CTRL SHIFT, down, Resize downwards, resizeactive, 0 15)
-- hl.bind($mainMod CTRL SHIFT, l, Resize to the right, resizeactive, 15 0)
-- hl.bind($mainMod CTRL SHIFT, h, Resize to the left, resizeactive, -15 0)
-- hl.bind($mainMod CTRL SHIFT, k, Resize upwards, resizeactive, 0 -15)
-- hl.bind($mainMod CTRL SHIFT, j, Resize downwards, resizeactive, 0 15)
-- Resize window with mainMod + LMB/RMB and dragging
-- bindm = "SUPER + mouse:273", resizewindow	#Resize the window towards a direction
-- bindm = "SUPER + mouse:272", movewindow		#Drag window
--# Resizing Windows End #

--# Move active window to a workspace with $mainMod + CTRL + [0-9]
-- hl.bind($mainMod CTRL, 1, Move window and switch to workspace 1, movetoworkspace, 1)
-- hl.bind($mainMod CTRL, 2, Move window and switch to workspace 4, movetoworkspace, 4)
-- hl.bind($mainMod CTRL, 3, Move window and switch to workspace 7, movetoworkspace, 7)
-- hl.bind($mainMod CTRL, 4, Move window and switch to workspace 4, movetoworkspace, 4)
-- hl.bind($mainMod CTRL, 5, Move window and switch to workspace 5, movetoworkspace, 5)
-- hl.bind($mainMod CTRL, 6, Move window and switch to workspace 6, movetoworkspace, 6)
-- hl.bind($mainMod CTRL, 7, Move window and switch to workspace 7, movetoworkspace, 7)
-- hl.bind($mainMod CTRL, 8, Move window and switch to workspace 8, movetoworkspace, 8)
-- hl.bind($mainMod CTRL, 9, Move window and switch to workspace 9, movetoworkspace, 9)
-- hl.bind($mainMod CTRL, 0, Move window and switch to workspace 10, movetoworkspace, 10)
-- hl.bind($mainMod CTRL, left, Move window and switch to the next workspace, movetoworkspace, -1)
-- hl.bind($mainMod CTRL, right, Move window and switch to the previous workspace, movetoworkspace, +1)
--# Same as above, but doesn't switch to the workspace
hl.bind(
	"SUPER + SHIFT + 1",
	hl.dsp.window.move({ workspace = 1, follow = false }),
	{ description = "Move window silently to workspace 1" }
)
hl.bind(
	"SUPER + SHIFT + 2",
	hl.dsp.window.move({ workspace = 4, follow = false }),
	{ description = "Move window silently to workspace 4" }
)
hl.bind(
	"SUPER + SHIFT + 3",
	hl.dsp.window.move({ workspace = 7, follow = false }),
	{ description = "Move window silently to workspace 7" }
)
-- hl.bind($mainMod SHIFT, 4, Move window silently to workspace 4, movetoworkspacesilent, 4)
-- hl.bind($mainMod SHIFT, 5, Move window silently to workspace 5, movetoworkspacesilent, 5)
-- hl.bind($mainMod SHIFT, 6, Move window silently to workspace 6, movetoworkspacesilent, 6)
-- hl.bind($mainMod SHIFT, 7, Move window silently to workspace 7, movetoworkspacesilent, 7)
-- hl.bind($mainMod SHIFT, 8, Move window silently to workspace 8, movetoworkspacesilent, 8)
-- hl.bind($mainMod SHIFT, 9, Move window silently to workspace 9, movetoworkspacesilent, 9)
-- hl.bind($mainMod SHIFT, 0, Move window silently to workspace 10, movetoworkspacesilent, 10)
-- Window actions End #

-- ======= Workspace Actions =======

-- Switch workspaces with mainMod + [0-9]
-- hl.bind("SUPER + 1", workspace, 1, { description = "Switch to workspace 1"})
-- hl.bind("SUPER + 2", workspace, 2, { description = "Switch to workspace 2"})
-- hl.bind("SUPER + 3", workspace, 3, { description = "Switch to workspace 3"})
hl.bind("SUPER + 1", function()
	hl.dispatch(hl.dsp.focus({ workspace = "1" }))
	hl.dispatch(hl.dsp.focus({ workspace = "2" }))
	hl.dispatch(hl.dsp.focus({ workspace = "3" }))
end)

hl.bind("SUPER + 2", function()
	hl.dispatch(hl.dsp.focus({ workspace = "4" }))
	hl.dispatch(hl.dsp.focus({ workspace = "5" }))
	hl.dispatch(hl.dsp.focus({ workspace = "3" }))
end)

hl.bind("SUPER + 3", function()
	hl.dispatch(hl.dsp.focus({ workspace = "7" }))
	hl.dispatch(hl.dsp.focus({ workspace = "8" }))
	hl.dispatch(hl.dsp.focus({ workspace = "9" }))
end)

hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))

-- Scroll through existing workspaces with mainMod + , or .
-- hl.bind("SUPER + PERIOD", workspace, e+1, { description = "Scroll through workspaces incrementally"})
-- hl.bind("SUPER + COMMA", workspace, e-1, { description = "Scroll through workspaces decrementally"})
-- With $mainMod + scroll
-- hl.bind("SUPER + mouse_down", workspace, e+1, { description = "Scroll through workspaces incrementally"})
-- hl.bind("SUPER + mouse_up", workspace, e-1, { description = "Scroll through workspaces decrementally"})
-- hl.bind("SUPER + slash", workspace, previous, { description = "Switch to the previous workspace"})
-- -- Special workspaces (scratchpads)
-- hl.bind("SUPER + minus", movetoworkspace, special, { description = "Move active window to Special workspace"})
-- hl.bind("SUPER + equal", togglespecialworkspace, special, { description = "Toggles the Special workspace"})
-- hl.bind("SUPER + F1", togglespecialworkspace, scratchpad, { description = "Call special workspace scratchpad"})
-- hl.bind($mainMod ALT SHIFT, F1, Move active window to special workspace scratchpad, movetoworkspacesilent, special:scratchpad)

-- ======= Additional Settings =======

-- https://wiki.hyprland.org/Configuring/Binds
hl.config({
	binds = {
		allow_workspace_cycles = true,
		workspace_back_and_forth = true,
		workspace_center_on = true,
		movefocus_cycles_fullscreen = true,
		window_direction_monitor_fallback = true,
	},
})

-- hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("smile"), { description = "Emoji picker"})
