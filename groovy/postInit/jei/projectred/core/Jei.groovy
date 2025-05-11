// MODS_LOADED: projectred-core


def removeAndHide = [
  item('projectred-core:resource_item', 100),
  item('projectred-core:resource_item', 101),
  item('projectred-core:resource_item', 102),
  item('projectred-core:resource_item', 103),
  item('projectred-core:resource_item', 104),
  item('projectred-core:resource_item', 105),
  item('projectred-core:resource_item', 200),
  item('projectred-core:resource_item', 201),
  item('projectred-core:resource_item', 202),
  item('projectred-core:resource_item', 250),
  item('projectred-core:resource_item', 251),
  item('projectred-core:resource_item', 252),
  item('projectred-core:resource_item', 300),
  item('projectred-core:resource_item', 301),
  item('projectred-core:resource_item', 310),
  item('projectred-core:resource_item', 311),
  item('projectred-core:resource_item', 312),
  item('projectred-core:resource_item', 320),
  item('projectred-core:resource_item', 341),
  item('projectred-core:resource_item', 342),
  item('projectred-core:resource_item', 400),
  item('projectred-core:resource_item', 401),
  item('projectred-core:resource_item', 402),
  item('projectred-core:resource_item', 410),
  item('projectred-core:drawplate'),
  item('projectred-core:screwdriver')

]


for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}


