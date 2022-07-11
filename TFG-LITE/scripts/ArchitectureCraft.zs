import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("architecturecraft");

// --- Добавление рецептов

// Arch Table
recipes.addShaped("tfg/architecturecraft/sawbench", <architecturecraft:sawbench>,
    [[<ore:plateIronAny>, <ore:toolHeadBuzzSawIron>, <ore:plateIronAny>],
    [<ore:plankWood>, <ore:gearIronAny>, <ore:plankWood>],
    [<ore:stickWood>, <ore:pressurePlateWood>, <ore:stickWood>]]);

// Hammer
recipes.addShaped("tfg/architecturecraft/hammer", <architecturecraft:hammer>,
    [[<ore:plateIronAny>, <ore:plateIronAny>, null],
    [<ore:dyeOrange>, <ore:stickWood>, <ore:plateIronAny>],
    [<ore:dyeOrange>, <ore:stickWood>, null]]);

// Chisel
recipes.addShaped("tfg/architecturecraft/chisel", <architecturecraft:chisel>,
    [[<ore:plateIronAny>, null, null],
    [<ore:dyeOrange>, <ore:stickWood>, null],
    [null, null, null]]);