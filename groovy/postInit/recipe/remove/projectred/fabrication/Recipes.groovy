// MODS_LOADED: projectred-fabrication
// ---- Удаление рецептов


def removeRecipe = [
  item('projectred-fabrication:ic_chip'),
  item('projectred-fabrication:ic_blueprint'),
  item('projectred-fabrication:ic_machine', 1),
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}
