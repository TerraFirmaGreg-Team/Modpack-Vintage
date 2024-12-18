// MODS_LOADED: cellars


// --- Массивы

def removeAndHide = [
       
]

def removeRecipe = [
        item('cellars:cellar_wall'),
        item('cellars:cellar_door')
]


// --- Удаление рецептов

for (item in removeAndHide) {
    mods.jei.ingredient.removeAndHide(item)
}

// Удаление рецептов верстака
for (item in removeRecipe) {
    crafting.removeByOutput(item)
}
