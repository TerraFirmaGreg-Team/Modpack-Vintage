import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Titan as IItemStack[] = [
   <extraplanets:titan:3>,
   <extraplanets:titan:4>,
   <extraplanets:titan:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Titan {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("titan", -1508, 128, 13);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:titan_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 9500)
   .duration(1600).EUt(39400).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:titan_liquid_air> * 800000)
   .fluidOutputs(<liquid:carbon> * 280000)
   .fluidOutputs(<liquid:oxygen> * 510000)
   .duration(2000).EUt(150880).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:titan>, <extraplanets:titan:1>, <extraplanets:titan:2>, <metaitem:dustStoneTitan>, 5, 5);

// Пыль Титана
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneTitan> * 3)
   .chancedOutput(<metaitem:dustBeryllium>, 3700, 1200)
   .chancedOutput(<metaitem:dustGold>, 1100, 500)
   .chancedOutput(<metaitem:dustRutile>, 1150, 500)
   .chancedOutput(<metaitem:dustTinyNaquadah>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Methane Surface
extractor.recipeBuilder()
   .inputs(<extraplanets:titan:6>)
   .fluidOutputs([<liquid:methane_fluid> * 780])
   .duration(1250).EUt(480).buildAndRegister();

// Methane Sub-Surface
extractor.recipeBuilder()
   .inputs(<extraplanets:titan:7>)
   .fluidOutputs([<liquid:methane_fluid> * 620])
   .duration(1250).EUt(480).buildAndRegister();

// Камни Титана
Function.GenerateRecipesForSurfaceStones1(<extraplanets:titan:8>, <metaitem:dustStoneTitan>, 5, 5);