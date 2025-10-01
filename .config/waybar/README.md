# Waybar Configuration

My custom Waybar setup for Hyprland.  
Focused on performance, readability, and aesthetics.  
Icons are dynamic. Modules are minimal. Everything is clickable.

---

## 🧠 Features

- Clean **Catppuccin Mocha** theme
- Clickable modules with custom actions
- Dynamic workspace icons based on open apps
- Integration with:
  - `playerctl` for media
  - `pamixer` for volume
  - `brightnessctl` for screen
  - `hyprctl` for workspace status
  - `cliphist` + `tofi` for clipboard
- Rounded corners and padding
- Fast refresh with minimal system load

---

## 🗂️ Modules Used

| Module                             | Purpose                      |
| ---------------------------------- | ---------------------------- |
| `workspaces` / `custom/workspaces` | Show dynamic icons per app   |
| `clock`                            | Time + date display          |
| `pulseaudio`                       | Volume control               |
| `battery`                          | Battery status (if laptop)   |
| `network`                          | Wi-Fi/Ethernet state         |
| `tray`                             | System tray icons            |
| `custom/power`                     | Logout/reboot/shutdown popup |
| `custom/clipboard`                 | Show clipboard history       |


---

## 🖼 Preview

![preview](image.png)
 

---

## 🎨 Style (Catppuccin)

Style includes:
- Padding
- Rounded borders
- Transparent background
- Font: JetBrainsMono Nerd Font or Cascadia Code

Edit `style.css` to tweak colors, margins, or borders.

---



## ⚙️ Requirements

Install these:

```bash
yay -S waybar playerctl pamixer brightnessctl tofi cliphist
```

Optional:

```bash
yay -S catppuccin-gtk-theme catppuccin-cursors ttf-jetbrains-mono-nerd
```

---

## 🚀 Autostart

Add this to your Hyprland config:

```ini
exec-once = waybar
```

To toggle Waybar:

```bash
Ctrl + Escape
```

---

## 🧩 Custom Actions

- Click power button → opens `wlogout`
- Click clipboard → opens history via `tofi`
- Click volume → toggles mute
- Click network → runs `nmtui`

---

## 🔄 Refresh Modules (Optional)

For example, refresh battery every 10s:

```jsonc
{
  "name": "battery",
  "interval": 10,
}
```

---

## 📥 Install

```bash
git clone https://github.com/EpicFailure-afk/waybar.git ~/.config/waybar
```
---
> ⚠️ **Note:** This work includes contributions or help from others. It is not entirely my own.



---

Feel free to fork or PR your improvements.

