#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:quartz_stairs>,
	<appliedenergistics2:quartz_slab>,
	<appliedenergistics2:quartz_pillar>,
	<appliedenergistics2:quartz_pillar_stairs>,
	<appliedenergistics2:quartz_pillar_slab>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:chiseled_quartz_stairs>,
	<appliedenergistics2:chiseled_quartz_slab>,
	<appliedenergistics2:material>,
	<appliedenergistics2:material:5>,
	<appliedenergistics2:material:46>,
	<appliedenergistics2:encoded_pattern>,
	<appliedenergistics2:material:21>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}