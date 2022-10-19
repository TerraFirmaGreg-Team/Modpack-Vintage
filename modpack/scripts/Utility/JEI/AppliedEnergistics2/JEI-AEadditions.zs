#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<aeadditions:certustank>,
	<aeadditions:vibrantchamberfluid>,
	<aeadditions:terminal.universal.wireless>,
	<aeadditions:terminal.fluid.wireless>,
	<aeadditions:part.base:2>
];


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

recipes.removeByMod("aeadditions");