#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Anvil

// --- Массивы

def (RemoveAndHide) = [
   // Saws
   item('cellars:bronze_ice_saw'),
   item('cellars:bismuth_bronze_ice_saw'),
   item('cellars:black_bronze_ice_saw'),
   item('cellars:wrought_iron_ice_saw'),
   item('cellars:steel_ice_saw'),
   item('cellars:black_steel_ice_saw'),
   item('cellars:red_steel_ice_saw'),
   item('cellars:blue_steel_ice_saw'),
   // Saw Heads
   item('cellars:bronze_ice_saw_head'),
   item('cellars:bismuth_bronze_ice_saw_head'),
   item('cellars:black_bronze_ice_saw_head'),
   item('cellars:wrought_iron_ice_saw_head'),
   item('cellars:steel_ice_saw_head'),
   item('cellars:black_steel_ice_saw_head'),
   item('cellars:red_steel_ice_saw_head'),
   item('cellars:blue_steel_ice_saw_head')
]

def (RemoveRecipesAnvil) = [
   item('cellars:bronze_ice_saw_head'),
   item('cellars:bismuth_bronze_ice_saw_head'),
   item('cellars:black_bronze_ice_saw_head'),
   item('cellars:wrought_iron_ice_saw_head'),
   item('cellars:steel_ice_saw_head'),
   item('cellars:black_steel_ice_saw_head'),
   item('cellars:red_steel_ice_saw_head'),
   item('cellars:blue_steel_ice_saw_head')
]

def (RemoveRecipe) = [
   item('cellars:cellar_wall'),
   item('cellars:cellar_door')
]


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

for item in RemoveRecipesAnvil{
   Anvil.removeRecipe(item)
}

// Удаление рецептов верстака
for item in RemoveRecipe {
   crafting.removeByOutput(item)
}