import mods.gregtech.recipe.Utils;

// --- Adding Recipes

// --- Atmospheres

function GenerateRecipesForAir(input as string, dimension as int, EUMulti as int, CircuitConfig as int) {
   
   // Gas Collector
   gas_collector.recipeBuilder()
      .circuit(CircuitConfig)
      .fluidOutputs(Utils.fluid(input + "_air")  * 10000)
      .property("dimension", dimension)
      .duration(200).EUt(256 * (4 * EUMulti)).buildAndRegister();

   // Vacuum Freezer
   vacuum_freezer.recipeBuilder()
      .fluidInputs(Utils.fluid(input + "_air") * 4000)
      .fluidOutputs(Utils.fluid(input + "_liquid_air")  * 4000)
      .duration(80).EUt(7680 * (4 * EUMulti)).buildAndRegister();

}

// Mercury
GenerateRecipesForAir("mercury", -13, 3, 4);

// Venus
GenerateRecipesForAir("venus", -31, 2, 5);

// Moon
GenerateRecipesForAir("moon", -28, 1, 6);

// Mars
GenerateRecipesForAir("mars", -29, 2, 7);

// Jupiter
GenerateRecipesForAir("jupiter", -1026, 3, 8);

// IO
GenerateRecipesForAir("io", -1500, 4, 9);

// Europa
GenerateRecipesForAir("europa", -1501, 5, 10);

// Callisto
GenerateRecipesForAir("callisto", -1505, 6, 11);

// Saturn
GenerateRecipesForAir("saturn", -16, 7, 12);

// Titan
GenerateRecipesForAir("titan", -1508, 8, 13);

// Uran
GenerateRecipesForAir("uranus", -17, 9, 14);

// Neptune
GenerateRecipesForAir("neptune", -18, 10, 15);

// Triton
GenerateRecipesForAir("triton", -1504, 11, 16);

// Pluto
GenerateRecipesForAir("pluto", -19, 12, 17);

// Barnard C
GenerateRecipesForAir("barnard_c", -1030, 13, 18);

// Kepler 22b
GenerateRecipesForAir("kepler_22_b", -22, 14, 19);

// Proxima B
GenerateRecipesForAir("proxima_b", -1025, 15, 20);

// Tau Ceti F
GenerateRecipesForAir("tau_ceti_f", -1338, 16, 21);

// --- Rocks

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
   .fluidOutputs([<liquid:helium3> * 1])
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

//Меркурианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMercuryStone> * 2)
   .chancedOutput(<ore:dustTinyVanadiumMagnetite>.firstItem, 4500, 1200)
   .chancedOutput(<ore:dustTinyIron>.firstItem, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(1500)
   .EUt(1536)
   .buildAndRegister();

// --- Астероиды(3 типа камня)

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

// Mars air
// <recipemap:gas_collector>.findRecipe(64, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// gas_collector.recipeBuilder()
//     .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
//     .fluidOutputs([<liquid:nether_air> * 10000])
//     .property("dimension", -29)
//     .duration(200)
//     .EUt(256)
//     .buildAndRegister();

// Venus air
// <recipemap:gas_collector>.findRecipe(256, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
// gas_collector.recipeBuilder()
//     .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
//     .fluidOutputs([<liquid:ender_air> * 10000])
//     .property("dimension", -31)
//     .duration(200)
//     .EUt(256)
//     .buildAndRegister();