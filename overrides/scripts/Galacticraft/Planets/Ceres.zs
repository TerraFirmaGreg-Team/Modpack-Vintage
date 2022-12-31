import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Mercury as IItemStack[] = [
	<extraplanets:ceres:3>,
	<extraplanets:ceres:4>,
	<extraplanets:ceres:5>,
	<extraplanets:ceres:6>,
	<extraplanets:ceres:7>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Mercury {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:ceres>, <extraplanets:ceres:1>, <extraplanets:ceres:2>, <metaitem:dustStoneCeres>, 3, 3);

// Пыль цереры
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneCeres> * 3)
	.chancedOutput(<metaitem:dustBentonite>, 3700, 1200)
	.chancedOutput(<metaitem:dustBeryllium>, 1100, 500)
	.chancedOutput(<metaitem:dustBrownLimonite>, 1150, 500)
	.chancedOutput(<metaitem:dustChalcopyrite>, 950, 500)
	.duration(1250).EUt(512).buildAndRegister();

// Кристаллизированная вода
centrifuge.recipeBuilder()
	.fluidInputs([<liquid:salt_fluid> * 1000])
	.outputs([<extraplanets:iodide_salt> * 6])
	.duration(1250).EUt(512).buildAndRegister();