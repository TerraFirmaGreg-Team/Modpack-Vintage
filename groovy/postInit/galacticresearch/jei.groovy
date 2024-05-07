// MODS_LOADED: galacticresearch
package galacticresearch

// --- Массивы
def hideCategory = [
]

def removeAndHide = [
]

def removeRecipe = [
        item('galacticresearch:mission_control_station'),
        item('galacticresearch:launchpad_tower'),
        item('galacticresearch:probe'),
        item('galacticresearch:telescope')
]

// --- Удаление рецептов

for (item in hideCategory) {
    mods.jei.category.hideCategory(item)
}

for (item in removeAndHide) {
    mods.jei.ingredient.removeAndHide(item)
}

for (item in removeRecipe) {
    crafting.removeByOutput(item)
}
