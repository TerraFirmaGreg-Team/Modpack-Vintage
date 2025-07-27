// MODS_LOADED: catwalks


def removeAndHide = [
  item('catwalks:stair')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
