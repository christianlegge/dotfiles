-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Monitor Configuration                   ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Monitor wiki https://wiki.hyprland.org/Configuring/Monitors/

hl.monitor({ output = "DP-3", mode = "2560x1440@144", position = "0x0", scale = 1 })
hl.monitor({ output = "DP-2", mode = "2560x1440@60", position = "-1440x-800", scale = 1, transform = 3 })
hl.monitor({ output = "HDMI-A-2", mode = "1920x1080@60", position = "2560x400", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto", scale = 1, mirror = "HDMI-A-2" })

-- If you need to scale things like steam etc, please uncomment these lines.
--xwayland {
--  force_zero_scaling = true       # Unscale XWayland
--}

-- Adjust GDK_SCALE accordingly to your liking.
--env = GDK_SCALE, 2                # GDK Scaling Factor (no fractional scaling)

-- Electron based apps use X11 as default, auto should detect wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
