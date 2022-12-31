import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Neptune as IItemStack[] = [
	<extraplanets:neptune:3>,
	<extraplanets:neptune:4>,
	<extraplanets:neptune:5>,
	<extraplanets:neptune:6>,
   <extraplanets:neptune:7>,
	<extraplanets:neptune:10>,
   <extraplanets:neptune:11>,
   <extraplanets:neptune_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Neptune {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("neptune", -18, 512, 15);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:neptune_air> * 10000)
	.fluidOutputs(<liquid:hydrogen> * 8800)
	.fluidOutputs(<liquid:helium> * 900)
	.duration(1600).EUt(524288).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:neptune_liquid_air> * 1000000)
   .fluidOutputs(<liquid:hydrogen> * 920700)
   .fluidOutputs(<liquid:helium> * 80000)
   .duration(2000).EUt(720520).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:neptune>, <extraplanets:neptune:1>, <extraplanets:neptune:2>, <metaitem:dustStoneNeptune>, 7, 7);

// Liquid Nitrogen
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:nitrogen_fluid> * 1000])
   .fluidOutputs([<liquid:nitrogen> * 4200])
   .duration(1650).EUt(4550).buildAndRegister();

// Radioacive water
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:radioactive_water_fluid> * 1000])
   .fluidOutputs([<liquid:nitrogen> * 730, <liquid:uranium> * 60, <liquid:magnesium_diboride> * 20])
   .duration(1650).EUt(12550).buildAndRegister();

// Frozen Nitrogen
extractor.recipeBuilder()
   .inputs(<extraplanets:frozen_nitrogen>)
   .fluidOutputs([<liquid:nitrogen_fluid> * 960])
   .duration(1250).EUt(16550).buildAndRegister();