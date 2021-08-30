//Отлючение рецептов
mods.jei.JEI.removeAndHide(<prospectors:prospector_lowest>);
mods.jei.JEI.removeAndHide(<prospectors:prospector_low>);
mods.jei.JEI.removeAndHide(<prospectors:prospector_high>);
mods.jei.JEI.removeAndHide(<prospectors:prospector_best>);

//Прут 3 лвл
recipes.remove(<prospectors:prospector_med>);
recipes.addShaped(<prospectors:prospector_med>, [
	[null, <gregtech:meta_item_2:19196>, <ore:plateBronze>],
	[null, <ore:stickBronze>, <gregtech:meta_item_2:19196>],
	[<ore:stickBronze>, null, null]]);
	
