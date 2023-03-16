

// --- Массивы

def removeAndHide = [
	item('tfcmedicinal:catalyst').withNbt(["Fluid": ["FluidName": "acuity_concoction", "Amount": 100]]),
	item('tfcmedicinal:medicine_vial').withNbt(["Fluid": ["FluidName": "acuity_concoction", "Amount": 100]])
]


// --- Удаление рецептов

for (item in removeAndHide) {
   mods.jei.removeAndHide(item)
}