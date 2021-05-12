//Отлючение рецептов
recipes.remove(<prospectors:prospector_lowest>);
recipes.remove(<prospectors:prospector_low>);
recipes.remove(<prospectors:prospector_med>);
recipes.remove(<prospectors:prospector_high>);
recipes.remove(<prospectors:prospector_best>);

//Кирка 1 лвл
recipes.addShaped(<prospectors:prospector_lowest>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBronze>],
	[null, <ore:stickBronze>, <gregtech:meta_item_2:19196>],
	[<ore:stickBronze>, null, null]]);
//Кирка 2 лвл
recipes.addShaped(<prospectors:prospector_low>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateSteel>],
	[null, <prospectors:prospector_lowest:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickSteel>, null, null]]);
//Кирка 3 лвл
recipes.addShaped(<prospectors:prospector_med>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateKanthal>],
	[null, <prospectors:prospector_low:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickSteel>, null, null]]);
//Кирка 4 лвл
recipes.addShaped(<prospectors:prospector_high>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBlueSteel>],
	[null, <prospectors:prospector_med:*>, <gregtech:meta_item_2:19196>],
	[<ore:stickStainlessSteel>, null, null]]);