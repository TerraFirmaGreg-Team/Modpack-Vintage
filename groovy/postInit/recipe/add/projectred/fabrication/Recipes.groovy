// MODS_LOADED: projectred-fabrication
// --- Добавление рецептов


// IC Bluerprint
mods.gregtech.circuit_assembler.recipeBuilder()
  .inputs(
    ore('circuitLv') * 2,
    metaitem('dustLapis') * 4,
    metaitem('wireGtSingleRedAlloy') * 6)
  .fluidInputs(fluid('soldering_alloy') * 144)
  .outputs(item('projectred-fabrication:ic_blueprint'))
  .duration(200).EUt(32).buildAndRegister()

// IC Chip
crafting.addShaped("projectred/ic_chip", item('projectred-fabrication:ic_chip'),
  [[metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold')],
   [item('appliedenergistics2:material', 16), item('projectred-core:resource_item'), item('appliedenergistics2:material', 16)],
   [metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold')]])

// IC Printer
crafting.addShaped("projectred/ic_machine_1", item('projectred-fabrication:ic_machine:1'),
  [[metaitem('robot.arm.lv'), metaitem('sensor.lv'), metaitem('robot.arm.lv')],
   [metaitem('blockSteel'), ore('workbench'), metaitem('blockSteel')],
   [ore('plankWood'), ore('plankWood'), ore('plankWood')]])
