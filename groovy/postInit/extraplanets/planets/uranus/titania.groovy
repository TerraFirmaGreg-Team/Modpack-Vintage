// MODS_LOADED: extraplanets
package extraplanets.planets.uranus

import classes.Function

// Массивы
def titania = [
        item('extraplanets:titania:3'),
        item('extraplanets:titania:4'),
        item('extraplanets:titania:5')
]

// --- Удаление рецептов

// Удаление рецептов
for (item in titania) {
    mods.jei.ingredient.removeAndHide(item)
}

// --- Добавление рецептов

// --- Атмосфера


// --- Породы