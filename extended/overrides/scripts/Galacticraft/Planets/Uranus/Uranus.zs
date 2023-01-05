import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Uranus as IItemStack[] = [
   <extraplanets:uranus:3>,
   <extraplanets:uranus:4>,
   <extraplanets:uranus:7>,
   <extraplanets:uranus:8>,
   <extraplanets:uranus_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Uranus {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("uranus", -17, 256, 14);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:uranus_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600).EUt(131072).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:uranus_liquid_air> * 900000)
   .fluidOutputs(<liquid:hydrogen> * 810700)
   .fluidOutputs(<liquid:helium> * 20000)
   .duration(2000).EUt(491520).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:uranus>, <extraplanets:uranus:1>, <extraplanets:uranus:2>, <metaitem:dustStoneUranus>, 6, 6);

// Пыль Урана
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneUranus> * 3)
   .chancedOutput(<metaitem:dustDryIce>, 3700, 1200)
   .chancedOutput(<metaitem:dustDryIce>, 1100, 500)
   .chancedOutput(<metaitem:dustDryIce>, 1150, 500)
   .chancedOutput(<metaitem:dustDryIce>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Frozen Water
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:frozen_water_fluid> * 1000])
   .fluidOutputs([<liquid:water> * 1000, <liquid:carbon> * 740])
   .duration(1650).EUt(4550).buildAndRegister();