// MODS_LOADED: hgp
// ---- Удаление рецептов

import classes.array.HGP

def removeRecipe = [
  item('hgp:hgppane')
]


for (item in removeRecipe) {
  mods.minecraft.crafting.removeByOutput(item)
}

for (item in HGP.horizontalGlassPanes) {
  mods.minecraft.crafting.removeByOutput(item)
}
