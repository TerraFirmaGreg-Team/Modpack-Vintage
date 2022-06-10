import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Anvil;

// --- Removing Recipes

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