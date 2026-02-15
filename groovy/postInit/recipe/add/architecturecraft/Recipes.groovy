// MODS_LOADED: architecturecraft
// ---- Добавление рецептов


// Arch Table
mods.minecraft.crafting.addShaped("architecturecraft/sawbench", item('architecturecraft:sawbench'),
        [[ore('plateIronAny'), ore('toolHeadBuzzSawIronAny'), ore('plateIronAny')],
         [ore('plankWood'), ore('gearIronAny'), ore('plankWood')],
         [item('minecraft:stick'), ore('pressurePlateWood'), item('minecraft:stick')]])

// Hammer
mods.minecraft.crafting.addShaped("architecturecraft/hammer", item('architecturecraft:hammer'),
        [[ore('plateIronAny'), ore('plateIronAny'), null],
         [ore('dyeOrange'), item('minecraft:stick'), ore('plateIronAny')],
         [ore('dyeOrange'), item('minecraft:stick'), null]])

// Chisel
mods.minecraft.crafting.addShaped("architecturecraft/chisel", item('architecturecraft:chisel'),
        [[ore('plateIronAny'), null, null],
         [ore('dyeOrange'), item('minecraft:stick'), null],
         [null, null, null]])
