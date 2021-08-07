import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

//Отлючение рецептов
recipes.remove(<prospectors:prospector_lowest>);
recipes.remove(<prospectors:prospector_low>);
recipes.remove(<prospectors:prospector_med>);
recipes.remove(<prospectors:prospector_high>);
recipes.remove(<prospectors:prospector_best>);

//Прут 3 лвл
recipes.addShaped(<prospectors:prospector_med>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBronze>],
	[null, <ore:stickBronze>, <gregtech:meta_item_2:19196>],
	[<ore:stickBronze>, null, null]]);
	
