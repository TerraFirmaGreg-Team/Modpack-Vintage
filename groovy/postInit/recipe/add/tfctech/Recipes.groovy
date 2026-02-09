// MODS_LOADED: tfctech
// --- Добавление рецептов

import classes.Function


// Рецепты Strips
mods.minecraft.crafting.addShapeless("tfctech/copper_strip", item('tfctech:metal/copper_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateCopper')])
mods.minecraft.crafting.addShapeless("tfctech/gold_strip", item('tfctech:metal/gold_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateGold')])
mods.minecraft.crafting.addShapeless("tfctech/lead_strip", item('tfctech:metal/lead_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateLead')])
mods.minecraft.crafting.addShapeless("tfctech/nickel_strip", item('tfctech:metal/nickel_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateNickel')])
mods.minecraft.crafting.addShapeless("tfctech/silver_strip", item('tfctech:metal/silver_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateSilver')])
mods.minecraft.crafting.addShapeless("tfctech/tin_strip", item('tfctech:metal/tin_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateTin')])
mods.minecraft.crafting.addShapeless("tfctech/wrought_iron_strip", item('tfctech:metal/wrought_iron_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateWroughtIron')])
mods.minecraft.crafting.addShapeless("tfctech/steel_strip", item('tfctech:metal/steel_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateSteel')])
mods.minecraft.crafting.addShapeless("tfctech/platinum_strip", item('tfctech:metal/platinum_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('platePlatinum')])
mods.minecraft.crafting.addShapeless("tfctech/black_steel_strip", item('tfctech:metal/black_steel_strip') * 2, [ore('toolFile').transform(Function.setToolDamage), metaitem('plateBlackSteel')])

// Крафт поташа с увеличенным выходом
mods.minecraft.crafting.addShapeless("tfctech/dust_potash", metaitem('dustPotash') * 4, [item('tfctech:pot_potash')])

// Исправление рецепта емкости с поташем
mods.minecraft.crafting.addShapeless("tfctech/pot_ash", item('tfctech:pot_ash'), [
  metaitem('dustAsh'), metaitem('dustAsh'), metaitem('dustAsh'),
  metaitem('dustAsh'), item('tfc:ceramics/fired/pot').noReturn(), item('tfg:device/bucket/wood').withNbt(["Fluid": ["FluidName": "fresh_water", "Amount": 1000]])])

// Резина для первых этапов
mods.minecraft.crafting.addShapeless("tfctech/plate_rubber", metaitem('plateRubber') * 2, [item('tfctech:latex/rubber'), ore('toolKnife').transform(Function.setToolDamage)])

// Вулканизирующие агенты
mods.minecraft.crafting.addShapeless("tfctech/vulcanizing_agents", item('tfctech:latex/vulcanizing_agents') * 4, [item('tfc:powder/graphite'), ore('dustKaolinite'), ore('dustFlux'), metaitem('dustSulfur')])

// Холодильник
mods.minecraft.crafting.addShaped("tfctech/fridge", item('tfg:device/fridge'), [
  [metaitem('plateSteel'), item('tfctech:metal/copper_inductor'), metaitem('plateSteel')],
  [metaitem('plateSteel'), ore('plateDoubleIronAny'), metaitem('plateSteel')],
  [metaitem('plateSteel'), item('tfctech:metal/copper_inductor'), metaitem('plateSteel')]])

// Winch
mods.minecraft.crafting.addShaped("tfctech/winch", item('tfctech:wiredraw/winch'), [
  [ore('stickIronAny'), null, ore('stickIronAny')],
  [null, ore('stickIronAny'), null],
  [ore('stickIronAny'), null, ore('stickIronAny')]])

// Медный индуктор
mods.minecraft.crafting.addShaped("tfctech/copper_inductor", item('tfctech:metal/copper_inductor'), [
  [null, metaitem('wireGtSingleCopper'), null],
  [metaitem('wireGtSingleCopper'), ore('toolHammer').transform(Function.setToolDamage), metaitem('wireGtSingleCopper')],
  [null, metaitem('wireGtSingleCopper'), null]])

// Тигель
mods.minecraft.crafting.addShaped("tfctech/crucible", item('tfctech:induction_crucible'), [
  [metaitem('plateSteel'), null, metaitem('plateSteel')],
  [item('tfctech:metal/copper_inductor'), item('tfg:device/crucible'), item('tfctech:metal/copper_inductor')],
  [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')]])

// Электро наковальня
mods.minecraft.crafting.addShaped("tfctech/electric_forge", item('tfctech:electric_forge'), [
  [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')],
  [item('tfctech:metal/copper_inductor'), item('tfg:core/fire_bricks'), item('tfctech:metal/copper_inductor')],
  [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')]])


// Wire Draw Bench
mods.minecraft.crafting.addShaped("tfctech/wire_draw_bench", item('tfctech:wire_draw_bench'), [
  [item('tfctech:wiredraw/winch'), item('tfctech:wiredraw/leather_belt'), ore('toolTongs').transform(Function.setToolDamage)],
  [metaitem('plateWroughtIron'), metaitem('plateWroughtIron'), metaitem('plateWroughtIron')],
  [metaitem('plateWroughtIron'), null, metaitem('plateWroughtIron')]])
