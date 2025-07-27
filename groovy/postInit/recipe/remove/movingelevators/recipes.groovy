// MODS_LOADED: movingelevators
// ---- Удаление рецептов


def removeRecipe = [
  item('movingelevators:display_block'),
  item('movingelevators:elevator_block'),
  item('movingelevators:button_block')
]

// --- Удаление рецептов

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}
