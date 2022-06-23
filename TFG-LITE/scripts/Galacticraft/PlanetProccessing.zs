import crafttweaker.item.IItemStack;

import mods.gregtech.recipe.Utils;

// --- Добавление рецептов

// --- Atmospheres

function GenerateGasCollectorRecipes(dimension as int, CircuitConfig as int) {
   gas_collector.recipeBuilder()
      .circuit(CircuitConfig)
      .fluidOutputs(<liquid:air>  * 10000)
      .property("dimension", dimension)
      .duration(200).EUt(256).buildAndRegister();
}

function GenerateRecipesForAir(input as string, dimension as int, EUMulti as int, CircuitConfig as int) {
   
   // Gas Collector
   gas_collector.recipeBuilder()
      .circuit(CircuitConfig)
      .fluidOutputs(Utils.fluid(input + "_air")  * 10000)
      .property("dimension", dimension)
      .duration(200).EUt(256 * EUMulti).buildAndRegister();

   // Vacuum Freezer
   vacuum_freezer.recipeBuilder()
      .fluidInputs(Utils.fluid(input + "_air") * 4000)
      .fluidOutputs(Utils.fluid(input + "_liquid_air")  * 4000)
      .duration(80).EUt(7680 * (EUMulti / 2)).buildAndRegister();

}

// - Mercury
GenerateRecipesForAir("mercury", -13, 8, 4);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:mercury_air> * 10000)
   .fluidOutputs(<liquid:helium> * 120)
   .fluidOutputs(<liquid:sodium_persulfate> * 240)
   .fluidOutputs(<liquid:oxygen> * 1200)
   .fluidOutputs(<liquid:hydrogen> * 240)
   .duration(1600)
   .EUt(8192)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:mercury_liquid_air> * 300000)
   .fluidOutputs(<liquid:helium> * 6700)
   .fluidOutputs(<liquid:sodium_persulfate> * 32000)
   .fluidOutputs(<liquid:oxygen> * 9000)
   .fluidOutputs(<liquid:hydrogen> * 7000)
   .fluidOutputs(<liquid:argon> * 500)
   .duration(2000)
   .EUt(30720)
   .buildAndRegister();

// - Venus
GenerateRecipesForAir("venus", -31, 4, 5);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:venus_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 4700)
   .fluidOutputs(<liquid:sulfur_dioxide> * 1200)
   .duration(1600)
   .EUt(2048)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:venus_liquid_air> * 200000)
   .fluidOutputs(<liquid:carbon_dioxide> * 69000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 7500)
   .fluidOutputs(<liquid:nitrogen> * 5500)
   .fluidOutputs(<liquid:neon> * 170)
   .duration(2000)
   .EUt(7680)
   .buildAndRegister();

// - Moon
GenerateRecipesForAir("moon", -28, 2, 6);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:moon_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 4700)
   .fluidOutputs(<liquid:nitrogen> * 250)
   .duration(1600)
   .EUt(512)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:moon_liquid_air> * 100000)
   .fluidOutputs(<liquid:hydrogen> * 49700)
   .fluidOutputs(<liquid:nitrogen> * 21000)
   .fluidOutputs(<liquid:xenon> * 190)
   .duration(2000)
   .EUt(1920)
   .buildAndRegister();

// - Mars
GenerateRecipesForAir("mars", -29, 4, 7);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:mars_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 6700)
   .fluidOutputs(<liquid:oxygen> * 140)
   .duration(1600)
   .EUt(2048)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:mars_liquid_air> * 200000)
   .fluidOutputs(<liquid:carbon_dioxide> * 67000)
   .fluidOutputs(<liquid:hydrogen_sulfide> * 7500)
   .fluidOutputs(<liquid:helium_3> * 2500)
   .fluidOutputs(<liquid:neon> * 500)
   .fluidOutputs(<liquid:oxygen> * 1140)
   .duration(2000)
   .EUt(7680)
   .buildAndRegister();

// - Jupiter
GenerateRecipesForAir("jupiter", -1026, 8, 8);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:jupiter_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8700)
   .fluidOutputs(<liquid:helium> * 700)
   .duration(1600)
   .EUt(8192)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:jupiter_liquid_air> * 300000)
   .fluidOutputs(<liquid:hydrogen> * 190700)
   .fluidOutputs(<liquid:helium> * 17000)
   .fluidOutputs(<liquid:radon> * 2500)
   .fluidOutputs(<liquid:tritium> * 1500)
   .fluidOutputs(<liquid:krypton> * 1000)
   .fluidOutputs(<liquid:xenon> * 700)
   .duration(2000)
   .EUt(31240)
   .buildAndRegister();

