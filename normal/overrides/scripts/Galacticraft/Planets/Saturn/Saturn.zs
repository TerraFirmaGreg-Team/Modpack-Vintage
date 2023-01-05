import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;
import mods.jei.JEI.removeAndHide;

import scripts.Utility.Function;

// Массивы
val Saturn as IItemStack[] = [
   <extraplanets:saturn:3>,
   <extraplanets:saturn:4>,
   <extraplanets:saturn:5>,
   <extraplanets:saturn:6>,
   <extraplanets:saturn:7>,
   <extraplanets:saturn:12>,
   <extraplanets:saturn_spawner>
];

// --- Удаление рецептов

// Удаление рецептов
for item in Saturn {
   removeAndHide(item);
}

// --- Добавление рецептов

// --- Атмосфера
Function.GenerateRecipesForAir("saturn", -16, 64, 12);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:saturn_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600).EUt(32768).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:saturn_liquid_air> * 700000)
   .fluidOutputs(<liquid:hydrogen> * 501700)
   .fluidOutputs(<liquid:helium> * 117000)
   .fluidOutputs(<liquid:radon> * 10500)
   .fluidOutputs(<liquid:tritium> * 12500)
   .fluidOutputs(<liquid:krypton> * 8000)
   .fluidOutputs(<liquid:xenon> * 1700)
   .duration(2000).EUt(122880).buildAndRegister();


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(<extraplanets:saturn>, <extraplanets:saturn:1>, <extraplanets:saturn:2>, <metaitem:dustStoneSaturn>, 5, 5);

// Пыль Сатурна
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneSaturn> * 3)
   .chancedOutput(<metaitem:dustElectrotine>, 3700, 1200)
   .chancedOutput(<metaitem:dustGraphite>, 1100, 500)
   .chancedOutput(<minecraft:redstone>, 1150, 500)
   .chancedOutput(<metaitem:dustOsmium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Гравий
Function.GenerateRecipesForSurfaceStones1(<extraplanets:saturn_gravel>, <metaitem:dustStoneSaturn>, 5, 5);

// Glowstone
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:glowstone_fluid> * 1000])
   .fluidOutputs([<liquid:glowstone> * 860, <liquid:redstone> * 240])
   .duration(1650).EUt(4550).buildAndRegister();

// Hydrocarbon
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:liquid_hydrocarbon_fluid> * 1000])
   .fluidOutputs([<liquid:hydrogen> * 440, <liquid:carbon> * 560])
   .duration(1650).EUt(4550).buildAndRegister();

// Liquid Methane
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:methane_fluid> * 1000])
   .fluidOutputs([<liquid:methane> * 4600])
   .duration(405).EUt(3750).buildAndRegister();

// Saturn Broken Infected Stone
extractor.recipeBuilder()
   .inputs(<extraplanets:saturn:10>)
   .fluidOutputs([<liquid:methane_fluid> * 360])
   .duration(1250).EUt(480).buildAndRegister();

// Saturn Infected Stone
extractor.recipeBuilder()
   .inputs(<extraplanets:saturn:11>)
   .fluidOutputs([<liquid:methane_fluid> * 460])
   .duration(1250).EUt(480).buildAndRegister();