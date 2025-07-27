// MODS_LOADED: extraplanets


// Categories

def hideCategory = [
  "extraplanets.rocketT4",
  "extraplanets.rocketT5",
  "extraplanets.rocketT6",
  "extraplanets.rocketT7",
  "extraplanets.rocketT8",
  "extraplanets.rocketT9",
  "extraplanets.rocketT10",
  "extraplanets.rocketT10Electric",
  "extraplanets.marsRover",
  "extraplanets.venusRover",
  "extraplanets.blockSmasher",
  "extraplanets.solarEvaporationChamber",
  "extraplanets.chemicalInjector",
  "extraplanets.crystallizer",
  "extraplanets.purifier",
  "extraplanets.densifier"
]


def hide = [
  item('extraplanets:item_tier4_rocket', 4),
  item('extraplanets:item_tier5_rocket', 4),
  item('extraplanets:item_tier6_rocket', 4),
  item('extraplanets:item_tier7_rocket', 4),
  item('extraplanets:item_tier8_rocket', 4),
  item('extraplanets:item_tier9_rocket', 4),
  item('extraplanets:item_tier10_rocket', 4),
  item('extraplanets:item_tier10_electric_rocket', 4),
  item('extraplanets:oxygen_tank_extremely_heavy_full'),
  item('extraplanets:oxygen_tank_very_heavy_full'),
]

