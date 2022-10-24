# EconomyMod

import crafttweaker.item.IItemStack;

print("Initializing 'EconomyMod'...");


// Удаление рецептов из NEI
var itemsShop = [<economy_mod:sell_shop:1>, <economy_mod:sell_shop:2>, <economy_mod:sell_shop:4>, <economy_mod:sell_shop:5>, <economy_mod:sell_shop:6>, <economy_mod:sell_shop:7>, <economy_mod:sell_shop:10>, <economy_mod:sell_shop:11>, <economy_mod:buy_shop:1>, <economy_mod:buy_shop:2>, <economy_mod:buy_shop:4>, <economy_mod:buy_shop:5>, <economy_mod:buy_shop:6>, <economy_mod:buy_shop:7>, <economy_mod:buy_shop:10>, <economy_mod:buy_shop:11>, <economy_mod:barter_shop:1>, <economy_mod:barter_shop:2>, <economy_mod:barter_shop:3>, <economy_mod:barter_shop:4>, <economy_mod:barter_shop:5>, <economy_mod:barter_shop:6>, <economy_mod:barter_shop:7>, <economy_mod:barter_shop:10>, <economy_mod:barter_shop:11>] as IItemStack[];
for item in itemsShop {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

// Ключ для снятия магазина
recipes.remove(<economy_mod:wrench>);
recipes.addShaped(<economy_mod:wrench>, 
	[[<ore:ingotBlueSteel>, null, <ore:ingotBlueSteel>], 
	[null, <ore:ingotBlueSteel>, null], 
	[null, <ore:ingotBlueSteel>, null]]);

// Магазины продажи предметов
recipes.remove(<economy_mod:sell_shop>);
recipes.addShaped(<economy_mod:sell_shop>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateStone>, <ore:chestWood>, <ore:plateStone>]]);
recipes.remove(<economy_mod:sell_shop:3>);
recipes.addShaped(<economy_mod:sell_shop:3>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateWood>, <ore:chestWood>, <ore:plateWood>]]);
recipes.remove(<economy_mod:sell_shop:8>);
recipes.addShaped(<economy_mod:sell_shop:8>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateGold>, <ore:chestWood>, <ore:plateGold>]]);
recipes.remove(<economy_mod:sell_shop:9>);
recipes.addShaped(<economy_mod:sell_shop:9>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateWroughtIron>, <ore:chestWood>, <ore:plateWroughtIron>]]);
recipes.remove(<economy_mod:sell_shop:12>);
recipes.addShaped(<economy_mod:sell_shop:12>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateObsidian>, <ore:chestWood>, <ore:plateObsidian>]]);
recipes.remove(<economy_mod:sell_shop:13>);
recipes.addShaped(<economy_mod:sell_shop:13>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateDiamond>, <ore:chestWood>, <ore:plateDiamond>]]);
recipes.remove(<economy_mod:sell_shop:14>);
recipes.addShaped(<economy_mod:sell_shop:14>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateEmerald>, <ore:chestWood>, <ore:plateEmerald>]]);
recipes.remove(<economy_mod:sell_shop:15>);
recipes.addShaped(<economy_mod:sell_shop:15>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSilver>, <minecraft:glass_pane>], 
	[<ore:plateLapis>, <ore:chestWood>, <ore:plateLapis>]]);

// Магазины скупки предметов
recipes.remove(<economy_mod:buy_shop>);
recipes.addShaped(<economy_mod:buy_shop>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateStone>, <ore:chestWood>, <ore:plateStone>]]);
recipes.remove(<economy_mod:buy_shop:3>);
recipes.addShaped(<economy_mod:buy_shop:3>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateWood>, <ore:chestWood>, <ore:plateWood>]]);
recipes.remove(<economy_mod:buy_shop:8>);
recipes.addShaped(<economy_mod:buy_shop:8>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateGold>, <ore:chestWood>, <ore:plateGold>]]);
recipes.remove(<economy_mod:buy_shop:9>);
recipes.addShaped(<economy_mod:buy_shop:9>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateWroughtIron>, <ore:chestWood>, <ore:plateWroughtIron>]]);
recipes.remove(<economy_mod:buy_shop:12>);
recipes.addShaped(<economy_mod:buy_shop:12>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateObsidian>, <ore:chestWood>, <ore:plateObsidian>]]);
recipes.remove(<economy_mod:buy_shop:13>);
recipes.addShaped(<economy_mod:buy_shop:13>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateDiamond>, <ore:chestWood>, <ore:plateDiamond>]]);
recipes.remove(<economy_mod:buy_shop:14>);
recipes.addShaped(<economy_mod:buy_shop:14>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateEmerald>, <ore:chestWood>, <ore:plateEmerald>]]);
recipes.remove(<economy_mod:buy_shop:15>);
recipes.addShaped(<economy_mod:buy_shop:15>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateGold>, <minecraft:glass_pane>], 
	[<ore:plateLapis>, <ore:chestWood>, <ore:plateLapis>]]);

// Магазины обмена предметов
recipes.remove(<economy_mod:barter_shop>);
recipes.addShaped(<economy_mod:barter_shop>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateStone>, <ore:chestWood>, <ore:plateStone>]]);
recipes.remove(<economy_mod:barter_shop:8>);
recipes.addShaped(<economy_mod:barter_shop:8>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateGold>, <ore:chestWood>, <ore:plateGold>]]);
recipes.remove(<economy_mod:barter_shop:9>);
recipes.addShaped(<economy_mod:barter_shop:9>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateWroughtIron>, <ore:chestWood>, <ore:plateWroughtIron>]]);
recipes.remove(<economy_mod:barter_shop:12>);
recipes.addShaped(<economy_mod:barter_shop:12>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateObsidian>, <ore:chestWood>, <ore:plateObsidian>]]);
recipes.remove(<economy_mod:barter_shop:13>);
recipes.addShaped(<economy_mod:barter_shop:13>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateDiamond>, <ore:chestWood>, <ore:plateDiamond>]]);
recipes.remove(<economy_mod:barter_shop:14>);
recipes.addShaped(<economy_mod:barter_shop:14>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateEmerald>, <ore:chestWood>, <ore:plateEmerald>]]);
recipes.remove(<economy_mod:barter_shop:15>);
recipes.addShaped(<economy_mod:barter_shop:15>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <ore:plateSteel>, <minecraft:glass_pane>], 
	[<ore:plateLapis>, <ore:chestWood>, <ore:plateLapis>]]);


print("Initialized 'EconomyMod'");