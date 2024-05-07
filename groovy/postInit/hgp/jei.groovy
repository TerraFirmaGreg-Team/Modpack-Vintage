// MODS_LOADED: hgp
package hgp

import classes.array.HGP


// --- Удаление рецептов

for (item in HGP.horizontalGlassPanes) {
    crafting.removeByOutput(item)
}

crafting.removeByOutput(item('hgp:hgppane'))
