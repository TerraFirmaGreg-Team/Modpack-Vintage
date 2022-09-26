import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.ItemRegistry;

// --- Массивы

val ItemsToRemove as IItemStack[] = [
	// Платиновые короны
    <tfcthings:crown/platinum_opal>,
    <tfcthings:crown/platinum_jasper>,
    <tfcthings:crown/platinum_jade>,
    <tfcthings:crown/platinum_garnet>,
    <tfcthings:crown/platinum_emerald>,
    <tfcthings:crown/platinum_diamond>,
    <tfcthings:crown/platinum_beryl>,
    <tfcthings:crown/platinum_amethyst>,
    <tfcthings:crown/platinum_agate>,
    <tfcthings:crown/platinum_ruby>,
    <tfcthings:crown/platinum_sapphire>,
    <tfcthings:crown/platinum_topaz>,
    <tfcthings:crown/platinum_tourmaline>,
    // Золотые короны
    <tfcthings:crown/gold_jade>,
    <tfcthings:crown/gold_garnet>,
    <tfcthings:crown/gold_emerald>,
    <tfcthings:crown/gold_diamond>,
    <tfcthings:crown/gold_beryl>,
    <tfcthings:crown/gold_amethyst>,
    <tfcthings:crown/gold_agate>,
    <tfcthings:crown/gold_topaz>,
    <tfcthings:crown/gold_tourmaline>,
    <tfcthings:crown/gold_sapphire>,
    <tfcthings:crown/gold_ruby>,
    <tfcthings:crown/gold_opal>,
    <tfcthings:crown/gold_jasper>,
    //Other
    <tfcthings:sling_ammo_light>,
    <tfcthings:sling_ammo_spread>,
    <tfcthings:diamond_grit>
];

// --- Удаление рецептов

// Удаление рецептов
for item in ItemsToRemove{
    recipes.remove(item);
}

// Поименное удаление
recipes.removeByRecipeName("tfcthings:grindstone_base_steel");
recipes.removeByRecipeName("tfcthings:grindstone_base");

// Removing Prospect Hammer
ClayKnapping.removeRecipe(<tfcthings:mold/unfired/prospectors_hammer_head>);
Heating.removeRecipe(<tfcthings:mold/prospectors_hammer_head>);

// Remove carrots
Anvil.removeRecipe(<tfcthings:pig_iron_carrot>);
Anvil.removeRecipe(<tfcthings:black_steel_carrot>);
Anvil.removeRecipe(<tfcthings:blue_steel_carrot>);
Anvil.removeRecipe(<tfcthings:red_steel_carrot>);

// Bracing
Anvil.removeRecipe(<tfcthings:metal_bracing>);
Anvil.removeRecipe(<tfcthings:metal_bracing> * 2);

// Молотки
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/black_bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/copper>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/black_steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/blue_steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/red_steel>);

// Black Steel Grindstone
Welding.removeRecipe(<tfcthings:grindstone_steel>);

// Heavy Sling Ammo recipe
Anvil.removeRecipe(<tfcthings:sling_ammo> * 8);
Anvil.removeRecipe(<tfcthings:sling_ammo> * 16);

