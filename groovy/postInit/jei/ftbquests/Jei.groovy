// MODS_LOADED: ftbquests


def hideCategory = [
  "ftbquests.quests"
]

def removeAndHide = [
  item('ftbquests:chest'),
  item('ftbquests:barrier'),
  item('ftbquests:detector:1'),
  item('ftbquests:detector'),
  item('ftbquests:reward_collector'),
  item('ftbquests:loot_crate_opener'),
  item('ftbquests:loot_crate_storage')
]


for (item in hideCategory) {
  mods.jei.category.hideCategory(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
