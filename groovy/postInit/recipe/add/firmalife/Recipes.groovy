// MODS_LOADED: firmalife
// --- Добавление рецептов


import classes.Function
import classes.array.TerraFirmaCraft
import classes.array.TerraFirmaCraftFL
import net.dries007.tfc.objects.recipes.DryingRecipe

// Удобрение
DryingRecipe.addRecipe("firmalife/fertilizer", item('tfg:core/wood_ash'), item('tfc:powder/fertilizer'), 8000)

// Высушивание соли
DryingRecipe.addRecipe("firmalife/salt", item('tfg:device/bucket/wood').withNbt([Fluid: [FluidName: "salt_water", Amount: 1000]]), item('tfg:meta_item:51'), 24000);


// Климатическая станция уровня 0
mods.minecraft.crafting.addShaped("firmalife/climate_station_0", item('firmalife:climate_station'), [
  [metaitem('plateWroughtIron'), ore('plankWood'), metaitem('plateWroughtIron')],
  [item('minecraft:redstone'), ore('blockGlass'), item('minecraft:redstone')],
  [metaitem('plateWroughtIron'), ore('plankWood'), metaitem('plateWroughtIron')]])

// Климатическая станция уровня 1
mods.minecraft.crafting.addShaped("firmalife/climate_station_1", item('firmalife:climate_station_1'), [
  [metaitem('plateWroughtIron'), ore('blockGlass'), metaitem('plateWroughtIron')],
  [ore('blockGlass'), item('firmalife:climate_station'), ore('blockGlass')],
  [metaitem('plateWroughtIron'), ore('blockGlass'), metaitem('plateWroughtIron')]])

// Климатическая станция уровня 5
mods.minecraft.crafting.addShaped("firmalife/climate_station_5", item('firmalife:climate_station_5'), [
  [metaitem('gearCobaltBrass'), ore('gemFlawless'), metaitem('gearCobaltBrass')],
  [ore('gemFlawless'), item('firmalife:climate_station_4'), ore('gemFlawless')],
  [metaitem('gearCobaltBrass'), ore('gemFlawless'), metaitem('gearCobaltBrass')]])

// Разбрызгиватель
mods.minecraft.crafting.addShaped("firmalife/sprinkler", item('firmalife:sprinkler'), [
  [metaitem('gearCobaltBrass'), null, metaitem('gearCobaltBrass')],
  [metaitem('plateRedSteel'), item('firmalife:spout'), metaitem('plateRedSteel')],
  [metaitem('gearCobaltBrass'), null, metaitem('gearCobaltBrass')]])

// Jar
mods.minecraft.crafting.addShaped("firmalife/jar", item('firmalife:jar'), [
  [null, ore('plateIronAny'), null],
  [ore('paneGlass'), null, ore('paneGlass')],
  [null, ore('paneGlass'), null]])


// Pizza Dough
mods.minecraft.crafting.addShapeless("firmalife/pizza_dough", item('firmalife:pizza_dough'), [ore('toolKnife').transform(Function.setToolDamage), ore('doughFlat'), item('tfc:plants/basil'), item('firmalife:tomato_sauce'), ore('craftingToolRollingPin')])

// Свечка
mods.minecraft.crafting.addShapeless("firmalife/candle", item('firmalife:candle') * 6, [ore('itemBeeswax'), ore('string')])

// Обработанное дерево
mods.minecraft.crafting.addShapeless("firmalife/treated_lumber", item('firmalife:treated_lumber'), [ore('lumber'), ore('itemBeeswax'), metaitem('dustSalt')])


// Высушивание соли
mods.minecraft.crafting.addShapeless("firmalife/small_salt", metaitem('dustSmallSalt') * 2, [item('tfg:meta_item', 51).transform({ item('tfg:device/bucket/wood') })])

mods.minecraft.crafting.addShapeless("firmalife/trellis", item('firmalife:trellis'), [item('tfg:device/greenhouse/wall'), item('tfg:device/greenhouse/wall'), ore('dustFertilizer')])
mods.minecraft.crafting.addShapeless("firmalife/pumpkin_hanging_planter", item('firmalife:pumpkin_hanging_planter'), [item('tfg:device/greenhouse/wall'), item('firmalife:crop/seeds/pumpkin'), ore('dustFertilizer')])
mods.minecraft.crafting.addShapeless("firmalife/melon_hanging_planter", item('firmalife:melon_hanging_planter'), [item('tfg:device/greenhouse/wall'), item('firmalife:crop/seeds/melon'), ore('dustFertilizer')])
mods.minecraft.crafting.addShapeless("firmalife/squash_hanging_planter", item('firmalife:squash_hanging_planter'), [item('tfg:device/greenhouse/wall'), item('tfc:crop/seeds/squash'), ore('dustFertilizer')])


// Chestnut Dough
mods.gregtech.mixer.recipeBuilder()
  .inputs(
    ore('chestnutFlour'),
    metaitem('dustSmallSalt'),
    ore('fruitDry'))
  .fluidInputs(fluid('fresh_water') * 1000)
  .outputs(item('firmalife:chestnut_dough') * 2)
  .duration(400).EUt(2).buildAndRegister()



mods.minecraft.crafting.addShaped("firmalife/quad_planter", item('firmalife:quad_planter'), [
  [null, ore('dustFertilizer'), null],
  [null, ore('dirt'), null],
  [null, item('minecraft:flower_pot'), null]])
