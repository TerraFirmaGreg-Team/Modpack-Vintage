import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ItemRegistry;


// --- Добавление рецептов

// Минус точильный камень
// recipes.addShaped("tfcthings/grindstone_base", <tfcthings:grindstone_base>, [
//    [<ore:stickIronAny>, <ore:stickIronAny>, <ore:stickIronAny>],
//    [<ore:lumber>, null, <ore:lumber>]]);

// Fix Bracing recipe
Anvil.addRecipe("tfcthings/bracing/wrought_iron", <metaitem:ingotWroughtIron>, <tfcthings:metal_bracing>, 3, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfcthings/bracing/steel", <metaitem:ingotSteel>, <tfcthings:metal_bracing> * 2, 4, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");

// Алмазная пыль --> крошка TFC
// Quern.addRecipe("tfcthings/diamond_grit", <metaitem:dustDiamond>, <tfcthings:diamond_grit>);

// Fix Bear Trap
Anvil.removeRecipe(<tfcthings:bear_trap_half>);
Anvil.addRecipe("tfcthings/bear_trap_half", <metaitem:plateSteel>, <tfcthings:bear_trap_half>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "SHRINK_THIRD_LAST");

// Fix Heavy Sling Ammo recipe
Anvil.addRecipe("tfcthings/sling_ammo/wrought_iron",  <metaitem:ingotWroughtIron>, <tfcthings:sling_ammo> * 8, 3, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfcthings/sling_ammo/steel",  <metaitem:ingotSteel>, <tfcthings:sling_ammo> * 16, 4, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

// Black Steel Grindstone
// Welding.addRecipe("tfcthings/grindstone/steel",  <tfcthings:grindstone_quartz>, <metaitem:plateDoubleBlackSteel>, <tfcthings:grindstone_steel>, 5);

// Молотки
Anvil.addRecipe("tfcthings/bismuth_bronze_hammer", <metaitem:ingotBismuthBronze>, <tfcthings:prospectors_hammer_head/bismuth_bronze>, 2, "general", "PUNCH_LAST", "DRAW_NOT_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/black_bronze_hammer", <metaitem:ingotBlackBronze>, <tfcthings:prospectors_hammer_head/black_bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/bronze_hammer", <metaitem:ingotBronze>, <tfcthings:prospectors_hammer_head/bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/copper_hammer", <metaitem:ingotCopper>, <tfcthings:prospectors_hammer_head/copper>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/wrought_iron_hammer", <metaitem:ingotWroughtIron>, <tfcthings:prospectors_hammer_head/wrought_iron>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/steel_hammer", <metaitem:ingotSteel>, <tfcthings:prospectors_hammer_head/steel>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/black_steel_hammer", <metaitem:ingotBlackSteel>, <tfcthings:prospectors_hammer_head/black_steel>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/blue_steel_hammer", <metaitem:ingotBlueSteel>, <tfcthings:prospectors_hammer_head/blue_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfcthings/red_steel_hammer", <metaitem:ingotRedSteel>, <tfcthings:prospectors_hammer_head/red_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");