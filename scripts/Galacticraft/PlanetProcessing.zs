//GALACTICRAFT-PROCCESSING
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
   .chancedOutput(<gregtech:meta_item_1:2328>, 5000, 1500)
   .chancedOutput(<gregtech:meta_item_1:1054>, 750, 100)
   .chancedOutput(<gregtech:meta_item_1:1065>, 650, 250)
   .chancedOutput(<gregtech:meta_item_1:1063>, 550, 350)
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
   .chancedOutput(<gregtech:meta_item_1:2061>, 1200, 1200)
   .chancedOutput(<gregtech:meta_item_1:1038>, 1100, 500)
   .chancedOutput(<gregtech:meta_item_1:1001>, 1150, 500)
   .chancedOutput(<gregtech:meta_item_1:1212>, 950, 500)
   .chancedOutput(<gregtech:meta_item_1:1065>, 750, 350)
   .chancedOutput(<gregtech:meta_item_1:1131>, 650, 250)
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
   .chancedOutput(<gregtech:meta_item_1:1036>, 750, 100)
   .chancedOutput(<gregtech:meta_item_1:1018>, 650, 250)
   .chancedOutput(<gregtech:meta_item_1:1017>, 550, 350)
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
   .chancedOutput(<gregtech:meta_item_1:2131>, 3700, 1200)
   .chancedOutput(<gregtech:meta_item_1:1001>, 1100, 500)
   .chancedOutput(<gregtech:meta_item_1:1074>, 1150, 500)
   .chancedOutput(<gregtech:meta_item_1:1079>, 950, 500)
   .chancedOutput(<gregtech:meta_item_1:1045>, 750, 350)
   .chancedOutput(<gregtech:meta_item_1:1026>, 650, 250)
   .duration(250)
   .EUt(116)
   .buildAndRegister();

//Венера
//Венерианский мягкий камень
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:venusturf>)
   .chancedOutput(<gregtech:meta_item_1:2328>, 3500, 750)
   .chancedOutput(<gregtech:meta_item_1:1065>, 9700, 50)
   .chancedOutput(<gregtech:meta_item_1:1061>, 4700, 150)
   .chancedOutput(<gregtech:meta_item_1:1011>, 1500, 750)
   .chancedOutput(<gregtech:meta_item_1:1054>, 1400, 250)
   .chancedOutput(<gregtech:meta_item_1:326>, 150, 50)
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
   .chancedOutput(<gregtech:meta_item_1:1039>, 3700, 1200)
   .chancedOutput(<gregtech:meta_item_1:1038>, 1100, 500)
   .chancedOutput(<gregtech:meta_item_1:1072>, 1150, 500)
   .chancedOutput(<gregtech:meta_item_1:1100>, 950, 500)
   .chancedOutput(<gregtech:meta_item_1:1008>, 750, 350)
   .chancedOutput(<gregtech:meta_item_1:65>, 650, 250)
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
   .chancedOutput(<gregtech:meta_item_1:33>, 1000, 20)
   .fluidOutputs(<liquid:argon>*1)
   .duration(180)
   .EUt(144)
   .buildAndRegister();
//Меркурианский камень --> Пыль
macerator.recipeBuilder()
   .inputs(<minecraft:stone> * 3)//FIX THIS
   .chancedOutput(<contenttweaker:mercurystone>, 9500, 50)
   .chancedOutput(<contenttweaker:mercurystone>, 7500, 150)
   .chancedOutput(<contenttweaker:mercurystone>, 5500, 150)
   .duration(200)
   .EUt(38)
   .buildAndRegister();
//Меркурианский камень пыль
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:mercurystone>*2)
   .chancedOutput(<gregtech:meta_item_1:255>, 4500, 1200)
   .chancedOutput(<gregtech:meta_item_1:33>, 4000, 500)
   .fluidOutputs(<liquid:nitrogen> * 1, <liquid:carbon_dioxide>*2)
   .duration(250)
   .EUt(146)
   .buildAndRegister();

//Астероидный камень пыль --> Byproduct
//1
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block>*2)
   .chancedOutput(<gregtech:meta_item_1:3096>, 3000, 500)
   .chancedOutput(<gregtech:meta_item_1:3199>, 4500, 100)
   .chancedOutput(<gregtech:meta_item_1:3044>, 4500, 100)
   .chancedOutput(<gregtech:meta_item_1:3026>, 1100, 100)
   .chancedOutput(<gregtech:meta_item_1:878>, 500, 100)
   .chancedOutput(<gregtech:meta_item_1:31>, 10, 1)
   .duration(200)
   .EUt(192)
   .buildAndRegister();
//2
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:1>*2)
   .chancedOutput(<gregtech:meta_item_1:3215>, 3000, 500)
   .chancedOutput(<gregtech:meta_item_1:3111>, 3500, 100)
   .chancedOutput(<gregtech:meta_item_1:3281>, 1500, 100)
   .chancedOutput(<gregtech:meta_item_1:3041>, 1100, 100)
   .chancedOutput(<gregtech:meta_item_1:3123>, 5000, 500)
   .chancedOutput(<gregtech:meta_item_1:326>, 500, 500)
   .duration(200)
   .EUt(192)
   .buildAndRegister();
//3
centrifuge.recipeBuilder()
   .inputs(<galacticraftplanets:asteroids_block:2>)
   .chancedOutput(<gregtech:meta_item_1:17>, 7500, 1000)
   .chancedOutput(<gregtech:meta_item_1:7>, 5000, 500)
   .chancedOutput(<gregtech:meta_item_1:51>, 2500, 250)
   .chancedOutput(<gregtech:meta_item_1:6>, 1100, 100)
   .chancedOutput(<gregtech:meta_item_1:27>, 100, 100)
   .chancedOutput(<gregtech:meta_item_1:672>, 1, 0)
   .duration(200)
   .EUt(192)
   .buildAndRegister();