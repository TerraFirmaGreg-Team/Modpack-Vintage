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

// - Venus
GenerateRecipesForAir("venus", -31, 4, 5);
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

// - Moon
GenerateRecipesForAir("moon", -28, 2, 6);
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

// - Mars
GenerateRecipesForAir("mars", -29, 4, 7);
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

// - Jupiter
GenerateRecipesForAir("jupiter", -15, 8, 8);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:jupiter_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8700)
   .fluidOutputs(<liquid:helium> * 700)
   .duration(1600).EUt(8192).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:jupiter_liquid_air> * 300000)
   .fluidOutputs(<liquid:hydrogen> * 190700)
   .fluidOutputs(<liquid:helium> * 17000)
   .fluidOutputs(<liquid:radon> * 2500)
   .fluidOutputs(<liquid:tritium> * 1500)
   .fluidOutputs(<liquid:krypton> * 1000)
   .fluidOutputs(<liquid:xenon> * 700)
   .duration(2000).EUt(31240).buildAndRegister();

// - IO
GenerateRecipesForAir("io", -1500, 16, 9);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:io_air> * 10000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 4100)
   .fluidOutputs(<liquid:sodium_potassium> * 650)
   .duration(1600).EUt(22600).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:io_liquid_air> * 400000)
   .fluidOutputs(<liquid:sulfur_dioxide> * 82100)
   .fluidOutputs(<liquid:sodium_potassium> * 7600)
   .fluidOutputs(<liquid:ammonia> * 790)
   .duration(2000).EUt(32768).buildAndRegister();

// - Europa
GenerateRecipesForAir("europa", -1501, 24, 10);
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

// - Callisto
GenerateRecipesForAir("callisto", -1505, 32, 11);
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

// Saturn
GenerateRecipesForAir("saturn", -16, 64, 12);
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

// Titan
GenerateRecipesForAir("titan", -1508, 128, 13);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:titan_air> * 10000)
   .fluidOutputs(<liquid:carbon_dioxide> * 9500)
   .duration(1600).EUt(39400).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:titan_liquid_air> * 800000)
   .fluidOutputs(<liquid:carbon> * 280000)
   .fluidOutputs(<liquid:oxygen> * 510000)
   .duration(2000).EUt(150880).buildAndRegister();

// Uranus
GenerateRecipesForAir("uranus", -17, 256, 14);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:uranus_air> * 10000)
   .fluidOutputs(<liquid:hydrogen> * 8800)
   .fluidOutputs(<liquid:helium> * 900)
   .duration(1600).EUt(131072).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:uranus_liquid_air> * 900000)
   .fluidOutputs(<liquid:hydrogen> * 810700)
   .fluidOutputs(<liquid:helium> * 20000)
   .duration(2000).EUt(491520).buildAndRegister();

// Neptune
GenerateRecipesForAir("neptune", -18, 512, 15);
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

// Triton
GenerateRecipesForAir("triton", -1504, 1024, 16);
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

// Pluto
GenerateRecipesForAir("pluto", -19, 2048, 17);
// Air
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:pluto_air> * 10000)
   .fluidOutputs(<liquid:nitrogen> * 4200)
   .fluidOutputs(<liquid:carbon_monoxide> * 2100)
   .fluidOutputs(<liquid:methane> * 1700)
   .duration(1600).EUt(1750400).buildAndRegister();
// Liquid Air
distillation_tower.recipeBuilder()
   .fluidInputs(<liquid:pluto_liquid_air> * 1200000)
   .fluidOutputs(<liquid:nitrogen> * 540000)
   .fluidOutputs(<liquid:carbon_monoxide> * 170000)
   .fluidOutputs(<liquid:methane> * 100000)
   .fluidOutputs(<liquid:tritium> * 37500)
   .fluidOutputs(<liquid:xenon> * 26000)
   .duration(2000).EUt(1900520).buildAndRegister();

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
   .duration(760).EUt(176).buildAndRegister();

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
   .duration(150).EUt(618).buildAndRegister();

// Dash --> Raw Dash
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:8>)
   .outputs(<galacticraftplanets:item_basic_mars> * 4)
   .chancedOutput(<galacticraftplanets:item_basic_mars>, 2500, 500)
   .duration(760).EUt(510).buildAndRegister();

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
   .duration(150).EUt(1750).buildAndRegister();

// Дэш блок
compressor.recipeBuilder()
   .inputs([<galacticraftplanets:item_basic_mars:2> * 9])
   .outputs([<galacticraftplanets:mars:8>])
   .duration(300).EUt(480).buildAndRegister();

