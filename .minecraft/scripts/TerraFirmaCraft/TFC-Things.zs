import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ItemRegistry;


// --- Добавление рецептов

// Присвоение единиц металла
// Honing Heads
ItemRegistry.registerItemMetal(<tfcthings:honing_steel_head>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:honing_steel_head_diamond>, "BLACK_STEEL", 288, true);
// Honing Tools
ItemRegistry.registerItemMetal(<tfcthings:honing_steel>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:honing_steel_diamond>, "BLACK_STEEL", 288, true);
// Hook Javelin Heads
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin_head/steel>, "STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin_head/black_steel>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin_head/blue_steel>, "BLUE_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin_head/red_steel>, "RED_STEEL", 288, true);
// Hook Javelins
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin/steel>, "STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin/black_steel>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin/blue_steel>, "BLUE_STEEL", 288, true);
ItemRegistry.registerItemMetal(<tfcthings:hook_javelin/red_steel>, "RED_STEEL", 288, true);
// Prospector Hammer Heads
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/bismuth_bronze>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/black_bronze>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/black_steel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/blue_steel>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/bronze>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/copper>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/red_steel>, "RED_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/steel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer_head/wrought_iron>, "WROUGHT_IRON", 144, true);
// Prospector Hammers
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/bismuth_bronze>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/black_bronze>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/black_steel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/blue_steel>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/bronze>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/copper>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/red_steel>, "RED_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/steel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:prospectors_hammer/wrought_iron>, "WROUGHT_IRON", 144, true);
// Rope Javelins
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/bismuth_bronze>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/black_bronze>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/black_steel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/blue_steel>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/bronze>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/copper>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/red_steel>, "RED_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/steel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfcthings:rope_javelin/wrought_iron>, "WROUGHT_IRON", 144, true);

// Серебрянные короны
recipes.addShapeless("tfg/tfcthings/platinum_crown/garnet", <tfcthings:crown/platinum_garnet>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteGarnetRed>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/emerald", <tfcthings:crown/platinum_emerald>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteEmerald>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/diamond", <tfcthings:crown/platinum_diamond>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteDiamond>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/amethyst", <tfcthings:crown/platinum_amethyst>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteAmethyst>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/sapphire", <tfcthings:crown/platinum_sapphire>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteSapphire>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/topaz", <tfcthings:crown/platinum_topaz>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteTopaz>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/ruby", <tfcthings:crown/platinum_ruby>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteRuby>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/opal", <tfcthings:crown/platinum_opal>, [<ore:toolHammer>, <tfcthings:crown/platinum_empty>, <metaitem:gemExquisiteOpal>]);
// Золотые короны
recipes.addShapeless("tfg/tfcthings/gold_crown/garnet", <tfcthings:crown/gold_garnet>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteGarnetRed>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/emerald", <tfcthings:crown/gold_emerald>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteEmerald>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/diamond", <tfcthings:crown/gold_diamond>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteDiamond>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/amethyst", <tfcthings:crown/gold_amethyst>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteAmethyst>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/sapphire", <tfcthings:crown/gold_sapphire>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteSapphire>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/topaz", <tfcthings:crown/gold_topaz>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteTopaz>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/ruby", <tfcthings:crown/gold_ruby>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteRuby>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/opal", <tfcthings:crown/gold_opal>, [<ore:toolHammer>, <tfcthings:crown/gold_empty>, <metaitem:gemExquisiteOpal>]);

// Минус точильный камень
// recipes.addShaped("tfg/tfcthings/grindstone_base", <tfcthings:grindstone_base>, [
//    [<ore:stickIronAny>, <ore:stickIronAny>, <ore:stickIronAny>],
//    [<ore:lumber>, null, <ore:lumber>]]);

// Fix Bracing recipe
Anvil.addRecipe("tfg/tfcthings/bracing/wrought_iron", <metaitem:ingotWroughtIron>, <tfcthings:metal_bracing>, 3, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfcthings/bracing/steel", <metaitem:ingotSteel>, <tfcthings:metal_bracing> * 2, 4, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");

// TFC-Things Sling Ammo с помощью GT молота
recipes.addShapeless("tfg/tfcthings/sling_ammo/spread", <tfcthings:sling_ammo_spread>, [<ore:toolHammer>, <tfcthings:sling_ammo>]);
recipes.addShapeless("tfg/tfcthings/sling_ammo/light", <tfcthings:sling_ammo_light>, [<ore:toolHammer>, <tfcthings:sling_ammo>, <ore:toolFile>]);

// Алмазная пыль --> крошка TFC
// Quern.addRecipe("tfg/tfcthings/diamond_grit", <metaitem:dustDiamond>, <tfcthings:diamond_grit>);

// Fix Bear Trap
Anvil.removeRecipe(<tfcthings:bear_trap_half>);
Anvil.addRecipe("tfg/tfcthings/bear_trap_half", <metaitem:plateSteel>, <tfcthings:bear_trap_half>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "SHRINK_THIRD_LAST");

// Fix Heavy Sling Ammo recipe
Anvil.addRecipe("tfg/tfcthings/sling_ammo/wrought_iron",  <metaitem:ingotWroughtIron>, <tfcthings:sling_ammo> * 8, 3, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfcthings/sling_ammo/steel",  <metaitem:ingotSteel>, <tfcthings:sling_ammo> * 16, 4, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

// Black Steel Grindstone
// Welding.addRecipe("tfg/tfcthings/grindstone/steel",  <tfcthings:grindstone_quartz>, <metaitem:plateDoubleBlackSteel>, <tfcthings:grindstone_steel>, 5);

// Молотки
Anvil.addRecipe("tfg/tfcthings/bismuth_bronze_hammer", <metaitem:ingotBismuthBronze>, <tfcthings:prospectors_hammer_head/bismuth_bronze>, 2, "general", "PUNCH_LAST", "DRAW_NOT_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/black_bronze_hammer", <metaitem:ingotBlackBronze>, <tfcthings:prospectors_hammer_head/black_bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/bronze_hammer", <metaitem:ingotBronze>, <tfcthings:prospectors_hammer_head/bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/copper_hammer", <metaitem:ingotCopper>, <tfcthings:prospectors_hammer_head/copper>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/wrought_iron_hammer", <metaitem:ingotWroughtIron>, <tfcthings:prospectors_hammer_head/wrought_iron>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/steel_hammer", <metaitem:ingotSteel>, <tfcthings:prospectors_hammer_head/steel>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/black_steel_hammer", <metaitem:ingotBlackSteel>, <tfcthings:prospectors_hammer_head/black_steel>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/blue_steel_hammer", <metaitem:ingotBlueSteel>, <tfcthings:prospectors_hammer_head/blue_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/red_steel_hammer", <metaitem:ingotRedSteel>, <tfcthings:prospectors_hammer_head/red_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");