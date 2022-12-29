import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Europa as IItemStack[] = [
	<extraplanets:europa:3>,
	<extraplanets:europa:4>,
	<extraplanets:europa:5>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Europa {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("europa", -1501, 24, 10);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:europa_air> * 10000)
	.fluidOutputs(<liquid:oxygen> * 6500)
	.fluidOutputs(<liquid:hydrogen_sulfide> * 150)
	.duration(1600).EUt(28600).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:europa_liquid_air> * 500000)
	.fluidOutputs(<liquid:oxygen> * 420000)
	.fluidOutputs(<liquid:hydrogen> * 12000)
	.fluidOutputs(<liquid:sulfur_dioxide> * 1200)
	.duration(2000).EUt(32768).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:europa>, <extraplanets:europa:1>, <extraplanets:europa:2>, <metaitem:dustStoneEuropa>, 4, 4);

// Пыль Европы
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneEuropa> * 3)
	.chancedOutput(<metaitem:dustBasalticMineralSand>, 3700, 1200)
	.chancedOutput(<metaitem:dustCassiterite>, 1100, 500)
	.chancedOutput(<metaitem:dustChrome>, 1150, 500)
	.chancedOutput(<metaitem:dustMagnesite>, 950, 500)
	.duration(1250).EUt(1640).buildAndRegister();

// Dense Ice
macerator.recipeBuilder()
	.inputs(<extraplanets:dense_ice>)
	.outputs(<metaitem:dustIce> * 9)
	.duration(200).EUt(480).buildAndRegister();