// MODS_LOADED: hgp
// ---- Удаление рецептов

import classes.array.HGP

def removeRecipe = [
  item('hgp:hgppane')
]


for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

for (item in HGP.horizontalGlassPanes) {
  crafting.removeByOutput(item)
}
