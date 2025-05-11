// MODS_LOADED: galacticraftcore
// ==== Добавление


import classes.array.Galacticraft


// Парашуты
for (gcParachute in Galacticraft.gcParachute) {
  ore('gc.parachute').add(gcParachute)
  if (gcParachute != item('galacticraftcore:parachute')) {
    ore('gc.parachute.colors').add(gcParachute)
  }
}

// Дэш
ore('stickDesh').add([
  item('galacticraftplanets:item_basic_mars', 1)
])

// Плотный лед
ore('blockDenseIce').add([
  item('galacticraftplanets:dense_ice')
])

// Метеоритное железо
ore('blockMeteoricIron').add([
  item('galacticraftcore:basic_block_core', 12)
])

// Лунный камень
ore('stoneMoon').add([
  item('galacticraftcore:basic_block_moon', 4)
])
