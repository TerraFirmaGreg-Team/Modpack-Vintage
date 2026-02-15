// MODS_LOADED: tfg
// --- Добавление рецептов

import classes.Function

// Smeltery Firebox
mods.minecraft.crafting.shapedBuilder()
  .name('device/smeltery/firebox')
  .output(item('tfg:device/smeltery/firebox'))
  .row('IBI')
  .row('BSB')
  .row('IBI')
  .key('I', ore('stickLongWroughtIron'))
  .key('B', ore('plateWroughtIron'))
  .key('S', ore('fireBricks'))
  .register()

// Smeltery Cauldron
mods.minecraft.crafting.shapedBuilder()
  .name('device/smeltery/cauldron')
  .output(item('tfg:device/smeltery/cauldron'))
  .row('SSS')
  .row('S S')
  .row('I I')
  .key('S', ore('plateWroughtIron'))
  .key('I', ore('stickLongWroughtIron'))
  .register()

// Alloy Calculator
mods.minecraft.crafting.shapedBuilder()
  .name('device/alloy_calculator')
  .output(item('tfg:device/alloy_calculator'))
  .row('LLL')
  .row('LRL')
  .key('R', ore('rock'))
  .key('L', ore('lumber'))
  .register();

// Snare
mods.minecraft.crafting.shapedBuilder()
  .name('device/snare')
  .output(item('tfg:device/snare'))
  .row('SSS')
  .row('LRL')
  .row('LRL')
  .key('R', item('tfc:crop/product/jute_fiber'))
  .key('S', ore('stickWood'))
  .key('L', ore('lumber'))
  .register();

// Cellar Door
mods.minecraft.crafting.shapedBuilder()
  .name('device/cellar/door')
  .output(item('tfg:device/cellar/door'))
  .row('LCL')
  .row('LSL')
  .row('LCL')
  .key('L', ore('lumber'))
  .key('S', ore('straw'))
  .key('C', ore('clay'))
  .register();

// Cellar Wall
mods.minecraft.crafting.shapedBuilder()
  .name('device/cellar/wall')
  .output(item('tfg:device/cellar/wall'))
  .row('LSL')
  .row('C C')
  .row('LSL')
  .key('L', ore('lumber'))
  .key('S', ore('straw'))
  .key('C', ore('clay'))
  .register();

// Cellar Shelf
mods.minecraft.crafting.shapedBuilder()
  .name('device/cellar/shelf')
  .output(item('tfg:device/cellar/shelf'))
  .row('L L')
  .row('LLL')
  .row('L L')
  .key('L', ore('lumber'))
  .register();

// Freeze Dryer
mods.minecraft.crafting.shapedBuilder()
  .name('device/freeze_dryer')
  .output(item('tfg:device/freeze_dryer'))
  .row('SGS')
  .row('DLD')
  .row('SPS')
  .key('S', ore('plateSteel'))
  .key('D', ore('gemDiamond'))
  .key('G', ore('paneGlass'))
  .key('L', ore('ladder'))
  .key('P', ore('craftingPiston'))
  .register();

// Ice Bunker
mods.minecraft.crafting.shapedBuilder()
  .name('device/ice_bunker')
  .output(item('tfg:device/ice_bunker'))
  .row('L L')
  .row('P P')
  .row('L L')
  .key('L', ore('lumber'))
  .key('P', ore('plankWood'))
  .register();

// Bellows
mods.minecraft.crafting.shapedBuilder()
  .name('device/bellows')
  .output(item('tfg:device/bellows'))
  .row('XXX')
  .row('SSS')
  .row('XXX')
  .key('X', ore('lumber'))
  .key('S', ore('leather'))
  .register();

// Blast Furnace
mods.minecraft.crafting.shapedBuilder()
  .name('device/blast_furnace')
  .output(item('tfg:device/blast_furnace'))
  .row('XXX')
  .row('XZX')
  .row('XXX')
  .key('X', ore('plateDoubleIronAny'))
  .key('Z', ore('crucible'))
  .register();

// Bloomery
mods.minecraft.crafting.shapedBuilder()
  .name('device/bloomery')
  .output(item('tfg:device/bloomery'))
  .row('XXX')
  .row('X X')
  .row('XXX')
  .key('X', ore('plateDoubleAnyBronze'))
  .register();

