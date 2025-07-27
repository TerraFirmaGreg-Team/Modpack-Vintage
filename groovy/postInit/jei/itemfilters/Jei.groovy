// MODS_LOADED: itemfilters


def removeAndHide = [
  item('itemfilters:filter')
]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
