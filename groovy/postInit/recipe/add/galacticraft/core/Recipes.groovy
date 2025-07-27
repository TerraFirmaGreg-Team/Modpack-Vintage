// MODS_LOADED: galacticraftcore
// --- Добавление рецептов


import classes.Function
import classes.array.Galacticraft
import classes.array.Minecraft
import gregtech.api.metatileentity.multiblock.CleanroomType


// Взлетная площадка
crafting.addShaped("gc/landing_pad/rocket", item('galacticraftcore:landing_pad') * 9, [
  [null, null, null],
  [metaitem('plateDenseIron'), metaitem('plateDenseIron'), metaitem('plateDenseIron')],
  [ore('blockIronAny'), ore('blockIronAny'), ore('blockIronAny')]])

// Площадка для багги
crafting.addShaped("gc/landing_pad/buggy", item('galacticraftcore:landing_pad', 1) * 9, [
  [null, null, null],
  [metaitem('plateDenseBlackSteel'), metaitem('plateDenseBlackSteel'), metaitem('plateDenseBlackSteel')],
  [metaitem('blockSteel'), metaitem('blockSteel'), metaitem('blockSteel')]])

// Декоративный оловянный блок
crafting.addShaped("gc/decor_block_tin_1", item('galacticraftcore:basic_block_core', 3), [
  [ore('stone'), ore('stone'), null],
  [ore('stone'), ore('stone'), metaitem('plateDenseTin')],
  [null, null, null]])
crafting.addShaped("gc/decor_block_tin_2", item('galacticraftcore:basic_block_core', 4), [
  [ore('stone'), ore('stone'), null],
  [ore('stone'), ore('stone'), null],
  [null, metaitem('plateDenseTin'), null]])

