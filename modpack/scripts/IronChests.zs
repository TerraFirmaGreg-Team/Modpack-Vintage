# Iron Chests

import crafttweaker.item.IItemStack;

print("Initializing 'Iron Chests'...");


// Удаление рецептов из NEI
var itemsChest = [<ironchest:iron_shulker_box_white:*>, <ironchest:iron_shulker_box_orange:*>, <ironchest:iron_shulker_box_magenta:*>, <ironchest:iron_shulker_box_light_blue:*>, <ironchest:iron_shulker_box_yellow:*>, <ironchest:iron_shulker_box_lime:*>, <ironchest:iron_shulker_box_pink:*>, <ironchest:iron_shulker_box_gray:*>, <ironchest:iron_shulker_box_silver:*>, <ironchest:iron_shulker_box_cyan:*>, <ironchest:iron_shulker_box_purple:*>, <ironchest:iron_shulker_box_blue:*>, <ironchest:iron_shulker_box_brown:*>, <ironchest:iron_shulker_box_green:*>, <ironchest:iron_shulker_box_red:*>, <ironchest:iron_shulker_box_black:*>, <ironchest:iron_gold_chest_upgrade>, <ironchest:gold_diamond_chest_upgrade>, <ironchest:copper_silver_chest_upgrade>, <ironchest:silver_gold_chest_upgrade>, <ironchest:copper_iron_chest_upgrade>, <ironchest:diamond_crystal_chest_upgrade>, <ironchest:wood_iron_chest_upgrade>, <ironchest:wood_copper_chest_upgrade>, <ironchest:diamond_obsidian_chest_upgrade>, <ironchest:iron_gold_shulker_upgrade>, <ironchest:gold_diamond_shulker_upgrade>, <ironchest:copper_silver_shulker_upgrade>, <ironchest:silver_gold_shulker_upgrade>, <ironchest:copper_iron_shulker_upgrade>, <ironchest:diamond_crystal_shulker_upgrade>, <ironchest:vanilla_iron_shulker_upgrade>, <ironchest:vanilla_iron_shulker_upgrade>, <ironchest:vanilla_copper_shulker_upgrade>, <ironchest:diamond_obsidian_shulker_upgrade>, <ironchest:iron_chest:7>] as IItemStack[];
for item in itemsChest {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

// Новые крафты сундуков
// Крафт железного сундука
recipes.remove(<ironchest:iron_chest>);
recipes.addShaped(<ironchest:iron_chest>, 
	[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:plateIron>, <ironchest:iron_chest:3>, <ore:plateIron>], 
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<ironchest:iron_chest>, 
	[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <ironchest:iron_chest:3>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

// Крафт медного сундука
recipes.remove(<ironchest:iron_chest:3>);
recipes.addShaped(<ironchest:iron_chest:3>, 
	[[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
	[<ore:plateCopper>, <ore:chestWood>, <ore:plateCopper>], 
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

// Крафт серебряного сундука
recipes.remove(<ironchest:iron_chest:4>);
recipes.addShaped(<ironchest:iron_chest:4>, 
	[[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
	[<ore:plateSilver>, <ironchest:iron_chest>, <ore:plateSilver>], 
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);

// Крафт золотого сундука
recipes.remove(<ironchest:iron_chest:1>);
recipes.addShaped(<ironchest:iron_chest:1>, 
	[[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
	[<ore:plateGold>, <ironchest:iron_chest:4>, <ore:plateGold>], 
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

// Крафт алмазного сундука
recipes.remove(<ironchest:iron_chest:2>);
recipes.addShaped(<ironchest:iron_chest:2>, 
	[[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
	[<ore:plateDiamond>, <ironchest:iron_chest:1>, <ore:plateDiamond>], 
	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);

// Крафт кристального сундука
recipes.remove(<ironchest:iron_chest:5>);
recipes.addShaped(<ironchest:iron_chest:5>, 
	[[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>], 
	[<ore:plateGlass>, <ironchest:iron_chest:2>, <ore:plateGlass>], 
	[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>]]);

// Крафт обсидианового сундука
recipes.remove(<ironchest:iron_chest:6>);
recipes.addShaped(<ironchest:iron_chest:6>, 
	[[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>], 
	[<ore:plateObsidian>, <ironchest:iron_chest:2>, <ore:plateObsidian>], 
	[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);


print("Initialized 'Iron Chests'");