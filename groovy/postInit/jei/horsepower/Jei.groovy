// MODS_LOADED: horsepower


def removeAndHide = [
  item('horsepower:flour'),
  item('horsepower:dough')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
