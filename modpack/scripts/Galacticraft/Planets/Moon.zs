import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Moon as IItemStack[] = [
	<galacticraftcore:basic_block_moon>,
	<galacticraftcore:basic_block_moon:1>,
	<galacticraftcore:basic_block_moon:2>,
	<galacticraftcore:basic_block_moon:6>,
	<galacticraftcore:item_basic_moon:1>,
	<galacticraftcore:item_basic_moon:2>,
	<galacticraftcore:cheese_curd>,
	<galacticraftcore:treasure_chest>,
	<galacticraftcore:key>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Moon {
	removeAndHide(item);
}


// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("moon", -28, 2, 6);
// Air
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:moon_air> * 10000)
	.fluidOutputs(<liquid:hydrogen> * 4700)
	.fluidOutputs(<liquid:nitrogen> * 250)
	.duration(1600).EUt(512).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:moon_liquid_air> * 100000)
	.fluidOutputs(<liquid:hydrogen> * 49700)
	.fluidOutputs(<liquid:nitrogen> * 21000)
	.fluidOutputs(<liquid:xenon> * 190)
	.duration(2000).EUt(1920).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<galacticraftcore:basic_block_moon:5>, <galacticraftcore:basic_block_moon:3>, <galacticraftcore:basic_block_moon:4>, <metaitem:dustStoneMoon>, 1, 1);

// Пыль луны
centrifuge.recipeBuilder()
	.inputs(<metaitem:dustStoneMoon> * 3)
	.chancedOutput(<metaitem:dustSilicon>, 1200, 1200)
	.chancedOutput(<metaitem:dustSmallAluminium>, 1100, 500)
	.chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
	.chancedOutput(<metaitem:dustSmallOlivine>, 950, 500)
	.chancedOutput(<metaitem:dustSmallSulfur>, 750, 350)
	.chancedOutput(<metaitem:dustSmallMagnetite>, 650, 250)
	.fluidOutputs([<liquid:helium_3> * 1])
	.duration(1250).EUt(256).buildAndRegister();

// Осколок метеоритного железа
macerator.recipeBuilder()
	.inputs(<galacticraftcore:basic_block_core:12>)
	.outputs(<galacticraftcore:meteoric_iron_raw> * 4)
	.chancedOutput(<galacticraftcore:meteoric_iron_raw>, 2500, 500)
	.duration(760).EUt(176).buildAndRegister();

// Пыль метеоритного железа
macerator.recipeBuilder()
	.inputs(<galacticraftcore:meteoric_iron_raw>)
	.outputs(<metaitem:dustSmallMeteoricIron> * 3)
	.duration(360).EUt(176).buildAndRegister();

// Слиток метеоритного железа
electric_blast_furnace.recipeBuilder()
   .circuit(9)
   .inputs(<metaitem:dustMeteoricIron>)
	.property("temperature", 1700)
   .outputs(<galacticraftcore:item_basic_moon>)
   .duration(370).EUt(380).buildAndRegister();

// Плотная пластина метеоритного железа
bender.recipeBuilder()
   .circuit(9)
   .inputs(<galacticraftcore:item_basic_moon> * 9)
   .outputs(<metaitem:plateDenseMeteoricIron>)
   .duration(100).EUt(48).buildAndRegister();
bender.recipeBuilder()
   .circuit(9)
   .inputs(<metaitem:plateMeteoricIron> * 9)
   .outputs(<metaitem:plateDenseMeteoricIron>)
   .duration(100).EUt(48).buildAndRegister();