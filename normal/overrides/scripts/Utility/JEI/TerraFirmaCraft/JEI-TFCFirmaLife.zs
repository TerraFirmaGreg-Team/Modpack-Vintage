#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.firmalife.Oven;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<firmalife:finished_pizza>,
	<firmalife:cooked_pizza>
];

val RemoveRecipe as IItemStack[] = [
	<firmalife:climate_station>,
   <firmalife:climate_station_1>,
   <firmalife:climate_station_5>,
   <firmalife:sprinkler>,
   <firmalife:candle> * 6,
   <firmalife:treated_lumber>,
   <firmalife:jar>,
   <firmalife:pizza_dough>,
   <firmalife:cinnamon_fence>,
	<firmalife:cocoa_fence>,
	<firmalife:banana_fence>,
	<firmalife:cherry_fence>,
	<firmalife:green_apple_fence>,
	<firmalife:lemon_fence>,
	<firmalife:olive_fence>,
	<firmalife:orange_fence>,
	<firmalife:peach_fence>,
	<firmalife:plum_fence>,
	<firmalife:red_apple_fence>,
   <firmalife:cinnamon_fence_gate>,
	<firmalife:cocoa_fence_gate>,
	<firmalife:banana_fence_gate>,
	<firmalife:cherry_fence_gate>,
	<firmalife:green_apple_fence_gate>,
	<firmalife:lemon_fence_gate>,
	<firmalife:olive_fence_gate>,
	<firmalife:orange_fence_gate>,
	<firmalife:peach_fence_gate>,
	<firmalife:plum_fence_gate>,
	<firmalife:red_apple_fence_gate>,
   <firmalife:cinnamon_door>,
	<firmalife:cocoa_door>,
	<firmalife:banana_door>,
	<firmalife:cherry_door>,
	<firmalife:green_apple_door>,
	<firmalife:lemon_door>,
	<firmalife:olive_door>,
	<firmalife:orange_door>,
	<firmalife:peach_door>,
	<firmalife:plum_door>,
	<firmalife:red_apple_door>,
   <firmalife:cinnamon_trapdoor>,
	<firmalife:cocoa_trapdoor>,
	<firmalife:banana_trapdoor>,
	<firmalife:cherry_trapdoor>,
	<firmalife:green_apple_trapdoor>,
	<firmalife:lemon_trapdoor>,
	<firmalife:olive_trapdoor>,
	<firmalife:orange_trapdoor>,
	<firmalife:peach_trapdoor>,
	<firmalife:plum_trapdoor>,
	<firmalife:red_apple_trapdoor>,
	<firmalife:trellis>,
	<firmalife:squash_hanging_planter>,
	<firmalife:melon_hanging_planter>,
	<firmalife:pumpkin_hanging_planter>,
	<firmalife:quad_planter>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipe{
   recipes.remove(item);
}

// Молотки
Anvil.removeRecipe(<firmalife:bismuth_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:black_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:copper_mallet_head>);
Anvil.removeRecipe(<firmalife:wrought_iron_mallet_head>);
Anvil.removeRecipe(<firmalife:steel_mallet_head>);
Anvil.removeRecipe(<firmalife:black_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:blue_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:red_steel_mallet_head>);

// Cooked Pizza
Oven.removeRecipe(<firmalife:cooked_pizza>);

// Treated Lumber
Barrel.removeRecipe(<firmalife:treated_lumber>);

// Бафф крафта крыши теплицы
Anvil.removeRecipe(<firmalife:greenhouse_roof> * 2);

// Бафф крафта стен теплицы
Anvil.removeRecipe(<firmalife:greenhouse_wall> * 2);

// Greenhouse Door
Anvil.removeRecipe(<firmalife:greenhouse_door>);
