

if (isLoaded("galacticraftcore")) {

   // Базовая солнечная панель
   crafting.addShaped("tfg/gc/machine/solar_panel/base", item('galacticraftcore:solar'), [
      [metaitem('cover.solar.panel.mv'), metaitem('cover.solar.panel.mv'), metaitem('cover.solar.panel.mv')],
      [metaitem('gearSmallAluminium'), metaitem('stickAluminium'), metaitem('gearSmallAluminium')],
      [metaitem('electric.piston.mv'), metaitem('hull.ev'), metaitem('cableGtSingleGold')]])
   
   // Улучшенная солнечная панель
   crafting.addShaped("tfg/gc/machine/solar_panel/advanced", item('galacticraftcore:solar:4'), [
      [metaitem('cover.solar.panel.ev'), metaitem('cover.solar.panel.ev'), metaitem('cover.solar.panel.ev')],
      [metaitem('gearSmallTitanium'), metaitem('stickTitanium'), metaitem('gearSmallTitanium')],
      [metaitem('electric.piston.ev'), item('galacticraftcore:solar'), metaitem('cableGtDoublePlatinum')]])
   
   
   
   // Загручкик топлива
   crafting.addShaped("tfg/gc/machine/fuel_loader/basic", item('galacticraftcore:fuel_loader'), [
      [metaitem('plateDenseAluminium'), ore('circuitEv'), metaitem('plateDenseAluminium')],
      [metaitem('drum.stainless_steel'), metaitem('hull.ev'), metaitem('electric.pump.ev')],
      [metaitem('pipeSmallFluidStainlessSteel'), metaitem('pipeSmallFluidStainlessSteel'), metaitem('pipeSmallFluidStainlessSteel')]])
   
   
   
   // Кислородный компрессор
   crafting.addShaped("tfg/gc/machine/oxygen_decompressor/basic", item('galacticraftcore:oxygen_compressor:4'), [
      [ore('circuitEv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.ev')],
      [metaitem('pipeSmallFluidStainlessSteel'), metaitem('hull.ev'), metaitem('pipeSmallFluidStainlessSteel')],
      [metaitem('drum.stainless_steel'), metaitem('plateDenseAluminium'), metaitem('electric.pump.ev')]])
   
   
   
   // Кислородный декомпрессор
   crafting.addShaped("tfg/gc/machine/oxygen_compressor/basic", item('galacticraftcore:oxygen_compressor'), [
      [metaitem('electric.pump.hv'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')],
      [metaitem('pipeSmallFluidStainlessSteel'), metaitem('hull.ev'), metaitem('pipeSmallFluidStainlessSteel')],
      [metaitem('electric.pump.hv'), metaitem('plateDenseAluminium'), metaitem('compressor.hv')]])
   
   // Распределитель кислородного пузыря
   crafting.addShaped("tfg/gc/machine/oxygen_buble_distributor", item('galacticraftcore:distributor'), [
      [metaitem('sensor.hv'), ore('circuitHv'), metaitem('sensor.hv')],
      [item('galacticraftcore:air_vent'), item('galacticraftcore:air_fan'), item('galacticraftcore:air_vent')],
      [metaitem('field.generator.ev'), item('galacticraftcore:oxygen_concentrator'), metaitem('field.generator.ev')]])
   
   // Кислородный герметик
   crafting.addShaped("tfg/gc/machine/oxygen_sealer", item('galacticraftcore:sealer'), [
      [metaitem('plateDenseAluminium'), ore('circuitHv'), metaitem('plateDenseAluminium')],
      [item('galacticraftcore:air_vent'), item('galacticraftcore:air_fan'), item('galacticraftcore:air_vent')],
      [metaitem('electric.pump.mv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.mv')]])
   
   // Кислородный детектор
   crafting.addShaped("tfg/gc/machine/oxygen_detector", item('galacticraftcore:oxygen_detector'), [
      [metaitem('plateDenseAluminium'), metaitem('sensor.hv'), metaitem('plateDenseAluminium')],
      [item('galacticraftcore:air_vent'), ore('circuitMv'), item('galacticraftcore:air_vent')],
      [item('projectred-transmission:wire'), metaitem('plateDenseAluminium'), item('projectred-transmission:wire')]])
   
   // Грузовой загрузчик
   assembler.recipeBuilder()
      .circuitMeta(7)
      .inputs(
         metaitem('plateDenseAluminium') * 2, 
         metaitem('plateDenseSteel') * 5, 
         ore('gtce.block.crate') * 6, 
         metaitem('robot.arm.hv') * 2)
      .outputs(item('galacticraftcore:cargo'))
      .duration(1000).EUt(512).buildAndRegister()
   
   // Грузовой разгрузчик
   assembler.recipeBuilder()
      .circuitMeta(8)
      .inputs(
         metaitem('plateDenseAluminium') * 2, 
         metaitem('plateDenseSteel') * 5, 
         ore('gtce.block.crate') * 6, 
         metaitem('robot.arm.hv') * 2)
      .outputs(item('galacticraftcore:cargo:4'))
      .duration(1000).EUt(512).buildAndRegister()
   
   // Хроматический аппликатор
   crafting.addShaped("tfg/gc/machine/chromatic_applicator", item('galacticraftcore:machine3'), [
      [ore('dyeOrange'), ore('dyeRed'), ore('dyeMagenta')],
      [ore('dyeYellow'), metaitem('hull.ev'), ore('dyeBlue')],
      [ore('dyeLime'), ore('dyeGreen'), ore('dyeCyan')]])
   
   // Контроллер запуска
   assembler.recipeBuilder()
      .circuitMeta(7)
      .inputs(
         metaitem('plateDenseDesh') * 2, 
         metaitem('sensor.ev') * 2,
         metaitem('hull.ev'),
         metaitem('cableGtDoubleGold') * 2,
         ore('circuitHv') * 3)
      .outputs(item('galacticraftplanets:mars_machine:8'))
      .duration(100).EUt(480).buildAndRegister()
   
   // Геотермальный генератор
   crafting.addShaped("tfg/gc/machine/geothermal_generator", item('galacticraftplanets:geothermal_generator'), [
      [metaitem('plateDenseBronze'), item('galacticraftplanets:atmospheric_valve'), metaitem('plateDenseBronze')],
      [metaitem('cableGtQuadrupleAluminium'), metaitem('combustion_generator.hv'), metaitem('cableGtQuadrupleAluminium')],
      [metaitem('plateDenseBronze'), metaitem('plateDenseLead'), metaitem('plateDenseBronze')]])
   
   // Oxygen Collector
   crafting.addShaped("tfg/gc/machine/oxygen_collector", item('galacticraftcore:collector'), [
      [item('galacticraftcore:air_vent'), ore('circuitEv'), item('galacticraftcore:air_vent')],
      [item('galacticraftcore:air_fan'), metaitem('hull.ev'), item('galacticraftcore:air_fan')],
      [metaitem('drum.stainless_steel'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')]])
   
   
   // Лазерная турель
   assembly_line.recipeBuilder()
      .inputs(
         item('aunis:crystal_red'),  
         item('aunis:crystal_red'),
         item('galacticraftcore:space_glass_clear') * 6, 
         metaitem('hull.luv'),
         metaitem('sensor.luv') * 2,
         metaitem('emitter.luv') * 4)
      .fluidInputs(
         fluid('molten.incoloy_ma_956') * 1264, 
         fluid('molten.hssg') * 1432)
      .outputs(item('galacticraftplanets:laser_turret'))
      .duration(1800).EUt(18100).buildAndRegister()
}