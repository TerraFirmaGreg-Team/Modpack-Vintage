import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Venus as IItemStack[] = [
	<galacticraftplanets:venus:6>,
	<galacticraftplanets:venus:7>,
	<galacticraftplanets:venus:8>,
	<galacticraftplanets:venus:9>,
	<galacticraftplanets:venus:10>,
	<galacticraftplanets:venus:11>,
	<galacticraftplanets:venus:12>,
	<galacticraftplanets:venus:13>,
	<galacticraftplanets:spout>,
	<galacticraftplanets:basic_item_venus:1>,
	<galacticraftplanets:basic_item_venus:4>,
	<galacticraftplanets:treasure_t3>,
	<galacticraftplanets:key_t3>,
	<galacticraftplanets:cavern_vines>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Venus {
	removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("venus", -31, 4, 5);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:venus_air> * 10000)
	.fluidOutputs(<liquid:carbon_dioxide> * 4700)
	.fluidOutputs(<liquid:sulfur_dioxide> * 1200)
	.duration(1600).EUt(2048).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:venus_liquid_air> * 200000)
	.fluidOutputs(<liquid:carbon_dioxide> * 69000)
	.fluidOutputs(<liquid:sulfur_dioxide> * 7500)
	.fluidOutputs(<liquid:nitrogen> * 5500)
	.fluidOutputs(<liquid:neon> * 170)
	.duration(2000).EUt(7680).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones2(<galacticraftplanets:venus>, <galacticraftplanets:venus:1>, <metaitem:dustStoneVenus>, 3, 3);

// Пыль венеры
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneVenus>)
	.chancedOutput(<metaitem:dustSmallManganese>, 3700, 1200)
	.chancedOutput(<metaitem:dustSmallTitanium>, 1100, 500)
	.chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
	.chancedOutput(<metaitem:dustSmallChalcopyrite>, 950, 500)
	.chancedOutput(<metaitem:dustSmallBismuth>, 750, 350)
	.chancedOutput(<metaitem:dustTinySulfur>, 650, 250)
	.duration(1250).EUt(1024).buildAndRegister();