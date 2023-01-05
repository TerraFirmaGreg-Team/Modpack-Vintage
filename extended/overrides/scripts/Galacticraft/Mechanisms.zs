import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;



// Базовая солнечная панель
recipes.addShaped("tfg/gc/machine/solar_panel/base", <galacticraftcore:solar>, [
   [<metaitem:cover.solar.panel.mv>, <metaitem:cover.solar.panel.mv>, <metaitem:cover.solar.panel.mv>],
   [<metaitem:gearSmallAluminium>, <metaitem:stickAluminium>, <metaitem:gearSmallAluminium>],
   [<metaitem:electric.piston.mv>, <metaitem:hull.ev>, <metaitem:cableGtSingleGold>]]);

// Улучшенная солнечная панель
recipes.addShaped("tfg/gc/machine/solar_panel/advanced", <galacticraftcore:solar:4>, [
   [<metaitem:cover.solar.panel.ev>, <metaitem:cover.solar.panel.ev>, <metaitem:cover.solar.panel.ev>],
   [<metaitem:gearSmallTitanium>, <metaitem:stickTitanium>, <metaitem:gearSmallTitanium>],
   [<metaitem:electric.piston.ev>, <galacticraftcore:solar>, <metaitem:cableGtDoublePlatinum>]]);

// Гибридная солнечная панель
recipes.addShaped("tfg/ep/machine/solar_panel/hybrid", <extraplanets:solar>, [
   [<metaitem:cover.solar.panel.luv>, <metaitem:cover.solar.panel.luv>, <metaitem:cover.solar.panel.luv>],
   [<metaitem:gearSmallRhodiumPlatedPalladium>, <metaitem:stickRhodiumPlatedPalladium>, <metaitem:gearSmallRhodiumPlatedPalladium>],
   [<metaitem:electric.piston.luv>, <galacticraftcore:solar:4>, <metaitem:cableGtQuadrupleNaquadah>]]);

// Ultimate солнечная панель
recipes.addShaped("tfg/ep/machine/solar_panel/ultimate", <extraplanets:solar:4>, [
   [<metaitem:cover.solar.panel.uv>, <metaitem:cover.solar.panel.uv>, <metaitem:cover.solar.panel.uv>],
   [<metaitem:gearSmallDarmstadtium>, <metaitem:stickDarmstadtium>, <metaitem:gearSmallDarmstadtium>],
   [<metaitem:electric.piston.uv>, <extraplanets:solar>, <metaitem:cableGtOctalEuropium>]]);



// Загручкик топлива
recipes.addShaped("tfg/gc/machine/fuel_loader/basic", <galacticraftcore:fuel_loader>, [
   [<metaitem:plateDenseAluminium>, <ore:circuitEv>, <metaitem:plateDenseAluminium>],
   [<metaitem:drum.stainless_steel>, <metaitem:hull.ev>, <metaitem:electric.pump.ev>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:pipeSmallFluidStainlessSteel>, <metaitem:pipeSmallFluidStainlessSteel>]]);

// Улучшенный загручкик топлива
recipes.addShaped("tfg/ep/machine/fuel_loader/advanced", <extraplanets:advanced_fuel_loader>, [
   [<metaitem:plateDenseTitanium>, <ore:circuitLuv>, <metaitem:plateDenseTitanium>],
   [<metaitem:drum.stainless_steel>, <metaitem:hull.luv>, <metaitem:electric.pump.luv>],
   [<metaitem:pipeLargeFluidTitanium>, <metaitem:pipeLargeFluidTitanium>, <metaitem:pipeLargeFluidTitanium>]]);

// Ultimate загручкик топлива
recipes.addShaped("tfg/ep/machine/fuel_loader/ultimate", <extraplanets:ultimate_fuel_loader>, [
   [<metaitem:plateDenseDarmstadtium>, <ore:circuitUv>, <metaitem:plateDenseDarmstadtium>],
   [<metaitem:drum.stainless_steel>, <metaitem:hull.uv>, <metaitem:electric.pump.uv>],
   [<metaitem:pipeHugeFluidTungstenCarbide>, <metaitem:pipeHugeFluidTungstenCarbide>, <metaitem:pipeHugeFluidTungstenCarbide>]]);



