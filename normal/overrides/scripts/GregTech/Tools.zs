import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveItemRecipesByName = [
    /*
	// Кремниевые инструменты
    "gregtech:sword_flint",
    "gregtech:pickaxe_flint",
    "gregtech:shovel_flint",
    "gregtech:axe_flint",
    "gregtech:hoe_flint",
    "gregtech:knife_flint",
    // Оголовье + Палка
    "gregtech:toolheadsword_flint_wood",
    "gregtech:toolheadpickaxe_flint_wood",
    "gregtech:toolheadshovel_flint_wood",
    "gregtech:toolheadaxe_flint_wood",
    "gregtech:toolheadhoe_flint_wood",
    "gregtech:toolheadhammer_flint_wood",
    "gregtech:toolheadfile_flint_wood",
    "gregtech:toolheadsaw_flint_wood",
    "gregtech:toolheadsawsense_flint_wood"
    */
] as string[];

// --- Удаление рецептов

// Поименное удаление рецептов
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Отключение переработки кремниевых инструментов
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

// --- Добавление рецептов

// Щипцы из дерева
recipes.addShaped("tfg/gt/tongs_wood", <gregtech:tongs>.withTag({"GT.ToolStats": {Material: "wood", MaxDurability: 460}}), 
    [[null, <ore:stickWood>], 
    [<ore:stickWood>, <ore:string>]]);
