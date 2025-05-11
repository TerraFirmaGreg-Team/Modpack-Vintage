// MODS_LOADED: architecturecraft


def removeAndHide = [
  item('architecturecraft:sawblade'),
  item('architecturecraft:largepulley')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
