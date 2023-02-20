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

val ItemsToRemove as IItemStack[] = [
   <aenetvistool:net_visualizer>
];


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

for item in ItemsToRemove{
   recipes.remove(item);
}

recipes.removeByMod("aeadditions");
recipes.removeByMod("ae2fc");
recipes.removeByMod("extracpus");