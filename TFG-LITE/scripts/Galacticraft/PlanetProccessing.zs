// GALACTICRAFT-PROCCESSING

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
   .chancedOutput(<metaitem:dustMoonstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonstone>, 500, 150)
   .chancedOutput(<metaitem:dustMoonstone>, 250, 200)
   .duration(200)
   .EUt(240)
   .buildAndRegister();

// Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:3> * 3)
   .chancedOutput(<metaitem:dustMoonstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonstone>, 7500, 150)
   .chancedOutput(<metaitem:dustMoonstone>, 500, 200)
   .duration(600)
   .EUt(240)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:4> * 3)
   .chancedOutput(<metaitem:dustMoonstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMoonstone>, 9000, 150)
   .chancedOutput(<metaitem:dustMoonstone>, 9000, 200)
   .duration(1800)
   .EUt(240)
   .buildAndRegister();

// Лунная порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMoonstone> * 3)
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
   .chancedOutput(<metaitem:dustMarsstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsstone>, 500, 150)
   .chancedOutput(<metaitem:dustMarsstone>, 250, 200)
   .duration(300)
   .EUt(480)
   .buildAndRegister();

// Подповерхность --> х2
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:6> * 3)
   .chancedOutput(<metaitem:dustMarsstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsstone>, 7500, 150)
   .chancedOutput(<metaitem:dustMarsstone>, 500, 200)
   .duration(900)
   .EUt(480)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:9> * 3)
   .chancedOutput(<metaitem:dustMarsstone>, 9000, 100)
   .chancedOutput(<metaitem:dustMarsstone>, 9000, 150)
   .chancedOutput(<metaitem:dustMarsstone>, 9000, 200)
   .duration(2700)
   .EUt(480)
   .buildAndRegister();

// Марсианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustMarsstone>)
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
   .chancedOutput(<metaitem:dustVenusstone>, 9000, 100)
   .chancedOutput(<metaitem:dustVenusstone>, 7500, 150)
   .chancedOutput(<metaitem:dustVenusstone>, 500, 200)
   .duration(1350)
   .EUt(960)
   .buildAndRegister();

// Порода --> Пыль х3
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:venus:1> * 3)
   .chancedOutput(<metaitem:dustVenusstone>, 9000, 100)
   .chancedOutput(<metaitem:dustVenusstone>, 9000, 150)
   .chancedOutput(<metaitem:dustVenusstone>, 9000, 200)
   .duration(4050)
   .EUt(960)
   .buildAndRegister();

// Венерианская порода пыль --> ByProducts
centrifuge.recipeBuilder()
   .inputs(<metaitem:dustVenusstone>)
   .chancedOutput(<metaitem:dustSmallManganese>, 3700, 1200)
   .chancedOutput(<metaitem:dustSmallTitanium>, 1100, 500)
   .chancedOutput(<metaitem:dustSmallMagnesium>, 1150, 500)
   .chancedOutput(<metaitem:dustSmallChalcopyrite>, 950, 500)
   .chancedOutput(<metaitem:dustSmallBismuth>, 750, 350)
   .chancedOutput(<metaitem:dustTinySulfur>, 650, 250)
   .duration(1250)
   .EUt(1024)
   .buildAndRegister();
/*
//Меркурий
//Меркурианский реголит --> Азот, Аргон, Углексилый газ, Гелий
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:mercuryturf>*4)
   .chancedOutput(<tfc:gravel/basalt>, 4500, 1500)
   .fluidOutputs(<liquid:nitrogen> * 15, <liquid:carbon_dioxide>*13, <liquid:argon>*4, <liquid:helium>*1)
   .duration(180)
   .EUt(142)
   .buildAndRegister();
//Меркурианский грунт
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:mercurysoil>)
   .chancedOutput(<ore:dustTinyIron>.firstItem, 1000, 20)
   .fluidOutputs(<liquid:argon>*1)
   .duration(180)
   .EUt(144)
   .buildAndRegister();
//Меркурианский камень --> Пыль
macerator.recipeBuilder()
   .inputs(<galaxyspace:mercuryblocks:2> * 3)
   .chancedOutput(<contenttweaker:mercurystone>, 9500, 50)
   .chancedOutput(<contenttweaker:mercurystone>, 7500, 150)
   .chancedOutput(<contenttweaker:mercurystone>, 5500, 150)
   .duration(200)
   .EUt(38)
   .buildAndRegister();
//Меркурианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:mercurystone>*2)
   .chancedOutput(<ore:dustTinyVanadiumMagnetite>.firstItem, 4500, 1200)
   .chancedOutput(<ore:dustTinyIron>.firstItem, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(250)
   .EUt(146)
   .buildAndRegister();
*/
/*
//Астероидный камень пыль --> Byproduct
//1
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block>*2)
   .chancedOutput(<ore:dustImpureNickel>.firstItem, 3000, 500)
   .chancedOutput(<ore:dustImpureYellowLimonite>.firstItem, 4500, 100)
   .chancedOutput(<ore:dustImpureBrownLimonite>.firstItem, 4500, 100)
   .chancedOutput(<ore:dustImpureGold>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustTinyRarestMetalResidue>.firstItem, 500, 100)
   .chancedOutput(<ore:dustTinyIndium>.firstItem, 10, 1)
   .duration(200)
   .EUt(192)
   .buildAndRegister();
//2
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:1>*2)
   .chancedOutput(<ore:dustImpureBauxite>.firstItem, 3000, 500)
   .chancedOutput(<ore:dustImpureDiamond>.firstItem, 3500, 100)
   .chancedOutput(<ore:dustImpureRedstone>.firstItem, 1500, 100)
   .chancedOutput(<ore:dustImpureMonazite>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustImpureMolybdenum>.firstItem, 5000, 500)
   .chancedOutput(<ore:dustTinyRareEarth>.firstItem, 500, 500)
   .duration(200)
   .EUt(192)
   .buildAndRegister();
//3
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:2>)
   .chancedOutput(<ore:dustTinyCobalt>.firstItem, 7500, 1000)
   .chancedOutput(<ore:dustTinyBeryllium>.firstItem, 5000, 500)
   .chancedOutput(<ore:dustTinyPlatinum>.firstItem, 2500, 250)
   .chancedOutput(<ore:dustTinyBarium>.firstItem, 1100, 100)
   .chancedOutput(<ore:dustTinyHolmium>.firstItem, 100, 100)
   .duration(200)
   .EUt(192)
   .buildAndRegister();
*/