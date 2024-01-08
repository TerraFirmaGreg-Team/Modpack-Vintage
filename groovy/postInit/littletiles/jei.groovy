// MODS_LOADED: littletiles


// --- Массивы

def removeRecipe = [
	item('littletiles:recipeadvanced'),
	item('littletiles:saw'),
	item('littletiles:container'),
	item('littletiles:hammer'),
	item('littletiles:wrench'),
	item('littletiles:chisel'),
	item('littletiles:colortube'),
	item('littletiles:grabber'),
	item('littletiles:signal_converter'),
	item('littletiles:lttransparentcoloredblock', 5),
	item('littletiles:ltcoloredblock', 12),
	item('littletiles:ltstorageblocktile')
]

def removeRecipesByName = [
	'littletiles:exporter',
	'littletiles:importer',
	'littletiles:structure_builder',
	'littletiles:blankomatic',
	'littletiles:workbench',
]

// --- Удаление рецептов

// Удаление рецептов
for (item in removeRecipe) {
    crafting.removeByOutput(item)
}

for (item in removeRecipesByName) {
   crafting.remove(item)
}
