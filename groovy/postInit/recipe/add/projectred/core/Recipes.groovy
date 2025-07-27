// MODS_LOADED: projectred-core
// --- Добавление рецептов


// Silicon Chip
mods.gregtech.circuit_assembler.recipeBuilder()
  .inputs(
    item('projectred-core:resource_item'),
    metaitem('wafer.integrated_logic_circuit'))
  .fluidInputs(fluid('soldering_alloy') * 288)
  .outputs(item('projectred-core:resource_item', 20))
  .duration(400).EUt(32).buildAndRegister()

// Energized Silicon Chip
mods.gregtech.polarizer.recipeBuilder()
  .inputs(item('projectred-core:resource_item', 20))
  .outputs(item('projectred-core:resource_item', 21))
  .duration(200).EUt(32).buildAndRegister()


// Null-Logic Routing Chip
mods.gregtech.circuit_assembler.recipeBuilder()
  .inputs(
    ore('circuitUlv') * 4,
    metaitem('wireGtSingleRedAlloy') * 2,
    item('projectred-core:resource_item:4'))
  .fluidInputs(fluid('soldering_alloy') * 144)
  .outputs(item('projectred-core:resource_item', 600))
  .duration(200).EUt(32).buildAndRegister()


// Multimeter
crafting.addShaped("projectred/multimeter", item('projectred-core:multimeter'),
  [[metaitem('wireGtSingleGold'), null, metaitem('wireGtSingleRedAlloy')],
   [metaitem('wireGtSingleGold'), metaitem('cover.screen'), metaitem('wireGtSingleRedAlloy')],
   [ore('circuitLv'), metaitem('plateIron'), ore('circuitLv')]])


// Circuit Plate
furnace.add(ore('stone'), item('projectred-core:resource_item') * 2)
