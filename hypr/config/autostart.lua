require("config.defaults")

hl.on("config.reloaded", function()
	hl.notification.create({ text = "Hyprland lua config reloaded", timeout = 5000, icon = "ok" })
end)

hl.on("hyprland.start", function()
	hl.exec_cmd("xmousepasteblock")
	hl.exec_cmd("~/.config/hypr/set_bg.sh")
	hl.exec_cmd("waybar_timer serve > /dev/null 2>@1")
	hl.exec_cmd("waybar")
	hl.exec_cmd("systemd-run --user --scope elephant")
	hl.exec_cmd("walker --gapplication-service")
	hl.exec_cmd("fcitx5 -d")
	hl.exec_cmd("mako")
	hl.exec_cmd("nm-applet --indicator")
	-- hl.exec_cmd(
	-- 	'bash -c "mkfifo /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob && tail -f /tmp/$HYPRLAND_INSTANCE_SIGNATURE.wob | wob & disown"'
	-- )
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
	hl.exec_cmd("gammastep")
	hl.exec_cmd("if [ $(date +%u) -le 5 ]; then gtk-launch slack; fi")
	hl.exec_cmd("if [ $(date +%u) -le 5 ]; then gtk-launch google-chrome; fi")
	hl.exec_cmd("gtk-launch discord")

	-- Slow app launch fix
	hl.exec_cmd("systemctl --user import-environment")
	hl.exec_cmd("hash dbus-update-activation-environment 2>/dev/null")
	hl.exec_cmd("dbus-update-activation-environment --systemd")

	-- Idle configuration
	hl.exec_cmd(IDLEHANDLER)
end)
