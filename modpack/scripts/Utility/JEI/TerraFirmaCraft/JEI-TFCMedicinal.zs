#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<tfcmedicinal:catalyst>.withTag({Fluid: {FluidName: "acuity_concoction", Amount: 100}}),
	<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "acuity_concoction", Amount: 100}})
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}