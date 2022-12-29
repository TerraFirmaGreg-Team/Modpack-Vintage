import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Arch Table
recipes.addShaped("tfg/architecturecraft/sawbench", <architecturecraft:sawbench>,
    [[<ore:plateIronAny>, <ore:toolHeadBuzzSawIronAny>, <ore:plateIronAny>],
    [<ore:plankWood>, <ore:gearIronAny>, <ore:plankWood>],
    [<minecraft:stick>, <ore:pressurePlateWood>, <minecraft:stick>]]);

// Hammer
recipes.addShaped("tfg/architecturecraft/hammer", <architecturecraft:hammer>,
    [[<ore:plateIronAny>, <ore:plateIronAny>, null],
    [<ore:dyeOrange>, <minecraft:stick>, <ore:plateIronAny>],
    [<ore:dyeOrange>, <minecraft:stick>, null]]);

// Chisel
recipes.addShaped("tfg/architecturecraft/chisel", <architecturecraft:chisel>,
    [[<ore:plateIronAny>, null, null],
    [<ore:dyeOrange>, <minecraft:stick>, null],
    [null, null, null]]);