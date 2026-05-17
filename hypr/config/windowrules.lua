-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Windowrules Configuration                ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Windows Rules https://wiki.hyprland.org/Configuring/Window-Rules/ #

-- Float Necessary Windows
hl.window_rule = { match = { class = "^(org.pulseaudio.pavucontrol)" }, float = true }
hl.window_rule = { match = { class = "^()$", title = "^(Picture in picture)$" }, float = true }
hl.window_rule = { match = { class = "^()$", title = "^(Save File)$" }, float = true }
hl.window_rule = { match = { class = "^()$", title = "^(Open File)$" }, float = true }
hl.window_rule = { match = { class = "^(LibreWolf)$", title = "^(Picture-in-Picture)$" }, float = true }
hl.window_rule = { match = { class = "^(blueman-manager)$" }, float = true }
hl.window_rule = {
	match = { class = "^(xdg-desktop-portal-gtk|xdg-desktop-portal-kde|xdg-desktop-portal-hyprland)(.*)$" },
	float = true,
}
hl.window_rule = {
	match = {
		class = "^(polkit-gnome-authentication-agent-1|hyprpolkitagent|org.org.kde.polkit-kde-authentication-agent-1)(.*)$",
	},
	float = true,
}
hl.window_rule = { match = { class = "^(CachyOSHello)$" }, float = true }
hl.window_rule = { match = { class = "^(zenity)$" }, float = true }
hl.window_rule = { match = { class = "^()$", title = "^(Steam - Self Updater)$" }, float = true }
-- Increase the opacity
-- windowrule = opacity 0.92, match = { class = "^(thunar|nemo)$" }
-- windowrule = opacity 0.96, match = { class = "^(discord|armcord|webcord)$" }
-- windowrule = opacity 0.95, match = { title = "^(QQ|Telegram)$" }
-- windowrule = opacity 0.95, match = { title = "^(NetEase Cloud Music Gtk4)$" }
-- General window rules
-- windowrule =  size 960 540, move {"monitor_w * 0.25", "monitor_h * 0.25"}, match:title ^(Picture-in-Picture)$, float = true
-- windowrule =  move ((monitor_w*0.25)), size 960 540, match:title ^(imv|mpv|danmufloat|termfloat|nemo|ncmpcpp)$, float = true
-- windowrule = pin on, match = { title = "^(danmufloat)$" }
-- windowrule = rounding 5, match = { title = "^(danmufloat|termfloat)$" }
-- windowrule = animation slide right, match = { class = "^(kitty|Alacritty)$" }
-- windowrule = no_blur on, match = { class = "^(org.mozilla.firefox)$" }
-- Decorations related to floating windows on workspaces 1 to 10
-- windowrule = border_size 2, border_color $cachylblue, rounding 8, match:float 1, match:workspace w[fv1-10]
-- Decorations related to tiling windows on workspaces 1 to 10
-- windowrule = border_size 3, rounding 4, match:float 0, match:workspace f[1-10]
-- Windows Rules End #

-- Workspaces Rules https://wiki.hyprland.org/Configuring/Workspace-Rules/ #
-- workspace = 1, default:true, monitor:$priMon
-- workspace = 6, default:true, monitor:$secMon
-- Workspace selectors https://wiki.hyprland.org/Configuring/Workspace-Rules/#workspace-selectors
-- workspace = r[1-5], monitor:$priMon
-- workspace = r[6-10], monitor:$secMon
-- workspace = special:scratchpad, on-created-empty:$applauncher
-- no_gaps_when_only deprecated instead workspaces rules with selectors can do the same
-- Smart gaps from 0.45.0 https://wiki.hyprland.org/Configuring/Workspace-Rules/#smart-gaps
hl.workspace_rule({ workspace = "w[tv1-10]", gaps_out = 5, gaps_in = 3 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 5, gaps_in = 3 })
hl.workspace_rule({ workspace = "1", monitor = "DP-2", default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-3", default = true })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-2", default = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-2" })
hl.workspace_rule({ workspace = "5", monitor = "DP-3" })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-2" })
hl.workspace_rule({ workspace = "7", monitor = "DP-2" })
hl.workspace_rule({ workspace = "8", monitor = "DP-3" })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-2" })
-- Workspaces Rules End #

-- Layers Rules #
hl.layer_rule({ match = { namespace = "logout_dialog" }, animation = "slide top" })
-- hl.layer_rule({match = {namespace = "waybar"}, animation = "popin 50%"})
hl.layer_rule({ match = { namespace = "waybar" }, animation = "slide down" })
hl.layer_rule({ match = { namespace = "wallpaper" }, animation = "fade 50%" })
-- Layers Rules End #

-- Custom Rules
hl.window_rule = { match = { class = "discord" }, workspace = 1 }
hl.window_rule = { match = { class = "Slack" }, workspace = 7 }
hl.window_rule = { match = { class = "Google-chrome" }, workspace = 8 }
hl.window_rule = { match = { class = "com.libretro.RetroArch" }, workspace = 2, fullscreen = true }
hl.window_rule = { match = { class = "it.mijorus.smile" }, float = true }
