#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
   <architecturecraft:sawblade>,
	<architecturecraft:largepulley> 
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

recipes.removeByMod("architecturecraft");
