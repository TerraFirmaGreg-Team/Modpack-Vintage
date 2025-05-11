// MODS_LOADED: galacticraftcore


def hideCategory = [
  //  "galacticraft.buggy",
  //  "galacticraft.oxygencompressor",
  //  "galacticraft.ingotcompressor",
  //  "galacticraft.circuitMetas",
  //  "galacticraft.refinery",
  //  "galacticraft.gas_liquefier",
  //  "galacticraft.methaneSynthesizer",
  //  "galacticraft.astroMiner",
  //  "galacticraft.cargoRocket",
  //  "galacticraft.rocketT1",
  //  "galacticraft.rocketT2",
  //  "galacticraft.rocketT3"
]

def hide = [
  item('galacticraftcore:rocket_t1', 4),
]

def removeAndHide = [
  item('galacticraftcore:basic_block_core', 5),
  item('galacticraftcore:basic_block_core', 6),
  item('galacticraftcore:basic_block_core', 7),
  item('galacticraftcore:basic_block_core', 8),
  item('galacticraftcore:basic_block_core', 9),
  item('galacticraftcore:basic_block_core', 10),
  item('galacticraftcore:basic_block_core', 11),
  item('galacticraftcore:basic_block_core', 13),
  item('galacticraftcore:rocket_workbench'),
  item('galacticraftcore:compact_workbench'),
  item('galacticraftcore:prelaunch_checklist'),
  item('galacticraftcore:fallen_meteor'),
  item('galacticraftcore:meteor_chunk:*'),
  item('galacticraftcore:standard_wrench'),
  item('galacticraftcore:parachest'),
  item('galacticraftcore:cheese_curd'),
  item('galacticraftcore:fluid_tank'),
  item('galacticraftcore:fluid_pipe'),
  item('galacticraftcore:aluminum_wire:*'),
  // Креативные предметы
  item('galacticraftcore:infinite_battery'),
  item('galacticraftcore:infinite_oxygen'),
  item('galacticraftcore:dungeonfinder'),
  item('galacticraftcore:basic_item'),
  item('galacticraftcore:basic_item', 1),
  item('galacticraftcore:basic_item', 2),
  item('galacticraftcore:basic_item', 3),
  item('galacticraftcore:basic_item', 4),
  item('galacticraftcore:basic_item', 5),
  item('galacticraftcore:basic_item', 6),
  item('galacticraftcore:basic_item', 7),
  item('galacticraftcore:basic_item', 8),
  item('galacticraftcore:basic_item', 9),
  item('galacticraftcore:basic_item', 10),
  item('galacticraftcore:basic_item', 11),
  item('galacticraftcore:basic_item', 12),
  item('galacticraftcore:basic_item', 13),
  item('galacticraftcore:basic_item', 14),
  // Стальные броня и инструменты
  item('galacticraftcore:steel_pickaxe'),
  item('galacticraftcore:steel_axe'),
  item('galacticraftcore:steel_hoe'),
  item('galacticraftcore:steel_shovel'),
  item('galacticraftcore:steel_sword'),
  item('galacticraftcore:steel_helmet'),
  item('galacticraftcore:steel_chestplate'),
  item('galacticraftcore:steel_leggings'),
  item('galacticraftcore:steel_boots'),
  // Машины
  item('galacticraftcore:machine', 12),
  item('galacticraftcore:machine2'),
  item('galacticraftcore:machine2', 4),
  item('galacticraftcore:machine'),
  item('galacticraftcore:machine2', 12),
  item('galacticraftcore:refinery'),
  item('galacticraftcore:machine4'),
  item('galacticraftcore:machine_tiered', 12),
  item('galacticraftcore:machine_tiered', 8),
  item('galacticraftcore:machine_tiered', 4),
  item('galacticraftcore:machine_tiered'),
  item('galacticraftcore:machine2', 8),
  item('galacticraftcore:concealed_detector'),
  item('galacticraftcore:emergency_box:*'),
  item('galacticraftcore:food', 4),
  item('galacticraftcore:food', 5),
  item('galacticraftcore:food', 6),
  item('galacticraftcore:food', 7),
  item('galacticraftcore:food', 8),
  item('galacticraftcore:battery:*'),
  item('galacticraftcore:emergency_kit'),
  item('galacticraftcore:canister', 1),
  item('galacticraftcore:buggymat', 2),

  item('galacticraftcore:basic_block_moon'),
  item('galacticraftcore:basic_block_moon:1'),
  item('galacticraftcore:basic_block_moon:2'),
  item('galacticraftcore:basic_block_moon:6'),
  item('galacticraftcore:item_basic_moon:1'),
  item('galacticraftcore:item_basic_moon:2'),
  item('galacticraftcore:cheese_curd'),
  item('galacticraftcore:treasure_chest'),
  item('galacticraftcore:key')
]


for (item in hideCategory) {
  mods.jei.category.hideCategory(item)
}

for (item in hide) {
  mods.jei.ingredient.hide(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
