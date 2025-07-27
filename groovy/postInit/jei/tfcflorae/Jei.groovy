// MODS_LOADED: tfcflorae


def hideCategory = [
  "tfcflorae.casting"
]

def removeAndHide = [
  item('tfcflorae:tools/flint/hammer/flint'),
  item('tfcflorae:tools/flint/hammer_head/flint'),
  item('tfcflorae:container/leather_bag_piece'),
  item('tfcflorae:container/leather_bag'),
  item('tfcflorae:container/pineapple_leather_bag_piece'),
  item('tfcflorae:container/pineapple_leather_bag'),
  // Bows
  item('tfcflorae:tools/bows/shortbow/shortbow'),
  item('tfcflorae:tools/bows/longbow/longbow'),
  item('tfcflorae:tools/bows/bonebow/bonebow'),
  item('tfcflorae:tools/bows/bow_of_lost_souls/bow_of_lost_souls'),
  item('tfcflorae:tools/bows/elite_power_bow/elite_power_bow'),
  item('tfcflorae:tools/bows/green_menace/green_menace'),
  item('tfcflorae:tools/bows/hunting_bow/hunting_bow'),
  item('tfcflorae:tools/bows/nocturnal_bow/nocturnal_bow'),
  item('tfcflorae:tools/bows/red_snake/red_snake'),
  item('tfcflorae:tools/bows/rosebow/rosebow'),
  item('tfcflorae:tools/bows/sabrewing/sabrewing'),
  // Flint Tools
  item('tfcflorae:tools/flint/axe/flint'),
  item('tfcflorae:tools/flint/hoe/flint'),
  item('tfcflorae:tools/flint/javelin/flint'),
  item('tfcflorae:tools/flint/knife/flint'),
  item('tfcflorae:tools/flint/shovel/flint'),
  // Flint Tool Heads
  item('tfcflorae:tools/flint/axe_head/flint'),
  item('tfcflorae:tools/flint/shovel_head/flint'),
  item('tfcflorae:tools/flint/javelin_head/flint'),
  item('tfcflorae:tools/flint/knife_head/flint'),
  item('tfcflorae:tools/flint/hoe_head/flint')
]


for (item in hideCategory) {
  mods.jei.category.hideCategory(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}

