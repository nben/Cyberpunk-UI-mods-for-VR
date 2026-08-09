# Cyberpunk-UI-mods-for-VR
Gemini-generated redscript mods to reposition various HUD elements in Cyberpunk, to make them visible in VR

These are HUD elements which were either impossible or unreliable to move with Dariulone's HUD settings

I also recommend the mod HUDitor for everything else, I started with HUDitor and then got Gemini to make the below mods to cover the rest - https://www.nexusmods.com/cyberpunk2077/mods/3315

ScannerMove - two files, one for moving the quickhacks menu and crosshair, one for moving the info popup

ContactMove - one file for moving the contacts HUD

TextsMove - one file for moving the unread texts HUD

TooltipsMove - one file for moving the various notification popups - e.g. new message, new area, new quest , level up, new shard

TutorialMove - one file for moving the popup tutorial window (I started a new save to try the VR Mod)

# Installing

Scripts need to go in Cyberpunk 2077/r6/scripts

Not actually sure if subfolders are necessary but at least keeps it tidy

# Editing

Look for the "new inkMargin" or "new Vector2" variables in the scripts to edit the coordinates. Can't do it live in game unfortunately, I'm not smart enough to figure that out.

For both inkMargin and Vector2, first coordinate is X, positive values move elements to the right, negative to the left. Second is Y, positive pushes down, negative up