def removeAndHide = [
  item('extraplanets:basic_decontamination_unit_fake_block'),
  item('extraplanets:decorative_blocks', 8),
  item('extraplanets:decorative_blocks', 11),
  item('extraplanets:decorative_blocks', 12),
  item('extraplanets:decorative_blocks', 13),
  item('extraplanets:decorative_blocks', 14),
  item('extraplanets:tools', 1),
  item('extraplanets:cake_blocks', 7),
  item('extraplanets:block_multi'),
  item('extraplanets:zinc_battery'),
  item('extraplanets:nickel_battery'),
  item('extraplanets:advanced_battery'),
  item('extraplanets:ultimate_battery'),
  item('extraplanets:massive_battery'),
  item('extraplanets:treasure_chest_t4'),
  item('extraplanets:treasure_chest_t5'),
  item('extraplanets:treasure_chest_t6'),
  item('extraplanets:treasure_chest_t7'),
  item('extraplanets:treasure_chest_t8'),
  item('extraplanets:treasure_chest_t9'),
  item('extraplanets:treasure_chest_t10'),
  item('extraplanets:white_sugar_cane_item'),
  item('extraplanets:white_sugar_cane'),
  item('extraplanets:potash_shards'),
  item('extraplanets:wafer:*'),
  item('extraplanets:ingot_uranium'),
  item('extraplanets:ingot_lead'),
  item('extraplanets:tools'),
  item('extraplanets:tier4_items', 4),
  item('extraplanets:tier4_items', 5),
  item('extraplanets:tier4_items', 6),
  item('extraplanets:tier5_items', 4),
  item('extraplanets:tier5_items', 5),
  item('extraplanets:tier5_items', 6),
  item('extraplanets:tier5_items', 7),
  item('extraplanets:tier5_items', 8),
  item('extraplanets:tier5_items', 9),
  item('extraplanets:tier5_items', 10),
  item('extraplanets:tier5_items', 11),
  item('extraplanets:tier6_items', 4),
  item('extraplanets:tier6_items', 5),
  item('extraplanets:tier7_items', 4),
  item('extraplanets:tier7_items', 5),
  item('extraplanets:tier7_items', 6),
  item('extraplanets:tier7_items', 7),
  item('extraplanets:tier8_items', 4),
  item('extraplanets:tier8_items', 5),
  item('extraplanets:tier8_items', 6),
  item('extraplanets:tier9_items', 4),
  item('extraplanets:tier9_items', 5),
  item('extraplanets:tier10_items', 4),
  item('extraplanets:tier10_items', 5),
  item('extraplanets:tier11_items:*'),
  item('extraplanets:basic_densifier'),
  item('extraplanets:basic_smasher'),
  item('extraplanets:basic_crystallizer'),
  item('extraplanets:basic_decrystallizer'),
  item('extraplanets:basic_smasher'),
  item('extraplanets:basic_chemical_injector'),
  item('extraplanets:basic_densifier'),
  item('extraplanets:advanced_refinery'),
  item('extraplanets:ultimate_refinery'),
  item('extraplanets:basic_purifier'),
  item('extraplanets:basic_solar_evaporation_chamber'),
  item('extraplanets:anti_radiation'),
  item('extraplanets:potassium_iodide'),
  item('extraplanets:potassium'),
  item('extraplanets:chocolate_bar'),
  item('extraplanets:caramel_bar'),
  item('extraplanets:advanced_launch_pad_full'),
  item('extraplanets:canned_food:*'),
  item('extraplanets:candy_blocks:*'),
  item('extraplanets:candy_blocks_horizontal:*'),

  item('extraplanets:ceres:3'),
  item('extraplanets:ceres:4'),
  item('extraplanets:ceres:5'),
  item('extraplanets:ceres:6'),
  item('extraplanets:ceres:7'),

  item('extraplanets:eris:3'),
  item('extraplanets:eris:4'),
  item('extraplanets:eris:5'),
  item('extraplanets:eris:6'),
  item('extraplanets:eris:7'),
  item('extraplanets:eris_spawner'),

  item('extraplanets:kepler22b:2'),
  item('extraplanets:kepler22b:3'),
  item('extraplanets:kepler22b:4'),
  item('extraplanets:kepler22b:5'),
  item('extraplanets:kepler22b:6'),
  item('extraplanets:kepler22b:7'),
  item('extraplanets:kepler22b:8'),
  item('extraplanets:kepler22b:9'),
  item('extraplanets:kepler22b:10'),
  item('extraplanets:kepler22b:13'),
  item('extraplanets:kepler22b:14'),
  item('extraplanets:kepler22b_maple_saplings:*'),
  item('extraplanets:kepler22b_flowers:*'),

  item('extraplanets:mercury:3'),
  item('extraplanets:mercury:4'),
  item('extraplanets:mercury:5'),
  item('extraplanets:mercury:6'),
  item('extraplanets:mercury:7'),
  item('extraplanets:mercury:10'),
  item('extraplanets:mercury:11'),
  item('extraplanets:mercury_spawner'),
  item('extraplanets:mercury_battery').withNbt([electricity: 100000.0F]),
  item('extraplanets:compressed_mercury'),
  item('extraplanets:ingot_mercury'),

  item('extraplanets:pluto:3'),
  item('extraplanets:pluto:4'),
  item('extraplanets:pluto:5'),
  item('extraplanets:pluto:6'),
  item('extraplanets:pluto:7'),
  item('extraplanets:pluto_spawner'),

  item('extraplanets:oberon:3'),
  item('extraplanets:oberon:4'),
  item('extraplanets:oberon:5'),

  item('extraplanets:titania:3'),
  item('extraplanets:titania:4'),
  item('extraplanets:titania:5'),

  item('extraplanets:uranus:3'),
  item('extraplanets:uranus:4'),
  item('extraplanets:uranus:7'),
  item('extraplanets:uranus:8'),
  item('extraplanets:uranus_spawner'),

  item('extraplanets:iapetus:3'),
  item('extraplanets:iapetus:4'),
  item('extraplanets:iapetus:5'),

  item('extraplanets:rhea:3'),
  item('extraplanets:rhea:4'),
  item('extraplanets:rhea:5'),

  item('extraplanets:saturn:3'),
  item('extraplanets:saturn:4'),
  item('extraplanets:saturn:5'),
  item('extraplanets:saturn:6'),
  item('extraplanets:saturn:7'),
  item('extraplanets:saturn:12'),
  item('extraplanets:saturn_spawner'),

  item('extraplanets:titan:3'),
  item('extraplanets:titan:4'),
  item('extraplanets:titan:5'),

  item('extraplanets:neptune:3'),
  item('extraplanets:neptune:4'),
  item('extraplanets:neptune:5'),
  item('extraplanets:neptune:6'),
  item('extraplanets:neptune:7'),
  item('extraplanets:neptune:10'),
  item('extraplanets:neptune:11'),
  item('extraplanets:neptune_spawner'),

  item('extraplanets:triton:3'),
  item('extraplanets:triton:4'),
  item('extraplanets:triton:5'),

  item('extraplanets:deimos:3'),
  item('extraplanets:deimos:4'),
  item('extraplanets:deimos:5'),

  item('extraplanets:phobos:3'),
  item('extraplanets:phobos:4'),
  item('extraplanets:phobos:5'),

  item('extraplanets:callisto:3'),
  item('extraplanets:callisto:4'),
  item('extraplanets:callisto:5'),

  item('extraplanets:europa:3'),
  item('extraplanets:europa:4'),
  item('extraplanets:europa:5'),

  item('extraplanets:ganymede:3'),
  item('extraplanets:ganymede:4'),
  item('extraplanets:ganymede:5'),

  item('extraplanets:io:3'),
  item('extraplanets:io:4'),
  item('extraplanets:io:5'),

  item('extraplanets:jupiter:3'),
  item('extraplanets:jupiter:4'),
  item('extraplanets:jupiter:5'),
  item('extraplanets:jupiter:6'),
  item('extraplanets:jupiter:7'),
  item('extraplanets:jupiter:8'),
  item('extraplanets:jupiter:11'),
  item('extraplanets:jupiter:12'),
  item('extraplanets:jupiter:13'),
  item('extraplanets:jupiter_spawner')
]


for (name in hideCategory) {
  mods.jei.category.hideCategory(name)
}

for (item in hide) {
  mods.jei.ingredient.hide(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}


