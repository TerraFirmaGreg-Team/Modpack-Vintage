#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<weather2:sand_layer_placeable>,
	<weather2:weather_machine>,
	<weather2:pocket_sand>,
	<weather2:weather_item>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}