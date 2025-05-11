// MODS_LOADED: projectred-fabrication

def removeAndHide = [
  item('projectred-fabrication:ic_chip', 1)
]

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
