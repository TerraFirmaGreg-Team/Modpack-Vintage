// MODS_LOADED: galacticraftplanets
// ---- Удаление рецептов


def removeRecipe = [
  item('galacticraftplanets:mars_machine', 4),
  item('galacticraftplanets:mars_machine', 8),
  item('galacticraftplanets:item_basic_mars', 1),
  item('galacticraftplanets:item_basic_mars', 2),
  item('galacticraftplanets:item_basic_mars', 4),
  item('galacticraftplanets:thermal_padding:*'),
  item('galacticraftplanets:item_basic_asteroids', 1),
  item('galacticraftplanets:item_basic_asteroids', 2),
  item('galacticraftplanets:item_basic_asteroids', 7),
  item('galacticraftplanets:item_basic_asteroids', 8),
  item('galacticraftplanets:heavy_nose_cone'),
  item('galacticraftplanets:orion_drive'),
  item('galacticraftplanets:geothermal_generator'),
  item('galacticraftplanets:solar_array_module'),
  item('galacticraftplanets:basic_item_venus:5'),
  item('galacticraftplanets:solar_array_controller'),
  item('galacticraftplanets:thermal_padding_t2:*'),
  item('galacticraftplanets:basic_item_venus:3'),
  item('galacticraftplanets:atomic_battery'),
  item('galacticraftplanets:walkway:*'),
  item('galacticraftplanets:beam_reflector'),
  item('galacticraftplanets:beam_receiver'),
  item('galacticraftplanets:telepad_short'),
  item('galacticraftplanets:miner_base'),
  item('galacticraftplanets:grapple')
]

def removeRecipeFurnace = [
  item('galacticraftplanets:venus', 11),
  item('galacticraftplanets:mars', 1),
  item('galacticraftplanets:mars', 2),
  item('galacticraftplanets:venus', 7),
  item('galacticraftplanets:mars'),
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in removeRecipeFurnace) {
  furnace.removeByInput(item)
}