// Powderkeg
mods.minecraft.crafting.shapelessBuilder()
  .name("device/powderkeg")
  .output(item('tfg:device/powderkeg'))
  .input([
    ore("barrel"),
    ore("dyeRed"),
    ore("dustGunpowder")
  ])
  .register();

// Cellar Wall
mods.minecraft.crafting.shapedBuilder()
  .name("device/cellar/wall")
  .output(item('tfg:device/cellar/wall'))
  .row('LSL')
  .row('C C')
  .row('LSL')
  .key('L', ore('lumber'))
  .key('S', ore('straw'))
  .key('C', ore('clay'))
  .register();

// Cellar Wall
mods.minecraft.crafting.shapedBuilder()
  .name("device/cellar/door")
  .output(item('tfg:device/cellar/door'))
  .row('LCL')
  .row('LSL')
  .row('LCL')
  .key('L', ore('lumber'))
  .key('S', ore('straw'))
  .key('C', ore('clay'))
  .register();

// Metal Flask
mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/metal')
  .output(item('tfg:device/flask/metal'))
  .row(' SK')
  .row('CBC')
  .row('LIL')
  .key('I', ore('flaskMetalUnfinished'))
  .key('K', ore('toolKnife').transform(Function.setToolDamage))
  .key('C', item('tfc:crop/product/burlap_cloth'))
  .key('S', ore('string'))
  .key('L', ore('flaskLeatherUnfinished'))
  .key('B', ore('bladder'))
  .register();

mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/metal/broken_repair')
  .output(item('tfg:device/flask/metal'))
  .row('FB')
  .row('CK')
  .key('F', ore('flaskMetalBroken'))
  .key('K', ore('toolKnife').transform(Function.setToolDamage))
  .key('C', item('tfc:crop/product/burlap_cloth'))
  .key('B', ore('bladder'))
  .register();

mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/metal/repair')
  .output(item('tfg:device/flask/metal'))
  .row('FB')
  .row('CK')
  .key('F', ore('flaskMetal'))
  .key('K', ore('toolKnife').transform(Function.setToolDamage))
  .key('C', item('tfc:crop/product/burlap_cloth'))
  .key('B', ore('bladder'))
  .register();

// Leather Flask
mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/leather')
  .output(item('tfg:device/flask/leather'))
  .row(' L ')
  .row('SBS')
  .row(' LK')
  .key('K', ore('toolKnife').transform(Function.setToolDamage))
  .key('S', ore('string'))
  .key('L', ore('flaskLeatherUnfinished'))
  .key('B', ore('bladder'))
  .register();

mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/leather/broken_repair')
  .output(item('tfg:device/flask/leather'))
  .row('FB')
  .key('F', ore('flaskLeatherBroken'))
  .key('B', ore('bladder'))
  .register();

mods.minecraft.crafting.shapedBuilder()
  .name('device/flask/leather/repair')
  .output(item('tfg:device/flask/leather'))
  .row('FB')
  .key('F', ore('flaskLeather'))
  .key('B', ore('bladder'))
  .register();

// Greenhouse Roof
mods.gregtech.assembler.recipeBuilder()
    .outputs(item('tfg:device/greenhouse/roof') * 4)
    .inputs(metaitem('plateWroughtIron'))
    .inputs(item('minecraft:tripwire_hook'))
    .circuitMeta(1)
    .duration(205)
    .EUt(8)
    .buildAndRegister()

// Greenhouse Door
mods.gregtech.assembler.recipeBuilder()
    .outputs(item('tfg:device/greenhouse/door') * 4)
    .inputs(metaitem('plateWroughtIron'))
    .inputs(item('minecraft:tripwire_hook'))
    .circuitMeta(4)
    .duration(205)
    .EUt(8)
    .buildAndRegister()

// Greenhouse Wall
mods.gregtech.assembler.recipeBuilder()
    .outputs(item('tfg:device/greenhouse/wall') * 4)
    .inputs(metaitem('plateWroughtIron'))
    .inputs(item('minecraft:tripwire_hook'))
    .circuitMeta(3)
    .duration(205)
    .EUt(8)
    .buildAndRegister()