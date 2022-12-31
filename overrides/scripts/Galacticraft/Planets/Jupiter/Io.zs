import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Io as IItemStack[] = [
   <extraplanets:io:3>,
   <extraplanets:io:4>,
   <extraplanets:io:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Io {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("io", -1500, 16, 9);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:io_air> * 10000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 4100)
   .fluidOutputs(<liquid:sodium_potassium> * 650)
   .duration(1600).EUt(22600).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:io_liquid_air> * 400000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 82100)
   .fluidOutputs(<liquid:sodium_potassium> * 7600)
   .fluidOutputs(<liquid:ammonia> * 790)
   .duration(2000).EUt(32768).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:io>, <extraplanets:io:1>, <extraplanets:io:2>, <metaitem:dustStoneIo>, 4, 4);

// Пыль Ио
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneIo> * 3)
   .chancedOutput(<metaitem:dustGrossular>, 3700, 1200)
   .chancedOutput(<metaitem:dustMagnetite>, 1100, 500)
   .chancedOutput(<metaitem:dustPyrolusite>, 1150, 500)
   .chancedOutput(<metaitem:dustTin>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Ash Block
macerator.recipeBuilder()
   .inputs(<extraplanets:ash_rock>)
   .outputs(<metaitem:dustDarkAsh> * 8)
   .duration(1250).EUt(1640).buildAndRegister();

// Volcanic Rock
extractor.recipeBuilder()
   .inputs(<extraplanets:volcanic_rock>)
   .fluidOutputs([<liquid:lava> * 744])
   .outputs(<metaitem:dustDarkAsh> * 2)
   .duration(1250).EUt(1640).buildAndRegister();