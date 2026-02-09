// MODS_LOADED: travelersbackpack
// ---- Удаление рецептов

def removeRecipe = [
  item('travelersbackpack:hose_nozzle'),
  item('travelersbackpack:hose'),
]

def removeRecipesByName = [
  "travelersbackpack:travelers_backpack_standard"
]


for (item in removeRecipe) {
  mods.minecraft.crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
  mods.minecraft.crafting.remove(item)
}
