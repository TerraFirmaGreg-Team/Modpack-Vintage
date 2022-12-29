#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Anvil;

// --- Массивы

val RemoveAndHide as IItemStack[] = [
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
];

val RemoveRecipesAnvil as IItemStack[] = [
   <cellars:bronze_ice_saw_head>,
   <cellars:bismuth_bronze_ice_saw_head>,
   <cellars:black_bronze_ice_saw_head>,
   <cellars:wrought_iron_ice_saw_head>,
   <cellars:steel_ice_saw_head>,
   <cellars:black_steel_ice_saw_head>,
   <cellars:red_steel_ice_saw_head>,
   <cellars:blue_steel_ice_saw_head>
];

val RemoveRecipe as IItemStack[] = [
   <cellars:cellar_wall>,
   <cellars:cellar_door>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipesAnvil{
   Anvil.removeRecipe(item);
}

// Удаление рецептов верстака
for item in RemoveRecipe {
   recipes.remove(item);
}