// MODS_LOADED: tfc
// ---- Удаление рецептов

import classes.array.TerraFirmaCraft


def removeRecipesByName = [
  "tfc:vanilla/redstone/observer",
  "tfc:vanilla/tnt",
  "tfc:vanilla/flint_and_steel",
  "tfc:vanilla/compass",
  "tfc:vanilla/redstone/redstone_lamp",
  "tfc:vanilla/redstone/piston",
  "tfc:vanilla/redstone/flawless_daylight_detector",
  "tfc:vanilla/redstone/exquisite_daylight_detector",
  "tfc:vanilla/redstone/daylight_detector",
  "tfc:vanilla/redstone/redstone_repeater",
  "tfc:vanilla/redstone/redstone_comparator",
  "tfc:vanilla/redstone/steel_hopper",
  "tfc:vanilla/redstone/hopper",
  "tfc:vanilla/pressure_plate/heavy_weighted_pressure_plate",
  "tfc:vanilla/rail/steel_minecraft",
  "tfc:vanilla/rail/minecraft",
  "tfc:vanilla/lapis_lazuli_block",
  "tfc:vanilla/ladder",
  "tfc:vanilla/painting",
  "tfc:vanilla/item_frame",
  "tfc:vanilla/piston",
  "tfc:vanilla/rail/powered_rail",
  "tfc:vanilla/rail/steel_detector_rail",
  "tfc:vanilla/rail/detector_rail",
  "tfc:vanilla/rail/rail",
  "tfc:vanilla/rail/steel_rail",
  "tfc:vanilla/rail/activator_rail",
  "tfc:vanilla/rail/steel_activator_rail",
  "tfc:vanilla/rail/minecart",
  "tfc:vanilla/rail/steel_minecart",
  "tfc:ceramics/unfired_fire_clay_recycle/fire_brick",
  "tfc:paper",
  "tfc:fire_clay",
  "tfc:vanilla/cauldron",
  "tfg:device/blast_furnace",
  "tfc:alabaster_brick",
  // Concrete
  "tfc:concrete_white",
  "tfc:concrete_orange",
  "tfc:concrete_magenta",
  "tfc:concrete_light_blue",
  "tfc:concrete_yellow",
  "tfc:concrete_lime",
  "tfc:concrete_pink",
  "tfc:concrete_gray",
  "tfc:concrete_light_gray",
  "tfc:concrete_cyan",
  "tfc:concrete_purple",
  "tfc:concrete_blue",
  "tfc:concrete_brown",
  "tfc:concrete_green",
  "tfc:concrete_red",
  "tfc:concrete_black",
  // Alabaster
  "tfc:plain_alabaster"
]


for (item in removeRecipesByName) {
  crafting.remove(item)
}


for (item in TerraFirmaCraft.tfcChests) {
  crafting.removeByOutput(item)
}


for (item in TerraFirmaCraft.tfcBoats) {
  crafting.removeByOutput(item)
}
