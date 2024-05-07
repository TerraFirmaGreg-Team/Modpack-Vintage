// MODS_LOADED: horsepower
package horsepower

// --- Массивы

def removeAndHide = [
        item('horsepower:flour'),
        item('horsepower:dough')
]


// --- Удаление рецептов

for (item in removeAndHide) {
    mods.jei.ingredient.removeAndHide(item)
}
