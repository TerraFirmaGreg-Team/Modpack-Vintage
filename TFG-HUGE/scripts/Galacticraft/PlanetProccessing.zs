import mods.gregtech.recipe.Utils;

// --- Adding Recipes

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

// --- ЛУНА

// Поверхность --> Пыль х1
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:5> * 3)
   .chancedOutput(<metaitem:dustMoonStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonStone>, 500, 150)
   .chancedOutput(<metaitem:dustMoonStone>, 250, 200)
   .duration(200)
   .EUt(240)
   .buildAndRegister();

// Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:3> * 3)
   .chancedOutput(<metaitem:dustMoonStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonStone>, 7500, 150)
   .chancedOutput(<metaitem:dustMoonStone>, 500, 200)
   .duration(600)
   .EUt(240)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:4> * 3)
   .chancedOutput(<metaitem:dustMoonStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonStone>, 9000, 150)
   .chancedOutput(<metaitem:dustMoonStone>, 9000, 200)
   .duration(1800)
   .EUt(240)
   .buildAndRegister();

// Лунная порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMoonStone> * 3)
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

// Поверхность --> Пыль х1
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:5> * 3)
   .chancedOutput(<metaitem:dustMarsStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsStone>, 500, 150)
   .chancedOutput(<metaitem:dustMarsStone>, 250, 200)
   .duration(300)
   .EUt(480)
   .buildAndRegister();

// Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:6> * 3)
   .chancedOutput(<metaitem:dustMarsStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsStone>, 7500, 150)
   .chancedOutput(<metaitem:dustMarsStone>, 500, 200)
   .duration(900)
   .EUt(480)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:9> * 3)
   .chancedOutput(<metaitem:dustMarsStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsStone>, 9000, 150)
   .chancedOutput(<metaitem:dustMarsStone>, 9000, 200)
   .duration(2700)
   .EUt(480)
   .buildAndRegister();

// Марсианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMarsStone>)
   .chancedOutput(<metaitem:dustMagnetite>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTungsten>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallAluminium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallZinc>, 950, 500)
   .chancedOutput(<metaitem:dustSmallNiobium>, 750, 350)
   .chancedOutput(<metaitem:dustSmallGold>, 650, 250)
   .duration(1250)
   .EUt(512)
   .buildAndRegister();


// --- Венера

// Поверхность/Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:venus> * 3)
   .chancedOutput(<metaitem:dustVenusStone>, 9000, 100)
   .chancedOutput(<metaitem:dustVenusStone>, 7500, 150)
   .chancedOutput(<metaitem:dustVenusStone>, 500, 200)
   .duration(1350)
   .EUt(960)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:venus:1> * 3)
   .chancedOutput(<metaitem:dustVenusStone>, 9000, 100)
   .chancedOutput(<metaitem:dustVenusStone>, 9000, 150)
   .chancedOutput(<metaitem:dustVenusStone>, 9000, 200)
   .duration(4050)
   .EUt(960)
   .buildAndRegister();

// Венерианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustVenusStone>)
   .chancedOutput(<metaitem:dustSmallManganese>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTitanium>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallChalcopyrite>, 950, 500)
   .chancedOutput(<metaitem:dustSmallBismuth>, 750, 350)
   .chancedOutput(<metaitem:dustTinySulfur>, 650, 250)
   .duration(1250)
   .EUt(1024)
   .buildAndRegister();

// --- Меркурий

// Поверхность --> Пыль х1
macerator.recipeBuilder()
   .inputs(<galaxyspace:mercuryblocks:2> * 3)
   .chancedOutput(<metaitem:dustMercuryStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMercuryStone>, 500, 150)
   .chancedOutput(<metaitem:dustMercuryStone>, 250, 200)
   .duration(4500)
   .EUt(1540)
   .buildAndRegister();

// Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galaxyspace:mercuryblocks:2> * 3)
   .chancedOutput(<metaitem:dustMercuryStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMercuryStone>, 7500, 150)
   .chancedOutput(<metaitem:dustMercuryStone>, 500, 200)
   .duration(5000)
   .EUt(1540)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galaxyspace:mercuryblocks:2> * 3)
   .chancedOutput(<metaitem:dustMercuryStone>, 9000, 100)
   .chancedOutput(<metaitem:dustMercuryStone>, 9000, 150)
   .chancedOutput(<metaitem:dustMercuryStone>, 9000, 200)
   .duration(5500)
   .EUt(1540)
   .buildAndRegister();

// Меркурианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMercuryStone> * 2)
   .chancedOutput(<ore:dustTinyVanadiumMagnetite>.firstItem, 4500, 1200)
   .chancedOutput(<ore:dustTinyIron>.firstItem, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(1500)
   .EUt(1536)
   .buildAndRegister();

// --- Астероиды (3 типа камня)

// Тип 1
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block> * 3)
   .chancedOutput(<metaitem:dustAsteroidStoneBlack>, 9000, 100)
   .chancedOutput(<metaitem:dustAsteroidStoneBlack>, 9000, 150)
   .chancedOutput(<metaitem:dustAsteroidStoneBlack>, 9000, 200)
   .duration(6500)
   .EUt(1840)
   .buildAndRegister();

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustAsteroidStoneBlack> * 2)
   .chancedOutput(<ore:dustImpureNickel>.firstItem, 3000, 500)
   .chancedOutput(<ore:dustImpureYellowLimonite>.firstItem, 4500, 100)
   .chancedOutput(<ore:dustImpureBrownLimonite>.firstItem, 4500, 100)
   .chancedOutput(<ore:dustImpureGold>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustTinyRarestMetalResidue>.firstItem, 500, 100)
   .chancedOutput(<ore:dustTinyIndium>.firstItem, 10, 1)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();

// Тип 2
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:1> * 3)
   .chancedOutput(<metaitem:dustAsteroidStoneGray>, 9000, 100)
   .chancedOutput(<metaitem:dustAsteroidStoneGray>, 9000, 150)
   .chancedOutput(<metaitem:dustAsteroidStoneGray>, 9000, 200)
   .duration(6500)
   .EUt(1840)
   .buildAndRegister();

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustAsteroidStoneGray> * 2)
   .chancedOutput(<ore:dustImpureBauxite>.firstItem, 3000, 500)
   .chancedOutput(<ore:dustImpureDiamond>.firstItem, 3500, 100)
   .chancedOutput(<ore:dustImpureRedstone>.firstItem, 1500, 100)
   .chancedOutput(<ore:dustImpureMonazite>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustImpureMolybdenum>.firstItem, 5000, 500)
   .chancedOutput(<ore:dustTinyRareEarth>.firstItem, 500, 500)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();

// Тип 3
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:2> * 3)
   .chancedOutput(<metaitem:dustAsteroidStoneLightgray>, 9000, 100)
   .chancedOutput(<metaitem:dustAsteroidStoneLightgray>, 9000, 150)
   .chancedOutput(<metaitem:dustAsteroidStoneLightgray>, 9000, 200)
   .duration(6500)
   .EUt(1840)
   .buildAndRegister();

centrifuge.recipeBuilder()
   .inputs(<metaitem:dustAsteroidStoneLightgray> * 3)
   .chancedOutput(<ore:dustTinyCobalt>.firstItem, 7500, 1000)
   .chancedOutput(<ore:dustTinyBeryllium>.firstItem, 5000, 500)
   .chancedOutput(<ore:dustTinyPlatinum>.firstItem, 2500, 250)
   .chancedOutput(<ore:dustTinyBarium>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustTinyHolmium>.firstItem, 100, 100)
   .duration(1600)
   .EUt(1640)
   .buildAndRegister();