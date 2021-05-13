import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

//Отлючение рецептов
recipes.remove(<prospectors:prospector_lowest>);
recipes.remove(<prospectors:prospector_low>);
recipes.remove(<prospectors:prospector_med>);
recipes.remove(<prospectors:prospector_high>);
recipes.remove(<prospectors:prospector_best>);

//Прут 1 лвл
recipes.addShaped(<prospectors:prospector_lowest>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBronze>],
	[null, <ore:stickBronze>, <gregtech:meta_item_2:19196>],
	[<ore:stickBronze>, null, null]]);
	
//Прут 2 лвл
recipes.addShaped(<prospectors:prospector_low>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateSteel>],
	[null, <prospectors:prospector_lowest:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickSteel>, null, null]]);
	
//Прут 3 лвл
recipes.addShaped(<prospectors:prospector_med>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateKanthal>],
	[null, <prospectors:prospector_low:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickSteel>, null, null]]);
	
//Прут 4 лвл
recipes.addShaped(<prospectors:prospector_high>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBlueSteel>],
	[null, <prospectors:prospector_med:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickStainlessSteel>, null, null]]);
	
//Прут 5 лвл
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32692> * 2, <gregtech:meta_item_1:32518>.withTag({Charge: 100000 as long}), <prospectors:prospector_high>, <ore:circuitBasic>*2, <gregtech:meta_item_2:32485>, <minecraft:stick>)
	.outputs(<prospectors:prospector_best:*>)
	.duration(150)
	.EUt(64)
	.buildAndRegister();