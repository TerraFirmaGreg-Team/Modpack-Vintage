import gregtech.api.metatileentity.multiblock.CleanroomType
import postInit.Utility.Array.ItemArray


// --- Добавление рецептов

// item('galacticraftcore:oil_canister_partial:1001').maxStackSize = 16

// Еда из GC
//ItemRegistry.registerFood(item('galacticraftcore:food'), 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0)
//ItemRegistry.registerFood(item('galacticraftcore:food', 1), 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0)
//ItemRegistry.registerFood(item('galacticraftcore:food', 2), 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0)
//ItemRegistry.registerFood(item('galacticraftcore:food', 3), 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0)
//ItemRegistry.registerFood(item('galacticraftcore:food:9'), 4, 0.6, 0.9, 0.5, 0, 0, 0, 1.0, 0)


// Взлетная площадка 
crafting.addShaped("tfg/gc/landing_pad/rocket", item('galacticraftcore:landing_pad') * 9, [
   [null, null, null],
   [metaitem('plateDenseIron'), metaitem('plateDenseIron'), metaitem('plateDenseIron')],
   [ore('blockIronAny'), ore('blockIronAny'), ore('blockIronAny')]])

// Площадка для багги
crafting.addShaped("tfg/gc/landing_pad/buggy", item('galacticraftcore:landing_pad', 1) * 9, [
   [null, null, null],
   [metaitem('plateDenseBlackSteel'), metaitem('plateDenseBlackSteel'), metaitem('plateDenseBlackSteel')],
   [metaitem('blockSteel'), metaitem('blockSteel'), metaitem('blockSteel')]])

// Декоративный оловянный блок
crafting.addShaped("tfg/gc/decor_block_tin_1", item('galacticraftcore:basic_block_core', 3), [
   [ore('stone'), ore('stone'), null],
   [ore('stone'), ore('stone'), metaitem('plateDenseTin')],
   [null, null, null]])
crafting.addShaped("tfg/gc/decor_block_tin_2", item('galacticraftcore:basic_block_core', 4), [
   [ore('stone'), ore('stone'), null],
   [ore('stone'), ore('stone'), null],
   [null, metaitem('plateDenseTin'), null]])

