// MODS_LOADED: galacticresearch
// ---- Удаление рецептов


def removeRecipe = [
  item('galacticresearch:mission_control_station'),
  item('galacticresearch:launchpad_tower'),
  item('galacticresearch:probe'),
  item('galacticresearch:telescope')
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}
