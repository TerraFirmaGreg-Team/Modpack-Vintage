import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Deimos as IItemStack[] = [
	<extraplanets:deimos:3>,
	<extraplanets:deimos:4>,
	<extraplanets:deimos:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Deimos {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:deimos>, <extraplanets:deimos:1>, <extraplanets:deimos:2>, <metaitem:dustStoneDeimos>, 2, 2);

// Пыль деймоса
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneDeimos> * 3)
	.chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
	.chancedOutput(<metaitem:dustGarnierite>, 1100, 500)
	.chancedOutput(<metaitem:dustMagnetite>, 1150, 500)
	.chancedOutput(<metaitem:dustTetrahedrite>, 950, 500)
	.duration(1250).EUt(512).buildAndRegister();