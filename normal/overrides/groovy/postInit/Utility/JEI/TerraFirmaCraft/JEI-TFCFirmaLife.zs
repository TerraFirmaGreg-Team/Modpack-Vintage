#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Anvil
import mods.terrafirmacraft.Barrel
import mods.firmalife.Oven


// --- Массивы

def (RemoveAndHide) = [
	item('firmalife:finished_pizza'),
	item('firmalife:cooked_pizza')
]

def (RemoveRecipe) = [
	item('firmalife:climate_station'),
   item('firmalife:climate_station_1'),
   item('firmalife:climate_station_5'),
   item('firmalife:sprinkler'),
   item('firmalife:candle') * 6,
   item('firmalife:treated_lumber'),
   item('firmalife:jar'),
   item('firmalife:pizza_dough'),
   item('firmalife:cinnamon_fence'),
	item('firmalife:cocoa_fence'),
	item('firmalife:banana_fence'),
	item('firmalife:cherry_fence'),
	item('firmalife:green_apple_fence'),
	item('firmalife:lemon_fence'),
	item('firmalife:olive_fence'),
	item('firmalife:orange_fence'),
	item('firmalife:peach_fence'),
	item('firmalife:plum_fence'),
	item('firmalife:red_apple_fence'),
   item('firmalife:cinnamon_fence_gate'),
	item('firmalife:cocoa_fence_gate'),
	item('firmalife:banana_fence_gate'),
	item('firmalife:cherry_fence_gate'),
	item('firmalife:green_apple_fence_gate'),
	item('firmalife:lemon_fence_gate'),
	item('firmalife:olive_fence_gate'),
	item('firmalife:orange_fence_gate'),
	item('firmalife:peach_fence_gate'),
	item('firmalife:plum_fence_gate'),
	item('firmalife:red_apple_fence_gate'),
   item('firmalife:cinnamon_door'),
	item('firmalife:cocoa_door'),
	item('firmalife:banana_door'),
	item('firmalife:cherry_door'),
	item('firmalife:green_apple_door'),
	item('firmalife:lemon_door'),
	item('firmalife:olive_door'),
	item('firmalife:orange_door'),
	item('firmalife:peach_door'),
	item('firmalife:plum_door'),
	item('firmalife:red_apple_door'),
   item('firmalife:cinnamon_trapdoor'),
	item('firmalife:cocoa_trapdoor'),
	item('firmalife:banana_trapdoor'),
	item('firmalife:cherry_trapdoor'),
	item('firmalife:green_apple_trapdoor'),
	item('firmalife:lemon_trapdoor'),
	item('firmalife:olive_trapdoor'),
	item('firmalife:orange_trapdoor'),
	item('firmalife:peach_trapdoor'),
	item('firmalife:plum_trapdoor'),
	item('firmalife:red_apple_trapdoor'),
	item('firmalife:trellis'),
	item('firmalife:squash_hanging_planter'),
	item('firmalife:melon_hanging_planter'),
	item('firmalife:pumpkin_hanging_planter'),
	item('firmalife:quad_planter')
]


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

for item in RemoveRecipe{
   crafting.removeByOutput(item)
}

// Молотки
Anvil.removeRecipe(item('firmalife:bismuth_bronze_mallet_head'))
Anvil.removeRecipe(item('firmalife:black_bronze_mallet_head'))
Anvil.removeRecipe(item('firmalife:bronze_mallet_head'))
Anvil.removeRecipe(item('firmalife:copper_mallet_head'))
Anvil.removeRecipe(item('firmalife:wrought_iron_mallet_head'))
Anvil.removeRecipe(item('firmalife:steel_mallet_head'))
Anvil.removeRecipe(item('firmalife:black_steel_mallet_head'))
Anvil.removeRecipe(item('firmalife:blue_steel_mallet_head'))
Anvil.removeRecipe(item('firmalife:red_steel_mallet_head'))

// Cooked Pizza
Oven.removeRecipe(item('firmalife:cooked_pizza'))

// Treated Lumber
Barrel.removeRecipe(item('firmalife:treated_lumber'))

// Бафф крафта крыши теплицы
Anvil.removeRecipe(item('firmalife:greenhouse_roof') * 2)

// Бафф крафта стен теплицы
Anvil.removeRecipe(item('firmalife:greenhouse_wall') * 2)

// Greenhouse Door
Anvil.removeRecipe(item('firmalife:greenhouse_door'))
