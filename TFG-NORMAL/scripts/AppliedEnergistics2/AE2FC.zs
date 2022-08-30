import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("ae2fc");


// --- Добавление рецептов

// Fluid pattern encoder
assembler.recipeBuilder()
  .inputs(<ore:plateDenseIron> * 8, <appliedenergistics2:fluid_interface> * 2, <appliedenergistics2:material:23> * 3, <ore:craftingTableWood>)
  .circuit(24)
  .fluidInputs([<liquid:rubber> * 144])
  .outputs(<ae2fc:fluid_pattern_encoder>)
  .duration(20).EUt(480).buildAndRegister();

// Fluid discretizer
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:condenser>, <appliedenergistics2:part:221>, <appliedenergistics2:part:220>, <appliedenergistics2:material:24> * 8, <ore:plateDenseTitanium> * 6)
  .circuit(24)
  .outputs(<ae2fc:fluid_discretizer>)
  .duration(100).EUt(480).buildAndRegister();

// Fluid packet decoder
assembler.recipeBuilder()
  .inputs(<metaitem:fluid_filter> * 3, <ore:ae2.cable.glass> * 4, <appliedenergistics2:fluid_interface> * 2, <appliedenergistics2:material:24> * 8, <ore:plateDenseTitanium> * 4)
  .circuit(24)
  .outputs(<ae2fc:fluid_packet_decoder>)
  .duration(100).EUt(480).buildAndRegister();

// Ingredient buffer
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:material:54> * 3, <appliedenergistics2:material:43> * 4, <appliedenergistics2:material:44> * 4, <appliedenergistics2:quartz_glass> * 2, <ore:plateDenseTitanium> * 4, <appliedenergistics2:material:35> * 2)
  .circuit(24)
  .outputs(<ae2fc:ingredient_buffer>)
  .duration(100).EUt(480).buildAndRegister();

// Fluid packet decoder
assembler.recipeBuilder()
  .inputs(<metaitem:fluid_filter> * 2, <appliedenergistics2:material:23> * 4, <gregtech:machine:1612> , <ore:plateDenseTitanium> * 4, <appliedenergistics2:quartz_glass> * 4)
  .circuit(24)
  .outputs(<ae2fc:burette>)
  .duration(100).EUt(480).buildAndRegister();

// Fluid pattern ex terminal
assembler.recipeBuilder()
  .inputs(<ae2fc:part_fluid_pattern_terminal> * 2, <metaitem:sensor.iv> * 4, <metaitem:emitter.iv> , <metaitem:electric.pump.ev>)
  .circuit(24)
  .outputs(<ae2fc:part_fluid_pattern_ex_terminal>)
  .duration(10).EUt(880).buildAndRegister();

// Fluid pattern terminal
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:340>, <metaitem:sensor.ev> * 4, <metaitem:emitter.ev> , <metaitem:electric.pump.hv>)
  .circuit(24)
  .outputs(<ae2fc:part_fluid_pattern_terminal>)
  .duration(10).EUt(480).buildAndRegister();

// Fluid level maintainer
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_monitor>, <appliedenergistics2:material:24> * 4, <ore:dustFluix> * 8, <appliedenergistics2:part:281>, <ore:plateLapis> * 2)
  .circuit(24)
  .outputs(<ae2fc:fluid_level_maintainer>)
  .duration(10).EUt(480).buildAndRegister();

// Large ingredient buffer
assembler.recipeBuilder()
  .inputs(<ae2fc:ingredient_buffer> * 4, <appliedenergistics2:quartz_glass> * 4, <appliedenergistics2:material:24> * 8)
  .circuit(24)
  .outputs(<ae2fc:large_ingredient_buffer>)
  .duration(10).EUt(980).buildAndRegister();

// Dual interface
recipes.addShapeless("tfg/ae2fc/dual_interface", <ae2fc:dual_interface>, [<ae2fc:part_dual_interface>]);
recipes.addShapeless("tfg/ae2fc/part_dual_interface", <ae2fc:part_dual_interface>, [<ae2fc:dual_interface>]);
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:fluid_interface>, <appliedenergistics2:interface>)
  .circuit(24)
  .outputs(<ae2fc:dual_interface>)
  .duration(10).EUt(480).buildAndRegister();

// Очистка шаблона
  recipes.addShapeless(<appliedenergistics2:material:52>, [<ae2fc:dense_encoded_pattern>]);