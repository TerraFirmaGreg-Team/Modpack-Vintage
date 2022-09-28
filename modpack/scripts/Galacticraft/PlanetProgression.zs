import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("planetprogression");


// Спутник
mods.PlanetProgression.removeSatelliteBuilderRecipe(<planetprogression:satellite_basic>);

// Ракета со спутником
mods.PlanetProgression.removeSatelliteRocketRecipe();

// --- Создание рецептов

// Satellite controller
assembler.recipeBuilder()
   .circuit(7)
   .inputs(<planetprogression:satellite_basic> * 2, <metaitem:plateDenseAluminium> * 8 , <metaitem:wafer.glowstone> * 2, <metaitem:wireGtQuadrupleAluminium> * 2, <metaitem:sensor.iv> * 3)
   .outputs(<planetprogression:satellite_controller>)
   .duration(200).EUt(2000).buildAndRegister();

// Satellite launcher
assembler.recipeBuilder()
   .circuit(7)
   .inputs(<galacticraftcore:basic_item:19> * 2, <metaitem:plateDenseSteel> * 8 , <metaitem:wafer.glowstone> * 2, <metaitem:wireGtQuadrupleAluminium> * 2)
   .outputs(<planetprogression:satellite_launcher>)
   .duration(150).EUt(2000).buildAndRegister();

// Базовый модуль спутника
assembler.recipeBuilder()
   .circuit(7)
   .inputs(<ore:circuitEv> * 2, <metaitem:plateDenseAluminium> * 2 , <metaitem:wafer.glowstone> * 2, <metaitem:component.smd.diode> * 4)
   .outputs(<planetprogression:satellite_module_basic>)
   .duration(150).EUt(2000).buildAndRegister();

// Dish keycard
assembler.recipeBuilder()
   .circuit(7)
   .inputs(<metaitem:sensor.iv> * 3, <metaitem:plateDenseAluminium> * 8 , <metaitem:component.smd.diode> * 2, <ore:circuitEv> * 2)
   .outputs(<planetprogression:dish_keycard>)
   .duration(200).EUt(1700).buildAndRegister();

// Telescope
assembler.recipeBuilder()
   .circuit(7)
   .inputs(<metaitem:sensor.iv> * 3, <metaitem:plateDenseAluminium> * 8 , <ore:craftingLensWhite> * 3, <ore:circuitEv> * 2, <metaitem:sensor.ev> * 2)
   .outputs(<planetprogression:telescope>)
   .duration(200).EUt(1700).buildAndRegister();

// Advanced launch pad
recipes.addShaped(<planetprogression:advanced_launch_pad> * 5, [
   [<metaitem:plateDenseIron>, <metaitem:plateDenseIron>, <metaitem:plateDenseIron>],
   [<metaitem:plateDenseIron>, <metaitem:plateDenseIron>, <metaitem:plateDenseIron>],
   [<ore:blockIronAny>, <ore:blockIronAny>, <ore:blockIronAny>]]);

// Спутник
assembly_line.recipeBuilder()
   .inputs(<metaitem:cover.solar.panel> * 36)
   .inputs(<planetprogression:satellite_module_basic> * 12)
   .inputs(<ore:circuitEv> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<metaitem:sensor.ev> * 8)
   .inputs(<ore:batteryHv> * 3)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .outputs(<planetprogression:satellite_basic>)
   .duration(200).EUt(2000).buildAndRegister();


// Ракета со спутником
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<galacticraftcore:heavy_plating> * 24)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .inputs(<metaitem:crate.steel>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .outputs(<planetprogression:item_satellite_rocket:1>)
   .duration(300).EUt(4000).buildAndRegister();