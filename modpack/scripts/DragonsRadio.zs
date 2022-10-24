# DragonsRadio

print("Initializing 'DragonsRadio'...");


// Удаление рецентов
recipes.remove(<dragons_radio:radio>);
recipes.remove(<dragons_radio:radio_tuner>);
recipes.remove(<dragons_radio:speaker>);
recipes.remove(<dragons_radio:dummyspeaker>);

// Рецепты в верстаке
// Пульт от радио
recipes.addShaped(<dragons_radio:radio_tuner>, 
	[[<gregtech:meta_item_1:517>, <ore:plateRubber>, null], 
	[<ore:plateRubber>, <gregtech:meta_item_1:232>, <ore:plateRubber>], 
	[null, <ore:plateRubber>, <ore:stickWood>]]);

// Динамик
recipes.addShaped(<dragons_radio:speaker>, 
	[[<ore:plankWood>, <gregtech:meta_item_1:501>, <ore:plankWood>], 
	[<ore:plateRubber>, <ore:stickIronMagnetic>, <ore:plateRubber>], 
	[<ore:plankWood>, <gregtech:meta_item_1:501>, <ore:plankWood>]]);

// Муляж Динамика
recipes.addShaped(<dragons_radio:dummyspeaker>, 
	[[<ore:plankWood>, <ore:plateRubber>, <ore:plankWood>], 
	[<ore:plateRubber>, <gregtech:meta_item_1:501>, <ore:plateRubber>], 
	[<ore:plankWood>, <ore:plateRubber>, <ore:plankWood>]]);


print("Initialized 'DragonsRadio-server'");