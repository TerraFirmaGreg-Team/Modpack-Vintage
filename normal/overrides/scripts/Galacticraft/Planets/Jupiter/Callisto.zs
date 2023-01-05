import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Callisto as IItemStack[] = [
	<extraplanets:callisto:3>,
	<extraplanets:callisto:4>,
	<extraplanets:callisto:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Callisto {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("callisto", -1505, 32, 11);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:callisto_air> * 10000)
	.fluidOutputs(<liquid:carbon_dioxide> * 9500)
	.duration(1600).EUt(31400).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:callisto_liquid_air> * 600000)
	.fluidOutputs(<liquid:carbon> * 165000)
	.fluidOutputs(<liquid:oxygen> * 310000)
	.duration(2000).EUt(32768).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:callisto>, <extraplanets:callisto:1>, <extraplanets:callisto:2>, <metaitem:dustStoneCallisto>, 4, 4);

// Пыль Каллисто
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneCallisto> * 3)
	.chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
	.chancedOutput(<metaitem:dustIlmenite>, 1100, 500)
	.chancedOutput(<metaitem:dustScheelite>, 1150, 500)
	.chancedOutput(<metaitem:dustUranium>, 950, 500)
	.duration(1250).EUt(1640).buildAndRegister();

// Fossil Block
macerator.recipeBuilder()
	.inputs(<extraplanets:fossil>)
	.outputs(<minecraft:dye:15> * 27)
	.duration(200).EUt(480).buildAndRegister();

// Shale Oil
extractor.recipeBuilder()
	.inputs(<extraplanets:callisto:7>)
	.fluidOutputs([<liquid:oil_medium> * 240])
	.outputs(<metaitem:dustDarkAsh> * 4)
	.duration(1250).EUt(1940).buildAndRegister();

// Dried Oil
extractor.recipeBuilder()
	.inputs(<extraplanets:callisto:6>)
	.fluidOutputs([<liquid:oil_light> * 160])
	.outputs(<metaitem:dustDarkAsh> * 4)
	.duration(1250).EUt(1940).buildAndRegister();