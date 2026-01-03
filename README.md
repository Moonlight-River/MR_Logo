# MR_Logo

Custom Server Logo for your RedM HUD.

**MR_Logo** adds a clean, lightweight server logo directly into the in-game HUD.  
It’s **standalone** (no framework required), quick to set up, and easy to customize.

## Features
- Standalone: works with **any** framework (or none)
- Fully customizable: replace `html/logo.png` with your own logo
- Toggle the logo anytime via command: `/togglelogo`
- Simple configuration: position, size, opacity, fade animation
- Optional state saving: remembers if the logo was on/off (client-side KVP)

## Preview / Usage
- Put your logo in `html/logo.png`
- Start the resource
- Use `/togglelogo` to show/hide

## Installation
1. Download and place the folder `MR_Logo` into your server `resources` directory  
2. Replace `html/logo.png` with your own image (PNG recommended)
3. Add this line to your `server.cfg`: ensure MR_Logo
4. Restart your server (or start the resource)

## Configuration
Open `config.lua` to adjust:
- Default state (enabled/disabled on first start)
- Position (left/right, top offset, side offset)
- Logo size (width/height)
- Opacity
- Fade animation (on/off + duration)
- Save state (client KVP)

## Commands
- `/togglelogo` | toggles the logo on/off

## Notes
- Best results: use a transparent PNG (e.g. 256×256 or 512×512).
- State saving is stored **client side** using KVP. If disabled, the logo will follow `Config.EnabledByDefault` every time.
- If your logo looks blurry, try a higher resolution PNG and keep aspect ratio square.

## Support
If you find a bug or want to suggest improvements, open an issue on the GitHub release page.

