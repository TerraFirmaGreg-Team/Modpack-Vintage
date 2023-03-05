#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.horsepower.Grindstone


// --- Массивы

def (RemoveAndHide) = [
   item('horsepower:flour'),
   item('horsepower:dough') 
]

def (RemoveRecipesGrindstone) = [
   item('tfc:powder/flux') * 4,
   item('minecraft:redstone') * 8,
   item('tfc:powder/fertilizer') * 8,
   item('minecraft:glowstone_dust') * 8
]

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

// Дробилка
for item in RemoveRecipesGrindstone {
   Grindstone.remove(item)
}

furnace.remove(item('minecraft:bread'))
