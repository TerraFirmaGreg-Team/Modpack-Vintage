// MODS_LOADED: tfcflorae
// ---- Удаление рецептов


def removeRecipesByName = [
  "tfcflorae:wood/joshua_tree2/joshua_tree_log",
  "tfcflorae:wood/joshua_tree/joshua_tree_log_reverse",
  "tfcflorae:wood/fruit_tree/firmalife/fence/cassia_cinnamon",
  "tfcflorae:wood/fruit_tree/firmalife/fence/ceylon_cinnamon",
  "tfcflorae:wood/fruit_tree/firmalife/fence_gate/cassia_cinnamon",
  "tfcflorae:wood/fruit_tree/firmalife/fence_gate/ceylon_cinnamon",
  "tfcflorae:yeast"
]

for (item in removeRecipesByName) {
  crafting.remove(item)
}