// - IO
GenerateRecipesForAir("io", -1500, 16, 9);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:io_air> * 10000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 4100)
   .fluidOutputs(<liquid:sodium_potassium> * 650)
   .duration(1600)
   .EUt(22600)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:io_liquid_air> * 400000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 82100)
   .fluidOutputs(<liquid:sodium_potassium> * 7600)
   .fluidOutputs(<liquid:ammonia> * 790)
   .duration(2000)
   .EUt(32768)
   .buildAndRegister();

// - Europa
GenerateRecipesForAir("europa", -1501, 24, 10);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:europa_air> * 10000)
   .fluidOutputs(<liquid:oxygen> * 6500)
   .fluidOutputs(<liquid:hydrogen_sulfide> * 150)
   .duration(1600)
   .EUt(28600)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:europa_liquid_air> * 500000)
   .fluidOutputs(<liquid:oxygen> * 420000)
   .fluidOutputs(<liquid:hydrogen> * 12000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 1200)
   .duration(2000)
   .EUt(32768)
   .buildAndRegister();

// - Callisto
GenerateRecipesForAir("callisto", -1505, 32, 11);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:callisto_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 9500)
   .duration(1600)
   .EUt(31400)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:callisto_liquid_air> * 600000)
   .fluidOutputs(<liquid:carbon> * 165000)
   .fluidOutputs(<liquid:oxygen> * 310000)
   .duration(2000)
   .EUt(32768)
   .buildAndRegister();

// Saturn
GenerateRecipesForAir("saturn", -16, 64, 12);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:saturn_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600)
   .EUt(32768)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:saturn_liquid_air> * 700000)
   .fluidOutputs(<liquid:hydrogen> * 501700)
   .fluidOutputs(<liquid:helium> * 117000)
   .fluidOutputs(<liquid:radon> * 10500)
   .fluidOutputs(<liquid:tritium> * 12500)
   .fluidOutputs(<liquid:krypton> * 8000)
   .fluidOutputs(<liquid:xenon> * 1700)
   .duration(2000)
   .EUt(122880)
   .buildAndRegister();

// Titan
GenerateRecipesForAir("titan", -1508, 128, 13);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:titan_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 9500)
   .duration(1600)
   .EUt(39400)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:titan_liquid_air> * 800000)
   .fluidOutputs(<liquid:carbon> * 280000)
   .fluidOutputs(<liquid:oxygen> * 510000)
   .duration(2000)
   .EUt(150880)
   .buildAndRegister();

// Uranus
GenerateRecipesForAir("uranus", -17, 256, 14);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:uranus_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600)
   .EUt(131072)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:uranus_liquid_air> * 900000)
   .fluidOutputs(<liquid:hydrogen> * 810700)
   .fluidOutputs(<liquid:helium> * 20000)
   .duration(2000)
   .EUt(491520)
   .buildAndRegister();

// Neptune
GenerateRecipesForAir("neptune", -18, 512, 15);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:neptune_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600)
   .EUt(524288)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:neptune_liquid_air> * 1000000)
   .fluidOutputs(<liquid:hydrogen> * 920700)
   .fluidOutputs(<liquid:helium> * 80000)
   .duration(2000)
   .EUt(720520)
   .buildAndRegister();

// Triton
GenerateRecipesForAir("triton", -1504, 1024, 16);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:triton_air> * 10000)
   .fluidOutputs(<liquid:dinitrogen_tetroxide> * 4200)
   .fluidOutputs(<liquid:helium> * 100)
   .duration(1600)
   .EUt(580466)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:triton_liquid_air> * 1100000)
   .fluidOutputs(<liquid:dinitrogen_tetroxide>* 240700)
   .fluidOutputs(<liquid:helium> * 2000)
   .duration(2000)
   .EUt(840520)
   .buildAndRegister();

