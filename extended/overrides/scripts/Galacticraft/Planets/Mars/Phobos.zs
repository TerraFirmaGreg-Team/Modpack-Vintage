import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Phobos as IItemStack[] = [
	<extraplanets:phobos:3>,
	<extraplanets:phobos:4>,
	<extraplanets:phobos:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Phobos {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:phobos>, <extraplanets:phobos:1>, <extraplanets:phobos:2>, <metaitem:dustStonePhobos>, 2, 2);

// Пыль фобоса
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStonePhobos> * 3)
	.chancedOutput(<metaitem:dustGarnierite>, 3700, 1200)
	.chancedOutput(<metaitem:dustGraphite>, 1100, 500)
	.chancedOutput(<metaitem:dustMagnetite>, 1150, 500)
	.chancedOutput(<metaitem:dustSulfur>, 950, 500)
	.duration(1250).EUt(512).buildAndRegister();