import crafttweaker.item.IItemStack;

// --- Removing Recipes
val RemoveItemRecipesByName = [
	//Отключение рецептов кремниевых инструментов
    "gregtech:sword_flint",
    "gregtech:pickaxe_flint",
    "gregtech:shovel_flint",
    "gregtech:axe_flint",
    "gregtech:hoe_flint",
    "gregtech:knife_flint",
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// --- Adding Recipes