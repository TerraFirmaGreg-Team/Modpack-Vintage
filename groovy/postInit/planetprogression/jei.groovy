// MODS_LOADED: planetprogression

// --- Массивы
def hideCategory = [
    "planetprogression.satellite.rocket",
    "planetprogression.satellite.builder"
]

def removeAndHide = [
	item('planetprogression:telescope_fake_block'),
   	item('planetprogression:block_multi'),
	item('planetprogression:satellite_builder'),
	item('planetprogression:advanced_launch_pad_full')
]

def removeRecipe = [
	item('planetprogression:satellite_module_basic'),
	item('planetprogression:dish_keycard'),
	item('planetprogression:advanced_launch_pad'),
	item('planetprogression:satellite_launcher'),
	item('planetprogression:satellite_controller'),
	item('planetprogression:telescope')
]

// --- Удаление рецептов
for(item in hideCategory) {
	mods.jei.hideCategory(item)
}

for (item in removeAndHide) {
   mods.jei.removeAndHide(item)
}

for (item in removeRecipe) {
	crafting.removeByOutput(item)
}
