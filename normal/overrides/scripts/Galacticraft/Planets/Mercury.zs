import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Mercury as IItemStack[] = [
	<extraplanets:mercury:3>,
	<extraplanets:mercury:4>,
	<extraplanets:mercury:5>,
	<extraplanets:mercury:6>,
	<extraplanets:mercury:7>,
	<extraplanets:mercury:10>,
	<extraplanets:mercury:11>,
	<extraplanets:mercury_spawner>,
	<extraplanets:mercury_battery>.withTag({electricity: 100000.0 as float}),
	<extraplanets:compressed_mercury>,
	<extraplanets:ingot_mercury>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Mercury {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("mercury", -13, 8, 4);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:mercury_air> * 10000)
	.fluidOutputs(<liquid:helium> * 120)
	.fluidOutputs(<liquid:sodium_persulfate> * 240)
	.fluidOutputs(<liquid:oxygen> * 1200)
	.fluidOutputs(<liquid:hydrogen> * 240)
	.duration(1600).EUt(8192).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:mercury_liquid_air> * 300000)
	.fluidOutputs(<liquid:helium> * 6700)
	.fluidOutputs(<liquid:sodium_persulfate> * 32000)
	.fluidOutputs(<liquid:oxygen> * 9000)
	.fluidOutputs(<liquid:hydrogen> * 7000)
	.fluidOutputs(<liquid:argon> * 500)
	.duration(2000).EUt(30720).buildAndRegister();

// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:mercury>, <extraplanets:mercury:1>, <extraplanets:mercury:2>, <metaitem:dustStoneMercury>, 4, 4);

// Пыль меркурия
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneMercury> * 2)
	.chancedOutput(<metaitem:dustTinyVanadiumMagnetite>, 4500, 1200)
	.chancedOutput(<metaitem:dustTinyIron>, 4000, 500)
	.fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide> * 2)
	.duration(1500).EUt(1536).buildAndRegister();