// --- Меркурий

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:mercury>, <extraplanets:mercury:1>, <extraplanets:mercury:2>, <metaitem:dustStoneMercury>, 4, 4);

// Пыль меркурия
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneMercury> * 2)
   .chancedOutput(<metaitem:dustTinyVanadiumMagnetite>, 4500, 1200)
   .chancedOutput(<metaitem:dustTinyIron>, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(1500).EUt(1536).buildAndRegister();

// --- Венера

// Поверхности
GenerateRecipesForSurfaceStones2(<galacticraftplanets:venus>, <galacticraftplanets:venus:1>, <metaitem:dustStoneVenus>, 3, 3);

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

// --- ЛУНА

// Поверхности
GenerateRecipesForSurfaceStones3(<galacticraftcore:basic_block_moon:5>, <galacticraftcore:basic_block_moon:3>, <galacticraftcore:basic_block_moon:4>, <metaitem:dustStoneMoon>, 1, 1);

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

// --- Марс

// Поверхности
GenerateRecipesForSurfaceStones3(<galacticraftplanets:mars:5>, <galacticraftplanets:mars:6>, <galacticraftplanets:mars:9>, <metaitem:dustStoneMars>, 2, 2);

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

// --- Фобос

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:phobos>, <extraplanets:phobos:1>, <extraplanets:phobos:2>, <metaitem:dustStonePhobos>, 2, 2);

// Пыль фобоса
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStonePhobos> * 3)
   .chancedOutput(<metaitem:dustGarnierite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGraphite>, 1100, 500)
   .chancedOutput(<metaitem:dustMagnetite>, 1150, 500)
   .chancedOutput(<metaitem:dustSulfur>, 950, 500)
   .duration(1250).EUt(512).buildAndRegister();

// --- Деймос

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:deimos>, <extraplanets:deimos:1>, <extraplanets:deimos:2>, <metaitem:dustStoneDeimos>, 2, 2);

// Пыль деймоса
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneDeimos> * 3)
   .chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGarnierite>, 1100, 500)
   .chancedOutput(<metaitem:dustMagnetite>, 1150, 500)
   .chancedOutput(<metaitem:dustTetrahedrite>, 950, 500)
   .duration(1250).EUt(512).buildAndRegister();

// --- Церера

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:ceres>, <extraplanets:ceres:1>, <extraplanets:ceres:2>, <metaitem:dustStoneCeres>, 3, 3);

// Пыль цереры
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneCeres> * 3)
   .chancedOutput(<metaitem:dustBentonite>, 3700, 1200)
   .chancedOutput(<metaitem:dustBeryllium>, 1100, 500)
   .chancedOutput(<metaitem:dustBrownLimonite>, 1150, 500)
   .chancedOutput(<metaitem:dustChalcopyrite>, 950, 500)
   .duration(1250).EUt(512).buildAndRegister();

// Кристаллизированная вода
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:salt_fluid> * 1000])
   .fluidOutputs([<liquid:salt_water> * 744, <liquid:carbon> * 72])
   .duration(1250).EUt(512).buildAndRegister();

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
   .duration(1600).EUt(1640).buildAndRegister();

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
   .duration(1600).EUt(1640).buildAndRegister();

// Поверхности
GenerateRecipesForSurfaceStones1(<galacticraftplanets:asteroids_block:2>, <metaitem:dustStoneAsteroidBlack>, 3, 3);

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneAsteroidLightgray> * 3)
   .chancedOutput(<metaitem:dustTinyCobalt>, 7500, 1000)
   .chancedOutput(<metaitem:dustTinyBeryllium>, 5000, 500)
   .chancedOutput(<metaitem:dustTinyPlatinum>, 2500, 250)
   .chancedOutput(<metaitem:dustTinyBarium>, 1100, 100)
   .chancedOutput(<metaitem:dustTinyNaquadah>, 100, 100)
   .duration(1600).EUt(1640).buildAndRegister();

// --- Юпитер

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:jupiter>, <extraplanets:jupiter:1>, <extraplanets:jupiter:2>, <metaitem:dustStoneJupiter>, 4, 4);

// Оранжевый песок
GenerateRecipesForSurfaceStones1(<extraplanets:orange_sand>, <metaitem:dustStoneJupiter>, 4, 4);

// Красный песок
GenerateRecipesForSurfaceStones1(<extraplanets:red_sand>, <metaitem:dustStoneJupiter>, 4, 4);

