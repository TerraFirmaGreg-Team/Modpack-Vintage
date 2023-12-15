// MODS_LOADED: aeadditions

// --- Массивы

def hide = [
  item('aeadditions:pattern.fluid').withNbt([Fluid: [FluidName: '*.*', Amount: 1000]])
]

def removeAndHide = [
  item('aeadditions:certustank'),
  item('aeadditions:vibrantchamberfluid'),
  item('aeadditions:terminal.universal.wireless'),
  item('aeadditions:terminal.fluid.wireless'),
  item('aeadditions:part.base', 2),
  item('aeadditions:part.base', 3),
  item('aeadditions:fluidcrafter'),
  item('aeadditions:gas_interface'),
  item('aeadditions:fluid.item'),
  item('aeadditions:pattern.crafting'),
  item('aeadditions:pattern.fluid')
]

def removeRecipe = [
  item('aeadditions:fluidfiller'),
  item('aeadditions:part.base'),
  item('aeadditions:part.base', 1),
  item('aeadditions:storage.fluid'),
  item('aeadditions:storage.fluid', 1),
  item('aeadditions:storage.fluid', 2),
  item('aeadditions:storage.fluid.portable'),
  item('aeadditions:storage.physical'),
  item('aeadditions:storage.physical', 1),
  item('aeadditions:storage.physical', 2),
  item('aeadditions:storage.physical', 3),
  item('aeadditions:storage.physical', 4),
  item('aeadditions:storage.component'),
  item('aeadditions:storage.component', 1),
  item('aeadditions:storage.component', 2),
  item('aeadditions:storage.component', 3),
  item('aeadditions:storage.component', 4),
  item('aeadditions:storage.component', 5),
  item('aeadditions:storage.component', 6),
  item('aeadditions:storage.casing'),
  item('aeadditions:storage.casing', 1),
  item('aeadditions:hardmedrive'),
  item('extracpus:crafting_storage_256k'),
  item('extracpus:crafting_storage_1024k'),
  item('extracpus:crafting_storage_4096k'),
  item('extracpus:crafting_storage_16384k'),
  item('aenetvistool:net_visualizer')
]

def removeByRecipeName = [
  'aeadditions:oc/upgradet1',
  'aeadditions:oc/upgradet2',
  'aeadditions:oc/upgradet3',
  'aeadditions:ctoragecells/fluid/e2acasing',
]

// --- Удаление рецептов

for (item in hide) {
  mods.jei.hide(item)
}

for (item in removeAndHide) {
  mods.jei.removeAndHide(item)
}

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in removeByRecipeName) {
  crafting.remove(item)
}
