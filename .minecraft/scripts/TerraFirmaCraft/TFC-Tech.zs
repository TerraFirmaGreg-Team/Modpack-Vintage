import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ItemRegistry;


// --- Добавление рецептов

// Присвоение единиц металла
// Groove
ItemRegistry.registerItemMetal(<tfctech:metal/iron_groove>, "WROUGHT_IRON", 72, true);
// Bowl Mount
ItemRegistry.registerItemMetal(<tfctech:metal/iron_bowl_mount>, "WROUGHT_IRON", 144, true);
// Draw Plates
ItemRegistry.registerItemMetal(<tfctech:metal/iron_draw_plate>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_draw_plate>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_draw_plate>, "BLACK_STEEL", 144, true);
// BlowPipes
ItemRegistry.registerItemMetal(<tfctech:metal/wrought_iron_blowpipe>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_blowpipe>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_blowpipe>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_blowpipe>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_blowpipe>, "RED_STEEL", 144, true);
// Inductor
ItemRegistry.registerItemMetal(<tfctech:metal/copper_inductor>, "COPPER", 288, true);
// Sleeves
ItemRegistry.registerItemMetal(<tfctech:metal/tin_sleeve>, "TIN", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/brass_sleeve>, "BRASS", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_sleeve>, "STEEL", 144, true);
// Rackwheel Pieces
ItemRegistry.registerItemMetal(<tfctech:metal/bismuth_rackwheel_piece>, "BISMUTH", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_bronze_rackwheel_piece>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/bronze_rackwheel_piece>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/nickel_rackwheel_piece>, "NICKEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/zinc_rackwheel_piece>, "ZINC", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/wrought_iron_rackwheel_piece>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_rackwheel_piece>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_rackwheel_piece>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_rackwheel_piece>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_rackwheel_piece>, "RED_STEEL", 144, true);
// Rackwheels
ItemRegistry.registerItemMetal(<tfctech:metal/bismuth_rackwheel>, "BISMUTH", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_bronze_rackwheel>, "BLACK_BRONZE", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/bronze_rackwheel>, "BRONZE", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/nickel_rackwheel>, "NICKEL", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/zinc_rackwheel>, "ZINC", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/wrought_iron_rackwheel>, "WROUGHT_IRON", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_rackwheel>, "STEEL", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_rackwheel>, "BLACK_STEEL", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_rackwheel>, "BLUE_STEEL", 576, true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_rackwheel>, "RED_STEEL", 576, true);
// Strips
ItemRegistry.registerItemMetal(<tfctech:metal/copper_strip>, "COPPER", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/gold_strip>, "GOLD", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/lead_strip>, "LEAD", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/nickel_strip>, "NICKEL", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/silver_strip>, "SILVER", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/tin_strip>, "TIN", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/wrought_iron_strip>, "WROUGHT_IRON", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_strip>, "STEEL", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/platinum_strip>, "PLATINUM", 72, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_strip>, "BLACK_STEEL", 72, true);

// --- Furnace recipes for TFC items
furnace.addRecipe(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>);
furnace.addRecipe(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>);

// Провода для примитивной эры
WireDrawing.addRecipe("tfg:tfctech/wire_copper", <tfctech:metal/copper_wire:1>, 3, <metaitem:wireGtSingleCopper>, 0xFFA6B525);
WireDrawing.addRecipe("tfg:tfctech/wire_gold", <tfctech:metal/gold_wire:1>, 3, <metaitem:wireGtSingleGold>, 0xFFc2bb30);
WireDrawing.addRecipe("tfg:tfctech/wire_lead", <tfctech:metal/lead_wire:1>, 3, <metaitem:wireGtSingleLead>, 0xFF593f73);
WireDrawing.addRecipe("tfg:tfctech/wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <metaitem:wireGtSingleNickel>, 0xFFb79bd4);
WireDrawing.addRecipe("tfg:tfctech/wire_silver", <tfctech:metal/silver_wire:1>, 3, <metaitem:wireGtSingleSilver>, 0xFFbfbfbf);
WireDrawing.addRecipe("tfg:tfctech/wire_tin", <tfctech:metal/tin_wire:1>, 3, <metaitem:wireGtSingleTin>, 0xFF666666);
WireDrawing.addRecipe("tfg:tfctech/wire_steel", <tfctech:metal/steel_wire:1>, 3, <metaitem:wireGtSingleSteel>, 0xFF4d4d4d);
WireDrawing.addRecipe("tfg:tfctech/wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <metaitem:wireGtSinglePlatinum>, 0xFFbabf88);
WireDrawing.addRecipe("tfg:tfctech/wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <metaitem:wireGtSingleBlackSteel>, 0xFF292929);

// --- Унификация шестеренок
Welding.addRecipe("tfc:tfg_gear_bismuth", <ore:rackwheelBismuth>, <ore:sleeveTin>, <metaitem:gearBismuth>, 1);
Welding.addRecipe("tfc:tfg_gear_black_bronze", <ore:rackwheelBlackBronze>, <ore:sleeveTin>, <metaitem:gearBlackBronze>, 2);
Welding.addRecipe("tfc:tfg_gear_bronze", <ore:rackwheelBronze>, <ore:sleeveTin>, <metaitem:gearBronze>, 2);
Welding.addRecipe("tfc:tfg_gear_nickel", <ore:rackwheelNickel>, <ore:sleeveTin>, <metaitem:gearNickel>, 1);
Welding.addRecipe("tfc:tfg_gear_zinc", <ore:rackwheelZinc>, <ore:sleeveTin>, <metaitem:gearZinc>, 1);
Welding.addRecipe("tfc:tfg_gear_wrought_iron", <ore:rackwheelWroughtIron>, <ore:sleeveBrass>, <metaitem:gearWroughtIron>, 3);
Welding.addRecipe("tfc:tfg_gear_steel", <ore:rackwheelSteel>, <ore:sleeveBrass>, <metaitem:gearSteel>, 4);
Welding.addRecipe("tfc:tfg_gear_black_steel", <ore:rackwheelBlackSteel>, <ore:sleeveSteel>, <metaitem:gearBlackSteel>, 5);
Welding.addRecipe("tfc:tfg_gear_blue_steel", <ore:rackwheelBlueSteel>, <ore:sleeveSteel>, <metaitem:gearBlueSteel>, 6);
Welding.addRecipe("tfc:tfg_gear_red_steel", <ore:rackwheelRedSteel>, <ore:sleeveSteel>, <metaitem:gearRedSteel>, 6);

// --- Унификация длинных палок
Anvil.addRecipe("tfctech:tfg_long_rod_brass", <metaitem:ingotBrass>, <metaitem:stickLongBrass>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_bronze", <metaitem:ingotBronze>, <metaitem:stickLongBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_copper", <metaitem:ingotCopper>, <metaitem:stickLongCopper>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_gold", <minecraft:gold_ingot>, <metaitem:stickLongGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_lead", <metaitem:ingotLead>, <metaitem:stickLongLead>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_rose_gold", <metaitem:ingotRoseGold>, <metaitem:stickLongRoseGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_silver", <metaitem:ingotSilver>, <metaitem:stickLongSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_tin", <metaitem:ingotTin>, <metaitem:stickLongTin>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:stickLongBismuthBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_black_bronze", <metaitem:ingotBlackBronze>, <metaitem:stickLongBlackBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_steel", <metaitem:ingotSteel>, <metaitem:stickLongSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:stickLongWroughtIron>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_sterling_silver", <metaitem:ingotSterlingSilver>, <metaitem:stickLongSterlingSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_red_steel", <metaitem:ingotRedSteel>, <metaitem:stickLongRedSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_blue_steel", <metaitem:ingotBlueSteel>, <metaitem:stickLongBlueSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_black_steel", <metaitem:ingotBlackSteel>, <metaitem:stickLongBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_platinum", <metaitem:ingotPlatinum>, <metaitem:stickLongPlatinum>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_nickel", <metaitem:ingotNickel>, <metaitem:stickLongNickel>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_bismuth", <metaitem:ingotBismuth>, <metaitem:stickLongBismuth>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:tfg_long_rod_zinc", <metaitem:ingotZinc>, <metaitem:stickLongZinc>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Рецепты Strips
recipes.addShapeless(<tfctech:metal/copper_strip> * 2, [<ore:toolFile>, <metaitem:plateCopper>]);
recipes.addShapeless(<tfctech:metal/gold_strip> * 2, [<ore:toolFile>, <metaitem:plateGold>]);
recipes.addShapeless(<tfctech:metal/lead_strip> * 2, [<ore:toolFile>, <metaitem:plateLead>]);
recipes.addShapeless(<tfctech:metal/nickel_strip> * 2, [<ore:toolFile>, <metaitem:plateNickel>]);
recipes.addShapeless(<tfctech:metal/silver_strip> * 2, [<ore:toolFile>, <metaitem:plateSilver>]);
recipes.addShapeless(<tfctech:metal/tin_strip> * 2, [<ore:toolFile>, <metaitem:plateTin>]);
recipes.addShapeless(<tfctech:metal/wrought_iron_strip> * 2, [<ore:toolFile>, <metaitem:plateWroughtIron>]);
recipes.addShapeless(<tfctech:metal/steel_strip> * 2, [<ore:toolFile>, <metaitem:plateSteel>]);
recipes.addShapeless(<tfctech:metal/platinum_strip> * 2, [<ore:toolFile>, <metaitem:platePlatinum>]);
recipes.addShapeless(<tfctech:metal/black_steel_strip> * 2, [<ore:toolFile>, <metaitem:plateBlackSteel>]);

// Крафт поташа с увеличенным выходом
recipes.addShapeless("tfg/tfctech/dust_potash", <metaitem:dustPotash> * 4, [<tfctech:pot_potash>]);

// Исправление рецепта емкости с поташем
recipes.addShapeless("tfg/tfctech/pot_ash", <tfctech:pot_ash>, [<metaitem:dustAsh>, <metaitem:dustAsh>, <metaitem:dustAsh>, <metaitem:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);

// Резина для первых этапов
recipes.addShapeless("tfg/tfctech/plate_rubber", <metaitem:plateRubber> * 2, [<tfctech:latex/rubber>, <ore:toolKnife>]);

// Вулканизирующие агенты
recipes.addShapeless("tfg/tfctech/vulcanizing_agents", <tfctech:latex/vulcanizing_agents> * 4, [<tfc:powder/graphite>, <ore:dustKaolinite>, <ore:dustFlux>, <metaitem:dustSulfur>]);

// Уменьшение выхода рецепта с резиной
Barrel.addRecipe("tfg:tfctech/rubber_mix", <tfctech:latex/vulcanizing_agents>, <liquid:latex> * 1000, <tfctech:latex/rubber_mix> * 6, 8);

// Вытяжные пластины
Anvil.addRecipe("tfg:tfctech/iron_draw_plate", <metaitem:ingotWroughtIron>, <tfctech:metal/iron_draw_plate>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/steel_draw_plate", <metaitem:ingotSteel>, <tfctech:metal/steel_draw_plate>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/black_steel_draw_plate", <metaitem:ingotBlackSteel>, <tfctech:metal/black_steel_draw_plate>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");

// Bowl Mount
Anvil.addRecipe("tfg:tfctech/bowl_mount", <metaitem:ingotWroughtIron>, <tfctech:metal/iron_bowl_mount>, 3, "general", "BEND_LAST", "DRAW_SECOND_LAST", "BEND_NOT_LAST");

// Blowpipes
Anvil.addRecipe("tfg:tfctech/blowpipe/wrought_iron", <metaitem:plateWroughtIron>, <tfctech:metal/wrought_iron_blowpipe>, 3, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/steel", <metaitem:plateSteel>, <tfctech:metal/steel_blowpipe>, 4, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/black_steel", <metaitem:plateBlackSteel>, <tfctech:metal/black_steel_blowpipe>, 5, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/blue_steel", <metaitem:plateBlueSteel>, <tfctech:metal/blue_steel_blowpipe>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/red_steel", <metaitem:plateRedSteel>, <tfctech:metal/red_steel_blowpipe>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST");

// Холодильник
recipes.addShaped("tfg/tfctech/fridge", <tfctech:fridge>, [
   [<metaitem:plateSteel>, <tfctech:metal/copper_inductor>, <metaitem:plateSteel>],
   [<metaitem:plateSteel>, <ore:plateDoubleIronAny>, <metaitem:plateSteel>],
   [<metaitem:plateSteel>, <tfctech:metal/copper_inductor>, <metaitem:plateSteel>]]);

// Winch
recipes.addShaped("tfg/tfctech/winch", <tfctech:wiredraw/winch>, [
   [<ore:stickIronAny>, null, <ore:stickIronAny>],
   [null, <ore:stickIronAny>, null],
   [<ore:stickIronAny>, null, <ore:stickIronAny>]]);

// Медный индуктор
recipes.addShaped("tfg/tfctech/copper_inductor", <tfctech:metal/copper_inductor>, [
   [null, <metaitem:wireGtSingleCopper>, null],
   [<metaitem:wireGtSingleCopper>, <ore:toolHammer>, <metaitem:wireGtSingleCopper>],
   [null, <metaitem:wireGtSingleCopper>, null]]);

// Тигель
recipes.addShaped("tfg/tfctech/crucible", <tfctech:induction_crucible>, [
   [<metaitem:plateSteel>, null, <metaitem:plateSteel>],
   [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
   [<metaitem:plateSteel>, <metaitem:wireGtSingleCopper>, <metaitem:plateSteel>]]);

// Электро наковальня
recipes.addShaped("tfg/tfctech/electric_forge", <tfctech:electric_forge>, [
   [<metaitem:plateSteel>, <metaitem:wireGtSingleCopper>, <metaitem:plateSteel>],
   [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>],
   [<metaitem:plateSteel>, <metaitem:wireGtSingleCopper>, <metaitem:plateSteel>]]);

// Smeltery Cauldron
recipes.addShaped("tfg/tfctech/smeltery_cauldron", <tfctech:smeltery_cauldron>, [
   [<metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>],
   [<metaitem:plateWroughtIron>, null, <metaitem:plateWroughtIron>],
   [<metaitem:stickLongWroughtIron>, null, <metaitem:stickLongWroughtIron>]]);

// Smeltery Firebox
recipes.addShaped("tfg/tfctech/smeltery_firebox", <tfctech:smeltery_firebox>, [
   [<metaitem:stickWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:stickWroughtIron>],
   [<metaitem:plateWroughtIron>, <tfc:fire_bricks>, <metaitem:plateWroughtIron>],
   [<metaitem:stickWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:stickWroughtIron>]]);

// Wire Draw Bench
recipes.addShaped("tfg/tfctech/wire_draw_bench", <tfctech:wire_draw_bench>, [
   [<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <ore:toolTongs>],
   [<metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>],
   [<metaitem:plateWroughtIron>, null, <metaitem:plateWroughtIron>]]);