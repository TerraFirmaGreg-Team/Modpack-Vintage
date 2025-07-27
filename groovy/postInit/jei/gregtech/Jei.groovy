// MODS_LOADED: gregtech


def removeAndHide = [
  // Marble and Basalt
  item('gregtech:stone_tiled_small', 2),
  item('gregtech:stone_bricks_small', 2),
  item('gregtech:stone_windmill_a', 2),
  item('gregtech:stone_windmill_b', 2),
  item('gregtech:stone_bricks_square', 2),
  item('gregtech:stone_smooth', 3),
  item('gregtech:stone_cobble', 3),
  item('gregtech:stone_cobble_mossy', 3),
  item('gregtech:stone_polished', 3),
  item('gregtech:stone_bricks', 3),
  item('gregtech:stone_bricks_cracked', 3),
  item('gregtech:stone_bricks_mossy', 3),
  item('gregtech:stone_chiseled', 3),
  item('gregtech:stone_tiled', 3),
  item('gregtech:stone_tiled_small', 3),
  item('gregtech:stone_bricks_small', 3),
  item('gregtech:stone_windmill_a', 3),
  item('gregtech:stone_windmill_b', 3),
  item('gregtech:stone_bricks_square', 3),
  item('gregtech:stone_smooth', 2),
  item('gregtech:stone_cobble', 2),
  item('gregtech:stone_cobble_mossy', 2),
  item('gregtech:stone_polished', 2),
  item('gregtech:stone_bricks', 2),
  item('gregtech:stone_bricks_cracked', 2),
  item('gregtech:stone_bricks_mossy', 2),
  item('gregtech:stone_chiseled', 2),
  item('gregtech:stone_tiled', 2),
  // Tools
  /*
  metaitem('toolHeadSwordFlint'),
  metaitem('toolHeadPickaxeFlint'),
  metaitem('toolHeadShovelFlint'),
  metaitem('toolHeadAxeFlint'),
  metaitem('toolHeadHoeFlint'),
  metaitem('toolHeadHammerFlint'),
  metaitem('toolHeadFileFlint'),
  metaitem('toolHeadSawFlint'),
  metaitem('toolHeadSenseFlint'),
  */
  // Rubber Stuff
  item('gregtech:planks'),
  item('gregtech:rubber_log'),
  item('gregtech:rubber_leaves'),
  item('gregtech:rubber_sapling'),
  // Primitive Blast Furnace
  metaitem('primitive_blast_furnace.bronze'),
  // Flour
  metaitem('dustWheat'),
  metaitem('dustSmallWheat'),
  metaitem('dustTinyWheat'),
  // Compressed Clay
  metaitem('compressed.fireclay'),
  // Compressed FireClay
  metaitem('compressed.fireclay'),
  metaitem('dustFireclay'),
  metaitem('dustSmallFireclay'),
  metaitem('dustTinyFireclay'),
  // Wooden Barrel
  metaitem('drum.wood'),
  // Nether dust
  metaitem('dustNetherrack'),
  metaitem('dustSmallNetherrack'),
  metaitem('dustTinyNetherrack')
]


// --- Удаление рецептов

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}

