// MODS_LOADED: galacticraftplanets


def hide = [
  item('galacticraftplanets:rocket_t2', 4),
  item('galacticraftplanets:rocket_t3', 4),
]

def removeAndHide = [
  item('galacticraftplanets:slimeling_egg:*'),
  item('galacticraftplanets:creeper_egg'),
  item('galacticraftplanets:volcanic_pickaxe'),
  item('galacticraftplanets:web_torch:*'),
  item('galacticraftplanets:strange_seed:*'),
  // Креативные предметы
  item('galacticraftplanets:rocket_t2', 14),
  // Машины
  item('galacticraftplanets:mars_machine_t2', 8),
  item('galacticraftplanets:mars_machine_t2', 4),
  item('galacticraftplanets:mars_machine_t2'),
  item('galacticraftplanets:mars_machine'),
  item('galacticraftplanets:crashed_probe'),
  item('galacticraftplanets:basic_item_venus', 6),
  item('galacticraftplanets:carbon_fragments'),

  item('galacticraftplanets:mars'),
  item('galacticraftplanets:mars:1'),
  item('galacticraftplanets:mars:2'),
  item('galacticraftplanets:mars:3'),
  item('galacticraftplanets:treasure_t2'),
  item('galacticraftplanets:key'),
  item('galacticraftplanets:item_basic_mars'),
  item('galacticraftplanets:item_basic_mars:6'),
  item('galacticraftplanets:item_basic_mars:5'),
  item('galacticraftplanets:desh_pick'),
  item('galacticraftplanets:desh_pick_slime'),
  item('galacticraftplanets:desh_axe'),
  item('galacticraftplanets:desh_hoe'),
  item('galacticraftplanets:desh_spade'),
  item('galacticraftplanets:desh_sword'),
  item('galacticraftplanets:desh_helmet'),
  item('galacticraftplanets:desh_chestplate'),
  item('galacticraftplanets:desh_leggings'),
  item('galacticraftplanets:desh_boots'),

  item('galacticraftplanets:asteroids_block:3'),
  item('galacticraftplanets:asteroids_block:4'),
  item('galacticraftplanets:asteroids_block:5'),
  item('galacticraftplanets:asteroids_block:7'),
  item('galacticraftplanets:item_basic_asteroids'),
  item('galacticraftplanets:item_basic_asteroids:3'),
  item('galacticraftplanets:item_basic_asteroids:4'),
  item('galacticraftplanets:item_basic_asteroids:6'),
  item('galacticraftplanets:item_basic_asteroids:9'),
  item('galacticraftplanets:titanium_pickaxe'),
  item('galacticraftplanets:titanium_axe'),
  item('galacticraftplanets:titanium_hoe'),
  item('galacticraftplanets:titanium_shovel'),
  item('galacticraftplanets:titanium_sword'),
  item('galacticraftplanets:titanium_helmet'),
  item('galacticraftplanets:titanium_chestplate'),
  item('galacticraftplanets:titanium_leggings'),
  item('galacticraftplanets:titanium_boots'),

  item('galacticraftplanets:venus:6'),
  item('galacticraftplanets:venus:7'),
  item('galacticraftplanets:venus:8'),
  item('galacticraftplanets:venus:9'),
  item('galacticraftplanets:venus:10'),
  item('galacticraftplanets:venus:11'),
  item('galacticraftplanets:venus:12'),
  item('galacticraftplanets:venus:13'),
  item('galacticraftplanets:spout'),
  item('galacticraftplanets:basic_item_venus:1'),
  item('galacticraftplanets:basic_item_venus:4'),
  item('galacticraftplanets:treasure_t3'),
  item('galacticraftplanets:key_t3'),
  item('galacticraftplanets:cavern_vines')
]

for (item in hide) {
  mods.jei.ingredient.hide(item)
}

for (item in removeAndHide) {
  mods.jei.ingredient.removeAndHide(item)
}
