// MODS_LOADED: tfg
// --- Добавление рецептов

// Halter
mods.minecraft.crafting.shapedBuilder()
  .name('animal/halter')
  .output(item('tfg:animal/halter'))
  .row('XYX')
  .row('X X')
  .key('X', ore('leather'))
  .key('Y', ore('lead'))
  .register()

// Nest Box
mods.minecraft.crafting.shapedBuilder()
  .name('animal/nest_box')
  .output(item('tfg:animal/nest_box'))
  .row('Y Y')
  .row('XYX')
  .row('XXX')
  .key('X', ore('lumber'))
  .key('Y', ore('straw'))
  .register()
