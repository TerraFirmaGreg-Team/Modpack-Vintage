// MODS_LOADED: ae2stuff


// --- Массивы
def hide = [

]

def removeAndHide = [

]

def removeRecipe = [
]

def removeByRecipeName = [

]

// --- Удаление рецептов

for (item in hide) {
    mods.jei.ingredient.hide(item)
}

for (item in removeAndHide) {
    mods.jei.ingredient.removeAndHide(item)
}

for (item in removeRecipe) {
    crafting.removeByOutput(item)
}

for (item in removeByRecipeName) {
    crafting.remove(item)
}