// Оранжевый песчанник
GenerateRecipesForSurfaceStones1(<extraplanets:orange_sandstone>, <metaitem:dustStoneJupiter>, 4, 4);

// Красный песчанник
GenerateRecipesForSurfaceStones1(<extraplanets:red_sandstone>, <metaitem:dustStoneJupiter>, 4, 4);

// Пыль юпитера
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneJupiter> * 3)
   .chancedOutput(<metaitem:dustBastnasite>, 3700, 1200)
   .chancedOutput(<metaitem:dustBasalticMineralSand>, 1100, 500)
   .chancedOutput(<metaitem:dustPlatinum>, 1150, 500)
   .chancedOutput(<metaitem:dustChrome>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Магма
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:magma_fluid> * 1000])
   .fluidOutputs([<liquid:lava> * 744, <liquid:platinum> * 14])
   .duration(2650).EUt(7600).buildAndRegister();

// --- ИО

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:io>, <extraplanets:io:1>, <extraplanets:io:2>, <metaitem:dustStoneIo>, 4, 4);

// Пыль Ио
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneIo> * 3)
   .chancedOutput(<metaitem:dustGrossular>, 3700, 1200)
   .chancedOutput(<metaitem:dustMagnetite>, 1100, 500)
   .chancedOutput(<metaitem:dustPyrolusite>, 1150, 500)
   .chancedOutput(<metaitem:dustTin>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Ash Block
macerator.recipeBuilder()
   .inputs(<extraplanets:ash_rock>)
   .outputs(<metaitem:dustDarkAsh> * 8)
   .duration(1250).EUt(1640).buildAndRegister();

// Volcanic Rock
extractor.recipeBuilder()
   .inputs(<extraplanets:volcanic_rock>)
   .fluidOutputs([<liquid:lava> * 744])
   .outputs(<metaitem:dustDarkAsh> * 2)
   .duration(1250).EUt(1640).buildAndRegister();

// --- Европа

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:europa>, <extraplanets:europa:1>, <extraplanets:europa:2>, <metaitem:dustStoneEuropa>, 4, 4);

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

// --- Ганнимед

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:ganymede>, <extraplanets:ganymede:1>, <extraplanets:ganymede:2>, <metaitem:dustStoneGanymede>, 4, 4);

// Пыль Ганнимеда
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneGanymede> * 3)
   .chancedOutput(<metaitem:dustBrownLimonite>, 3700, 1200)
   .chancedOutput(<metaitem:dustChalcopyrite>, 1100, 500)
   .chancedOutput(<metaitem:dustIlmenite>, 1150, 500)
   .chancedOutput(<metaitem:dustMagnetite>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Infected Water
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:infected_water_fluid> * 1000])
   .fluidOutputs([<liquid:carbon_dioxide> * 96])
   .duration(1650).EUt(4250).buildAndRegister();

// --- Каллисто

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:callisto>, <extraplanets:callisto:1>, <extraplanets:callisto:2>, <metaitem:dustStoneCallisto>, 4, 4);

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

// --- Сатурн

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:saturn>, <extraplanets:saturn:1>, <extraplanets:saturn:2>, <metaitem:dustStoneSaturn>, 5, 5);

// Пыль Сатурна
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneSaturn> * 3)
   .chancedOutput(<metaitem:dustElectrotine>, 3700, 1200)
   .chancedOutput(<metaitem:dustGraphite>, 1100, 500)
   .chancedOutput(<minecraft:redstone>, 1150, 500)
   .chancedOutput(<metaitem:dustOsmium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Гравий
GenerateRecipesForSurfaceStones1(<extraplanets:saturn_gravel>, <metaitem:dustStoneSaturn>, 5, 5);

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

// --- Рея

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:rhea>, <extraplanets:rhea:1>, <extraplanets:rhea:2>, <metaitem:dustStoneRhea>, 5, 5);

// Пыль Реи
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneRhea> * 3)
   .chancedOutput(<metaitem:dustGraphite>, 3700, 1200)
   .chancedOutput(<metaitem:dustIlmenite>, 1100, 500)
   .chancedOutput(<metaitem:dustIridium>, 1150, 500)
   .chancedOutput(<metaitem:dustOsmium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// --- Титан

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:titan>, <extraplanets:titan:1>, <extraplanets:titan:2>, <metaitem:dustStoneTitan>, 5, 5);

