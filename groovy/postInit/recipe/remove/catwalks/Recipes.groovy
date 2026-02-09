// MODS_LOADED: catwalks
// ---- Удаление рецептов


def removeRecipe = [
  item('catwalks:cable'),
  item('catwalks:ladder'),
  item('catwalks:blowtorch')
]

def removeRecipesByName = [
  "catwalks:catwalks/glass_catwalks",
  "catwalks:catwalks/classic_catwalks",
  "catwalks:catwalks/steel_catwalks",
  "catwalks:catwalks/custom_catwalks"
]

for (item in removeRecipe) {
  mods.minecraft.crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
  mods.minecraft.crafting.remove(item)
}