// Каркас воздушного шлюза
crafting.addShaped("gc/airlock_frame", item('galacticraftcore:air_lock_frame') * 2, [
  [metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium')],
  [metaitem('plateDenseSteel'), item('galacticraftcore:oxygen_concentrator'), metaitem('plateDenseSteel')],
  [metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium')]])

// Контроллер воздушного шлюза
crafting.addShaped("gc/machine/airlock_frame_controller", item('galacticraftcore:air_lock_frame', 1), [
  [metaitem('plateDenseStainlessSteel'), metaitem('cableGtDoubleGold'), metaitem('plateDenseStainlessSteel')],
  [ore('circuitHv'), metaitem('hull.ev'), ore('circuitHv')],
  [metaitem('plateDenseStainlessSteel'), metaitem('cableGtDoubleGold'), metaitem('plateDenseStainlessSteel')]])

// Вакумное стекло
mods.gregtech.forming_press.recipeBuilder()
  .inputs(
    metaitem('plateDenseAluminium') * 4,
    ore('blockGlass') * 5)
  .outputs(item('galacticraftcore:space_glass_strong') * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()
mods.gregtech.forming_press.recipeBuilder()
  .inputs(
    item('galacticraftcore:basic_block_core', 4) * 4,
    item('galacticraftcore:space_glass_strong') * 5)
  .outputs(item('galacticraftcore:space_glass_strong', 1) * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()
mods.gregtech.forming_press.recipeBuilder()
  .inputs(metaitem('ingotTin') * 4, ore('blockGlass') * 5)
  .outputs(item('galacticraftcore:space_glass_vanilla') * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()
mods.gregtech.forming_press.recipeBuilder()
  .inputs(item('galacticraftcore:basic_block_core', 4) * 4, item('galacticraftcore:space_glass_vanilla') * 5)
  .outputs(item('galacticraftcore:space_glass_vanilla', 1) * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()
mods.gregtech.forming_press.recipeBuilder()
  .inputs(metaitem('ingotAluminium') * 4, ore('blockGlass') * 5)
  .outputs(item('galacticraftcore:space_glass_clear') * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()
mods.gregtech.forming_press.recipeBuilder()
  .inputs(item('galacticraftcore:basic_block_core', 4) * 4, item('galacticraftcore:space_glass_clear') * 5)
  .outputs(item('galacticraftcore:space_glass_clear', 1) * 5)
  .cleanroom(CleanroomType.CLEANROOM)
  .duration(300).EUt(480).buildAndRegister()

// Магнитный верстак
crafting.addShaped("gc/magnetic_table", item('galacticraftcore:magnetic_table'), [
  [ore('workbench'), metaitem('plateDenseIron'), null],
  [null, null, null],
  [null, null, null]])

// Герметичная жидкостная труба
crafting.addShaped("gc/sealable_something_1", item('galacticraftcore:enclosed', 1), [
  [null, null, null],
  [item('galacticraftcore:basic_block_core', 4), metaitem('pipeSmallFluidStainlessSteel'), item('galacticraftcore:basic_block_core', 4)],
  [null, null, null]])

// Герметичный МЕ кабель
crafting.addShaped("gc/sealable_something_2", item('galacticraftcore:enclosed', 13), [
  [null, null, null],
  [item('galacticraftcore:basic_block_core', 4), ore('ae2.cable.glass'), item('galacticraftcore:basic_block_core', 4)],
  [null, null, null]])

// Герметичный кабель
crafting.addShaped("gc/sealable_something_3", item('galacticraftcore:enclosed', 14), [
  [null, null, null],
  [item('galacticraftcore:basic_block_core', 4), metaitem('cableGtDoubleAluminium'), item('galacticraftcore:basic_block_core', 4)],
  [null, null, null]])

// Герметичный толстый кабель
crafting.addShaped("gc/sealable_something_4", item('galacticraftcore:enclosed:15'), [
  [null, null, null],
  [item('galacticraftcore:basic_block_core', 4), metaitem('cableGtOctalAluminium'), item('galacticraftcore:basic_block_core', 4)],
  [null, null, null]])


// Антена связи
crafting.addShaped("gc/machine/dishbase", item('galacticraftcore:dishbase'), [
  [metaitem('plateDenseStainlessSteel'), item('galacticraftcore:basic_item:19'), metaitem('plateDenseStainlessSteel')],
  [null, metaitem('plateDenseStainlessSteel'), null],
  [ore('circuitIv'), metaitem('hull.ev'), ore('circuitIv')]])

// Световые панели
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(1)
  .inputs(
    metaitem('plateDenseBlackSteel'),
    item('galacticraftcore:glowstone_torch'))
  .fluidInputs(fluid('glass') * 432)
  .outputs(item('galacticraftcore:panel_lighting'))
  .duration(20).EUt(58).buildAndRegister()
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(2)
  .inputs(
    metaitem('plateDenseBlackSteel'),
    item('galacticraftcore:glowstone_torch'))
  .fluidInputs(fluid('glass') * 432)
  .outputs(item('galacticraftcore:panel_lighting', 1))
  .duration(20).EUt(58).buildAndRegister()
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(3)
  .inputs(
    metaitem('plateDenseBlackSteel'),
    item('galacticraftcore:glowstone_torch'))
  .fluidInputs(fluid('glass') * 432)
  .outputs(item('galacticraftcore:panel_lighting', 2))
  .duration(20).EUt(58).buildAndRegister()
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(4)
  .inputs(
    metaitem('plateDenseBlackSteel'),
    item('galacticraftcore:glowstone_torch'))
  .fluidInputs(fluid('glass') * 432)
  .outputs(item('galacticraftcore:panel_lighting', 3))
  .duration(20).EUt(58).buildAndRegister()
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(5)
  .inputs(
    metaitem('plateDenseBlackSteel'),
    item('galacticraftcore:glowstone_torch'))
  .fluidInputs(fluid('glass') * 432)
  .outputs(item('galacticraftcore:panel_lighting', 4))
  .duration(20).EUt(58).buildAndRegister()

// Светофакел
crafting.addShapeless("gc/glowstone_torch", item('galacticraftcore:glowstone_torch') * 2, [item('minecraft:torch'), item('minecraft:glowstone_dust')])

// Подруливающее устройство
crafting.addShaped("gc/machine/spin_thruster", item('galacticraftcore:spin_thruster'), [
  [item('galacticraftcore:oil_canister_partial', 1), ore('circuitIv'), item('galacticraftcore:engine')],
  [metaitem('plateDenseMeteoricIron'), item('gregtech:metal_casing', 7), metaitem('plateDenseMeteoricIron')],
  [metaitem('wireGtDoubleElectrum'), metaitem('wireGtDoubleElectrum'), metaitem('wireGtDoubleElectrum')]])

// Экран просмотра
crafting.addShaped("gc/machine/view_screen", item('galacticraftcore:view_screen'), [
  [metaitem('plateDenseBlackSteel'), ore('circuitLv'), metaitem('plateDenseBlackSteel')],
  [ore('circuitLv'), ore('blockGlass'), ore('circuitLv')],
  [metaitem('plateDenseBlackSteel'), ore('circuitLv'), metaitem('plateDenseBlackSteel')]])

// Телеметрический блок
crafting.addShaped("gc/machine/telemetry", item('galacticraftcore:telemetry'), [
  [metaitem('sensor.hv'), metaitem('cableGtDoubleGold'), ore('circuitHv')],
  [item('appliedenergistics2:wireless_access_point'), metaitem('hull.ev'), item('appliedenergistics2:wireless_access_point')],
  [metaitem('plateDenseStainlessSteel'), item('galacticraftcore:basic_item:19'), metaitem('plateDenseStainlessSteel')]])

// Дуговая лампа
crafting.addShaped("gc/arclamp", item('galacticraftcore:arclamp'), [
  [metaitem('plateDesh'), item('minecraft:glowstone_dust'), metaitem('plateDesh')],
  [item('minecraft:glowstone_dust'), item('galacticraftplanets:atomic_battery'), item('minecraft:glowstone_dust')],
  [metaitem('plateDesh'), item('minecraft:glowstone_dust'), metaitem('plateDesh')]])

// Гидравлический подьемник
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('plateDenseTungstenSteel') * 16,
    metaitem('electric.piston.iv') * 4,
    metaitem('plateLead') * 6)
  .fluidInputs(fluid('glowstone') * 432)
  .outputs(item('galacticraftcore:platform'))
  .duration(1000).EUt(1012).buildAndRegister()

// // Oxygen Mask
// crafting.addShaped("gc/oxygen_mask", item('galacticraftcore:oxygen_mask'), [
//    [item('minecraft:glass_pane'), metaitem('lensGlass'), item('minecraft:glass_pane')],
//    [item('minecraft:glass_pane'), item('extraplanets:tier1_un_prepared_space_suit_helmet'), item('minecraft:glass_pane')],
//    [metaitem('plateDenseSteel'), metaitem('pipeTinyFluidStainlessSteel'), metaitem('plateDenseSteel')]])

// Oxygen Gear
crafting.addShaped("gc/oxygen_gear", item('galacticraftcore:oxygen_gear'), [
  [metaitem('plateAluminium'), item('galacticraftcore:air_vent'), metaitem('plateAluminium')],
  [metaitem('large_fluid_cell.stainless_steel'), item('galacticraftcore:oxygen_concentrator'), metaitem('large_fluid_cell.stainless_steel')],
  [metaitem('pipeTinyFluidStainlessSteel'), item('galacticraftcore:air_fan'), metaitem('pipeTinyFluidStainlessSteel')]])

// Сенсорные линза
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('plateDenseMeteoricIron'),
    metaitem('lensNetherStar'))
  .fluidInputs(fluid('redstone') * 632)
  .outputs(item('galacticraftcore:sensor_lens'))
  .duration(1000).EUt(2012).buildAndRegister()

// Сенсорные очки
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    item('galacticraftcore:sensor_lens') * 2,
    metaitem('sensor.iv'),
    metaitem('prospector.hv') * 2,
    metaitem('plateMeteoricIron'),
    metaitem('screwDiamond') * 2)
  .fluidInputs(fluid('redstone') * 632)
  .outputs(item('galacticraftcore:sensor_glasses'))
  .duration(1000).EUt(4012).buildAndRegister()

// Воздушный клапан
crafting.addShaped("gc/air_vent", item('galacticraftcore:air_vent'), [
  [item('galacticraftcore:grating'), metaitem('plateDenseTin'), item('galacticraftcore:grating')],
  [metaitem('plateDenseTin'), metaitem('plateDenseSteel'), metaitem('plateDenseTin')],
  [item('galacticraftcore:grating'), metaitem('plateDenseTin'), item('galacticraftcore:grating')]])

// Воздушный ротор
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('plateDenseSteel') * 4,
    metaitem('ringStainlessSteel'),
    metaitem('screwStainlessSteel'))
  .fluidInputs(fluid('styrene_butadiene_rubber') * 632)
  .outputs(item('galacticraftcore:air_fan'))
  .duration(100).EUt(400).buildAndRegister()

// Воздушный концентратор
crafting.addShaped("gc/oxygen_concentrator", item('galacticraftcore:oxygen_concentrator'), [
  [metaitem('plateDenseBlackSteel'), ore('circuitMv'), metaitem('plateDenseBlackSteel')],
  [metaitem('plateDenseTin'), item('galacticraftcore:canister'), metaitem('plateDenseTin')],
  [metaitem('plateDenseBlackSteel'), item('galacticraftcore:air_vent'), metaitem('plateDenseBlackSteel')]])

// Шест
crafting.addShaped("gc/steel_pole", item('galacticraftcore:steel_pole') * 2, [
  [null, metaitem('plateDenseSteel'), null],
  [null, metaitem('plateDenseSteel'), ore('toolHammer').transform(Function.setToolDamage)],
  [null, metaitem('plateDenseSteel'), null]])

// Жидкостная капсула
crafting.addShaped("gc/oil_canister", item('galacticraftcore:oil_canister_partial:1001'), [
  [metaitem('plateDenseAluminium'), metaitem('plateDenseBlackSteel'), metaitem('plateDenseAluminium')],
  [metaitem('plateDenseAluminium'), ore('blockGlass'), metaitem('plateDenseAluminium')],
  [metaitem('plateDenseAluminium'), item('galacticraftcore:canister'), metaitem('plateDenseAluminium')]])

// Частотный модуль
crafting.addShaped("gc/freq_module", item('galacticraftcore:basic_item:19'), [
  [metaitem('plateLead'), metaitem('emitter.hv'), metaitem('plateLead')],
  [metaitem('sensor.hv'), metaitem('cableGtSingleRedAlloy'), ore('circuitLv')],
  [ore('componentResistor'), metaitem('wireless'), ore('componentResistor')]])

// Тепловой контроллер
crafting.addShaped("gc/thermal_controller", item('galacticraftcore:basic_item:20'), [
  [metaitem('cableGtDoubleElectrum'), item('galacticraftcore:air_vent'), metaitem('cableGtDoubleElectrum')],
  [metaitem('plateDenseBronze'), metaitem('plateDenseSteel'), metaitem('plateDenseBronze')],
  [metaitem('plateDenseTungstenSteel'), ore('circuitIv'), metaitem('plateDenseTungstenSteel')]])

// Еда
// Фруктовая кансерва
mods.gregtech.canner.recipeBuilder()
  .inputs(item('galacticraftcore:canister'), ore('categoryFruit') * 2)
  .outputs(item('galacticraftcore:food'))
  .duration(460).EUt(2).buildAndRegister()

// Морковная кансерва
mods.gregtech.canner.recipeBuilder()
  .inputs(item('galacticraftcore:canister'), item('tfc:food/carrot') * 2)
  .outputs(item('galacticraftcore:food', 1))
  .duration(460).EUt(2).buildAndRegister()

// Арбузная кансерва
mods.gregtech.canner.recipeBuilder()
  .inputs(item('galacticraftcore:canister'), item('firmalife:melon') * 2)
  .outputs(item('galacticraftcore:food', 2))
  .duration(460).EUt(2).buildAndRegister()

// Картофельная кансерва
mods.gregtech.canner.recipeBuilder()
  .inputs(item('galacticraftcore:canister'), item('tfc:food/potato') * 2)
  .outputs(item('galacticraftcore:food', 3))
  .duration(460).EUt(2).buildAndRegister()

// Мясная кансерва
mods.gregtech.canner.recipeBuilder()
  .inputs(item('galacticraftcore:canister'), ore('categoryMeat') * 2)
  .outputs(item('galacticraftcore:food:9'))
  .duration(460).EUt(2).buildAndRegister()


// Пустая схема
crafting.addShaped("gc/schematic_blank", item('tfg:meta_item', 46), [
  [null, ore('paper'), null],
  [null, metaitem('plateStainlessSteel'), ore('toolHammer').transform(Function.setToolDamage)],
  [null, ore('paper'), null]])

// Канистра из олова
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(metaitem('plateDenseTin') * 3)
  .outputs(item('galacticraftcore:canister'))
  .duration(100).EUt(48).buildAndRegister()


// Посадочный модуль
// T1
crafting.addShaped("gc/lander_tier1", item('tfg:meta_item', 47),
  [[item('galacticraftcore:basic_item:19'), metaitem('plateDenseSteel'), metaitem('plateDenseSteel')],
   [metaitem('plateDenseSteel'), item('galacticraftcore:buggymat', 1), metaitem('plateDenseCopper')],
   [item('galacticraftcore:steel_pole'), item('galacticraftcore:engine'), item('galacticraftcore:steel_pole')]])
// Т2
crafting.addShaped("gc/lander_tier2", item('tfg:meta_item', 48),
  [[metaitem('foilGold'), ore('gc.parachute'), metaitem('foilGold')],
   [item('galacticraftcore:canvas'), item('tfg:meta_item', 47), item('galacticraftcore:canvas')],
   [metaitem('foilGold'), item('galacticraftcore:canvas'), metaitem('foilGold')]])
// T3
crafting.addShaped("gc/lander_tier3", item('tfg:meta_item', 49),
  [[metaitem('plateDenseBlackSteel'), metaitem('crate.stainless_steel'), metaitem('plateDenseBlackSteel')],
   [item('galacticraftcore:steel_pole'), item('tfg:meta_item', 48), item('galacticraftcore:steel_pole')],
   [metaitem('plateDenseBlackSteel'), metaitem('plateBlackSteel'), metaitem('plateDenseBlackSteel')]])

// Парашюты
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(1)
  .inputs(
    item('galacticraftcore:canvas') * 6,
    ore('string') * 4)
  .outputs(item('galacticraftcore:parachute'))
  .duration(20).EUt(480).buildAndRegister()
mods.gregtech.chemical_bath.recipeBuilder()
  .inputs(ore('gc.parachute.colors'))
  .fluidInputs(fluid('chlorine') * 144)
  .outputs(item('galacticraftcore:parachute'))
  .duration(8).EUt(480).buildAndRegister()
for (int i = 0; i < 16; i++) {
  mods.gregtech.chemical_bath.recipeBuilder()
    .inputs(ore('gc.parachute'))
    .fluidInputs(Minecraft.colorLiquid[i] * 18)
    .outputs(Galacticraft.gcParachute[i])
    .duration(20).EUt(7).buildAndRegister()
}

// Базовая солнечная панель
crafting.addShaped("gc/machine/solar_panel/base", item('galacticraftcore:solar'), [
  [metaitem('cover.solar.panel.mv'), metaitem('cover.solar.panel.mv'), metaitem('cover.solar.panel.mv')],
  [metaitem('gearSmallAluminium'), metaitem('stickAluminium'), metaitem('gearSmallAluminium')],
  [metaitem('electric.piston.mv'), metaitem('hull.ev'), metaitem('cableGtSingleGold')]])

// Улучшенная солнечная панель
crafting.addShaped("gc/machine/solar_panel/advanced", item('galacticraftcore:solar:4'), [
  [metaitem('cover.solar.panel.ev'), metaitem('cover.solar.panel.ev'), metaitem('cover.solar.panel.ev')],
  [metaitem('gearSmallTitanium'), metaitem('stickTitanium'), metaitem('gearSmallTitanium')],
  [metaitem('electric.piston.ev'), item('galacticraftcore:solar'), metaitem('cableGtDoublePlatinum')]])


// Загручкик топлива
crafting.addShaped("gc/machine/fuel_loader/basic", item('galacticraftcore:fuel_loader'), [
  [metaitem('plateDenseAluminium'), ore('circuitEv'), metaitem('plateDenseAluminium')],
  [metaitem('drum.stainless_steel'), metaitem('hull.ev'), metaitem('electric.pump.ev')],
  [metaitem('pipeSmallFluidStainlessSteel'), metaitem('pipeSmallFluidStainlessSteel'), metaitem('pipeSmallFluidStainlessSteel')]])


// Кислородный компрессор
crafting.addShaped("gc/machine/oxygen_decompressor/basic", item('galacticraftcore:oxygen_compressor:4'), [
  [ore('circuitEv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.ev')],
  [metaitem('pipeSmallFluidStainlessSteel'), metaitem('hull.ev'), metaitem('pipeSmallFluidStainlessSteel')],
  [metaitem('drum.stainless_steel'), metaitem('plateDenseAluminium'), metaitem('electric.pump.ev')]])


// Кислородный декомпрессор
crafting.addShaped("gc/machine/oxygen_compressor/basic", item('galacticraftcore:oxygen_compressor'), [
  [metaitem('electric.pump.hv'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')],
  [metaitem('pipeSmallFluidStainlessSteel'), metaitem('hull.ev'), metaitem('pipeSmallFluidStainlessSteel')],
  [metaitem('electric.pump.hv'), metaitem('plateDenseAluminium'), metaitem('compressor.hv')]])

// Распределитель кислородного пузыря
crafting.addShaped("gc/machine/oxygen_buble_distributor", item('galacticraftcore:distributor'), [
  [metaitem('sensor.hv'), ore('circuitHv'), metaitem('sensor.hv')],
  [item('galacticraftcore:air_vent'), item('galacticraftcore:air_fan'), item('galacticraftcore:air_vent')],
  [metaitem('field.generator.ev'), item('galacticraftcore:oxygen_concentrator'), metaitem('field.generator.ev')]])

// Кислородный герметик
crafting.addShaped("gc/machine/oxygen_sealer", item('galacticraftcore:sealer'), [
  [metaitem('plateDenseAluminium'), ore('circuitHv'), metaitem('plateDenseAluminium')],
  [item('galacticraftcore:air_vent'), item('galacticraftcore:air_fan'), item('galacticraftcore:air_vent')],
  [metaitem('electric.pump.mv'), item('galacticraftcore:oxygen_concentrator'), metaitem('electric.pump.mv')]])

// Кислородный детектор
crafting.addShaped("gc/machine/oxygen_detector", item('galacticraftcore:oxygen_detector'), [
  [metaitem('plateDenseAluminium'), metaitem('sensor.hv'), metaitem('plateDenseAluminium')],
  [item('galacticraftcore:air_vent'), ore('circuitMv'), item('galacticraftcore:air_vent')],
  [item('projectred-transmission:wire'), metaitem('plateDenseAluminium'), item('projectred-transmission:wire')]])

// Грузовой загрузчик
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('plateDenseAluminium') * 2,
    metaitem('plateDenseSteel') * 5,
    ore('gtce.block.crate') * 6,
    metaitem('robot.arm.hv') * 2)
  .outputs(item('galacticraftcore:cargo'))
  .duration(1000).EUt(512).buildAndRegister()

// Грузовой разгрузчик
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(8)
  .inputs(
    metaitem('plateDenseAluminium') * 2,
    metaitem('plateDenseSteel') * 5,
    ore('gtce.block.crate') * 6,
    metaitem('robot.arm.hv') * 2)
  .outputs(item('galacticraftcore:cargo:4'))
  .duration(1000).EUt(512).buildAndRegister()

// Хроматический аппликатор
crafting.addShaped("gc/machine/chromatic_applicator", item('galacticraftcore:machine3'), [
  [ore('dyeOrange'), ore('dyeRed'), ore('dyeMagenta')],
  [ore('dyeYellow'), metaitem('hull.ev'), ore('dyeBlue')],
  [ore('dyeLime'), ore('dyeGreen'), ore('dyeCyan')]])

// Oxygen Collector
crafting.addShaped("gc/machine/oxygen_collector", item('galacticraftcore:collector'), [
  [item('galacticraftcore:air_vent'), ore('circuitEv'), item('galacticraftcore:air_vent')],
  [item('galacticraftcore:air_fan'), metaitem('hull.ev'), item('galacticraftcore:air_fan')],
  [metaitem('drum.stainless_steel'), item('galacticraftcore:oxygen_concentrator'), metaitem('drum.stainless_steel')]])


// --- Атмосфера
Function.GenerateRecipesForAir("moon", -28, 3, 5, 6)
// Air
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('moon_air') * 10000)
  .fluidOutputs(fluid('hydrogen') * 4700)
  .fluidOutputs(fluid('nitrogen') * 250)
  .duration(1600).EUt(512).buildAndRegister()
// Liquid Air
mods.gregtech.distillation_tower.recipeBuilder()
  .fluidInputs(fluid('moon_liquid_air') * 100000)
  .fluidOutputs(fluid('hydrogen') * 49700)
  .fluidOutputs(fluid('nitrogen') * 21000)
  .fluidOutputs(fluid('xenon') * 190)
  .duration(2000).EUt(1920).buildAndRegister()


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('galacticraftcore:basic_block_moon:5'), item('galacticraftcore:basic_block_moon:3'), item('galacticraftcore:basic_block_moon:4'), metaitem('dustStoneMoon'), 1, 1)

// Пыль луны
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneMoon') * 3)
  .chancedOutput(metaitem('dustSilicon'), 1200, 1200)
  .chancedOutput(metaitem('dustSmallAluminium'), 1100, 500)
  .chancedOutput(metaitem('dustSmallMagnesium'), 1150, 500)
  .chancedOutput(metaitem('dustSmallOlivine'), 950, 500)
  .chancedOutput(metaitem('dustSmallSulfur'), 750, 350)
  .chancedOutput(metaitem('dustSmallMagnetite'), 650, 250)
  .fluidOutputs(fluid('helium_3') * 1)
  .duration(1250).EUt(256).buildAndRegister()

// Осколок метеоритного железа
mods.gregtech.macerator.recipeBuilder()
  .inputs(item('galacticraftcore:basic_block_core', 12))
  .outputs(item('galacticraftcore:meteoric_iron_raw') * 4)
  .chancedOutput(item('galacticraftcore:meteoric_iron_raw'), 2500, 500)
  .duration(760).EUt(176).buildAndRegister()

// Пыль метеоритного железа
mods.gregtech.macerator.recipeBuilder()
  .inputs(item('galacticraftcore:meteoric_iron_raw'))
  .outputs(metaitem('dustSmallMeteoricIron') * 3)
  .duration(360).EUt(176).buildAndRegister()

// Слиток метеоритного железа
mods.gregtech.electric_blast_furnace.recipeBuilder()
  .circuitMeta(9)
  .inputs(metaitem('dustMeteoricIron'))
  .blastFurnaceTemp(1700)
  .outputs(item('galacticraftcore:item_basic_moon'))
  .duration(370).EUt(380).buildAndRegister()

// Плотная пластина метеоритного железа
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(item('galacticraftcore:item_basic_moon') * 9)
  .outputs(metaitem('plateDenseMeteoricIron'))
  .duration(100).EUt(48).buildAndRegister()
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(metaitem('plateMeteoricIron') * 9)
  .outputs(metaitem('plateDenseMeteoricIron'))
  .duration(100).EUt(48).buildAndRegister()

