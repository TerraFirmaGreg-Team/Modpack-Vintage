

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
	item('littletiles:premade').withNbt([structure: [id: "exporter"]]),
	item('littletiles:premade').withNbt([structure: [id: "importer"]]),
	item('littletiles:premade').withNbt([structure: [id: "structure_builder"]]),
	item('littletiles:premade').withNbt([structure: [id: "blankomatic"]]),
	item('littletiles:premade').withNbt([structure: [id: "workbench"]]),
	item('littletiles:signal_converter'),
	item('littletiles:lttransparentcoloredblock', 5),
	item('littletiles:ltcoloredblock', 12),
	item('littletiles:ltstorageblocktile')
]

// --- Удаление рецептов

// Удаление рецептов
for (item in removeRecipe) {
    crafting.removeByOutput(item)
}