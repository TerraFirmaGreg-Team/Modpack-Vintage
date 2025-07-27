// MODS_LOADED: galacticraftcore
// ---- Удаление рецептов


def removeRecipe = [
  item('galacticraftcore:landing_pad:*'),
  item('galacticraftcore:distributor'),
  item('galacticraftcore:oxygen_compressor:*'),
  item('galacticraftcore:sealer'),
  item('galacticraftcore:oxygen_detector'),
  item('galacticraftcore:fuel_loader'),
  item('galacticraftcore:cargo:*'),
  item('galacticraftcore:basic_block_core:*'),
  item('galacticraftcore:air_lock_frame:*'),
  item('galacticraftcore:space_glass_clear:*'),
  item('galacticraftcore:space_glass_vanilla:*'),
  item('galacticraftcore:space_glass_strong:*'),
  item('galacticraftcore:magnetic_table'),
  item('galacticraftcore:enclosed:*'),
  item('galacticraftcore:solar:*'),
  item('galacticraftcore:dishbase'),
  item('galacticraftcore:machine3'),
  item('galacticraftcore:panel_lighting:*'),
  item('galacticraftcore:glowstone_torch'),
  item('galacticraftcore:spin_thruster'),
  item('galacticraftcore:view_screen'),
  item('galacticraftcore:telemetry'),
  item('galacticraftcore:arclamp'),
  item('galacticraftcore:platform'),
  item('galacticraftcore:oxygen_mask'),
  item('galacticraftcore:oxygen_gear'),
  item('galacticraftcore:sensor_lens'),
  item('galacticraftcore:sensor_glasses'),
  item('galacticraftcore:air_vent'),
  item('galacticraftcore:air_fan'),
  item('galacticraftcore:oxygen_concentrator'),
  item('galacticraftcore:engine:*'),
  item('galacticraftcore:nose_cone'),
  item('galacticraftcore:rocket_fins'),
  item('galacticraftcore:steel_pole'),
  item('galacticraftcore:oil_canister_partial:*'),
  item('galacticraftcore:basic_item:19'),
  item('galacticraftcore:basic_item:20'),
  item('galacticraftcore:food:*'),
  item('galacticraftcore:parachute:*'),
  item('galacticraftcore:buggymat:*'),
  item('galacticraftcore:collector'),
  item('galacticraftcore:item_basic_moon'),
  item('galacticraftcore:canister'),
  // item('galacticraftcore:oxygen_tank_heavy_full')
]

def removeRecipeFurnace = [
  item('galacticraftcore:food', 6),
  item('galacticraftcore:meteoric_iron_raw'),
  item('galacticraftcore:canister'),
  item('galacticraftcore:canister', 1)
]

def removeRecipesByName = [
  "galacticraftcore:slime_ball",
  "galacticraftcore:cobblestone",
  "galacticraftcore:cobblestone_alt",
  "galacticraftcore:cobblestone_alt_alt",
  "galacticraftcore:basic_item_18",
  "galacticraftcore:basic_item_17",
  "galacticraftcore:basic_item_16",
  "galacticraftcore:basic_item_15",
  "galacticraftcore:furnace",
  "galacticraftcore:oxygen_tank_light_full",
  "galacticraftcore:oxygen_tank_med_full",
  "galacticraftcore:oxygen_tank_heavy_full",
  "galacticraftcore:oxygen_tank_light_full_1",
  "galacticraftcore:oxygen_tank_med_full_1",
  "galacticraftcore:oxygen_tank_heavy_full_1"
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
// mods.gregtech.centrifuge.removeByInput(5, [item('galacticraftcore:food', 4)], null)
// mods.gregtech.centrifuge.removeByInput(5, [item('galacticraftcore:food', 5)], null)
// mods.gregtech.centrifuge.removeByInput(5, [item('galacticraftcore:food', 6)], null)
// mods.gregtech.centrifuge.removeByInput(5, [item('galacticraftcore:food', 7)], null)
// mods.gregtech.centrifuge.removeByInput(5, [item('galacticraftcore:food', 8)], null)
