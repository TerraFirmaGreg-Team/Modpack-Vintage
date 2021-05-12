import mods.gregtech.recipe.RecipeMap;
//Переменные
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val vacuum_freezer as RecipeMap = RecipeMap.getByName("vacuum_freezer");

//Переработка
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
//Зараженная вода меркурия --> Азот, Аргон, Углексилый газ, Гелий
centrifuge.recipeBuilder()
   .fluidInputs(<liquid:infected_water_fluid>*15)
   .fluidOutputs(<liquid:nitrogen> * 25, <liquid:carbon_dioxide>*45, <liquid:argon>*13, <liquid:helium>*15)
   .duration(180)
   .EUt(220)
   .buildAndRegister();
//Меркурианский камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:mercury:2> * 3)
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
//Фобос
//Фобос камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:phobos:2> * 3)
   .chancedOutput(<contenttweaker:phobosstone>, 9500, 50)
   .chancedOutput(<contenttweaker:phobosstone>, 7500, 150)
   .chancedOutput(<contenttweaker:phobosstone>, 5500, 150)
   .duration(212)
   .EUt(38)
   .buildAndRegister();
//Фобос камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:phobosstone>)
   .chancedOutput(<gregtech:meta_item_1:90>, 5000, 500)
   .chancedOutput(<gregtech:meta_item_1:96>, 3000, 500)
   .chancedOutput(<gregtech:meta_item_1:199>, 1000, 500)
   .duration(200)
   .EUt(210)
   .buildAndRegister();
//Фобос подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:phobossoil>)
   .chancedOutput(<gregtech:meta_item_1:199>, 1000, 500)
   .duration(150)
   .EUt(210)
   .buildAndRegister();
//Фобос поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:phobosturf>)
   .chancedOutput(<gregtech:meta_item_1:90>, 5000, 500)
   .duration(150)
   .EUt(210)
   .buildAndRegister();
  
//Деймос  
//Деймос камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:deimos:2> * 3)
   .chancedOutput(<contenttweaker:deimosstone>, 9500, 50)
   .chancedOutput(<contenttweaker:deimosstone>, 7500, 150)
   .chancedOutput(<contenttweaker:deimosstone>, 5500, 150)
   .duration(200)
   .EUt(216)
   .buildAndRegister();  
//Деймоскамень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:deimosstone>)
   .chancedOutput(<gregtech:meta_item_1:1123>, 5000, 500)
   .chancedOutput(<gregtech:meta_item_1:1>, 3000, 500)
   .chancedOutput(<gregtech:meta_item_1:122>, 1000, 500)
   .duration(200)
   .EUt(215)
   .buildAndRegister();
//Деймоскамень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:deimossoil>)
   .chancedOutput(<gregtech:meta_item_1:1123>, 5000, 500)
   .duration(150)
   .EUt(215)
   .buildAndRegister();
//Деймоскамень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:deimosturf>)
   .chancedOutput(<gregtech:meta_item_1:122>, 1000, 500)
   .duration(200)
   .EUt(315)
   .buildAndRegister();
   
//Юпитер
//Жидкая магма
electrolyzer.recipeBuilder()
   .fluidInputs([<liquid:magma_fluid>*1000])
   .fluidOutputs([<liquid:carbon>*20,<liquid:neon>*15,<liquid:ethane>*45,<liquid:hydrogen_sulfide>*115,<liquid:helium>*200])
   .duration(150)
   .EUt(315)
   .buildAndRegister();
//Юпитер камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:jupiter:2> * 3)
   .chancedOutput(<contenttweaker:jupiterstone>, 9500, 50)
   .chancedOutput(<contenttweaker:jupiterstone>, 7500, 150)
   .chancedOutput(<contenttweaker:jupiterstone>, 5500, 150)
   .duration(200)
   .EUt(315)
   .buildAndRegister();  
//Юпитер камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:jupiterstone>*2)
   .chancedOutput(<gregtech:meta_item_1:1065>, 5000, 1000)
   .fluidOutputs([<liquid:carbon>*7,<liquid:neon>*3,<liquid:ethane>*10,<liquid:hydrogen_sulfide>*40,<liquid:helium>*60])
   .duration(200)
   .EUt(315)
   .buildAndRegister();