// Пыль Титана
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneTitan> * 3)
   .chancedOutput(<metaitem:dustBeryllium>, 3700, 1200)
   .chancedOutput(<metaitem:dustGold>, 1100, 500)
   .chancedOutput(<metaitem:dustRutile>, 1150, 500)
   .chancedOutput(<metaitem:dustTinyNaquadah>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Methane Surface
extractor.recipeBuilder()
   .inputs(<extraplanets:titan:6>)
   .fluidOutputs([<liquid:methane_fluid> * 780])
   .duration(1250).EUt(480).buildAndRegister();

// Methane Sub-Surface
extractor.recipeBuilder()
   .inputs(<extraplanets:titan:7>)
   .fluidOutputs([<liquid:methane_fluid> * 620])
   .duration(1250).EUt(480).buildAndRegister();

// Камни Титана
GenerateRecipesForSurfaceStones1(<extraplanets:titan:8>, <metaitem:dustStoneTitan>, 5, 5);

// --- Япет

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:iapetus>, <extraplanets:iapetus:1>, <extraplanets:iapetus:2>, <metaitem:dustStoneIapetus>, 5, 5);

// Пыль Япета
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneIapetus> * 3)
   .chancedOutput(<metaitem:dustElectrotine>, 3700, 1200)
   .chancedOutput(<metaitem:dustMagnetite>, 1100, 500)
   .chancedOutput(<metaitem:dustPitchblende>, 1150, 500)
   .chancedOutput(<metaitem:dustTinyVanadium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Лед Япета
macerator.recipeBuilder()
   .inputs(<extraplanets:iapetus:6>)
   .outputs(<metaitem:dustDryIce> * 7)
   .duration(200).EUt(480).buildAndRegister();

// --- Уран

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:uranus>, <extraplanets:uranus:1>, <extraplanets:uranus:2>, <metaitem:dustStoneUranus>, 6, 6);

// Пыль Урана
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneUranus> * 3)
   .chancedOutput(<metaitem:dustDryIce>, 3700, 1200)
   .chancedOutput(<metaitem:dustDryIce>, 1100, 500)
   .chancedOutput(<metaitem:dustDryIce>, 1150, 500)
   .chancedOutput(<metaitem:dustDryIce>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// Frozen Water
centrifuge.recipeBuilder()
   .fluidInputs([<liquid:frozen_water_fluid> * 1000])
   .fluidOutputs([<liquid:water> * 1000, <liquid:carbon> * 740])
   .duration(1650).EUt(4550).buildAndRegister();

// --- Оберон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:oberon>, <extraplanets:oberon:1>, <extraplanets:oberon:2>, <metaitem:dustStoneOberon>, 6, 6);

// Пыль Оберона
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneOberon> * 3)
   .chancedOutput(<metaitem:dustBrownLimonite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGalena>, 1100, 500)
   .chancedOutput(<metaitem:dustNaquadah>, 1150, 500)
   .chancedOutput(<metaitem:dustPlatinum>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// --- Нептун

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:neptune>, <extraplanets:neptune:1>, <extraplanets:neptune:2>, <metaitem:dustStoneNeptune>, 7, 7);

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

// --- Тритон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:triton>, <extraplanets:triton:1>, <extraplanets:triton:2>, <metaitem:dustStoneTriton>, 7, 7);

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

// --- Плутон

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:pluto>, <extraplanets:pluto:1>, <extraplanets:pluto:2>, <metaitem:dustStonePluto>, 8, 8);

// Пыль Плутона
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStonePluto> * 3)
   .chancedOutput(<metaitem:dustWulfenite>, 3700, 1200)
   .chancedOutput(<metaitem:dustGraphite>, 1100, 500)
   .chancedOutput(<metaitem:dustPlutonium>, 1150, 500)
   .chancedOutput(<metaitem:dustNaquadah>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

// --- Эрида

// Поверхности
GenerateRecipesForSurfaceStones3(<extraplanets:eris>, <extraplanets:eris:1>, <extraplanets:eris:2>, <metaitem:dustStoneEris>, 9, 9);

// Пыль Эриды
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustStoneEris> * 3)
   .chancedOutput(<metaitem:dustBeryllium>, 3700, 1200)
   .chancedOutput(<metaitem:dustCadmium>, 1100, 500)
   .chancedOutput(<metaitem:dustCassiterite>, 1150, 500)
   .chancedOutput(<metaitem:dustPlutonium>, 950, 500)
   .duration(1250).EUt(1640).buildAndRegister();

