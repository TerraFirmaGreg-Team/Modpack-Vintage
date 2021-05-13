import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

//Удаление рецептов
recipes.remove(<portality:controller>);
recipes.remove(<portality:frame>);
recipes.remove(<portality:module_interdimensional>);

//Создание рецептов
//Контроллер
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <ore:boltDiamond> * 12, <ore:blockQuartzite> * 1, <ore:circuitElite> * 1)
	.outputs(<portality:controller>)
	.duration(960)
	.EUt(512)
	.buildAndRegister();
//Структурный блок
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 8, <ore:plateNeodymiumMagnetic> *4)
	.outputs(<portality:frame>)
	.duration(490)
	.EUt(250)
	.buildAndRegister();
//Меж-мировой модуль
assembler.recipeBuilder()
	.inputs(<portality:frame> * 4, <gregtech:meta_item_1:32724> * 4, <appliedenergistics2:material:47>, <ore:blockQuartzite> * 1)
	.outputs(<portality:module_interdimensional>)
	.duration(1620)
	.EUt(1900)
	.buildAndRegister();	
