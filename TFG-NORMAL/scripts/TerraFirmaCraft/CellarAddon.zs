import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Anvil;

// --- Массивы
val RemoveItemsFromAnvil as IItemStack[] = [
    <cellars:bronze_ice_saw_head>,
    <cellars:bismuth_bronze_ice_saw_head>,
    <cellars:black_bronze_ice_saw_head>,
    <cellars:wrought_iron_ice_saw_head>,
    <cellars:steel_ice_saw_head>,
    <cellars:black_steel_ice_saw_head>,
    <cellars:red_steel_ice_saw_head>,
    <cellars:blue_steel_ice_saw_head>
];

val RemoveWorkbenchRecipes as IItemStack[] = [
    <cellars:cellar_wall>,
    <cellars:cellar_door>
];

// --- Удаление рецептов

// Удаление рецептов наковальни
for item in RemoveItemsFromAnvil{
    Anvil.removeRecipe(item);
}

// Удаление рецептов верстака
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Добавление рецептов

// Стенка подвала
recipes.addShaped("tfg/cellars/cellar_wall", <cellars:cellar_wall>, [
    [<ore:lumber>, <ore:straw>, <ore:lumber>],
    [<ore:clay>, null, <ore:clay>],
    [<ore:lumber>, <ore:straw>, <ore:lumber>]]);

// Дверь подвала
recipes.addShaped("tfg/cellars/cellar_door", <cellars:cellar_door>, [
    [<ore:lumber>, <ore:clay>, <ore:lumber>],
    [<ore:lumber>, <ore:straw>, <ore:lumber>],
    [<ore:lumber>, <ore:clay>, <ore:lumber>]]);