//Юпитер подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:jupitersoil>*4)
   .chancedOutput(<gregtech:meta_item_1:1065>, 2000, 1000)
   .chancedOutput(<gregtech:meta_item_1:90>, 700, 1000)
   .fluidOutputs([<liquid:carbon>*2,<liquid:neon>*1,<liquid:ethane>*1,<liquid:hydrogen_sulfide>*20,<liquid:helium>*10])
   .duration(150)
   .EUt(315)
   .buildAndRegister();
//Юпитер поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:jupiterturf>*6)
   .chancedOutput(<gregtech:meta_item_1:1065>, 1000, 1000)
   .chancedOutput(<gregtech:meta_item_1:90>, 500, 1000)
   .fluidOutputs([<liquid:carbon>*1,<liquid:hydrogen_sulfide>*15,<liquid:helium>*5])
   .duration(200)
   .EUt(315)
   .buildAndRegister();
   
//Сатурн
//Жидкий метан --> Метан
vacuum_freezer.recipeBuilder()
   .fluidInputs([<liquid:methane_fluid>*1000])
   .fluidOutputs([<liquid:methane>*900])
   .duration(150)
   .EUt(415)
   .buildAndRegister();
//Жидкий углеводород --> Углеводород
vacuum_freezer.recipeBuilder()
   .fluidInputs([<liquid:liquid_hydrocarbon_fluid>*1000])
   .fluidOutputs([<liquid:lpg>*900])
   .duration(150)
   .EUt(415)
   .buildAndRegister();   
//Жидкий светокамень --> Светокамень
vacuum_freezer.recipeBuilder()
   .fluidInputs([<liquid:glowstone_fluid>*1000])
   .fluidOutputs([<liquid:glowstone>*900])
   .duration(150)
   .EUt(415)
   .buildAndRegister();
//Сатурн камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:saturn:2> * 3)
   .chancedOutput(<contenttweaker:saturnstone>, 9500, 50)
   .chancedOutput(<contenttweaker:saturnstone>, 7500, 150)
   .chancedOutput(<contenttweaker:saturnstone>, 5500, 150)
   .duration(200)
   .EUt(415)
   .buildAndRegister();  
//Сатурн камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:saturnstone>)
   .chancedOutput(<gregtech:meta_item_1:1212>, 5000, 1000)
   .chancedOutput(<gregtech:meta_item_1:1294>, 3000, 1000)
   .chancedOutput(<gregtech:meta_item_1:1293>, 2500, 700)
   .duration(200)
   .EUt(415)
   .buildAndRegister();
//Сатурн подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:saturnsoil>)
   .chancedOutput(<gregtech:meta_item_1:1123>, 2500, 1000)
   .chancedOutput(<gregtech:meta_item_1:1011>, 1000, 500)
   .duration(150)
   .EUt(415)
   .buildAndRegister();
//Сатурн поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:saturnturf>)
   .chancedOutput(<gregtech:meta_item_1:1201>, 1000, 700)
   .duration(200)
   .EUt(415)
   .buildAndRegister();

//Уран
//Замерзшая вода --> Byproduct
electrolyzer.recipeBuilder()
   .fluidInputs([<liquid:frozen_water_fluid>*1000])
   .fluidOutputs([<liquid:methane>*150, <liquid:helium>*250, <liquid:hydrogen>*150, <liquid:ethylene>*250])
   .duration(150)
   .EUt(515)
   .buildAndRegister();
//Уран камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:uranus:2> * 3)
   .chancedOutput(<contenttweaker:uranstone>, 9500, 50)
   .chancedOutput(<contenttweaker:uranstone>, 7500, 150)
   .chancedOutput(<contenttweaker:uranstone>, 5500, 150)
   .duration(200)
   .EUt(515)
   .buildAndRegister();  
