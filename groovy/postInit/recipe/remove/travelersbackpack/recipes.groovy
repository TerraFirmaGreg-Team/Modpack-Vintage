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
  crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
  crafting.remove(item)
}