// Pluto
GenerateRecipesForAir("pluto", -19, 2048, 17);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:pluto_air> * 10000)
   .fluidOutputs(<liquid:nitrogen> * 4200)
   .fluidOutputs(<liquid:carbon_monoxide> * 2100)
   .fluidOutputs(<liquid:methane> * 1700)
   .duration(1600)
   .EUt(1750400)
   .buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:pluto_liquid_air> * 1200000)
   .fluidOutputs(<liquid:nitrogen> * 540000)
   .fluidOutputs(<liquid:carbon_monoxide> * 170000)
   .fluidOutputs(<liquid:methane> * 100000)
   .fluidOutputs(<liquid:tritium> * 37500)
   .fluidOutputs(<liquid:xenon> * 26000)
   .duration(2000)
   .EUt(1900520)
   .buildAndRegister();

// Barnard C
GenerateGasCollectorRecipes(-1030, 18);
GenerateGasCollectorRecipes(-22, 19);
GenerateGasCollectorRecipes(-1025, 20);
GenerateGasCollectorRecipes(-1338, 21);

// --- Породы

function GenerateRecipesForSurfaceStones3(surface as IItemStack, sub_surface as IItemStack, stone as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

   // Поверхность --> Пыль х1
   macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

   // Подповерхность --> х2
   macerator.recipeBuilder()
      .inputs(sub_surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 7500, 150)
      .chancedOutput(output, 500, 200)
      .duration(600 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

   // Порода --> Пыль х3
   macerator.recipeBuilder()
      .inputs(stone  * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 9000, 150)
      .chancedOutput(output, 9000, 200)
      .duration(1800 * DurationMulti)
      .EUt(240  * EUMulti)
      .buildAndRegister();
}

function GenerateRecipesForSurfaceStones2(surface as IItemStack, sub_surface as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

   // Поверхность --> Пыль х1
   macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

   // Подповерхность --> х2
   macerator.recipeBuilder()
      .inputs(sub_surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 7500, 150)
      .chancedOutput(output, 500, 200)
      .duration(600 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();
}

function GenerateRecipesForSurfaceStones1(surface as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

   // Поверхность --> Пыль х1
   macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();
}

// Solid Meteoric Iron --> Meteoric Iron Raw
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:12>)
   .outputs(<galacticraftcore:meteoric_iron_raw> * 4)
   .chancedOutput(<galacticraftcore:meteoric_iron_raw>, 2500, 500)
   .duration(760)
   .EUt(176)
   .buildAndRegister();

// Meteoric Iron Raw
centrifuge.recipeBuilder()
   .inputs(<galacticraftcore:meteoric_iron_raw>)
   .chancedOutput(<metaitem:dustStone>, 9000, 500)
   .chancedOutput(<metaitem:dustImpureVanadiumMagnetite>, 7000, 1000)
   .chancedOutput(<metaitem:dustImpureOpal>, 5000, 1500)
   .chancedOutput(<metaitem:dustImpureNickel>, 3000, 2000)
   .chancedOutput(<metaitem:dustImpureVanadiumMagnetite>, 1000, 2500)
   .chancedOutput(<metaitem:dustRareEarth>, 500, 3000)
   .fluidOutputs(<liquid:water> * 50)
   .duration(150)
   .EUt(618)
   .buildAndRegister();

// Dash --> Raw Dash
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:8>)
   .outputs(<galacticraftplanets:item_basic_mars> * 4)
   .chancedOutput(<galacticraftplanets:item_basic_mars>, 2500, 500)
   .duration(760)
   .EUt(510)
   .buildAndRegister();

// Raw Dash
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars>)
   .chancedOutput(<metaitem:dustStone>, 9000, 500)
   .chancedOutput(<metaitem:dustSulfur>, 7000, 1000)
   .chancedOutput(<metaitem:dustCarbon>, 5000, 1500)
   .chancedOutput(<metaitem:dustSteel>, 3000, 2000)
   .chancedOutput(<metaitem:dustImpureVanadiumMagnetite>, 1000, 2500)
   .chancedOutput(<metaitem:dustRareEarth>, 1500, 1500)
   .fluidOutputs(<liquid:water> * 50)
   .duration(150)
   .EUt(1750)
   .buildAndRegister();

// --- Меркурий

// Поверхности
GenerateRecipesForSurfaceStones3(<galaxyspace:mercuryblocks:0>, <galaxyspace:mercuryblocks:1>, <galaxyspace:mercuryblocks:2>, <metaitem:dustStoneMercury>, 4, 4);

// Меркурианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneMercury> * 2)
   .chancedOutput(<metaitem:dustTinyVanadiumMagnetite>, 4500, 1200)
   .chancedOutput(<metaitem:dustTinyIron>, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(1500)
   .EUt(1536)
   .buildAndRegister();

// --- Венера

// Поверхности
GenerateRecipesForSurfaceStones2(<galacticraftplanets:venus>, <galacticraftplanets:venus:1>, <metaitem:dustStoneVenus>, 3, 3);

// Венерианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneVenus>)
   .chancedOutput(<metaitem:dustSmallManganese>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTitanium>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallChalcopyrite>, 950, 500)
   .chancedOutput(<metaitem:dustSmallBismuth>, 750, 350)
   .chancedOutput(<metaitem:dustTinySulfur>, 650, 250)
   .duration(1250)
   .EUt(1024)
   .buildAndRegister();

// --- ЛУНА

// Поверхности
GenerateRecipesForSurfaceStones3(<galacticraftcore:basic_block_moon:5>, <galacticraftcore:basic_block_moon:3>, <galacticraftcore:basic_block_moon:4>, <metaitem:dustStoneMoon>, 1, 1);

// Лунная порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneMoon> * 3)
   .chancedOutput(<metaitem:dustSilicon>, 1200, 1200)
   .chancedOutput(<metaitem:dustSmallAluminium>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallOlivine>, 950, 500)
   .chancedOutput(<metaitem:dustSmallSulfur>, 750, 350)
   .chancedOutput(<metaitem:dustSmallMagnetite>, 650, 250)
   .fluidOutputs([<liquid:helium_3> * 1])
   .duration(1250)
   .EUt(256)
   .buildAndRegister();

// --- Марс

// Поверхности
GenerateRecipesForSurfaceStones3(<galacticraftplanets:mars:5>, <galacticraftplanets:mars:6>, <galacticraftplanets:mars:9>, <metaitem:dustStoneMars>, 2, 2);

// Марсианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneMars>)
   .chancedOutput(<metaitem:dustMagnetite>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTungsten>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallAluminium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallZinc>, 950, 500)
   .chancedOutput(<metaitem:dustSmallNiobium>, 750, 350)
   .chancedOutput(<metaitem:dustSmallGold>, 650, 250)
   .duration(1250)
   .EUt(512)
   .buildAndRegister();

// --- Фобос

// Поверхности
GenerateRecipesForSurfaceStones2(<galaxyspace:phobosblocks>, <galaxyspace:phobosblocks:1>, <metaitem:dustStonePhobos>, 2, 2);

// --- Деймос

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:deimos>, <extraplanets:deimos:1>, <extraplanets:deimos:2>, <metaitem:dustStoneDeimos>, 2, 2);

// --- Церера

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:ceres>, <extraplanets:ceres:1>, <extraplanets:ceres:2>, <metaitem:dustStoneCeres>, 3, 3);

// --- Астероиды

// Поверхности
GenerateRecipesForSurfaceStones1(<galacticraftplanets:asteroids_block>, <metaitem:dustStoneAsteroidBlack>, 3, 3);

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneAsteroidBlack> * 2)
   .chancedOutput(<metaitem:dustImpureNickel>, 3000, 500)
   .chancedOutput(<metaitem:dustImpureYellowLimonite>, 4500, 100)
   .chancedOutput(<metaitem:dustImpureBrownLimonite>, 4500, 100)
   .chancedOutput(<metaitem:dustImpureGold>, 1100, 100)
   .chancedOutput(<metaitem:dustTinyIridiumMetalResidue>, 500, 100)
   .chancedOutput(<metaitem:dustTinyIndium>, 10, 1)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();

// Поверхности
GenerateRecipesForSurfaceStones1(<galacticraftplanets:asteroids_block:1>, <metaitem:dustStoneAsteroidGray>, 3, 3);

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneAsteroidGray> * 2)
   .chancedOutput(<metaitem:dustImpureBauxite>, 3000, 500)
   .chancedOutput(<metaitem:dustImpureDiamond>, 3500, 100)
   .chancedOutput(<metaitem:dustImpureRedstone>, 1500, 100)
   .chancedOutput(<metaitem:dustImpureMonazite>, 1100, 100)
   .chancedOutput(<metaitem:dustImpureMolybdenum>, 5000, 500)
   .chancedOutput(<metaitem:dustTinyRareEarth>, 500, 500)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();

