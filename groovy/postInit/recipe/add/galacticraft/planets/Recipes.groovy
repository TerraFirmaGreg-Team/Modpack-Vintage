// MODS_LOADED: galacticraftplanets
// --- Добавление рецептов

import classes.Function

// Креокамера
mods.gregtech.assembler.recipeBuilder()
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
crafting.addShaped("gc/slimeling_inventory_bag", item('galacticraftplanets:item_basic_mars', 4), [
  [ore('leather'), metaitem('plateDiamond'), ore('leather')],
  [ore('leather'), ore('slimeball'), ore('leather')],
  [null, metaitem('crate.aluminium'), null]])


// Лучевое ядро
crafting.addShaped("gc/solar_core", item('galacticraftplanets:item_basic_asteroids', 8), [
  [metaitem('foilRedAlloy'), metaitem('platePlatinum'), metaitem('foilRedAlloy')],
  [metaitem('platePlatinum'), item('galacticraftplanets:basic_item_venus', 2), metaitem('platePlatinum')],
  [metaitem('foilRedAlloy'), metaitem('platePlatinum'), metaitem('foilRedAlloy')]])

// Привод ориона
crafting.addShaped("gc/orion_drive", item('galacticraftplanets:orion_drive'), [
  [metaitem('plateDenseTitanium'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseTitanium')],
  [ore('circuitLuv'), item('opencomputers:storage', 4), ore('circuitLuv')],
  [metaitem('plateDenseSteel'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseSteel')]])


// Модуль солнечной батареи
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('cableGtDoubleAluminium') * 2,
    item('galacticraftplanets:basic_item_venus', 5) * 3,
    ore('circuitLuv') * 2)
  .outputs(item('galacticraftplanets:solar_array_module'))
  .duration(100).EUt(1480).buildAndRegister()

// Панель солнечной батареи
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    metaitem('cover.solar.panel.luv') * 3,
    metaitem('cableGtDoubleAluminium') * 3)
  .fluidInputs(fluid('glass') * 1000)
  .outputs(item('galacticraftplanets:basic_item_venus', 5) * 3)
  .duration(100).EUt(1480).buildAndRegister()

// Контролер солнечной батареи
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(7)
  .inputs(
    ore('circuitLuv') * 2,
    metaitem('plateDenseSteel') * 3,
    metaitem('cableGtDoubleAluminium') * 3)
  .outputs(item('galacticraftplanets:solar_array_controller'))
  .duration(100).EUt(1480).buildAndRegister()

// Контроллер щита
crafting.addShaped("gc/shield_controller", item('galacticraftplanets:basic_item_venus'), [
  [ore('paneGlassBlack'), metaitem('stickNeodymiumMagnetic'), ore('paneGlassBlack')],
  [metaitem('wireGtSingleMercuryBariumCalciumCuprate'), metaitem('field.generator.luv'), metaitem('wireGtSingleMercuryBariumCalciumCuprate')],
  [ore('paneGlassBlack'), metaitem('stickNeodymiumMagnetic'), ore('paneGlassBlack')]])


// Радио-изотопное ядро
crafting.addShaped("gc/radioisotopic_core", item('galacticraftplanets:basic_item_venus', 2), [
  [metaitem('dustGraphite'), metaitem('neutron_reflector'), metaitem('dustGraphite')],
  [metaitem('stickUranium235'), metaitem('neutron_reflector'), metaitem('stickUranium235')],
  [metaitem('dustGraphite'), metaitem('neutron_reflector'), metaitem('dustGraphite')]])

// Атомная батарейка
crafting.addShaped("gc/atom_battery", item('galacticraftplanets:atomic_battery'), [
  [null, metaitem('plateInvar'), null],
  [null, item('galacticraftplanets:basic_item_venus', 2), null],
  [null, metaitem('large_fluid_cell.tungstensteel'), null]])

// Пешеходная дорожка
crafting.addShaped("gc/walkway", item('galacticraftplanets:walkway'), [
  [null, null, null],
  [metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium')],
  [metaitem('stickTitanium'), metaitem('plateDenseTitanium'), metaitem('stickTitanium')]])

// Пеш. дор с проводом
crafting.addShaped("gc/walkway/cable", item('galacticraftplanets:walkway', 1), [
  [item('galacticraftplanets:walkway'), metaitem('cableGtDoubleAluminium'), null],
  [metaitem('cableGtDoubleAluminium'), null, null],
  [null, null, null]])

// Пеш. дор с жид. трубой
crafting.addShaped("gc/walkway/fluid_pipe", item('galacticraftplanets:walkway', 2), [
  [item('galacticraftplanets:walkway'), metaitem('pipeTinyFluidStainlessSteel'), null],
  [metaitem('pipeTinyFluidStainlessSteel'), null, null],
  [null, null, null]])

// Маяк дефлектор
crafting.addShaped("gc/beam_reflector", item('galacticraftplanets:beam_reflector'), [
  [null, item('galacticraftplanets:item_basic_asteroids', 8), null],
  [ore('circuitMv'), metaitem('plateDenseTitanium'), item('minecraft:lever')],
  [metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium')]])

// Маяк ресивер
crafting.addShaped("gc/beam_reciever", item('galacticraftplanets:beam_receiver'), [
  [metaitem('plateBeryllium'), metaitem('plateDenseDesh'), metaitem('plateBeryllium')],
  [metaitem('plateDenseDesh'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('plateDenseDesh')],
  [metaitem('plateBeryllium'), ore('circuitIv'), metaitem('plateBeryllium')]])

// Площадка телепортации
crafting.addShaped("gc/telepad_short", item('galacticraftplanets:telepad_short'), [
  [metaitem('plateDoubleTrinaquadalloy'), ore('circuitIv'), metaitem('plateDoubleTrinaquadalloy')],
  [metaitem('magic_energy_absorber'), item('galacticraftplanets:item_basic_asteroids', 8), metaitem('magic_energy_absorber')],
  [metaitem('plateDoubleTrinaquadalloy'), metaitem('plateDoubleTrinaquadalloy'), metaitem('plateDoubleTrinaquadalloy')]])


// Крюк
crafting.addShaped("gc/grapple", item('galacticraftplanets:grapple'), [
  [null, null, ore('string')],
  [ore('stickIronAny'), ore('string'), null],
  [ore('gearIronAny'), ore('stickIronAny'), null]])

// Лазерная турель
mods.gregtech.assembly_line.recipeBuilder()
  .inputs(
    // item('jsg:beamer_crystal_laser'),
    // item('jsg:beamer_crystal_laser'),
    item('galacticraftcore:space_glass_clear') * 6,
    metaitem('hull.luv'),
    metaitem('sensor.luv') * 2,
    metaitem('emitter.luv') * 4)
  .fluidInputs(
    fluid('molten.incoloy_ma_956') * 1264,
    fluid('molten.hssg') * 1432)
  .outputs(item('galacticraftplanets:laser_turret'))
  .duration(1800).EUt(18100).buildAndRegister()

// Контроллер запуска
mods.gregtech.assembler.recipeBuilder()
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
crafting.addShaped("gc/machine/geothermal_generator", item('galacticraftplanets:geothermal_generator'), [
  [metaitem('plateDenseBronze'), item('galacticraftplanets:atmospheric_valve'), metaitem('plateDenseBronze')],
  [metaitem('cableGtQuadrupleAluminium'), metaitem('combustion_generator.hv'), metaitem('cableGtQuadrupleAluminium')],
  [metaitem('plateDenseBronze'), metaitem('plateDenseLead'), metaitem('plateDenseBronze')]])


// --- Атмосфера
Function.GenerateRecipesForAir("mars", -29, 4, 6, 7)
// Air
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('mars_air') * 10000)
  .fluidOutputs(fluid('carbon_dioxide') * 6700)
  .fluidOutputs(fluid('oxygen') * 140)
  .duration(1600).EUt(2048).buildAndRegister()
// Liquid Air
mods.gregtech.distillation_tower.recipeBuilder()
  .fluidInputs(fluid('mars_liquid_air') * 200000)
  .fluidOutputs(fluid('carbon_dioxide') * 67000)
  .fluidOutputs(fluid('hydrogen_sulfide') * 7500)
  .fluidOutputs(fluid('helium_3') * 2500)
  .fluidOutputs(fluid('neon') * 500)
  .fluidOutputs(fluid('oxygen') * 1140)
  .duration(2000).EUt(7680).buildAndRegister()


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('galacticraftplanets:mars:5'), item('galacticraftplanets:mars:6'), item('galacticraftplanets:mars:9'), metaitem('dustStoneMars'), 2, 2)

// Пыль марса
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneMars') * 3)
  .chancedOutput(metaitem('dustMagnetite'), 3700, 1200)
  .chancedOutput(metaitem('dustSmallTungsten'), 1100, 500)
  .chancedOutput(metaitem('dustSmallAluminium'), 1150, 500)
  .chancedOutput(metaitem('dustSmallZinc'), 950, 500)
  .chancedOutput(metaitem('dustSmallNiobium'), 750, 350)
  .chancedOutput(metaitem('dustSmallGold'), 650, 250)
  .duration(1250).EUt(512).buildAndRegister()

// Dash --> пыль Dash
mods.gregtech.macerator.recipeBuilder()
  .inputs(item('galacticraftplanets:mars:8'))
  .outputs(metaitem('dustDesh') * 7)
  .chancedOutput(metaitem('dustDesh'), 2500, 500)
  .duration(760).EUt(510).buildAndRegister()

// Raw Dash --> пыль Dash
mods.gregtech.macerator.recipeBuilder()
  .inputs(item('galacticraftplanets:item_basic_mars'))
  .outputs(metaitem('dustSmallDesh') * 1)
  .chancedOutput(metaitem('dustSmallDesh'), 2500, 500)
  .duration(760).EUt(510).buildAndRegister()

// Дэш блок
mods.gregtech.compressor.recipeBuilder()
  .inputs(item('galacticraftplanets:item_basic_mars:2') * 9)
  .outputs(item('galacticraftplanets:mars:8'))
  .duration(300).EUt(480).buildAndRegister()

// Плотная пластина Дэш
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(item('galacticraftplanets:item_basic_mars:2') * 9)
  .outputs(metaitem('plateDenseDesh'))
  .duration(100).EUt(48).buildAndRegister()
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(metaitem('plateDesh') * 9)
  .outputs(metaitem('plateDenseDesh'))
  .duration(100).EUt(48).buildAndRegister()

// Слиток Дэш
mods.gregtech.implosion_compressor.recipeBuilder()
  .inputs(metaitem('plateDesh') * 4)
  .outputs(item('galacticraftplanets:item_basic_mars:2'))
  .explosivesAmount(2)
  .duration(20).EUt(380).buildAndRegister()

// Палка Дэш
crafting.addShaped("gc/desh_stick", item('galacticraftplanets:item_basic_mars:1'), [
  [ore('toolFile').transform(Function.setToolDamage), null, null],
  [null, item('galacticraftplanets:item_basic_mars:2'), null],
  [null, null, null]])


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones1(item('galacticraftplanets:asteroids_block'), metaitem('dustStoneAsteroidBlack'), 3, 3)

mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneAsteroidBlack') * 2)
  .chancedOutput(metaitem('dustImpureNickel'), 3000, 500)
  .chancedOutput(metaitem('dustImpureYellowLimonite'), 4500, 100)
  .chancedOutput(metaitem('dustImpureBrownLimonite'), 4500, 100)
  .chancedOutput(metaitem('dustImpureGold'), 1100, 100)
  .chancedOutput(metaitem('dustTinyIridiumMetalResidue'), 500, 100)
  .chancedOutput(metaitem('dustTinyIndium'), 10, 1)
  .duration(1600).EUt(1640).buildAndRegister()

// Поверхности
Function.GenerateRecipesForSurfaceStones1(item('galacticraftplanets:asteroids_block:1'), metaitem('dustStoneAsteroidGray'), 3, 3)

mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneAsteroidGray') * 2)
  .chancedOutput(metaitem('dustImpureBauxite'), 3000, 500)
  .chancedOutput(metaitem('dustImpureDiamond'), 3500, 100)
  .chancedOutput(metaitem('dustImpureRedstone'), 1500, 100)
  .chancedOutput(metaitem('dustImpureMonazite'), 1100, 100)
  .chancedOutput(metaitem('dustImpureMolybdenum'), 5000, 500)
  .chancedOutput(metaitem('dustTinyRareEarth'), 500, 500)
  .duration(1600).EUt(1640).buildAndRegister()

// Поверхности
Function.GenerateRecipesForSurfaceStones1(item('galacticraftplanets:asteroids_block:2'), metaitem('dustStoneAsteroidBlack'), 3, 3)

mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneAsteroidLightgray') * 3)
  .chancedOutput(metaitem('dustTinyCobalt'), 7500, 1000)
  .chancedOutput(metaitem('dustTinyBeryllium'), 5000, 500)
  .chancedOutput(metaitem('dustTinyPlatinum'), 2500, 250)
  .chancedOutput(metaitem('dustTinyBarium'), 1100, 100)
  .chancedOutput(metaitem('dustTinyNaquadah'), 100, 100)
  .duration(1600).EUt(1640).buildAndRegister()

// Пластина плотного льда
mods.gregtech.cutter.recipeBuilder()
  .inputs(item('galacticraftplanets:dense_ice'))
  .outputs(metaitem('plateDenseIce') * 9)
  .duration(200).EUt(7).buildAndRegister()

// Пыль плотного льда
mods.gregtech.macerator.recipeBuilder()
  .inputs(item('galacticraftplanets:dense_ice'))
  .outputs(metaitem('dustDenseIce') * 9)
  .duration(300).EUt(2).buildAndRegister()

// Плотная пластина плотного льда
mods.gregtech.bender.recipeBuilder()
  .circuitMeta(9)
  .inputs(metaitem('plateDenseIce') * 9)
  .outputs(metaitem('plateDenseDenseIce'))
  .duration(100).EUt(48).buildAndRegister()

// --- Атмосфера
Function.GenerateRecipesForAir("venus", -31, 4, 6, 5)
// Air
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('venus_air') * 10000)
  .fluidOutputs(fluid('carbon_dioxide') * 4700)
  .fluidOutputs(fluid('sulfur_dioxide') * 1200)
  .duration(1600).EUt(2048).buildAndRegister()
// Liquid Air
mods.gregtech.distillation_tower.recipeBuilder()
  .fluidInputs(fluid('venus_liquid_air') * 200000)
  .fluidOutputs(fluid('carbon_dioxide') * 69000)
  .fluidOutputs(fluid('sulfur_dioxide') * 7500)
  .fluidOutputs(fluid('nitrogen') * 5500)
  .fluidOutputs(fluid('neon') * 170)
  .duration(2000).EUt(7680).buildAndRegister()


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones2(item('galacticraftplanets:venus'), item('galacticraftplanets:venus:1'), metaitem('dustStoneVenus'), 3, 3)

// Пыль венеры
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneVenus'))
  .chancedOutput(metaitem('dustSmallManganese'), 3700, 1200)
  .chancedOutput(metaitem('dustSmallTitanium'), 1100, 500)
  .chancedOutput(metaitem('dustSmallMagnesium'), 1150, 500)
  .chancedOutput(metaitem('dustSmallChalcopyrite'), 950, 500)
  .chancedOutput(metaitem('dustSmallBismuth'), 750, 350)
  .chancedOutput(metaitem('dustTinySulfur'), 650, 250)
  .duration(1250).EUt(1024).buildAndRegister()
