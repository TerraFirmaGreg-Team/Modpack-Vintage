// MODS_LOADED: projectred-core
// ---- Удаление рецептов


def removeRecipe = [
  item('projectred-core:resource_item', 20),
  item('projectred-core:resource_item', 21),
  item('projectred-core:multimeter'),
  item('projectred-core:resource_item', 500),
  item('projectred-core:resource_item', 501),
  item('projectred-core:resource_item', 502),
  item('projectred-core:resource_item', 503),
  item('projectred-core:resource_item', 504),
  item('projectred-core:resource_item', 505),
  item('projectred-core:resource_item', 506),
  item('projectred-core:resource_item', 507),
  item('projectred-core:resource_item', 508),
  item('projectred-core:resource_item', 509),
  item('projectred-core:resource_item', 510),
  item('projectred-core:resource_item', 511),
  item('projectred-core:resource_item', 512),
  item('projectred-core:resource_item', 513),
  item('projectred-core:resource_item', 514),
  item('projectred-core:resource_item', 515)
]

def removeRecipeFurnace = [
  item('projectred-core:resource_item', 250),
  item('projectred-core:resource_item', 251),
  item('projectred-core:resource_item', 252),
  item('projectred-core:resource_item', 310),
  item('projectred-core:resource_item', 311),
  item('projectred-core:resource_item', 312)
]

for (item in removeRecipe) {
  crafting.removeByOutput(item)
}


for (item in removeRecipeFurnace) {
  furnace.removeByInput(item)
}
