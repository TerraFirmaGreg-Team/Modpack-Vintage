import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Anvil;

// --- Removing Recipes

// Удаление мусора
val RemoveItemsFromJEI as IItemStack[] = [
    // Saws
    <cellars:bronze_ice_saw>,
    <cellars:bismuth_bronze_ice_saw>,
    <cellars:black_bronze_ice_saw>,
    <cellars:wrought_iron_ice_saw>,
    <cellars:steel_ice_saw>,
    <cellars:black_steel_ice_saw>,
    <cellars:red_steel_ice_saw>,
    <cellars:blue_steel_ice_saw>,
    // Saw Heads
    <cellars:bronze_ice_saw_head>,
    <cellars:bismuth_bronze_ice_saw_head>,
    <cellars:black_bronze_ice_saw_head>,
    <cellars:wrought_iron_ice_saw_head>,
    <cellars:steel_ice_saw_head>,
    <cellars:black_steel_ice_saw_head>,
    <cellars:red_steel_ice_saw_head>,
    <cellars:blue_steel_ice_saw_head>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Removing recipes from Anvil
val RemoveItemsFromAnvil as IItemStack[] = [
    <cellars:bronze_ice_saw_head>,
    <cellars:bismuth_bronze_ice_saw_head>,
    <cellars:black_bronze_ice_saw_head>,
    <cellars:wrought_iron_ice_saw_head>,
    <cellars:steel_ice_saw_head>,
    <cellars:black_steel_ice_saw_head>,
    <cellars:red_steel_ice_saw_head>,
    <cellars:blue_steel_ice_saw_head>
] as IItemStack[];
for item in RemoveItemsFromAnvil{
    Anvil.removeRecipe(item);
}