// MODS_LOADED: architecturecraft
// ---- Удаление рецептов


def removeRecipe = [
  item('architecturecraft:chisel'),
  item('architecturecraft:hammer'),
  item('architecturecraft:sawbench')
]


for (item in removeRecipe) {
  mods.minecraft.crafting.removeByOutput(item)
}
