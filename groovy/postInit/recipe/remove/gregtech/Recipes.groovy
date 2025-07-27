// MODS_LOADED: gregtech
// ---- Удаление рецептов


def removeRecipe = [
  //item('minecraft:paper') * 2,
  item('gregtech:metal_casing:1'),
  item('gregtech:steam_casing:4'),
  metaitem('coke_oven'),
  metaitem('steam_miner'),
  metaitem('steam_macerator_bronze'),
  metaitem('steam_rock_breaker_bronze'),
  metaitem('pump_hatch'),
  metaitem('primitive_water_pump'),
  metaitem('steam_boiler_coal_bronze'),
  metaitem('steam_boiler_coal_steel'),
  metaitem('steam_furnace_bronze'),
  metaitem('steam_alloy_smelter_bronze'),
  metaitem('electric_blast_furnace'),
  metaitem('multi_furnace'),
  metaitem('workbench'),
  metaitem('energy_hatch.input.mv'),
  metaitem('compressed.coke_clay'),
  metaitem('steam_hammer_bronze'),
  metaitem('steam_hammer_steel'),
  metaitem('cover.solar.panel.ulv'),
  metaitem('cover.solar.panel.lv'),
  // metaitem('cover.solar.panel.mv'),
  // metaitem('cover.solar.panel.hv'),
  // metaitem('cover.solar.panel.ev'),
  // metaitem('cover.solar.panel.iv'),
  // metaitem('cover.solar.panel.luv'),
  // metaitem('cover.solar.panel.zpm'),
  // metaitem('cover.solar.panel.uv'),
  metaitem('passthrough_hatch_item')
]

def removeRecipesByName = [
  "gregtech:cobblestone_hammer",
  "gregtech:piston_iron",
  "gregtech:sticky_resin_torch",
  "gregtech:torch_phosphorus",
  "gregtech:torch_coke",
  "gregtech:torch_coke_dust",
  "gregtech:torch_sulfur",
  "gregtech:iron_trapdoor",
  "gregtech:iron_door",
  "gregtech:iron_bars",
  "gregtech:quartz_sand",
  "gregtech:lead",
  "gregtech:redstone_lamp",
  "gregtech:repeater",
  "gregtech:comparator",
  "gregtech:comparator_certus",
  "gregtech:comparator_quartzite",
  "gregtech:daylight_detector",
  "gregtech:daylight_detector_certus",
  "gregtech:daylight_detector_quartzite",
  "gregtech:lever",
  "gregtech:steam_output_bus",
  "gregtech:steam_input_bus",
  "gregtech:glass_pane",
  "gregtech:plank_to_wooden_shape",
  "gregtech:sticks_from_bundle_saw",
  "gregtech:gravel_to_flint",
  "gregtech:dust_bronze",
  "gregtech:bow",
  "gregtech:iron_horse_armor",
  "gregtech:gold_horse_armor",
  "gregtech:diamond_horse_armor",
  "gregtech:sadle",
  "gregtech:wooden_crate",
  "gregtech:painting",
  "gregtech:item_frame",
  "gregtech:tripwire_hook",
  "gregtech:jukebox",
  "gregtech:minecart",
  "gregtech:anvil",
  "gregtech:hopper",
  "gregtech:cauldron",
  "gregtech:light_weighted_pressure_plate",
  "gregtech:observer",
  "gregtech:observer_certus",
  "gregtech:observer_quartzite",
  "gregtech:dispenser",
  "gregtech:dropper",
  "gregtech:clipboard",
  "gregtech:coke_oven_hatch",
  "gregtech:cover_fluid_voiding",
  "gregtech:cover_item_voiding"
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

// Поименное удаление рецептов
for (item in removeRecipesByName) {
  crafting.remove(item)
}

// Sodium Dust * 1 (#144)
mods.gregtech.electrolyzer.removeByInput(30, [metaitem('dustSalt') * 2], null)
