#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<wpt:wpt_creative>,
	<wit:wit_creative>,
	<wft:wft_creative>,
	<wct:wct_creative>,
	<ae2wtlib:wut_creative>
];

val ItemsToRemove as IItemStack[] = [
   <wct:wct>,
   <wft:wft>,
   <wit:wit>,
   <wpt:wpt>,
   <ae2wtlib:infinity_booster_card>,
   <wct:magnet_card>,
   <aenetvistool:net_visualizer>
];


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

for item in ItemsToRemove{
   recipes.remove(item);
}

recipes.removeByMod("ae2fc");