// MODS_LOADED: tfg
// --- Добавление рецептов

import classes.Function

// Smeltery Firebox
crafting.shapedBuilder()
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
crafting.shapedBuilder()
  .name('device/smeltery/cauldron')
  .output(item('tfg:device/smeltery/cauldron'))
  .row('SSS')
  .row('S S')
  .row('I I')
  .key('S', ore('plateWroughtIron'))
  .key('I', ore('stickLongWroughtIron'))
  .register()

// Alloy Calculator
crafting.shapedBuilder()
  .name('device/alloy_calculator')
  .output(item('tfg:device/alloy_calculator'))
  .row('LLL')
  .row('LRL')
  .key('R', ore('rock'))
  .key('L', ore('lumber'))
  .register();

// Bellows
crafting.shapedBuilder()
  .name('device/bellows')
  .output(item('tfg:device/bellows'))
  .row('XXX')
  .row('SSS')
  .row('XXX')
  .key('X', ore('lumber'))
  .key('S', ore('leather'))
  .register();

// Blast Furnace
crafting.shapedBuilder()
  .name('device/blast_furnace')
  .output(item('tfg:device/blast_furnace'))
  .row('XXX')
  .row('XZX')
  .row('XXX')
  .key('X', ore('plateDoubleIronAny'))
  .key('Z', ore('crucible'))
  .register();

// Bloomery
crafting.shapedBuilder()
  .name('device/bloomery')
  .output(item('tfg:device/bloomery'))
  .row('XXX')
  .row('X X')
  .row('XXX')
  .key('X', ore('plateDoubleAnyBronze'))
  .register();

// Powderkeg
crafting.shapelessBuilder()
  .name("device/powderkeg")
  .output(item('tfg:device/powderkeg'))
  .input([
    ore("barrel"),
    ore("dyeRed"),
    ore("dustGunpowder")
  ])
  .register();

// Cellar Wall
crafting.shapedBuilder()
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
crafting.shapedBuilder()
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
crafting.shapedBuilder()
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

crafting.shapedBuilder()
  .name('device/flask/metal/broken_repair')
  .output(item('tfg:device/flask/metal'))
  .row('FB')
  .row('CK')
  .key('F', ore('flaskMetalBroken'))
  .key('K', ore('toolKnife').transform(Function.setToolDamage))
  .key('C', item('tfc:crop/product/burlap_cloth'))
  .key('B', ore('bladder'))
  .register();

crafting.shapedBuilder()
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
crafting.shapedBuilder()
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

crafting.shapedBuilder()
  .name('device/flask/leather/broken_repair')
  .output(item('tfg:device/flask/leather'))
  .row('FB')
  .key('F', ore('flaskLeatherBroken'))
  .key('B', ore('bladder'))
  .register();

crafting.shapedBuilder()
  .name('device/flask/leather/repair')
  .output(item('tfg:device/flask/leather'))
  .row('FB')
  .key('F', ore('flaskLeather'))
  .key('B', ore('bladder'))
  .register();
