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
    // Отключение рецептов оголовье + палка
    "gregtech:toolheadsword_flint_wood",
    "gregtech:toolheadpickaxe_flint_wood",
    "gregtech:toolheadshovel_flint_wood",
    "gregtech:toolheadaxe_flint_wood",
    "gregtech:toolheadhoe_flint_wood",
    "gregtech:toolheadhammer_flint_wood",
    "gregtech:toolheadfile_flint_wood",
    "gregtech:toolheadsaw_flint_wood",
    "gregtech:toolheadsawsense_flint_wood"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Отключение переработки флинтовых инструментов
macerator.findRecipe(2, [<metaitem:toolHeadSwordFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadPickaxeFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadShovelFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadAxeFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadHoeFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadHammerFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadFileFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadSawFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadKnifeFlint>], null).remove();
macerator.findRecipe(2, [<metaitem:toolHeadSenseFlint>], null).remove();

// --- Adding Recipes