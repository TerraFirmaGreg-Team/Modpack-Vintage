// MODS_LOADED: extraplanets
// ---- Удаление рецептов


def removeRecipe = [
  item('extraplanets:advanced_launch_pad:*'),
  item('extraplanets:solar'),
  item('extraplanets:solar:4'),
  item('extraplanets:advanced_fuel_loader'),
  item('extraplanets:ultimate_fuel_loader'),
  item('extraplanets:advanced_oxygen_compressor'),
  item('extraplanets:ultimate_oxygen_compressor'),
  item('extraplanets:advanced_oxygen_compressor', 4),
  item('extraplanets:ultimate_oxygen_compressor', 4),
  // item('extraplanets:item_tier4_rocket:*'),
  // item('extraplanets:item_tier5_rocket:*'),
  // item('extraplanets:item_tier6_rocket:*'),
  // item('extraplanets:item_tier7_rocket:*'),
  // item('extraplanets:item_tier8_rocket:*'),
  // item('extraplanets:item_tier9_rocket:*'),
  // item('extraplanets:item_tier10_rocket:*'),
  // item('extraplanets:item_tier10_electric_rocket:*'),
  item('extraplanets:cloth'),
  item('extraplanets:vehicle_charger'),
  item('extraplanets:basic_decontamination_unit'),
  item('extraplanets:electric_parts:*'),
  // item('extraplanets:tier1_armor_layer'),
  // item('extraplanets:tier2_armor_layer'),
  // item('extraplanets:tier3_armor_layer'),
  // item('extraplanets:tier4_armor_layer'),
  item('extraplanets:tier1_radiation_layer'),
  item('extraplanets:tier2_radiation_layer'),
  item('extraplanets:tier3_radiation_layer'),
  item('extraplanets:tier4_radiation_layer'),
  item('extraplanets:tier1_pressure_layer'),
  item('extraplanets:tier2_pressure_layer'),
  item('extraplanets:tier3_pressure_layer'),
  item('extraplanets:tier4_pressure_layer'),
  item('extraplanets:tier1_space_suit_helmet:*'),
  item('extraplanets:tier2_space_suit_helmet:*'),
  item('extraplanets:tier3_space_suit_helmet:*'),
  item('extraplanets:tier4_space_suit_helmet:*'),
  item('extraplanets:tier1_space_suit_chest:*'),
  item('extraplanets:tier2_space_suit_chest:*'),
  item('extraplanets:tier3_space_suit_chest:*'),
  item('extraplanets:tier4_space_suit_chest:*'),
  item('extraplanets:tier1_space_suit_legings:*'),
  item('extraplanets:tier2_space_suit_legings:*'),
  item('extraplanets:tier3_space_suit_legings:*'),
  item('extraplanets:tier4_space_suit_legings:*'),
  item('extraplanets:tier1_space_suit_boots:*'),
  item('extraplanets:tier2_space_suit_boots:*'),
  item('extraplanets:tier3_space_suit_boots:*'),
  item('extraplanets:tier4_space_suit_boots:*'),
  item('extraplanets:tier1_un_prepared_space_suit_helmet'),
  item('extraplanets:tier2_un_prepared_space_suit_helmet'),
  item('extraplanets:tier3_un_prepared_space_suit_helmet'),
  item('extraplanets:tier4_un_prepared_space_suit_helmet'),
  item('extraplanets:tier1_un_prepared_space_suit_chest'),
  item('extraplanets:tier2_un_prepared_space_suit_chest'),
  item('extraplanets:tier3_un_prepared_space_suit_chest'),
  item('extraplanets:tier4_un_prepared_space_suit_chest'),
  item('extraplanets:tier1_un_prepared_space_suit_legings'),
  item('extraplanets:tier2_un_prepared_space_suit_legings'),
  item('extraplanets:tier3_un_prepared_space_suit_legings'),
  item('extraplanets:tier4_un_prepared_space_suit_legings'),
  item('extraplanets:tier1_un_prepared_space_suit_boots'),
  item('extraplanets:tier2_un_prepared_space_suit_boots'),
  item('extraplanets:tier3_un_prepared_space_suit_boots'),
  item('extraplanets:tier4_un_prepared_space_suit_boots'),
  item('extraplanets:tier3_thermal_padding:*'),
  item('extraplanets:tier4_thermal_padding:*'),
  item('extraplanets:tier5_thermal_padding:*'),
  item('extraplanets:nose_cone_tier4'),
  item('extraplanets:nose_cone_tier5'),
  item('extraplanets:nose_cone_tier6'),
  item('extraplanets:nose_cone_tier7'),
  item('extraplanets:nose_cone_tier8'),
  item('extraplanets:nose_cone_tier9'),
  item('extraplanets:nose_cone_tier10'),
  item('extraplanets:tier4_items:*'),
  item('extraplanets:tier5_items:*'),
  item('extraplanets:tier6_items:*'),
  item('extraplanets:tier7_items:*'),
  item('extraplanets:tier8_items:*'),
  item('extraplanets:tier9_items:*'),
  item('extraplanets:tier10_items:*'),
  item('extraplanets:thermal_cloth:*'),
  item('extraplanets:tier1_space_suit_jetpack_chest'),
  item('extraplanets:tier2_space_suit_jetpack_chest'),
  item('extraplanets:tier3_space_suit_jetpack_chest'),
  item('extraplanets:tier4_space_suit_jetpack_chest'),
  item('extraplanets:gravity_controller'),
  item('extraplanets:module_items:*'),
  item('extraplanets:oxygen_tank_extremely_heavy_full', 9000),
  item('extraplanets:oxygen_tank_very_heavy_full', 7200)
]

