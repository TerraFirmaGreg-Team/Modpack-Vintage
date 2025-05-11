// MODS_LOADED: nae2
// ---- Удаление рецептов

def removeRecipe = [
  item('nae2:material', 1),
  item('nae2:material', 2),
  item('nae2:material', 3),
  item('nae2:material', 4),
  item('nae2:material', 5),
  item('nae2:material', 6),
  item('nae2:material', 7),
  item('nae2:material', 8),
  item('nae2:storage_cell_256k'),
  item('nae2:storage_cell_1024k'),
  item('nae2:storage_cell_4096k'),
  item('nae2:storage_cell_16384k'),
  item('nae2:storage_cell_fluid_256k'),
  item('nae2:storage_cell_fluid_1024k'),
  item('nae2:storage_cell_fluid_4096k'),
  item('nae2:storage_cell_fluid_16384k'),
  item('nae2:storage_crafting_256k'),
  item('nae2:storage_crafting_1024k'),
  item('nae2:storage_crafting_4096k'),
  item('nae2:storage_crafting_16384k')
]

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

