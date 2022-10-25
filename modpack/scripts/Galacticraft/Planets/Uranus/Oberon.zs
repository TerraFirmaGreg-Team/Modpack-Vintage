import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Oberon as IItemStack[] = [
	<extraplanets:oberon:3>,
	<extraplanets:oberon:4>,
	<extraplanets:oberon:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Oberon {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:oberon>, <extraplanets:oberon:1>, <extraplanets:oberon:2>, <metaitem:dustStoneOberon>, 6, 6);

// Пыль Оберона
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneOberon> * 3)
	.chancedOutput(<metaitem:dustBrownLimonite>, 3700, 1200)
	.chancedOutput(<metaitem:dustGalena>, 1100, 500)
	.chancedOutput(<metaitem:dustNaquadah>, 1150, 500)
	.chancedOutput(<metaitem:dustPlatinum>, 950, 500)
	.duration(1250).EUt(1640).buildAndRegister();