def removeRecipeFurnace = [
  item('extraplanets:kepler22b', 12),
  item('extraplanets:volcanic_rock')
]

def removeRecipesByName = [
  "extraplanets:oxygen_tank_light_full_white",
  "extraplanets:oxygen_tank_light_full_orange",
  "extraplanets:oxygen_tank_light_full_magenta",
  "extraplanets:oxygen_tank_light_full_light_blue",
  "extraplanets:oxygen_tank_light_full_yellow",
  "extraplanets:oxygen_tank_light_full_pink",
  "extraplanets:oxygen_tank_light_full_gray",
  "extraplanets:oxygen_tank_light_full_light_gray",
  "extraplanets:oxygen_tank_light_full_cyan",
  "extraplanets:oxygen_tank_light_full_purple",
  "extraplanets:oxygen_tank_light_full_blue",
  "extraplanets:oxygen_tank_light_full_brown",
  "extraplanets:oxygen_tank_light_full_green",
  "extraplanets:oxygen_tank_light_full_red",
  "extraplanets:oxygen_tank_light_full_black",
  "extraplanets:oxygen_tank_med_full_white",
  "extraplanets:oxygen_tank_med_full_magenta",
  "extraplanets:oxygen_tank_med_full_light_blue",
  "extraplanets:oxygen_tank_med_full_yellow",
  "extraplanets:oxygen_tank_med_full_lime",
  "extraplanets:oxygen_tank_med_full_pink",
  "extraplanets:oxygen_tank_med_full_gray",
  "extraplanets:oxygen_tank_med_full_light_gray",
  "extraplanets:oxygen_tank_med_full_cyan",
  "extraplanets:oxygen_tank_med_full_purple",
  "extraplanets:oxygen_tank_med_full_blue",
  "extraplanets:oxygen_tank_med_full_brown",
  "extraplanets:oxygen_tank_med_full_green",
  "extraplanets:oxygen_tank_med_full_red",
  "extraplanets:oxygen_tank_med_full_black",
  "extraplanets:oxygen_tank_heavy_full_white",
  "extraplanets:oxygen_tank_heavy_full_orange",
  "extraplanets:oxygen_tank_heavy_full_magenta",
  "extraplanets:oxygen_tank_heavy_full_light_blue",
  "extraplanets:oxygen_tank_heavy_full_yellow",
  "extraplanets:oxygen_tank_heavy_full_lime",
  "extraplanets:oxygen_tank_heavy_full_pink",
  "extraplanets:oxygen_tank_heavy_full_gray",
  "extraplanets:oxygen_tank_heavy_full_light_gray",
  "extraplanets:oxygen_tank_heavy_full_cyan",
  "extraplanets:oxygen_tank_heavy_full_purple",
  "extraplanets:oxygen_tank_heavy_full_blue",
  "extraplanets:oxygen_tank_heavy_full_brown",
  "extraplanets:oxygen_tank_heavy_full_green",
  "extraplanets:oxygen_tank_heavy_full_black"
]

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in removeRecipeFurnace) {
  furnace.removeByInput(item)
}

for (item in removeRecipesByName) {
  crafting.remove(item)
}

// Метан
// mods.gregtech.centrifuge.removeByInput(5, [item('extraplanets:chocolate_bar')], null)
// mods.gregtech.centrifuge.removeByInput(5, [item('extraplanets:caramel_bar')], null)