//Уран камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:uranstone>)
   .chancedOutput(<gregtech:meta_item_1:1111>, 2500, 1000)
   .chancedOutput(<gregtech:meta_item_1:1131>, 1500, 1000)
   .duration(200)
   .EUt(515)
   .buildAndRegister();
//Уран подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:uransoil>)
   .chancedOutput(<gregtech:meta_item_1:1204>, 1000, 500)
   .chancedOutput(<gregtech:meta_item_1:1131>, 1500, 1000)
   .duration(150)
   .EUt(515)
   .buildAndRegister();
//Уран поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:uranturf>)
   .chancedOutput(<gregtech:meta_item_1:65>, 500, 500)
   .chancedOutput(<gregtech:meta_item_2:22111>, 100, 750)
   .duration(200)
   .EUt(515)
   .buildAndRegister();

//Нептун
//Жидкий азот --> Азот
vacuum_freezer.recipeBuilder()
   .fluidInputs([<liquid:nitrogen_fluid>*1000])
   .fluidOutputs([<liquid:nitrogen>*900])
   .duration(150)
   .EUt(615)
   .buildAndRegister();
//Радиоактивная вода --> Byproduct
electrolyzer.recipeBuilder()
   .fluidInputs([<liquid:radioactive_water_fluid>*1000])
   .fluidOutputs([<liquid:carbon_12>*1,<liquid:light_naquadah_fuel>*1,<liquid:benzaldehyde>*2,<liquid:dilute_nitric_acid>*9,<liquid:naquadric_solution>*1])
   .duration(150)
   .EUt(515)
   .buildAndRegister();
//Нептун камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:neptune:2> * 3)
   .chancedOutput(<contenttweaker:neptunestone>, 9500, 50)
   .chancedOutput(<contenttweaker:neptunestone>, 7500, 150)
   .chancedOutput(<contenttweaker:neptunestone>, 5500, 150)
   .duration(200)
   .EUt(615)
   .buildAndRegister();  
//Нептун камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:neptunestone>*2)
   .chancedOutput(<gregtech:meta_item_1:1224>, 7500, 1000)
   .chancedOutput(<gregtech:meta_item_1:1111>, 9000, 1000)
   .chancedOutput(<gregtech:meta_item_1:1039>, 7500, 500)
   .duration(200)
   .EUt(615)
   .buildAndRegister();
//Нептун подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:neptunesoil>)
   .chancedOutput(<gregtech:meta_item_1:1704>, 1000, 500)
   .chancedOutput(<gregtech:meta_item_1:1224>, 1500, 500)
   .fluidOutputs([<liquid:nitrogen>*15, <liquid:helium>*360])
   .duration(150)
   .EUt(615)
   .buildAndRegister();
//Нептун поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:neptuneturf>)
   .chancedOutput(<gregtech:meta_item_1:181>, 5000, 500)
   .chancedOutput(<gtadditions:ga_dust:176>, 1000, 250)
   .fluidOutputs([<liquid:ammonia>*61, <liquid:methane>*161])
   .duration(200)
   .EUt(615)
   .buildAndRegister();
/*
//Плутон
//Плутон камень --> Пыль
macerator.recipeBuilder()
   .inputs(<extraplanets:pluto:2> * 3)
   .chancedOutput(<contenttweaker:plutostone>, 9500, 50)
   .chancedOutput(<contenttweaker:plutostone>, 7500, 150)
   .chancedOutput(<contenttweaker:plutostone>, 5500, 150)
   .duration(200)
   .EUt(715)
   .buildAndRegister();  
//Плутон камень пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:plutostone>)
   .chancedOutput(<>, 0, 0)
   .duration(200)
   .EUt(715)
   .buildAndRegister();
//Плутон подповерхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:plutosoil>)
   .chancedOutput(<>, 0, 0)
   .duration(150)
   .EUt(715)
   .buildAndRegister();
//Плутон поверхность пыль --> Byproduct
centrifuge.recipeBuilder()
   .inputs(<contenttweaker:plutoturf>)
   .chancedOutput(<>, 0, 0)
   .duration(200)
   .EUt(715)
   .buildAndRegister();   
*/  