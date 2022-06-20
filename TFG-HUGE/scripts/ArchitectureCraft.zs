import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveWorkbenchRecipes as IItemStack[] = [
	<architecturecraft:sawbench>,
    <architecturecraft:hammer>,
    <architecturecraft:chisel>
] as IItemStack[];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

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
 