// Поверхности
GenerateRecipesForSurfaceStones1(<galacticraftplanets:asteroids_block:2>, <metaitem:dustStoneAsteroidBlack>, 3, 3);

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneAsteroidLightgray> * 3)
   .chancedOutput(<metaitem:dustTinyCobalt>, 7500, 1000)
   .chancedOutput(<metaitem:dustTinyBeryllium>, 5000, 500)
   .chancedOutput(<metaitem:dustTinyPlatinum>, 2500, 250)
   .chancedOutput(<metaitem:dustTinyBarium>, 1100, 100)
   .chancedOutput(<metaitem:dustTinyNaquadah>, 100, 100)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();

// --- Юпитер

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:jupiter>, <extraplanets:jupiter:1>, <extraplanets:jupiter:2>, <metaitem:dustStoneJupiter>, 4, 4);

// --- ИО

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:io>, <extraplanets:io:1>, <extraplanets:io:2>, <metaitem:dustStoneIo>, 4, 4);

// --- Европа

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:europa>, <extraplanets:europa:1>, <extraplanets:europa:2>, <metaitem:dustStoneEuropa>, 4, 4);

// --- Ганнимед

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:ganymede>, <extraplanets:ganymede:1>, <extraplanets:ganymede:2>, <metaitem:dustStoneGanymede>, 4, 4);

// --- Каллисто

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:callisto>, <extraplanets:callisto:1>, <extraplanets:callisto:2>, <metaitem:dustStoneCallisto>, 4, 4);

// --- Сатурн

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:saturn>, <extraplanets:saturn:1>, <extraplanets:saturn:2>, <metaitem:dustStoneSaturn>, 5, 5);

// --- Рея

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:rhea>, <extraplanets:rhea:1>, <extraplanets:rhea:2>, <metaitem:dustStoneRhea>, 5, 5);

// --- Титан

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:titan>, <extraplanets:titan:1>, <extraplanets:titan:2>, <metaitem:dustStoneTitan>, 5, 5);

// --- Япет

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:iapetus>, <extraplanets:iapetus:1>, <extraplanets:iapetus:2>, <metaitem:dustStoneIapetus>, 5, 5);

// --- Уран

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:uranus>, <extraplanets:uranus:1>, <extraplanets:uranus:2>, <metaitem:dustStoneUranus>, 6, 6);

// --- Оберон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:oberon>, <extraplanets:oberon:1>, <extraplanets:oberon:2>, <metaitem:dustStoneOberon>, 6, 6);

// --- Нептун

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:neptune>, <extraplanets:neptune:1>, <extraplanets:neptune:2>, <metaitem:dustStoneNeptune>, 7, 7);

// --- Тритон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:triton>, <extraplanets:triton:1>, <extraplanets:triton:2>, <metaitem:dustStoneTriton>, 7, 7);

// --- Плутон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:pluto>, <extraplanets:pluto:1>, <extraplanets:pluto:2>, <metaitem:dustStonePluto>, 8, 8);

// --- Эрида

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:eris>, <extraplanets:eris:1>, <extraplanets:eris:2>, <metaitem:dustStoneEris>, 9, 9);

// --- Proxima B

// Поверхности
GenerateRecipesForSurfaceStones3(<galaxyspace:proxima_b_blocks>, <galaxyspace:proxima_b_blocks:1>, <galaxyspace:proxima_b_blocks:2>, <metaitem:dustStoneProximaB>, 10, 10);

// --- Tauceti F

// Поверхности
GenerateRecipesForSurfaceStones3(<galaxyspace:tauceti_f_blocks:1>, <galaxyspace:tauceti_f_blocks>, <galaxyspace:tauceti_f_blocks:2>, <metaitem:dustStoneTaucetiF>, 10, 10);

// --- Barnarda C

// Поверхности
GenerateRecipesForSurfaceStones3(<galaxyspace:barnarda_c_grasses>, <galaxyspace:barnarda_c_blocks:3>, <galaxyspace:barnarda_c_blocks:1>, <metaitem:dustStoneBarnardaC>, 10, 10);
