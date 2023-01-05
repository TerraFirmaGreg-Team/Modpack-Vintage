import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Rhea as IItemStack[] = [
	<extraplanets:rhea:3>,
	<extraplanets:rhea:4>,
	<extraplanets:rhea:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Rhea {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:rhea>, <extraplanets:rhea:1>, <extraplanets:rhea:2>, <metaitem:dustStoneRhea>, 5, 5);

// Пыль Реи
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneRhea> * 3)
   .chancedOutput(<metaitem:dustGraphite>, 3700, 1200)
   .chancedOutput(<metaitem:dustIlmenite>, 1100, 500)
   .chancedOutput(<metaitem:dustIridium>, 1150, 500)
   .chancedOutput(<metaitem:dustOsmium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();