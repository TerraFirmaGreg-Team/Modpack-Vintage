# TFCStorage

import crafttweaker.item.IItemStack;

print("Initializing 'TFCStorage'...");


// Удаление полки из ивы
recipes.remove(<tfcstorage:wood/food_shelf/willow>);

// Новый рецепт металлического ящика
recipes.remove(<tfcstorage:crate>);
recipes.addShaped(<tfcstorage:crate>,
	[[<ore:plateSteel>, <ore:lumber>, <ore:plateSteel>],
	[<ore:lumber>, <ore:chestWood>, <ore:lumber>],
	[<ore:plateSteel>, <immersiveengineering:wooden_device0:3>, <ore:plateSteel>]]);


print("Initialized 'TFCStorage'");