// Кислородный компрессор
recipes.addShaped("tfg/gc/machine/oxygen_decompressor/basic", <galacticraftcore:oxygen_compressor:4>, [
   [<ore:circuitEv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.ev>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:hull.ev>, <metaitem:pipeSmallFluidStainlessSteel>],
   [<metaitem:drum.stainless_steel>, <metaitem:plateDenseAluminium>, <metaitem:electric.pump.ev>]]);

// Улучшенный кислородный компрессор
recipes.addShaped("tfg/gc/machine/oxygen_decompressor/advanced", <extraplanets:advanced_oxygen_compressor:4>, [
   [<ore:circuitLuv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.luv>],
   [<metaitem:pipeSmallFluidTitanium>, <metaitem:hull.luv>, <metaitem:pipeSmallFluidTitanium>],
   [<metaitem:drum.stainless_steel>, <metaitem:plateDenseTitanium>, <metaitem:electric.pump.luv>]]);

// Ultimate кислородный компрессор
recipes.addShaped("tfg/gc/machine/oxygen_decompressor/ultimate", <extraplanets:ultimate_oxygen_compressor:4>, [
   [<ore:circuitUv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.uv>],
   [<metaitem:pipeSmallFluidTungstenCarbide>, <metaitem:hull.uv>, <metaitem:pipeSmallFluidTungstenCarbide>],
   [<metaitem:drum.stainless_steel>, <metaitem:plateDenseDarmstadtium>, <metaitem:electric.pump.uv>]]);



// Кислородный декомпрессор
recipes.addShaped("tfg/gc/machine/oxygen_compressor/basic", <galacticraftcore:oxygen_compressor>, [
   [<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:hull.ev>, <metaitem:pipeSmallFluidStainlessSteel>],
   [<metaitem:electric.pump.hv>, <metaitem:plateDenseAluminium>, <metaitem:compressor.hv>]]);

