import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Mars as IItemStack[] = [
   <galacticraftplanets:mars>,
   <galacticraftplanets:mars:1>,
   <galacticraftplanets:mars:2>,
   <galacticraftplanets:mars:3>,
   <galacticraftplanets:treasure_t2>,
   <galacticraftplanets:key>,
   <galacticraftplanets:item_basic_mars>,
   <galacticraftplanets:item_basic_mars:6>,
   <galacticraftplanets:item_basic_mars:5>,
   <galacticraftplanets:desh_pick>,
   <galacticraftplanets:desh_pick_slime>,
   <galacticraftplanets:desh_axe>,
   <galacticraftplanets:desh_hoe>,
   <galacticraftplanets:desh_spade>,
   <galacticraftplanets:desh_sword>,
   <galacticraftplanets:desh_helmet>,
   <galacticraftplanets:desh_chestplate>,
   <galacticraftplanets:desh_leggings>,
   <galacticraftplanets:desh_boots>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Mars {
   removeAndHide(item);
}


// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("mars", -29, 4, 7);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:mars_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 6700)
   .fluidOutputs(<liquid:oxygen> * 140)
   .duration(1600).EUt(2048).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:mars_liquid_air> * 200000)
   .fluidOutputs(<liquid:carbon_dioxide> * 67000)
   .fluidOutputs(<liquid:hydrogen_sulfide> * 7500)
   .fluidOutputs(<liquid:helium_3> * 2500)
   .fluidOutputs(<liquid:neon> * 500)
   .fluidOutputs(<liquid:oxygen> * 1140)
   .duration(2000).EUt(7680).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<galacticraftplanets:mars:5>, <galacticraftplanets:mars:6>, <galacticraftplanets:mars:9>, <metaitem:dustStoneMars>, 2, 2);

// Пыль марса
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneMars> * 3)
   .chancedOutput(<metaitem:dustMagnetite>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTungsten>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallAluminium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallZinc>, 950, 500)
   .chancedOutput(<metaitem:dustSmallNiobium>, 750, 350)
   .chancedOutput(<metaitem:dustSmallGold>, 650, 250)
   .duration(1250).EUt(512).buildAndRegister();

// Dash --> пыль Dash
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:8>)
   .outputs(<metaitem:dustDesh> * 7)
   .chancedOutput(<metaitem:dustDesh>, 2500, 500)
   .duration(760).EUt(510).buildAndRegister();

// Raw Dash --> пыль Dash
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars>)
   .outputs(<metaitem:dustSmallDesh> * 1)
   .chancedOutput(<metaitem:dustSmallDesh>, 2500, 500)
   .duration(760).EUt(510).buildAndRegister();

// Дэш блок
compressor.recipeBuilder()
   .inputs([<galacticraftplanets:item_basic_mars:2> * 9])
   .outputs([<galacticraftplanets:mars:8>])
   .duration(300).EUt(480).buildAndRegister();

// Плотная пластина Дэш
bender.recipeBuilder()
   .circuit(9)
   .inputs(<galacticraftplanets:item_basic_mars:2> * 9)
   .outputs(<metaitem:plateDenseDesh>)
   .duration(100).EUt(48).buildAndRegister();
bender.recipeBuilder()
   .circuit(9)
   .inputs(<metaitem:plateDesh> * 9)
   .outputs(<metaitem:plateDenseDesh>)
   .duration(100).EUt(48).buildAndRegister();

// Слиток Дэш
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:plateDesh> * 4)
	.outputs(<galacticraftplanets:item_basic_mars:2>)
	.property("explosives", 2)
	.duration(20).EUt(380).buildAndRegister();

// Палка Дэш
recipes.addShaped("tfg/gc/desh_stick", <galacticraftplanets:item_basic_mars:1>, [
   [<ore:toolFile>, null, null],
   [null, <galacticraftplanets:item_basic_mars:2>, null],
   [null, null, null]]);