// MODS_LOADED: projectred-transmission
// ---- Удаление рецептов


def removeRecipe = [
  item('projectred-transmission:wire:*'),
]

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}
