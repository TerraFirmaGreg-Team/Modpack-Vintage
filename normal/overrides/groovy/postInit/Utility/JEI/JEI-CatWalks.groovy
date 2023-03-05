

// --- Массивы

def removeRecipe = [
   item('catwalks:cable'),
   item('catwalks:catwalk').withNbt([material: "*"]),
   item('catwalks:ladder'),
   item('catwalks:blowtorch')
]

// --- Удаление рецептов

for (item in removeRecipe) {
	crafting.removeByOutput(item)
}
