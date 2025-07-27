// MODS_LOADED: tfctech
// ---- Удаление рецептов


def removeRecipe = [
  item('tfctech:wire_draw_bench'),
//  item('tfctech:electric_forge'),
//  item('tfctech:induction_crucible'),
  item('tfctech:metal/copper_inductor'),
  item('tfctech:wiredraw/winch'),
  item('tfctech:latex/vulcanizing_agents'),
  // Strips
  item('tfctech:metal/copper_strip'),
  item('tfctech:metal/gold_strip'),
  item('tfctech:metal/lead_strip'),
  item('tfctech:metal/nickel_strip'),
  item('tfctech:metal/silver_strip'),
  item('tfctech:metal/tin_strip'),
  item('tfctech:metal/wrought_iron_strip'),
  item('tfctech:metal/steel_strip'),
  item('tfctech:metal/platinum_strip'),
  item('tfctech:metal/black_steel_strip'),
]

def removeRecipesByName = [
  "tfctech:glassworking/pot_potash",
  "tfctech:glassworking/pot_ash",
  "tfctech:devices/fridge",
]

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
  crafting.remove(item)
}
