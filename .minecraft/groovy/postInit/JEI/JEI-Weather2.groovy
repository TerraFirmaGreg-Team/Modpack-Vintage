

// --- Массивы

def removeAndHide = [
	item('weather2:sand_layer_placeable'),
	item('weather2:weather_machine'),
	item('weather2:pocket_sand'),
	item('weather2:weather_item')
]


// --- Удаление рецептов

for (item in removeAndHide) {
   mods.jei.removeAndHide(item)
}