// Улучшенный кислородный декомпрессор
recipes.addShaped("tfg/gc/machine/oxygen_compressor/advanced", <extraplanets:advanced_oxygen_compressor>, [
   [<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
   [<metaitem:pipeSmallFluidTitanium>, <metaitem:hull.luv>, <metaitem:pipeSmallFluidTitanium>],
   [<metaitem:electric.pump.hv>, <metaitem:plateDenseTitanium>, <metaitem:compressor.hv>]]);

// Ultimate кислородный декомпрессор
recipes.addShaped("tfg/gc/machine/oxygen_compressor/ultimate", <extraplanets:ultimate_oxygen_compressor>, [
   [<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
   [<metaitem:pipeSmallFluidTungstenCarbide>, <metaitem:hull.uv>, <metaitem:pipeSmallFluidTungstenCarbide>],
   [<metaitem:electric.pump.hv>, <metaitem:plateDenseDarmstadtium>, <metaitem:compressor.hv>]]);


// Автомобильное зарядное устройство
recipes.addShaped("tfg/gc/machine/vehicle_charger", <extraplanets:vehicle_charger>, [
   [<metaitem:battery_buffer.iv.4>, <ore:batteryIv>, <metaitem:battery_buffer.iv.4>],
   [<metaitem:plateDenseDesh>, <ore:batteryIv>, <metaitem:plateDenseDesh>],
   [<metaitem:plateDenseDesh>, <ore:batteryIv>, <metaitem:plateDenseDesh>]]);


// Блок базового обеззараживателя
assembler.recipeBuilder()
   .inputs([
      <extraplanets:tools:3> * 6,
      <extraplanets:iodide_salt> * 14,
      <ore:batteryLuv> * 3,
      <metaitem:plateLapis> * 36,
      <extraplanets:tier5_items:12> * 6])
   .outputs([<extraplanets:basic_decontamination_unit>])
   .duration(200).EUt(4080).buildAndRegister();



















// Распределитель кислородного пузыря
recipes.addShaped("tfg/gc/machine/oxygen_buble_distributor", <galacticraftcore:distributor>, [
   [<metaitem:sensor.hv>, <ore:circuitHv>, <metaitem:sensor.hv>],
   [<galacticraftcore:air_vent>, <galacticraftcore:air_fan>, <galacticraftcore:air_vent>],
   [<metaitem:field.generator.ev>, <galacticraftcore:oxygen_concentrator>, <metaitem:field.generator.ev>]]);

// Кислородный герметик
recipes.addShaped("tfg/gc/machine/oxygen_sealer", <galacticraftcore:sealer>, [
   [<metaitem:plateDenseAluminium>, <ore:circuitHv>, <metaitem:plateDenseAluminium>],
   [<galacticraftcore:air_vent>, <galacticraftcore:air_fan>, <galacticraftcore:air_vent>],
   [<metaitem:electric.pump.mv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.mv>]]);

// Кислородный детектор
recipes.addShaped("tfg/gc/machine/oxygen_detector", <galacticraftcore:oxygen_detector>, [
   [<metaitem:plateDenseAluminium>, <metaitem:sensor.hv>, <metaitem:plateDenseAluminium>],
   [<galacticraftcore:air_vent>, <ore:circuitMv>, <galacticraftcore:air_vent>],
   [<projectred-transmission:wire>, <metaitem:plateDenseAluminium>, <projectred-transmission:wire>]]);

// Грузовой загрузчик
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseAluminium> * 2, 
      <metaitem:plateDenseSteel> * 5, 
      <ore:gtce.block.crate> * 6, 
      <metaitem:robot.arm.hv> * 2)
   .outputs(<galacticraftcore:cargo>)
   .duration(1000).EUt(512).buildAndRegister();

// Грузовой разгрузчик
assembler.recipeBuilder()
   .circuit(8)
   .inputs(
      <metaitem:plateDenseAluminium> * 2, 
      <metaitem:plateDenseSteel> * 5, 
      <ore:gtce.block.crate> * 6, 
      <metaitem:robot.arm.hv> * 2)
   .outputs(<galacticraftcore:cargo:4>)
   .duration(1000).EUt(512).buildAndRegister();

// Хроматический аппликатор
recipes.addShaped("tfg/gc/machine/chromatic_applicator", <galacticraftcore:machine3>, [
   [<ore:dyeOrange>, <ore:dyeRed>, <ore:dyeMagenta>],
   [<ore:dyeYellow>, <metaitem:hull.ev>, <ore:dyeBlue>],
   [<ore:dyeLime>, <ore:dyeGreen>, <ore:dyeCyan>]]);

// Контроллер запуска
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseDesh> * 2, 
      <metaitem:sensor.ev> * 2,
      <metaitem:hull.ev>,
      <metaitem:cableGtDoubleGold> * 2,
      <ore:circuitHv> * 3)
   .outputs(<galacticraftplanets:mars_machine:8>)
   .duration(100).EUt(480).buildAndRegister();

// Геотермальный генератор
recipes.addShaped("tfg/gc/machine/geothermal_generator", <galacticraftplanets:geothermal_generator>, [
   [<metaitem:plateDenseBronze>, <galacticraftplanets:atmospheric_valve>, <metaitem:plateDenseBronze>],
   [<metaitem:cableGtQuadrupleAluminium>, <metaitem:combustion_generator.hv>, <metaitem:cableGtQuadrupleAluminium>],
   [<metaitem:plateDenseBronze>, <metaitem:plateDenseLead>, <metaitem:plateDenseBronze>]]);

// Oxygen Collector
recipes.addShaped("tfg/gc/machine/oxygen_collector", <galacticraftcore:collector>, [
   [<galacticraftcore:air_vent>, <ore:circuitEv>, <galacticraftcore:air_vent>],
   [<galacticraftcore:air_fan>, <metaitem:hull.ev>, <galacticraftcore:air_fan>],
   [<metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>]]);


// Лазерная турель
assembly_line.recipeBuilder()
   .inputs(
      <metaitem:laserKrypton>,  
      <metaitem:laserKrypton>,
      <htmltech:laser_pipe_normal>,
      <galacticraftcore:space_glass_clear> * 6, 
      <metaitem:hull.luv>,
      <metaitem:sensor.luv> * 2,
      <metaitem:emitter.luv> * 4)
   .fluidInputs(
      <liquid:molten.incoloy_ma_956> * 1264, 
      <liquid:molten.hssg> * 1432)
   .outputs(<galacticraftplanets:laser_turret>)
   .duration(1800).EUt(18100).buildAndRegister();