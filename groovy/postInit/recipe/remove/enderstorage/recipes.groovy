// MODS_LOADED: enderstorage
// ---- Удаление рецептов

def removeRecipe = [
  item('enderstorage:ender_storage'),
  item('enderstorage:ender_storage', 1),
  item('enderstorage:ender_pouch:*')
]

// Удаление рецептов
for (item in removeRecipe) {
  crafting.removeByOutput(item)
}
