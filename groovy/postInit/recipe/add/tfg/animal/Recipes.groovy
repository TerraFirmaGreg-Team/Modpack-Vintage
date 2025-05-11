// MODS_LOADED: tfg
// --- Добавление рецептов

// Halter
crafting.shapedBuilder()
  .name('animal/halter')
  .output(item('tfg:animal/halter'))
  .row('XYX')
  .row('X X')
  .key('X', ore('leather'))
  .key('Y', ore('lead'))
  .register()
