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
[[<ore:plateIron>, <ore:toolHeadBuzzSawIron>, <ore:plateIron>],
 [<ore:plankWood>, <ore:gearIron>, <ore:plankWood>],
 [<ore:stickWood>, <ore:pressurePlateWood>, <ore:stickWood>]]);

// Hammer
recipes.addShaped(<architecturecraft:hammer>,
[[<ore:plateIron>, <ore:plateIron>, null],
 [<ore:dyeOrange>, <ore:stickWood>, <ore:plateIron>],
 [<ore:dyeOrange>, <ore:stickWood>, null]]);

// Chisel
recipes.addShaped(<architecturecraft:chisel>,
[[<ore:plateIron>, null, null],
 [<ore:dyeOrange>, <ore:stickWood>, null],
 [null, null, null]]);
 