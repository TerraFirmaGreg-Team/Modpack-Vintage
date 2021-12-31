//GALACTICRAFT-PROCCESSING

//Solid Meteoric Iron --> Meteoric Iron Raw
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:12>)
   .outputs(<galacticraftcore:meteoric_iron_raw> * 4)
   .chancedOutput(<galacticraftcore:meteoric_iron_raw>, 2500, 500)
   .duration(760)
   .EUt(176)
   .buildAndRegister();
//Метеоритное железо
centrifuge.recipeBuilder()
   .inputs(<galacticraftcore:meteoric_iron_raw>)
   .chancedOutput(<ore:dustStone>.firstItem, 9000, 500)
   .chancedOutput(<ore:dustImpureVanadiumMagnetite>.firstItem, 7000, 1000)
   .chancedOutput(<ore:dustImpureOpal>.firstItem, 5000, 1500)
   .chancedOutput(<ore:dustImpureNickel>.firstItem, 3000, 2000)
   .chancedOutput(<ore:dustImpureVanadiumMagnetite>.firstItem, 1000, 2500)
   .chancedOutput(<ore:dustRareEarth>.firstItem, 500, 3000)
   .fluidOutputs(<liquid:water> * 50)
   .duration(150)
   .EUt(618)
   .buildAndRegister();

//Dash --> Raw Dash
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:8>)
   .outputs(<galacticraftplanets:item_basic_mars> * 4)
   .chancedOutput(<galacticraftplanets:item_basic_mars>, 2500, 500)
   .duration(760)
   .EUt(510)
   .buildAndRegister();
//Dash
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars>)
   .chancedOutput(<ore:dustStone>.firstItem, 9000, 500)
   .chancedOutput(<ore:dustSulfur>.firstItem, 7000, 1000)
   .chancedOutput(<ore:dustCarbon>.firstItem, 5000, 1500)
   .chancedOutput(<ore:dustSteel>.firstItem, 3000, 2000)
   .chancedOutput(<ore:dustImpureVanadiumMagnetite>.firstItem, 1000, 2500)
   .chancedOutput(<ore:dustRareEarth>.firstItem, 1500, 1500)
   .fluidOutputs(<liquid:water> * 50)
   .duration(150)
   .EUt(1750)
   .buildAndRegister();

//ЛУНА
//Лунный реголит
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:moonturf> * 3)
   .chancedOutput(<tfc:gravel/basalt>, 5000, 1500)
   .fluidOutputs(<liquid:helium3> * 13)
   .duration(180)
   .EUt(96)
   .buildAndRegister();
//Лунный грунт
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:moonsoil> * 3)
   .chancedOutput(<ore:dustStone>.firstItem, 5000, 1500)
   .chancedOutput(<ore:dustSmallPotassium>.firstItem, 750, 100)
   .chancedOutput(<ore:dustSmallSulfur>.firstItem, 650, 250)
   .chancedOutput(<ore:dustSmallSodium>.firstItem, 550, 350)
   .fluidOutputs(<liquid:helium3> * 7)
   .duration(180)
   .EUt(98)
   .buildAndRegister();
//Лунный камень --> Пыль
macerator.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_moon:4> * 3)
   .chancedOutput(<contenttweaker:moonstone>, 9500, 50)
   .chancedOutput(<contenttweaker:moonstone>, 7500, 150)
   .chancedOutput(<contenttweaker:moonstone>, 5500, 150)
   .duration(200)
   .EUt(36)
   .buildAndRegister();
//Лунный камень пыль
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:moonstone> * 3)
   .chancedOutput(<ore:dustSilicon>.firstItem, 1200, 1200)
   .chancedOutput(<ore:dustSmallAluminium>.firstItem, 1100, 500)
   .chancedOutput(<ore:dustSmallMagnesium>.firstItem, 1150, 500)
   .chancedOutput(<ore:dustSmallOlivine>.firstItem, 950, 500)
   .chancedOutput(<ore:dustSmallSulfur>.firstItem, 750, 350)
   .chancedOutput(<ore:dustSmallMagnetite>.firstItem, 650, 250)
   .fluidOutputs(<liquid:helium3> * 2)
   .duration(250)
   .EUt(100)
   .buildAndRegister();
   
