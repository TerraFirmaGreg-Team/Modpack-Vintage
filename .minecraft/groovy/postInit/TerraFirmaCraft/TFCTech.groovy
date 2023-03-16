

// Рецепты Strips
crafting.addShapeless(item('tfctech:metal/copper_strip') * 2, [ore('toolFile'), metaitem('plateCopper')])
crafting.addShapeless(item('tfctech:metal/gold_strip') * 2, [ore('toolFile'), metaitem('plateGold')])
crafting.addShapeless(item('tfctech:metal/lead_strip') * 2, [ore('toolFile'), metaitem('plateLead')])
crafting.addShapeless(item('tfctech:metal/nickel_strip') * 2, [ore('toolFile'), metaitem('plateNickel')])
crafting.addShapeless(item('tfctech:metal/silver_strip') * 2, [ore('toolFile'), metaitem('plateSilver')])
crafting.addShapeless(item('tfctech:metal/tin_strip') * 2, [ore('toolFile'), metaitem('plateTin')])
crafting.addShapeless(item('tfctech:metal/wrought_iron_strip') * 2, [ore('toolFile'), metaitem('plateWroughtIron')])
crafting.addShapeless(item('tfctech:metal/steel_strip') * 2, [ore('toolFile'), metaitem('plateSteel')])
crafting.addShapeless(item('tfctech:metal/platinum_strip') * 2, [ore('toolFile'), metaitem('platePlatinum')])
crafting.addShapeless(item('tfctech:metal/black_steel_strip') * 2, [ore('toolFile'), metaitem('plateBlackSteel')])


// Крафт поташа с увеличенным выходом
crafting.addShapeless("tfg/tfctech/dust_potash", metaitem('dustPotash') * 4, [item('tfctech:pot_potash')])

// Исправление рецепта емкости с поташем
crafting.addShapeless("tfg/tfctech/pot_ash", item('tfctech:pot_ash'), [metaitem('dustAsh'), metaitem('dustAsh'), metaitem('dustAsh'), metaitem('dustAsh'), item('tfc:ceramics/fired/pot').noreturn(), item('tfc:wooden_bucket').withNbt(["Fluid": ["FluidName": "fresh_water", "Amount": 1000]])])

// Резина для первых этапов
crafting.addShapeless("tfg/tfctech/plate_rubber", metaitem('plateRubber') * 2, [item('tfctech:latex/rubber'), ore('toolKnife')])

// Вулканизирующие агенты
crafting.addShapeless("tfg/tfctech/vulcanizing_agents", item('tfctech:latex/vulcanizing_agents') * 4, [item('tfc:powder/graphite'), ore('dustKaolinite'), ore('dustFlux'), metaitem('dustSulfur')])



// Холодильник
crafting.addShaped("tfg/tfctech/fridge", item('tfctech:fridge'), [
   [metaitem('plateSteel'), item('tfctech:metal/copper_inductor'), metaitem('plateSteel')],
   [metaitem('plateSteel'), ore('plateDoubleIronAny'), metaitem('plateSteel')],
   [metaitem('plateSteel'), item('tfctech:metal/copper_inductor'), metaitem('plateSteel')]])

// Winch
crafting.addShaped("tfg/tfctech/winch", item('tfctech:wiredraw/winch'), [
   [ore('stickIronAny'), null, ore('stickIronAny')],
   [null, ore('stickIronAny'), null],
   [ore('stickIronAny'), null, ore('stickIronAny')]])

// Медный индуктор
crafting.addShaped("tfg/tfctech/copper_inductor", item('tfctech:metal/copper_inductor'), [
   [null, metaitem('wireGtSingleCopper'), null],
   [metaitem('wireGtSingleCopper'), ore('toolHammer'), metaitem('wireGtSingleCopper')],
   [null, metaitem('wireGtSingleCopper'), null]])

// Тигель
crafting.addShaped("tfg/tfctech/crucible", item('tfctech:induction_crucible'), [
   [metaitem('plateSteel'), null, metaitem('plateSteel')],
   [item('tfctech:metal/copper_inductor'), item('tfc:crucible'), item('tfctech:metal/copper_inductor')],
   [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')]])

// Электро наковальня
crafting.addShaped("tfg/tfctech/electric_forge", item('tfctech:electric_forge'), [
   [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')],
   [item('tfctech:metal/copper_inductor'), item('tfc:fire_bricks'), item('tfctech:metal/copper_inductor')],
   [metaitem('plateSteel'), metaitem('wireGtSingleCopper'), metaitem('plateSteel')]])

// Smeltery Cauldron
crafting.addShaped("tfg/tfctech/smeltery_cauldron", item('tfctech:smeltery_cauldron'), [
   [metaitem('plateWroughtIron'), metaitem('plateWroughtIron'), metaitem('plateWroughtIron')],
   [metaitem('plateWroughtIron'), null, metaitem('plateWroughtIron')],
   [metaitem('stickLongWroughtIron'), null, metaitem('stickLongWroughtIron')]])

// Smeltery Firebox
crafting.addShaped("tfg/tfctech/smeltery_firebox", item('tfctech:smeltery_firebox'), [
   [metaitem('stickWroughtIron'), metaitem('plateWroughtIron'), metaitem('stickWroughtIron')],
   [metaitem('plateWroughtIron'), item('tfc:fire_bricks'), metaitem('plateWroughtIron')],
   [metaitem('stickWroughtIron'), metaitem('plateWroughtIron'), metaitem('stickWroughtIron')]])

// Wire Draw Bench
crafting.addShaped("tfg/tfctech/wire_draw_bench", item('tfctech:wire_draw_bench'), [
   [item('tfctech:wiredraw/winch'), item('tfctech:wiredraw/leather_belt'), ore('toolTongs')],
   [metaitem('plateWroughtIron'), metaitem('plateWroughtIron'), metaitem('plateWroughtIron')],
   [metaitem('plateWroughtIron'), null, metaitem('plateWroughtIron')]])