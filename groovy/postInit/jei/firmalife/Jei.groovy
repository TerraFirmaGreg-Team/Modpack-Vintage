// MODS_LOADED: firmalife


def removeAndHide = [
  item('firmalife:finished_pizza'),
  item('firmalife:cooked_pizza')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}

