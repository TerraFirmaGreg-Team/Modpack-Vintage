// MODS_LOADED: tfcmedicinal
package tfcmedicinal

// --- Массивы

def hideCategory = [
        "mpestle"
]

def removeAndHide = [
        item('tfcmedicinal:catalyst').withNbt(["Fluid": ["FluidName": "acuity_concoction", "Amount": 100]]),
        item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "acuity_concoction", "Amount": 100]])
]


// --- Удаление рецептов

for (item in hideCategory) {
    mods.jei.category.hideCategory(item)
}

for (item in removeAndHide) {
    mods.jei.ingredient.removeAndHide(item)
}
