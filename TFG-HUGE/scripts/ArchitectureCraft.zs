import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление рецептов
val RemoveWorkbenchRecipes as IItemStack[] = [
	<architecturecraft:sawbench>,
    <architecturecraft:hammer>,
    <architecturecraft:chisel>
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Adding Recipes

// Arch Table
recipes.addShaped(<architecturecraft:sawbench>,
    [[<ore:plateIronAny>, <ore:toolHeadBuzzSawIron>, <ore:plateIronAny>],
    [<ore:plankWood>, <ore:gearIronAny>, <ore:plankWood>],
    [<ore:stickWood>, <ore:pressurePlateWood>, <ore:stickWood>]]);

// Hammer
recipes.addShaped(<architecturecraft:hammer>,
    [[<ore:plateIronAny>, <ore:plateIronAny>, null],
    [<ore:dyeOrange>, <ore:stickWood>, <ore:plateIronAny>],
    [<ore:dyeOrange>, <ore:stickWood>, null]]);

// Chisel
recipes.addShaped(<architecturecraft:chisel>,
    [[<ore:plateIronAny>, null, null],
    [<ore:dyeOrange>, <ore:stickWood>, null],
    [null, null, null]]);
 