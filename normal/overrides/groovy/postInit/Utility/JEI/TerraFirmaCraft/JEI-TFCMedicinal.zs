#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack


// --- Массивы

def (RemoveAndHide) = [
	item('tfcmedicinal:catalyst').withNbt({Fluid: {FluidName: "acuity_concoction", Amount: 100}}),
	item('tfcmedicinal:medicine_vial').withNbt({Fluid: {FluidName: "acuity_concoction", Amount: 100}})
]


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}