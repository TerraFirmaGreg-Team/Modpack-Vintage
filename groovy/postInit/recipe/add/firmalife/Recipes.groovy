// MODS_LOADED: firmalife
// --- Добавление рецептов


import classes.Function
import classes.array.TerraFirmaCraft
import classes.array.TerraFirmaCraftFL
import net.dries007.tfc.objects.recipes.DryingRecipe

// Удобрение
DryingRecipe.addRecipe("firmalife/fertilizer", item('tfg:core/wood_ash'), item('tfc:powder/fertilizer'), 8000)

// Высушивание соли
DryingRecipe.addRecipe("firmalife/salt", item('tfc:wooden_bucket').withNbt([Fluid: [FluidName: "salt_water", Amount: 1000]]), item('tfg:meta_item:51'), 24000);

// Забор
for (int i = 0; i < TerraFirmaCraftFL.flFences.size(); i++) {
  crafting.addShaped("firmalife/fence_" + i, TerraFirmaCraftFL.flFences[i] * 8,
    [[null, null, null],
     [TerraFirmaCraft.tfcPlanks[i + 95], TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.tfcPlanks[i + 95]],
     [TerraFirmaCraft.tfcPlanks[i + 95], TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.tfcPlanks[i + 95]]])
}

// Калитки
for (int i = 0; i < TerraFirmaCraftFL.flFenceGates.size(); i++) {
  crafting.addShaped("firmalife/fencegate_" + i, TerraFirmaCraftFL.flFenceGates[i] * 2,
    [[null, null, null],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.tfcPlanks[i + 95], TerraFirmaCraft.lumbers[i + 95]],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.tfcPlanks[i + 95], TerraFirmaCraft.lumbers[i + 95]]])
}

// Двери
for (int i = 0; i < TerraFirmaCraftFL.flDoors.size(); i++) {
  crafting.addShaped("firmalife/door_" + i, TerraFirmaCraftFL.flDoors[i] * 2,
    [[TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95], null],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95], null],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95], null]])
}

// Люки
for (int i = 0; i < TerraFirmaCraftFL.flTrapdoors.size(); i++) {
  crafting.addShaped("firmalife/trapdoor_" + i, TerraFirmaCraftFL.flTrapdoors[i] * 3,
    [[null, null, null],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95]],
     [TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95], TerraFirmaCraft.lumbers[i + 95]]])
}

// Климатическая станция уровня 0
crafting.addShaped("firmalife/climate_station_0", item('firmalife:climate_station'), [
  [metaitem('plateWroughtIron'), ore('plankWood'), metaitem('plateWroughtIron')],
  [item('minecraft:redstone'), ore('blockGlass'), item('minecraft:redstone')],
  [metaitem('plateWroughtIron'), ore('plankWood'), metaitem('plateWroughtIron')]])

// Климатическая станция уровня 1
crafting.addShaped("firmalife/climate_station_1", item('firmalife:climate_station_1'), [
  [metaitem('plateWroughtIron'), ore('blockGlass'), metaitem('plateWroughtIron')],
  [ore('blockGlass'), item('firmalife:climate_station'), ore('blockGlass')],
  [metaitem('plateWroughtIron'), ore('blockGlass'), metaitem('plateWroughtIron')]])

// Климатическая станция уровня 5
crafting.addShaped("firmalife/climate_station_5", item('firmalife:climate_station_5'), [
  [metaitem('gearCobaltBrass'), ore('gemFlawless'), metaitem('gearCobaltBrass')],
  [ore('gemFlawless'), item('firmalife:climate_station_4'), ore('gemFlawless')],
  [metaitem('gearCobaltBrass'), ore('gemFlawless'), metaitem('gearCobaltBrass')]])

// Разбрызгиватель
crafting.addShaped("firmalife/sprinkler", item('firmalife:sprinkler'), [
  [metaitem('gearCobaltBrass'), null, metaitem('gearCobaltBrass')],
  [metaitem('plateRedSteel'), item('firmalife:spout'), metaitem('plateRedSteel')],
  [metaitem('gearCobaltBrass'), null, metaitem('gearCobaltBrass')]])

// Jar
crafting.addShaped("firmalife/jar", item('firmalife:jar'), [
  [null, ore('plateIronAny'), null],
  [ore('paneGlass'), null, ore('paneGlass')],
  [null, ore('paneGlass'), null]])


// Pizza Dough
crafting.addShapeless("firmalife/pizza_dough", item('firmalife:pizza_dough'), [ore('toolKnife').transform(Function.setToolDamage), ore('doughFlat'), item('tfc:plants/basil'), item('firmalife:tomato_sauce'), ore('craftingToolRollingPin')])

// Свечка
crafting.addShapeless("firmalife/candle", item('firmalife:candle') * 6, [ore('itemBeeswax'), ore('string')])

// Обработанное дерево
crafting.addShapeless("firmalife/treated_lumber", item('firmalife:treated_lumber'), [ore('lumber'), ore('itemBeeswax'), metaitem('dustSalt')])


// Высушивание соли
crafting.addShapeless("firmalife/small_salt", metaitem('dustSmallSalt') * 2, [item('tfg:meta_item', 51).transform({ item('tfc:wooden_bucket') })])

crafting.addShapeless("firmalife/trellis", item('firmalife:trellis'), [item('firmalife:greenhouse_wall'), item('firmalife:greenhouse_wall'), ore('dustFertilizer')])
crafting.addShapeless("firmalife/pumpkin_hanging_planter", item('firmalife:pumpkin_hanging_planter'), [item('firmalife:greenhouse_wall'), item('firmalife:crop/seeds/pumpkin'), ore('dustFertilizer')])
crafting.addShapeless("firmalife/melon_hanging_planter", item('firmalife:melon_hanging_planter'), [item('firmalife:greenhouse_wall'), item('firmalife:crop/seeds/melon'), ore('dustFertilizer')])
crafting.addShapeless("firmalife/squash_hanging_planter", item('firmalife:squash_hanging_planter'), [item('firmalife:greenhouse_wall'), item('tfc:crop/seeds/squash'), ore('dustFertilizer')])


// Chestnut Dough
mods.gregtech.mixer.recipeBuilder()
  .inputs(
    ore('chestnutFlour'),
    metaitem('dustSmallSalt'),
    ore('fruitDry'))
  .fluidInputs(fluid('fresh_water') * 1000)
  .outputs(item('firmalife:chestnut_dough') * 2)
  .duration(400).EUt(2).buildAndRegister()

// Greenhouse parts
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(1)
  .inputs(metaitem('plateWroughtIron'))
  .outputs(item('firmalife:greenhouse_roof') * 4)
  .duration(205).EUt(8).buildAndRegister()

mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(4)
  .inputs(metaitem('plateWroughtIron'))
  .outputs(item('firmalife:greenhouse_door') * 4)
  .duration(205).EUt(8).buildAndRegister()

mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(3)
  .inputs(metaitem('plateWroughtIron'))
  .outputs(item('firmalife:greenhouse_wall') * 4)
  .duration(205).EUt(8).buildAndRegister()

crafting.addShaped("firmalife/quad_planter", item('firmalife:quad_planter'), [
  [null, ore('dustFertilizer'), null],
  [null, ore('dirt'), null],
  [null, item('minecraft:flower_pot'), null]])
