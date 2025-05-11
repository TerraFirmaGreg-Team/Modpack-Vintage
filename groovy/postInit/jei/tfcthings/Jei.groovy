// MODS_LOADED: tfcthings


def removeAndHide = [
  item('tfcthings:pigvil'),
  item('tfcthings:pigvil_black_steel'),
  item('tfcthings:pigvil_blue_steel'),
  item('tfcthings:pigvil_red_steel'),
  item('tfcthings:pigvil_purple_steel'),
  item('tfcthings:mold/unfired/prospectors_hammer_head'),
  item('tfcthings:mold/prospectors_hammer_head'),
  item('tfcthings:pig_iron_carrot'),
  item('tfcthings:black_steel_carrot'),
  item('tfcthings:blue_steel_carrot'),
  item('tfcthings:red_steel_carrot'),
  // Crowns
  item('tfcthings:crown/gold_beryl'),
  item('tfcthings:crown/gold_agate'),
  item('tfcthings:crown/gold_jade'),
  item('tfcthings:crown/gold_jasper'),
  item('tfcthings:crown/gold_tourmaline'),
  item('tfcthings:crown/platinum_jasper'),
  item('tfcthings:crown/platinum_jade'),
  item('tfcthings:crown/platinum_agate'),
  item('tfcthings:crown/platinum_beryl'),
  item('tfcthings:crown/platinum_tourmaline'),
  // Затачивалки (Временно)
  item('tfcthings:honing_steel'),
  item('tfcthings:honing_steel_diamond'),
  item('tfcthings:honing_steel_head'),
  item('tfcthings:honing_steel_head_diamond'),
  item('tfcthings:grindstone_quartz'),
  item('tfcthings:grindstone_steel'),
  item('tfcthings:grindstone_diamond'),
  item('tfcthings:diamond_grit'),
  item('tfcthings:grindstone_base'),
  item('tfcthings:whetstone')
]


// --- Удаление рецептов

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}


