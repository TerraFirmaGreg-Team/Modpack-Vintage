// MODS_LOADED: tfcthings
// ---- Удаление рецептов


def removeRecipe = [
  // Платиновые короны
  item('tfcthings:crown/platinum_opal'),
  item('tfcthings:crown/platinum_garnet'),
  item('tfcthings:crown/platinum_emerald'),
  item('tfcthings:crown/platinum_diamond'),
  item('tfcthings:crown/platinum_amethyst'),
  item('tfcthings:crown/platinum_ruby'),
  item('tfcthings:crown/platinum_sapphire'),
  item('tfcthings:crown/platinum_topaz'),
  // Золотые короны
  item('tfcthings:crown/gold_garnet'),
  item('tfcthings:crown/gold_emerald'),
  item('tfcthings:crown/gold_diamond'),
  item('tfcthings:crown/gold_amethyst'),
  item('tfcthings:crown/gold_topaz'),
  item('tfcthings:crown/gold_sapphire'),
  item('tfcthings:crown/gold_ruby'),
  item('tfcthings:crown/gold_opal'),
  //Other
  item('tfcthings:sling_ammo_light'),
  item('tfcthings:sling_ammo_spread'),
]


def removeRecipesByName = [
  "tfcthings:grindstone_base_steel",
  "tfcthings:grindstone_base"
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
  crafting.remove(item)
}
