// MODS_LOADED: appliedenergistics2


def hideCategory = [
  "appliedenergistics2.inscriber"
]

def hide = [
  item('appliedenergistics2:creative_storage_cell'),
  item('appliedenergistics2:creative_energy_cell')
]

def removeAndHide = [
  item('appliedenergistics2:quartz_block'),
  item('appliedenergistics2:quartz_stairs'),
  item('appliedenergistics2:quartz_slab'),
  item('appliedenergistics2:quartz_pillar'),
  item('appliedenergistics2:quartz_pillar_stairs'),
  item('appliedenergistics2:quartz_pillar_slab'),
  item('appliedenergistics2:chiseled_quartz_block'),
  item('appliedenergistics2:chiseled_quartz_stairs'),
  item('appliedenergistics2:chiseled_quartz_slab'),
  item('appliedenergistics2:material'),
  item('appliedenergistics2:material', 5),
  item('appliedenergistics2:material', 21),
  item('appliedenergistics2:material', 46),
  item('appliedenergistics2:encoded_pattern')
]


for (item in hideCategory) {
  mods.jei.category.hideCategory(item)
}

for (item in hide) {
  mods.jei.ingredient.hide(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}

