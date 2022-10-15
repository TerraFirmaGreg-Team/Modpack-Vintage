import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Eris as IItemStack[] = [
	<extraplanets:eris:3>,
	<extraplanets:eris:4>,
	<extraplanets:eris:5>,
	<extraplanets:eris:6>,
	<extraplanets:eris:7>,
	<extraplanets:eris_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Eris {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:eris>, <extraplanets:eris:1>, <extraplanets:eris:2>, <metaitem:dustStoneEris>, 9, 9);

// Пыль Эриды
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneEris> * 3)
	.chancedOutput(<metaitem:dustBeryllium>, 3700, 1200)
	.chancedOutput(<metaitem:dustCadmium>, 1100, 500)
	.chancedOutput(<metaitem:dustCassiterite>, 1150, 500)
	.chancedOutput(<metaitem:dustPlutonium>, 950, 500)
	.duration(1250).EUt(1640).buildAndRegister();