// MODS_LOADED: projectred-illumination
// ---- Удаление рецептов


def removeRecipe = [
  item('projectred-illumination:lamp:*'),
  item('projectred-illumination:light_button:*'),
  item('projectred-illumination:feedback_light_button:*'),
  item('projectred-illumination:lantern:*'),
  item('projectred-illumination:inverted_lantern:*'),
  item('projectred-illumination:fixture_light:*'),
  item('projectred-illumination:inverted_fixture_light:*'),
  item('projectred-illumination:fallout_lamp:*'),
  item('projectred-illumination:inverted_fallout_lamp:*'),
  item('projectred-illumination:cage_lamp:*'),
  item('projectred-illumination:inverted_cage_lamp:*'),
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

