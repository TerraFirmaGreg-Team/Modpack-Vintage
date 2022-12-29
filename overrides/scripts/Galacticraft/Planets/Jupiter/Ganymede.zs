import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Ganymede as IItemStack[] = [
   <extraplanets:ganymede:3>,
   <extraplanets:ganymede:4>,
   <extraplanets:ganymede:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Ganymede {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера



// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:ganymede>, <extraplanets:ganymede:1>, <extraplanets:ganymede:2>, <metaitem:dustStoneGanymede>, 4, 4);

// Пыль Ганнимеда
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneGanymede> * 3)
   .chancedOutput(<metaitem:dustBrownLimonite>, 3700, 1200)
   .chancedOutput(<metaitem:dustChalcopyrite>, 1100, 500)
   .chancedOutput(<metaitem:dustIlmenite>, 1150, 500)
   .chancedOutput(<metaitem:dustMagnetite>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Infected Water
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:infected_water_fluid> * 1000])
   .fluidOutputs([<liquid:carbon_dioxide> * 96])
   .duration(1650).EUt(4250).buildAndRegister();