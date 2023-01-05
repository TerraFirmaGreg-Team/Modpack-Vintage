import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Pluto as IItemStack[] = [
   <extraplanets:pluto:3>,
   <extraplanets:pluto:4>,
   <extraplanets:pluto:5>,
   <extraplanets:pluto:6>,
   <extraplanets:pluto:7>,
   <extraplanets:pluto_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Pluto {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("pluto", -19, 2048, 17);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:pluto_air> * 10000)
   .fluidOutputs(<liquid:nitrogen> * 4200)
   .fluidOutputs(<liquid:carbon_monoxide> * 2100)
   .fluidOutputs(<liquid:methane> * 1700)
   .duration(1600).EUt(1750400).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:pluto_liquid_air> * 1200000)
   .fluidOutputs(<liquid:nitrogen> * 540000)
   .fluidOutputs(<liquid:carbon_monoxide> * 170000)
   .fluidOutputs(<liquid:methane> * 100000)
   .fluidOutputs(<liquid:tritium> * 37500)
   .fluidOutputs(<liquid:xenon> * 26000)
   .duration(2000).EUt(1900520).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:pluto>, <extraplanets:pluto:1>, <extraplanets:pluto:2>, <metaitem:dustStonePluto>, 8, 8);

// Пыль Плутона
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStonePluto> * 3)
   .chancedOutput(<metaitem:dustWulfenite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGraphite>, 1100, 500)
   .chancedOutput(<metaitem:dustPlutonium>, 1150, 500)
   .chancedOutput(<metaitem:dustNaquadah>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();