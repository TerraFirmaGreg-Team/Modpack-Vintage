import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Jupiter as IItemStack[] = [
   <extraplanets:jupiter:3>,
   <extraplanets:jupiter:4>,
   <extraplanets:jupiter:5>,
   <extraplanets:jupiter:6>,
   <extraplanets:jupiter:7>,
   <extraplanets:jupiter:8>,
   <extraplanets:jupiter:11>,
   <extraplanets:jupiter:12>,
   <extraplanets:jupiter:13>,
   <extraplanets:jupiter_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Jupiter {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("jupiter", -15, 8, 8);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:jupiter_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8700)
   .fluidOutputs(<liquid:helium> * 700)
   .duration(1600).EUt(8192).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:jupiter_liquid_air> * 300000)
   .fluidOutputs(<liquid:hydrogen> * 190700)
   .fluidOutputs(<liquid:helium> * 17000)
   .fluidOutputs(<liquid:radon> * 2500)
   .fluidOutputs(<liquid:tritium> * 1500)
   .fluidOutputs(<liquid:krypton> * 1000)
   .fluidOutputs(<liquid:xenon> * 700)
   .duration(2000).EUt(31240).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:jupiter>, <extraplanets:jupiter:1>, <extraplanets:jupiter:2>, <metaitem:dustStoneJupiter>, 4, 4);

// Оранжевый песок
Function.GenerateRecipesForSurfaceStones1(<extraplanets:orange_sand>, <metaitem:dustStoneJupiter>, 4, 4);

// Красный песок
Function.GenerateRecipesForSurfaceStones1(<extraplanets:red_sand>, <metaitem:dustStoneJupiter>, 4, 4);

// Оранжевый песчанник
Function.GenerateRecipesForSurfaceStones1(<extraplanets:orange_sandstone>, <metaitem:dustStoneJupiter>, 4, 4);

// Красный песчанник
Function.GenerateRecipesForSurfaceStones1(<extraplanets:red_sandstone>, <metaitem:dustStoneJupiter>, 4, 4);

// Пыль юпитера
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneJupiter> * 3)
   .chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
   .chancedOutput(<metaitem:dustBasalticMineralSand>, 1100, 500)
   .chancedOutput(<metaitem:dustPlatinum>, 1150, 500)
   .chancedOutput(<metaitem:dustChrome>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Магма
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:magma_fluid> * 1000])
   .fluidOutputs([<liquid:lava> * 744, <liquid:platinum> * 14])
   .duration(2650).EUt(7600).buildAndRegister();

// Слиток вулкана
electric_blast_furnace.recipeBuilder()
   .inputs(<extraplanets:volcanic_rock> * 3)
   .outputs([<extraplanets:tier5_items:12>])
   .property("temperature", 1700)
   .duration(250).EUt(1640).buildAndRegister();