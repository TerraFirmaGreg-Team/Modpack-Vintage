import crafttweaker.item.IItemStack;

// --- Массивы

val ItemsToRemove as IItemStack[] = [
	<ae2fc:fluid_pattern_encoder>,
	<ae2fc:fluid_discretizer>,
	<ae2fc:fluid_packet_decoder>,
	<ae2fc:ingredient_buffer>,
	<ae2fc:burette>,
	<ae2fc:part_fluid_pattern_ex_terminal>,
	<ae2fc:part_fluid_pattern_terminal>
];

// --- Удаление рецептов

// Удаление рецептов
for item in ItemsToRemove{
  recipes.remove(item);
}

// --- Добавление рецептов

// Fluid pattern encoder
assembler.recipeBuilder()
  .inputs(<ore:plateDenseIron> * 8, <appliedenergistics2:fluid_interface> * 2, <appliedenergistics2:material:23> * 3, <ore:craftingTableWood>)
  .circuit(24)
  .fluidInputs([<liquid:rubber> * 144])
  .outputs(<ae2fc:fluid_pattern_encoder>)
  .duration(20)
  .EUt(480)
  .buildAndRegister();

// Fluid discretizer
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:condenser>, <appliedenergistics2:part:221>, <appliedenergistics2:part:220>, <appliedenergistics2:material:24> * 8, <ore:plateDenseTitanium> * 6)
  .circuit(24)
  .outputs(<ae2fc:fluid_discretizer>)
  .duration(100)
  .EUt(480)
  .buildAndRegister();

// Fluid packet decoder
assembler.recipeBuilder()
  .inputs(<metaitem:fluid_filter> * 3, <appliedenergistics2:part:16> * 4, <appliedenergistics2:fluid_interface> * 2, <appliedenergistics2:material:24> * 8, <ore:plateDenseTitanium> * 4)
  .circuit(24)
  .outputs(<ae2fc:fluid_packet_decoder>)
  .duration(100)
  .EUt(480)
  .buildAndRegister();

// Ingredient buffer
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:material:54> * 3, <appliedenergistics2:material:43> * 4, <appliedenergistics2:material:44> * 4, <appliedenergistics2:quartz_glass> * 2, <ore:plateDenseTitanium> * 4, <appliedenergistics2:material:35> * 2)
  .circuit(24)
  .outputs(<ae2fc:ingredient_buffer>)
  .duration(100)
  .EUt(480)
  .buildAndRegister();

// Fluid packet decoder
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:290> * 2, <appliedenergistics2:material:23> * 4, <gregtech:machine:1612> , <ore:plateDenseTitanium> * 4, <appliedenergistics2:quartz_glass> * 4)
  .circuit(24)
  .outputs(<ae2fc:burette>)
  .duration(100)
  .EUt(480)
  .buildAndRegister();

// Fluid pattern ex terminal
assembler.recipeBuilder()
  .inputs(<ae2fc:part_fluid_pattern_terminal> * 2, <metaitem:sensor.iv> * 4, <metaitem:emitter.iv> , <metaitem:electric.pump.ev>)
  .circuit(24)
  .outputs(<ae2fc:part_fluid_pattern_ex_terminal>)
  .duration(10)
  .EUt(880)
  .buildAndRegister();

// Fluid pattern terminal
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:340>, <metaitem:sensor.ev> * 4, <metaitem:emitter.ev> , <metaitem:electric.pump.hv>)
  .circuit(24)
  .outputs(<ae2fc:part_fluid_pattern_terminal>)
  .duration(10)
  .EUt(480)
  .buildAndRegister();
