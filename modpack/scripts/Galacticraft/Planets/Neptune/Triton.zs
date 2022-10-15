import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Triton as IItemStack[] = [
   <extraplanets:triton:3>,
   <extraplanets:triton:4>,
   <extraplanets:triton:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Triton {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("triton", -1504, 1024, 16);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:triton_air> * 10000)
   .fluidOutputs(<liquid:dinitrogen_tetroxide> * 4200)
   .fluidOutputs(<liquid:helium> * 100)
   .duration(1600).EUt(580466).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:triton_liquid_air> * 1100000)
   .fluidOutputs(<liquid:dinitrogen_tetroxide>* 240700)
   .fluidOutputs(<liquid:helium> * 2000)
   .duration(2000).EUt(840520).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:triton>, <extraplanets:triton:1>, <extraplanets:triton:2>, <metaitem:dustStoneTriton>, 7, 7);

// Пыль Тритона
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneTriton> * 3)
   .chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGalena>, 1100, 500)
   .chancedOutput(<metaitem:dustGrossular>, 1150, 500)
   .chancedOutput(<metaitem:dustNiobium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Nitrogen Ice
extractor.recipeBuilder()
   .inputs(<liquid:nitrogen_ice_fluid>)
   .fluidOutputs([<liquid:nitrogen_fluid> * 2100])
   .outputs(<metaitem:dustDryIce> * 17)
   .duration(1250).EUt(32550).buildAndRegister();