//Марс
//Марсианский реголит(мелкодисперный)
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:marsturf>)
   .chancedOutput(<tfc:gravel/basalt>, 4500, 1500)
   .fluidOutputs(<liquid:helium3> * 1)
   .duration(180)
   .EUt(112)
   .buildAndRegister();
//Марсианский грунт(реголит)
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:marssoil>)
   .chancedOutput(<ore:dustSmallLithium>.firstItem, 750, 100)
   .chancedOutput(<ore:dustSmallCopper>.firstItem, 650, 250)
   .chancedOutput(<ore:dustSmallCobalt>.firstItem, 550, 350)
   .fluidOutputs(<liquid:fresh_water> * 2)
   .duration(180)
   .EUt(114)
   .buildAndRegister();
//Марсианский камень --> Пыль
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:mars:4> * 5)
   .chancedOutput(<contenttweaker:marsstone>, 9500, 50)
   .chancedOutput(<contenttweaker:marsstone>, 7500, 150)
   .chancedOutput(<contenttweaker:marsstone>, 5500, 150)
   .duration(200)
   .EUt(38)
   .buildAndRegister();
//Марсианский камень пыль-->
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:marsstone>)
   .chancedOutput(<ore:dustMagnetite>.firstItem, 3700, 1200)
   .chancedOutput(<ore:dustSmallTungsten>.firstItem, 1100, 500)
   .chancedOutput(<ore:dustSmallAluminium>.firstItem, 1150, 500)
   .chancedOutput(<ore:dustSmallZinc>.firstItem, 950, 500)
   .chancedOutput(<ore:dustSmallNiobium>.firstItem, 750, 350)
   .chancedOutput(<ore:dustSmallGold>.firstItem, 650, 250)
   .duration(250)
   .EUt(116)
   .buildAndRegister();

//Венера
//Венерианский мягкий камень
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:venusturf>)
   .chancedOutput(<ore:dustStone>.firstItem, 3500, 750)
   .chancedOutput(<ore:dustSmallSulfur>.firstItem, 9700, 50)
   .chancedOutput(<ore:dustSmallSilicon>.firstItem, 4700, 150)
   .chancedOutput(<ore:dustCalcium>.firstItem, 1500, 750)
   .chancedOutput(<ore:dustSmallPotassium>.firstItem, 1400, 250)
   .chancedOutput(<ore:dustTinyRareEarth>.firstItem, 150, 50)
   .duration(180)
   .EUt(128)
   .buildAndRegister();
//Венерианский камень --> Пыль
macerator.recipeBuilder()
   .inputs(<galacticraftplanets:venus:1> * 3)
   .chancedOutput(<contenttweaker:venussoil>, 9300, 50)
   .chancedOutput(<contenttweaker:venussoil>, 8500, 150)
   .chancedOutput(<contenttweaker:venussoil>, 7700, 250)
   .duration(200)
   .EUt(40)
   .buildAndRegister();
//Венерианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:venussoil>)
   .chancedOutput(<ore:dustSmallManganese>.firstItem, 3700, 1200)
   .chancedOutput(<ore:dustSmallTitanium>.firstItem, 1100, 500)
   .chancedOutput(<ore:dustSmallMagnesium>.firstItem, 1150, 500)
   .chancedOutput(<ore:dustSmallChalcopyrite>.firstItem, 950, 500)
   .chancedOutput(<ore:dustSmallBismuth>.firstItem, 750, 350)
   .chancedOutput(<ore:dustTinySulfur>.firstItem, 650, 250)
   .duration(250)
   .EUt(130)
   .buildAndRegister();
   
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