// Отключение затачивалок всех типов (Временно)
Welding.removeRecipe(<tfcthings:honing_steel_diamond>);
Welding.removeRecipe(<tfcthings:honing_steel_head_diamond>);
Anvil.removeRecipe(<tfcthings:honing_steel_head>);
Quern.removeRecipe(<tfcthings:whetstone>);

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
recipes.addShapeless("tfg/tfcthings/platinum_crown/garnet", <tfcthings:crown/platinum_garnet>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnetRed>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/emerald", <tfcthings:crown/platinum_emerald>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/diamond", <tfcthings:crown/platinum_diamond>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/amethyst", <tfcthings:crown/platinum_amethyst>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/sapphire", <tfcthings:crown/platinum_sapphire>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/topaz", <tfcthings:crown/platinum_topaz>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/ruby", <tfcthings:crown/platinum_ruby>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless("tfg/tfcthings/platinum_crown/opal", <tfcthings:crown/platinum_opal>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>]);
// Золотые короны
recipes.addShapeless("tfg/tfcthings/gold_crown/garnet", <tfcthings:crown/gold_garnet>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnetRed>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/emerald", <tfcthings:crown/gold_emerald>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/diamond", <tfcthings:crown/gold_diamond>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/amethyst", <tfcthings:crown/gold_amethyst>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/sapphire", <tfcthings:crown/gold_sapphire>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/topaz", <tfcthings:crown/gold_topaz>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/ruby", <tfcthings:crown/gold_ruby>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless("tfg/tfcthings/gold_crown/opal", <tfcthings:crown/gold_opal>, [<ore:gtce.tool.hard.hammers>, <tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>]);

// Минус точильный камень
// recipes.addShaped("tfg/tfcthings/grindstone_base", <tfcthings:grindstone_base>, [
//    [<ore:stickIronAny>, <ore:stickIronAny>, <ore:stickIronAny>],
//    [<ore:lumber>, null, <ore:lumber>]]);

// Fix Bracing recipe
Anvil.addRecipe("tfg/tfcthings/bracing/wrought_iron", <ore:ingotWroughtIron>, <tfcthings:metal_bracing>, 3, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfcthings/bracing/steel", <ore:ingotSteel>, <tfcthings:metal_bracing> * 2, 4, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");

// TFC-Things Sling Ammo с помощью GT молота
recipes.addShapeless("tfg/tfcthings/sling_ammo/spread", <tfcthings:sling_ammo_spread>, [<ore:gtce.tool.hard.hammers>, <tfcthings:sling_ammo>]);
recipes.addShapeless("tfg/tfcthings/sling_ammo/light", <tfcthings:sling_ammo_light>, [<ore:gtce.tool.hard.hammers>, <tfcthings:sling_ammo>, <ore:gtce.tool.files>]);

// Алмазная пыль --> крошка TFC
// Quern.addRecipe("tfg/tfcthings/diamond_grit", <ore:dustDiamond>, <tfcthings:diamond_grit>);

// Fix Bear Trap
Anvil.removeRecipe(<tfcthings:bear_trap_half>);
Anvil.addRecipe("tfg/tfcthings/bear_trap_half", <ore:plateSteel>, <tfcthings:bear_trap_half>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "SHRINK_THIRD_LAST");

// Fix Heavy Sling Ammo recipe
Anvil.addRecipe("tfg/tfcthings/sling_ammo/wrought_iron",  <ore:ingotWroughtIron>, <tfcthings:sling_ammo> * 8, 3, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfcthings/sling_ammo/steel",  <ore:ingotSteel>, <tfcthings:sling_ammo> * 16, 4, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

// Black Steel Grindstone
// Welding.addRecipe("tfg/tfcthings/grindstone/steel",  <tfcthings:grindstone_quartz>, <ore:plateDoubleBlackSteel>, <tfcthings:grindstone_steel>, 5);

// Молотки
Anvil.addRecipe("tfg/tfcthings/bismuth_bronze_hammer", <ore:ingotBismuthBronze>, <tfcthings:prospectors_hammer_head/bismuth_bronze>, 2, "general", "PUNCH_LAST", "DRAW_NOT_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/black_bronze_hammer", <ore:ingotBlackBronze>, <tfcthings:prospectors_hammer_head/black_bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/bronze_hammer", <ore:ingotBronze>, <tfcthings:prospectors_hammer_head/bronze>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/copper_hammer", <ore:ingotCopper>, <tfcthings:prospectors_hammer_head/copper>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/wrought_iron_hammer", <ore:ingotWroughtIron>, <tfcthings:prospectors_hammer_head/wrought_iron>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/steel_hammer", <ore:ingotSteel>, <tfcthings:prospectors_hammer_head/steel>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/black_steel_hammer", <ore:ingotBlackSteel>, <tfcthings:prospectors_hammer_head/black_steel>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/blue_steel_hammer", <ore:ingotBlueSteel>, <tfcthings:prospectors_hammer_head/blue_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg/tfcthings/red_steel_hammer", <ore:ingotRedSteel>, <tfcthings:prospectors_hammer_head/red_steel>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");