// Каркас воздушного шлюза
crafting.addShaped("tfg/gc/airlock_frame", item('galacticraftcore:air_lock_frame') * 2, [
   [metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium')],
   [metaitem('plateDenseSteel'), item('galacticraftcore:oxygen_concentrator'), metaitem('plateDenseSteel')],
   [metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium'), metaitem('plateDenseAluminium')]])

// Контроллер воздушного шлюза
crafting.addShaped("tfg/gc/machine/airlock_frame_controller", item('galacticraftcore:air_lock_frame', 1), [
   [metaitem('plateDenseStainlessSteel'), metaitem('cableGtDoubleGold'), metaitem('plateDenseStainlessSteel')],
   [ore('circuitHv'), metaitem('hull.ev'), ore('circuitHv')],
   [metaitem('plateDenseStainlessSteel'), metaitem('cableGtDoubleGold'), metaitem('plateDenseStainlessSteel')]])

// Вакумное стекло
forming_press.recipeBuilder()
   .inputs(metaitem('plateDenseAluminium') * 4, ore('blockGlass') * 5)
   .outputs(item('galacticraftcore:space_glass_strong') * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()
forming_press.recipeBuilder()
   .inputs(
      item('galacticraftcore:basic_block_core', 4) * 4,
      item('galacticraftcore:space_glass_strong') * 5)
   .outputs(item('galacticraftcore:space_glass_strong', 1) * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()
forming_press.recipeBuilder()
   .inputs(metaitem('ingotTin') * 4, ore('blockGlass') * 5)
   .outputs(item('galacticraftcore:space_glass_vanilla') * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()
forming_press.recipeBuilder()
   .inputs(item('galacticraftcore:basic_block_core', 4) * 4, item('galacticraftcore:space_glass_vanilla') * 5)
   .outputs(item('galacticraftcore:space_glass_vanilla', 1) * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()
forming_press.recipeBuilder()
   .inputs(metaitem('ingotAluminium') * 4, ore('blockGlass') * 5)
   .outputs(item('galacticraftcore:space_glass_clear') * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()
forming_press.recipeBuilder()
   .inputs(item('galacticraftcore:basic_block_core', 4) * 4, item('galacticraftcore:space_glass_clear') * 5)
   .outputs(item('galacticraftcore:space_glass_clear', 1) * 5)
   .cleanroom(CleanroomType.CLEANROOM)
   .duration(300).EUt(480).buildAndRegister()

// Магнитный верстак
crafting.addShaped("tfg/gc/magnetic_table", item('galacticraftcore:magnetic_table'), [
   [ore('workbench'), metaitem('plateDenseIron'), null],
   [null, null, null],
   [null, null, null]])

// Герметичная жидкостная труба
crafting.addShaped("tfg/gc/sealable_something_1", item('galacticraftcore:enclosed', 1), [
   [null, null, null],
   [item('galacticraftcore:basic_block_core', 4), metaitem('pipeSmallFluidStainlessSteel'), item('galacticraftcore:basic_block_core', 4)],
   [null, null, null]])

// Герметичный МЕ кабель
crafting.addShaped("tfg/gc/sealable_something_2", item('galacticraftcore:enclosed', 13), [
   [null, null, null],
   [item('galacticraftcore:basic_block_core', 4), ore('ae2.cable.glass'), item('galacticraftcore:basic_block_core', 4)],
   [null, null, null]])

// Герметичный кабель
crafting.addShaped("tfg/gc/sealable_something_3", item('galacticraftcore:enclosed', 14), [
   [null, null, null],
   [item('galacticraftcore:basic_block_core', 4), metaitem('cableGtDoubleAluminium'), item('galacticraftcore:basic_block_core', 4)],
   [null, null, null]])

// Герметичный толстый кабель
crafting.addShaped("tfg/gc/sealable_something_4", item('galacticraftcore:enclosed:15'), [
   [null, null, null],
   [item('galacticraftcore:basic_block_core', 4), metaitem('cableGtOctalAluminium'), item('galacticraftcore:basic_block_core', 4)],
   [null, null, null]])


// Антена связи
crafting.addShaped("tfg/gc/machine/dishbase", item('galacticraftcore:dishbase'), [
   [metaitem('plateDenseStainlessSteel'), item('galacticraftcore:basic_item:19'), metaitem('plateDenseStainlessSteel')],
   [null, metaitem('plateDenseStainlessSteel'), null],
   [ore('circuitIv'), metaitem('hull.ev'), ore('circuitIv')]])

// Световые панели
assembler.recipeBuilder()
   .circuitMeta(1)
   .inputs(
      metaitem('plateDenseBlackSteel'),
      item('galacticraftcore:glowstone_torch'))
   .fluidInputs(fluid('glass') * 432)
   .outputs(item('galacticraftcore:panel_lighting'))
   .duration(20).EUt(58).buildAndRegister()
assembler.recipeBuilder()
   .circuitMeta(2)
   .inputs(
      metaitem('plateDenseBlackSteel'),
      item('galacticraftcore:glowstone_torch'))
   .fluidInputs(fluid('glass') * 432)
   .outputs(item('galacticraftcore:panel_lighting', 1))
   .duration(20).EUt(58).buildAndRegister()
assembler.recipeBuilder()
   .circuitMeta(3)
   .inputs(
      metaitem('plateDenseBlackSteel'),
      item('galacticraftcore:glowstone_torch'))
   .fluidInputs(fluid('glass') * 432)
   .outputs(item('galacticraftcore:panel_lighting', 2))
   .duration(20).EUt(58).buildAndRegister()
assembler.recipeBuilder()
   .circuitMeta(4)
   .inputs(
      metaitem('plateDenseBlackSteel'),
      item('galacticraftcore:glowstone_torch'))
   .fluidInputs(fluid('glass') * 432)
   .outputs(item('galacticraftcore:panel_lighting', 3))
   .duration(20).EUt(58).buildAndRegister()
assembler.recipeBuilder()
   .circuitMeta(5)
   .inputs(
      metaitem('plateDenseBlackSteel'),
      item('galacticraftcore:glowstone_torch'))
   .fluidInputs(fluid('glass') * 432)
   .outputs(item('galacticraftcore:panel_lighting', 4))
   .duration(20).EUt(58).buildAndRegister()

// Светофакел
crafting.addShapeless("tfg/gc/glowstone_torch", item('galacticraftcore:glowstone_torch') * 2, [item('minecraft:torch'), item('minecraft:glowstone_dust')])

// Подруливающее устройство
crafting.addShaped("tfg/gc/machine/spin_thruster", item('galacticraftcore:spin_thruster'), [
   [item('galacticraftcore:oil_canister_partial', 1), ore('circuitIv'), item('galacticraftcore:engine')],
   [metaitem('plateDenseMeteoricIron'), item('gregtech:metal_casing', 7), metaitem('plateDenseMeteoricIron')],
   [metaitem('wireGtDoubleElectrum'), metaitem('wireGtDoubleElectrum'), metaitem('wireGtDoubleElectrum')]])

// Экран просмотра
crafting.addShaped("tfg/gc/machine/view_screen", item('galacticraftcore:view_screen'), [
   [metaitem('plateDenseBlackSteel'), ore('circuitLv'), metaitem('plateDenseBlackSteel')],
   [ore('circuitLv'), ore('blockGlass'), ore('circuitLv')],
   [metaitem('plateDenseBlackSteel'), ore('circuitLv'), metaitem('plateDenseBlackSteel')]])

// Телеметрический блок
crafting.addShaped("tfg/gc/machine/telemetry", item('galacticraftcore:telemetry'), [
   [metaitem('sensor.hv'), metaitem('cableGtDoubleGold'), ore('circuitHv')],
   [item('appliedenergistics2:wireless_access_point'), metaitem('hull.ev'), item('appliedenergistics2:wireless_access_point')],
   [metaitem('plateDenseStainlessSteel'), item('galacticraftcore:basic_item:19'), metaitem('plateDenseStainlessSteel')]])

// Дуговая лампа
crafting.addShaped("tfg/gc/arclamp", item('galacticraftcore:arclamp'), [
   [metaitem('plateDesh'), item('minecraft:glowstone_dust'), metaitem('plateDesh')],
   [item('minecraft:glowstone_dust'), item('galacticraftplanets:atomic_battery'), item('minecraft:glowstone_dust')],
   [metaitem('plateDesh'), item('minecraft:glowstone_dust'), metaitem('plateDesh')]])

// Гидравлический подьемник
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('plateDenseTungstenSteel') * 16, 
      metaitem('electric.piston.iv') * 4, 
      metaitem('plateLead') * 6)
   .fluidInputs(fluid('glowstone') * 432)
   .outputs(item('galacticraftcore:platform'))
   .duration(1000).EUt(1012).buildAndRegister()

// Oxygen Mask
crafting.addShaped("tfg/gc/oxygen_mask", item('galacticraftcore:oxygen_mask'), [
   [item('minecraft:glass_pane'), metaitem('lensGlass'), item('minecraft:glass_pane')],
   [item('minecraft:glass_pane'), item('extraplanets:tier1_un_prepared_space_suit_helmet'), item('minecraft:glass_pane')],
   [metaitem('plateDenseSteel'), metaitem('pipeTinyFluidStainlessSteel'), metaitem('plateDenseSteel')]])

// Oxygen Gear
crafting.addShaped("tfg/gc/oxygen_gear", item('galacticraftcore:oxygen_gear'), [
   [metaitem('plateAluminium'), item('galacticraftcore:air_vent'), metaitem('plateAluminium')],
   [metaitem('large_fluid_cell.stainless_steel'), item('galacticraftcore:oxygen_concentrator'), metaitem('large_fluid_cell.stainless_steel')],
   [metaitem('pipeTinyFluidStainlessSteel'), item('galacticraftcore:air_fan'), metaitem('pipeTinyFluidStainlessSteel')]])

// Сенсорные линза
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('plateDenseMeteoricIron'), 
      metaitem('lensNetherStar'))
   .fluidInputs(fluid('redstone') * 632)
   .outputs(item('galacticraftcore:sensor_lens'))
   .duration(1000).EUt(2012).buildAndRegister()

// Сенсорные очки
assembler.recipeBuilder()
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
crafting.addShaped("tfg/gc/air_vent", item('galacticraftcore:air_vent'), [
   [item('galacticraftcore:grating'), metaitem('plateDenseTin'), item('galacticraftcore:grating')],
   [metaitem('plateDenseTin'), metaitem('plateDenseSteel'), metaitem('plateDenseTin')],
   [item('galacticraftcore:grating'), metaitem('plateDenseTin'), item('galacticraftcore:grating')]])

// Воздушный ротор
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('plateDenseSteel') * 4, 
      metaitem('ringStainlessSteel'),
      metaitem('screwStainlessSteel'))
   .fluidInputs(fluid('styrene_butadiene_rubber') * 632)
   .outputs(item('galacticraftcore:air_fan'))
   .duration(100).EUt(400).buildAndRegister()

// Воздушный концентратор
crafting.addShaped("tfg/gc/oxygen_concentrator", item('galacticraftcore:oxygen_concentrator'), [
   [metaitem('plateDenseBlackSteel'), ore('circuitMv'), metaitem('plateDenseBlackSteel')],
   [metaitem('plateDenseTin'), item('galacticraftcore:canister'), metaitem('plateDenseTin')],
   [metaitem('plateDenseBlackSteel'), item('galacticraftcore:air_vent'), metaitem('plateDenseBlackSteel')]])

// Шест
crafting.addShaped("tfg/gc/steel_pole", item('galacticraftcore:steel_pole') * 2, [
   [null, metaitem('plateDenseSteel'), null],
   [null, metaitem('plateDenseSteel'), ore('toolHammer')],
   [null, metaitem('plateDenseSteel'), null]])

// Жидкостная капсула
crafting.addShaped("tfg/gc/oil_canister", item('galacticraftcore:oil_canister_partial:1001'), [
   [metaitem('plateDenseAluminium'), metaitem('plateDenseBlackSteel'), metaitem('plateDenseAluminium')],
   [metaitem('plateDenseAluminium'), ore('blockGlass'), metaitem('plateDenseAluminium')],
   [metaitem('plateDenseAluminium'), item('galacticraftcore:canister'), metaitem('plateDenseAluminium')]])

// Частотный модуль
crafting.addShaped("tfg/gc/freq_module", item('galacticraftcore:basic_item:19'), [
   [metaitem('plateLead'), metaitem('emitter.hv'), metaitem('plateLead')],
   [metaitem('sensor.hv'), metaitem('cableGtSingleRedAlloy'), ore('circuitLv')],
   [ore('componentResistor'), metaitem('wireless'), ore('componentResistor')]])

// Тепловой контроллер
crafting.addShaped("tfg/gc/thermal_controller", item('galacticraftcore:basic_item:20'), [
   [metaitem('cableGtDoubleElectrum'), item('galacticraftcore:air_vent'), metaitem('cableGtDoubleElectrum')],
   [metaitem('plateDenseBronze'), metaitem('plateDenseSteel'), metaitem('plateDenseBronze')],
   [metaitem('plateDenseTungstenSteel'), ore('circuitIv'), metaitem('plateDenseTungstenSteel')]])

// Еда
// Фруктовая кансерва
canner.recipeBuilder()
   .inputs(item('galacticraftcore:canister'), ore('categoryFruit') * 2)
   .outputs(item('galacticraftcore:food'))
   .duration(460).EUt(2).buildAndRegister()

// Морковная кансерва
canner.recipeBuilder()
   .inputs(item('galacticraftcore:canister'), item('tfc:food/carrot') * 2)
   .outputs(item('galacticraftcore:food', 1))
   .duration(460).EUt(2).buildAndRegister()

// Арбузная кансерва
canner.recipeBuilder()
   .inputs(item('galacticraftcore:canister'), item('firmalife:melon') * 2)
   .outputs(item('galacticraftcore:food', 2))
   .duration(460).EUt(2).buildAndRegister()

// Картофельная кансерва
canner.recipeBuilder()
   .inputs(item('galacticraftcore:canister'), item('tfc:food/potato') * 2)
   .outputs(item('galacticraftcore:food', 3))
   .duration(460).EUt(2).buildAndRegister()

// Мясная кансерва
canner.recipeBuilder()
   .inputs(item('galacticraftcore:canister'), ore('categoryMeat') * 2)
   .outputs(item('galacticraftcore:food:9'))
   .duration(460).EUt(2).buildAndRegister()

// Креокамера
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('plateDenseDesh') * 6, 
      ore('bed'),
      item('galacticraftplanets:item_basic_mars', 3),
      item('galacticraftcore:oxygen_concentrator') * 2,
      metaitem('electric.pump.hv'),
      metaitem('emitter.hv'),
      ore('circuitHv') * 2)
   .fluidInputs(fluid('styrene_butadiene_rubber') * 144)
   .outputs(item('galacticraftplanets:mars_machine', 4))
   .duration(100).EUt(480).buildAndRegister()

// Сумка для инвентаря слизи
crafting.addShaped("tfg/gc/slimeling_inventory_bag", item('galacticraftplanets:item_basic_mars', 4), [
   [ore('leather'), metaitem('plateDiamond'), ore('leather')],
   [ore('leather'), ore('slimeball'), ore('leather')],
   [null, metaitem('crate.aluminium'), null]])

// Лучевое ядро
crafting.addShaped("tfg/gc/solar_core", item('galacticraftplanets:item_basic_asteroids', 8), [
   [metaitem('foilRedAlloy'), metaitem('platePlatinum'), metaitem('foilRedAlloy')],
   [metaitem('platePlatinum'), item('galacticraftplanets:basic_item_venus', 2), metaitem('platePlatinum')],
   [metaitem('foilRedAlloy'), metaitem('platePlatinum'), metaitem('foilRedAlloy')]])

// Привод ориона
crafting.addShaped("tfg/gc/orion_drive", item('galacticraftplanets:orion_drive'), [
   [metaitem('plateDenseTitanium'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseTitanium')],
   [ore('circuitLuv'), item('opencomputers:storage', 4), ore('circuitLuv')],
   [metaitem('plateDenseSteel'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseSteel')]])

// Модуль солнечной батареи
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('cableGtDoubleAluminium') * 2, 
      item('galacticraftplanets:basic_item_venus', 5) * 3,
      ore('circuitLuv') * 2)
   .outputs(item('galacticraftplanets:solar_array_module'))
   .duration(100).EUt(1480).buildAndRegister()

// Панель солнечной батареи
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      metaitem('cover.solar.panel.luv') * 3, 
      metaitem('cableGtDoubleAluminium') * 3)
   .fluidInputs(fluid('glass') * 1000)
   .outputs(item('galacticraftplanets:basic_item_venus', 5) * 3)
   .duration(100).EUt(1480).buildAndRegister()

// Контролер солнечной батареи
assembler.recipeBuilder()
   .circuitMeta(7)
   .inputs(
      ore('circuitLuv') * 2,
      metaitem('plateDenseSteel') * 3, 
      metaitem('cableGtDoubleAluminium') * 3)
   .outputs(item('galacticraftplanets:solar_array_controller'))
   .duration(100).EUt(1480).buildAndRegister()

// Контроллер щита
crafting.addShaped("tfg/gc/shield_controller", item('galacticraftplanets:basic_item_venus'), [
   [ore('paneGlassBlack'), metaitem('stickNeodymiumMagnetic'), ore('paneGlassBlack')],
   [metaitem('wireGtSingleMercuryBariumCalciumCuprate'), metaitem('field.generator.luv'), metaitem('wireGtSingleMercuryBariumCalciumCuprate')],
   [ore('paneGlassBlack'), metaitem('stickNeodymiumMagnetic'), ore('paneGlassBlack')]])

// Пустая схема
crafting.addShaped("tfg/gc/schematic_blank", metaitem('schematic.blank'), [
   [null, ore('paper'), null],
   [null, item('littletiles:recipeadvanced'), ore('toolHammer')],
   [null, ore('paper'), null]])

// Радио-изотопное ядро
crafting.addShaped("tfg/gc/radioisotopic_core", item('galacticraftplanets:basic_item_venus', 2), [
   [metaitem('dustGraphite'), metaitem('neutron_reflector'), metaitem('dustGraphite')],
   [metaitem('stickUranium235'), metaitem('neutron_reflector'), metaitem('stickUranium235')],
   [metaitem('dustGraphite'), metaitem('neutron_reflector'), metaitem('dustGraphite')]])

// Атомная батарейка
crafting.addShaped("tfg/gc/atom_battery", item('galacticraftplanets:atomic_battery'), [
   [null, metaitem('plateInvar'), null],
   [null, item('galacticraftplanets:basic_item_venus', 2), null],
   [null, metaitem('large_fluid_cell.tungstensteel'), null]])

// Пешеходная дорожка
crafting.addShaped("tfg/gc/walkway", item('galacticraftplanets:walkway'), [
   [null, null, null],
   [metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium')],
   [metaitem('stickTitanium'), metaitem('plateDenseTitanium'), metaitem('stickTitanium')]])

// Пеш. дор с проводом
crafting.addShaped("tfg/gc/walkway/cable", item('galacticraftplanets:walkway', 1), [
   [item('galacticraftplanets:walkway'), metaitem('cableGtDoubleAluminium'), null],
   [metaitem('cableGtDoubleAluminium'), null, null],
   [null, null, null]])

// Пеш. дор с жид. трубой
crafting.addShaped("tfg/gc/walkway/fluid_pipe", item('galacticraftplanets:walkway', 2), [
   [item('galacticraftplanets:walkway'), metaitem('pipeTinyFluidStainlessSteel'), null],
   [metaitem('pipeTinyFluidStainlessSteel'), null, null],
   [null, null, null]])

// Маяк дефлектор
crafting.addShaped("tfg/gc/beam_reflector", item('galacticraftplanets:beam_reflector'), [
   [null, item('galacticraftplanets:item_basic_asteroids', 8), null],
   [ore('circuitMv'), metaitem('plateDenseTitanium'), item('minecraft:lever')],
   [metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium')]])

// Маяк ресивер
crafting.addShaped("tfg/gc/beam_reciever", item('galacticraftplanets:beam_receiver'), [
   [metaitem('plateBeryllium'), metaitem('plateDenseDesh'), metaitem('plateBeryllium')],
   [metaitem('plateDenseDesh'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseDesh')],
   [metaitem('plateBeryllium'), ore('circuitIv'), metaitem('plateBeryllium')]])

// Площадка телепортации
crafting.addShaped("tfg/gc/telepad_short", item('galacticraftplanets:telepad_short'), [
   [metaitem('plateDoubleTrinaquadalloy'), ore('circuitIv'), metaitem('plateDoubleTrinaquadalloy')],
   [metaitem('magic_energy_absorber'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('magic_energy_absorber')],
   [metaitem('plateDoubleTrinaquadalloy'), metaitem('plateDoubleTrinaquadalloy'), metaitem('plateDoubleTrinaquadalloy')]])

// Канистра из олова
bender.recipeBuilder()
   .circuitMeta(9)
   .inputs(metaitem('plateDenseTin') * 3)
   .outputs(item('galacticraftcore:canister'))
   .duration(100).EUt(48).buildAndRegister()


// Крюк
crafting.addShaped("tfg/gc/grapple", item('galacticraftplanets:grapple'), [
   [null, null, ore('string')],
   [ore('stickIronAny'), ore('string'), null],
   [ore('gearIronAny'), ore('stickIronAny'), null]])

// Посадочный модуль
// T1
crafting.addShaped("tfg/gc/lander_tier1", metaitem('lander.tier.1'),
   [[item('galacticraftcore:basic_item:19'), metaitem('plateDenseSteel'), metaitem('plateDenseSteel')],
   [metaitem('plateDenseSteel'), item('galacticraftcore:buggymat', 1), metaitem('plateDenseCopper')],
   [item('galacticraftcore:steel_pole'), item('galacticraftcore:engine'), item('galacticraftcore:steel_pole')]])
// Т2
crafting.addShaped("tfg/gc/lander_tier2", metaitem('lander.tier.2'),
   [[metaitem('foilGold'), ore('gc.parachute'), metaitem('foilGold')],
   [item('galacticraftcore:canvas'), metaitem('lander.tier.1'), item('galacticraftcore:canvas')],
   [metaitem('foilGold'), item('galacticraftcore:canvas'), metaitem('foilGold')]])
// T3
crafting.addShaped("tfg/gc/lander_tier3", metaitem('lander.tier.3'),
   [[metaitem('plateDenseBlackSteel'), metaitem('crate.stainless_steel'), metaitem('plateDenseBlackSteel')],
   [item('galacticraftcore:steel_pole'), metaitem('lander.tier.2'), item('galacticraftcore:steel_pole')],
   [metaitem('plateDenseBlackSteel'), metaitem('plateBlackSteel'), metaitem('plateDenseBlackSteel')]])

// Парашюты
assembler.recipeBuilder()
   .circuitMeta(1)
   .inputs(
      item('galacticraftcore:canvas') * 6,
      ore('string') * 4)
   .outputs(item('galacticraftcore:parachute'))
   .duration(20).EUt(480).buildAndRegister()
chemical_bath.recipeBuilder()
   .inputs(ore('gc.parachute.colors'))
   .fluidInputs(fluid('chlorine') * 144)
   .outputs(item('galacticraftcore:parachute'))
   .duration(8).EUt(480).buildAndRegister()
for (int i = 0; i < 16; i++) {
   chemical_bath.recipeBuilder()
      .inputs(ore('gc.parachute'))
      .fluidInputs(ItemArray.colorLiquid[i] * 18)
      .outputs(ItemArray.gcParachute[i])
      .duration(20).EUt(7).buildAndRegister()
}
