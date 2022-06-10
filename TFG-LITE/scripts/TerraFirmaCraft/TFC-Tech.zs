import crafttweaker.item.IItemStack;

import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление рецептов
val RemoveItemRecipes as IItemStack[] = [
	<tfctech:wire_draw_bench>,
  <tfctech:smeltery_firebox>,
  <tfctech:smeltery_cauldron>,
  <tfctech:electric_forge>,
  <tfctech:metal/copper_inductor>,
  <tfctech:induction_crucible>,
  <tfctech:wiredraw/winch>
];
for item in RemoveItemRecipes {
    recipes.remove(item);
}

recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");

// Удаление рецептов вытяжки на столе
val RemoveItemWireDrawingRecipes as IItemStack[] = [
	// Wires, no GT
  <tfctech:metal/bismuth_wire:0>,
  <tfctech:metal/bismuth_wire:1>,
  <tfctech:metal/bismuth_wire:2>,
  <tfctech:metal/bismuth_wire:3>,
  <tfctech:metal/bismuth_bronze_wire:0>,
  <tfctech:metal/bismuth_bronze_wire:1>,
  <tfctech:metal/bismuth_bronze_wire:2>,
  <tfctech:metal/bismuth_bronze_wire:3>,
  <tfctech:metal/black_bronze_wire:0>,
  <tfctech:metal/black_bronze_wire:1>,
  <tfctech:metal/black_bronze_wire:2>,
  <tfctech:metal/black_bronze_wire:3>,
  <tfctech:metal/brass_wire:0>,
  <tfctech:metal/brass_wire:1>,
  <tfctech:metal/brass_wire:2>,
  <tfctech:metal/brass_wire:3>,
  <tfctech:metal/bronze_wire:0>,
  <tfctech:metal/bronze_wire:1>,
  <tfctech:metal/bronze_wire:2>,
  <tfctech:metal/bronze_wire:3>,
  <tfctech:metal/rose_gold_wire:0>,
  <tfctech:metal/rose_gold_wire:1>,
  <tfctech:metal/rose_gold_wire:2>,
  <tfctech:metal/rose_gold_wire:3>,
  <tfctech:metal/wrought_iron_wire:0>,
  <tfctech:metal/wrought_iron_wire:1>,
  <tfctech:metal/wrought_iron_wire:2>,
  <tfctech:metal/wrought_iron_wire:3>,
  <tfctech:metal/pig_iron_wire:0>,
  <tfctech:metal/pig_iron_wire:1>,
  <tfctech:metal/pig_iron_wire:2>,
  <tfctech:metal/pig_iron_wire:3>,
  <tfctech:metal/blue_steel_wire:0>,
  <tfctech:metal/blue_steel_wire:1>,
  <tfctech:metal/blue_steel_wire:2>,
  <tfctech:metal/blue_steel_wire:3>,
  <tfctech:metal/red_steel_wire:0>,
  <tfctech:metal/red_steel_wire:1>,
  <tfctech:metal/red_steel_wire:2>,
  <tfctech:metal/red_steel_wire:3>,
  <tfctech:metal/zinc_wire:0>,
  <tfctech:metal/zinc_wire:1>,
  <tfctech:metal/zinc_wire:2>,
  <tfctech:metal/zinc_wire:3>,
  <tfctech:metal/sterling_silver_wire:0>,
  <tfctech:metal/sterling_silver_wire:1>,
  <tfctech:metal/sterling_silver_wire:2>,
  <tfctech:metal/sterling_silver_wire:3>,
  // Wires, GT
  <tfctech:metal/copper_wire>,
  <tfctech:metal/gold_wire>,
  <tfctech:metal/lead_wire>,
  <tfctech:metal/nickel_wire>,
  <tfctech:metal/silver_wire>,
  <tfctech:metal/tin_wire>,
  <tfctech:metal/steel_wire>,
  <tfctech:metal/platinum_wire>,
  <tfctech:metal/black_steel_wire>
];
for item in RemoveItemWireDrawingRecipes {
    WireDrawing.removeRecipe(item);
}

// Удаление рецептов ковки
val RemoveItemAnvilRecipes as IItemStack[] = [
  // Wires - Stage 1
  <tfctech:metal/bismuth_wire:4>,
  <tfctech:metal/bismuth_bronze_wire:4>,
  <tfctech:metal/black_bronze_wire:4>,
  <tfctech:metal/brass_wire:4>,
  <tfctech:metal/bronze_wire:4>,
  <tfctech:metal/rose_gold_wire:4>,
  <tfctech:metal/zinc_wire:4>,
  <tfctech:metal/sterling_silver_wire:4>,
  <tfctech:metal/wrought_iron_wire:4>,
  <tfctech:metal/pig_iron_wire:4>,
  <tfctech:metal/blue_steel_wire:4>,
  <tfctech:metal/red_steel_wire:4>,
  // Draw Plates
  <tfctech:metal/iron_draw_plate>,
  <tfctech:metal/steel_draw_plate>,
  <tfctech:metal/black_steel_draw_plate>,
  // Blowpipes
  <tfctech:metal/wrought_iron_blowpipe>,
  <tfctech:metal/steel_blowpipe>,
  <tfctech:metal/black_steel_blowpipe>,
  <tfctech:metal/blue_steel_blowpipe>,
  <tfctech:metal/red_steel_blowpipe>,
  // Other
  <tfctech:metal/iron_tongs>,
  <tfctech:metal/iron_bowl_mount>
];
for item in RemoveItemAnvilRecipes {
    Anvil.removeRecipe(item);
}

// Удаление рецептов сварки
val RemoveItemWeldingRecipes as IItemStack[] = [
  // Gears
  <tfctech:metal/sterling_silver_gear>,
  <tfctech:metal/tin_gear>,
  <tfctech:metal/silver_gear>,
  <tfctech:metal/rose_gold_gear>,
  <tfctech:metal/lead_gear>,
  <tfctech:metal/gold_gear>,
  <tfctech:metal/copper_gear>,
  <tfctech:metal/brass_gear>,
  <tfctech:metal/bismuth_bronze_gear>,
  <tfctech:metal/steel_gear>,
  <tfctech:metal/wrought_iron_gear>,
  <tfctech:metal/zinc_gear>,
  <tfctech:metal/nickel_gear>,
  <tfctech:metal/bronze_gear>,
  <tfctech:metal/black_bronze_gear>,
  <tfctech:metal/bismuth_gear>,
  <tfctech:metal/black_steel_gear>,
  <tfctech:metal/blue_steel_gear>,
  <tfctech:metal/platinum_gear>,
  <tfctech:metal/pig_iron_gear>,
  <tfctech:metal/red_steel_gear>
];
for item in RemoveItemWeldingRecipes {
    Welding.removeRecipe(item);
}

// Удаление рецептов кусочков шестерни
for item in TFC_Tech_Strips {
    recipes.remove(item);
}

// Удаление рецептов длинных палок
for item in TFC_Tech_Long_Rods {
    Anvil.removeRecipe(item);
}

// --- Adding Recipes

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
// Tongs
ItemRegistry.registerItemMetal(<tfctech:metal/iron_tongs>, "WROUGHT_IRON", 144, true);
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
ItemRegistry.registerItemMetal(<tfctech:metal/steel_rackwheel_piece>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_rackwheel_piece>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_rackwheel_piece>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_rackwheel_piece>, "RED_STEEL", 144, true);
// Rackwheels
ItemRegistry.registerItemMetal(<tfctech:metal/bismuth_rackwheel>, "BISMUTH", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_bronze_rackwheel>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/bronze_rackwheel>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/nickel_rackwheel>, "NICKEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/steel_rackwheel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/black_steel_rackwheel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/blue_steel_rackwheel>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<tfctech:metal/red_steel_rackwheel>, "RED_STEEL", 144, true);
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
WireDrawing.addRecipe("tfg:tfctech/wire_copper", <tfctech:metal/copper_wire:1>, 3, <ore:wireGtSingleCopper>.firstItem, 0xFFA6B525);
WireDrawing.addRecipe("tfg:tfctech/wire_gold", <tfctech:metal/gold_wire:1>, 3, <ore:wireGtSingleGold>.firstItem, 0xFFc2bb30);
WireDrawing.addRecipe("tfg:tfctech/wire_lead", <tfctech:metal/lead_wire:1>, 3, <ore:wireGtSingleLead>.firstItem, 0xFF593f73);
WireDrawing.addRecipe("tfg:tfctech/wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <ore:wireGtSingleNickel>.firstItem, 0xFFb79bd4);
WireDrawing.addRecipe("tfg:tfctech/wire_silver", <tfctech:metal/silver_wire:1>, 3, <ore:wireGtSingleSilver>.firstItem, 0xFFbfbfbf);
WireDrawing.addRecipe("tfg:tfctech/wire_tin", <tfctech:metal/tin_wire:1>, 3, <ore:wireGtSingleTin>.firstItem, 0xFF666666);
WireDrawing.addRecipe("tfg:tfctech/wire_steel", <tfctech:metal/steel_wire:1>, 3, <ore:wireGtSingleSteel>.firstItem, 0xFF4d4d4d);
WireDrawing.addRecipe("tfg:tfctech/wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <ore:wireGtSinglePlatinum>.firstItem, 0xFFbabf88);
WireDrawing.addRecipe("tfg:tfctech/wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <ore:wireGtSingleBlackSteel>.firstItem, 0xFF292929);

// --- Унификация шестеренок
Welding.addRecipe("tfc:TFG_gear_bismuth", <ore:rackwheelBismuth>, <ore:sleeveTin>, <metaitem:gearBismuth>, 1);
Welding.addRecipe("tfc:TFG_gear_black_bronze", <ore:rackwheelBlackBronze>, <ore:sleeveTin>, <metaitem:gearBlackBronze>, 2);
Welding.addRecipe("tfc:TFG_gear_bronze", <ore:rackwheelBronze>, <ore:sleeveTin>, <metaitem:gearBronze>, 2);
Welding.addRecipe("tfc:TFG_gear_nickel", <ore:rackwheelNickel>, <ore:sleeveTin>, <metaitem:gearNickel>, 1);
Welding.addRecipe("tfc:TFG_gear_zinc", <ore:rackwheelZinc>, <ore:sleeveTin>, <metaitem:gearZinc>, 1);
Welding.addRecipe("tfc:TFG_gear_wrought_iron", <ore:rackwheelWroughtIron>, <ore:sleeveBrass>, <metaitem:gearWroughtIron>, 3);
Welding.addRecipe("tfc:TFG_gear_steel", <ore:rackwheelSteel>, <ore:sleeveBrass>, <metaitem:gearSteel>, 4);
Welding.addRecipe("tfc:TFG_gear_black_steel", <ore:rackwheelBlackSteel>, <ore:sleeveSteel>, <metaitem:gearBlackSteel>, 5);
Welding.addRecipe("tfc:TFG_gear_blue_steel", <ore:rackwheelBlueSteel>, <ore:sleeveSteel>, <metaitem:gearBlueSteel>, 6);
Welding.addRecipe("tfc:TFG_gear_red_steel", <ore:rackwheelRedSteel>, <ore:sleeveSteel>, <metaitem:gearRedSteel>, 6);

// --- Унификация длинных палок
Anvil.addRecipe("tfctech:TFG_long_rod_brass", <ore:ingotBrass>, <metaitem:stickLongBrass>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bronze", <ore:ingotBronze>, <metaitem:stickLongBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_copper", <ore:ingotCopper>, <metaitem:stickLongCopper>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_gold", <ore:ingotGold>, <metaitem:stickLongGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_lead", <ore:ingotLead>, <metaitem:stickLongLead>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_rose_gold", <ore:ingotRoseGold>, <metaitem:stickLongRoseGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_silver", <ore:ingotSilver>, <metaitem:stickLongSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_tin", <ore:ingotTin>, <metaitem:stickLongTin>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth_bronze", <ore:ingotBismuthBronze>, <metaitem:stickLongBismuthBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_bronze", <ore:ingotBlackBronze>, <metaitem:stickLongBlackBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_steel", <ore:ingotSteel>, <metaitem:stickLongSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_wrought_iron", <ore:ingotWroughtIron>, <metaitem:stickLongWroughtIron>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_sterling_silver", <ore:ingotSterlingSilver>, <metaitem:stickLongSterlingSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_red_steel", <ore:ingotRedSteel>, <metaitem:stickLongRedSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_blue_steel", <ore:ingotBlueSteel>, <metaitem:stickLongBlueSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_steel", <ore:ingotBlackSteel>, <metaitem:stickLongBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_platinum", <ore:ingotPlatinum>, <metaitem:stickLongPlatinum>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_nickel", <ore:ingotNickel>, <metaitem:stickLongNickel>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth", <ore:ingotBismuth>, <metaitem:stickLongBismuth>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_zinc", <ore:ingotZinc>, <metaitem:stickLongZinc>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Рецепты Strips
recipes.addShapeless(<tfctech:metal/copper_strip> * 2, [<ore:gtce.tool.files>, <ore:plateCopper>]);
recipes.addShapeless(<tfctech:metal/gold_strip> * 2, [<ore:gtce.tool.files>, <ore:plateGold>]);
recipes.addShapeless(<tfctech:metal/lead_strip> * 2, [<ore:gtce.tool.files>, <ore:plateLead>]);
recipes.addShapeless(<tfctech:metal/nickel_strip> * 2, [<ore:gtce.tool.files>, <ore:plateNickel>]);
recipes.addShapeless(<tfctech:metal/silver_strip> * 2, [<ore:gtce.tool.files>, <ore:plateSilver>]);
recipes.addShapeless(<tfctech:metal/tin_strip> * 2, [<ore:gtce.tool.files>, <ore:plateTin>]);
recipes.addShapeless(<tfctech:metal/wrought_iron_strip> * 2, [<ore:gtce.tool.files>, <ore:plateWroughtIron>]);
recipes.addShapeless(<tfctech:metal/steel_strip> * 2, [<ore:gtce.tool.files>, <ore:plateSteel>]);
recipes.addShapeless(<tfctech:metal/platinum_strip> * 2, [<ore:gtce.tool.files>, <ore:platePlatinum>]);
recipes.addShapeless(<tfctech:metal/black_steel_strip> * 2, [<ore:gtce.tool.files>, <ore:plateBlackSteel>]);

// Крафт поташа с увеличенным выходом
recipes.addShapeless(<metaitem:dustPotash> * 4, [<tfctech:pot_potash>]);

// Исправление рецепта емкости с поташем
recipes.addShapeless(<tfctech:pot_ash>, [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);

// Резина для первых этапов
recipes.addShapeless(<metaitem:plateRubber> * 2, [<tfctech:latex/rubber>, <ore:gtce.tool.knife>]);

// Уменьшение выхода рецепта с резиной
Barrel.removeRecipe(<tfctech:latex/rubber_mix> * 6);
Barrel.addRecipe("tfg:tfctech/rubber_mix", <tfctech:latex/vulcanizing_agents>, <liquid:latex> * 1000, <tfctech:latex/rubber_mix> * 6, 8);

// Вытяжные пластины
Anvil.addRecipe("tfg:tfctech/iron_draw_plate", <ore:ingotWroughtIron>, <tfctech:metal/iron_draw_plate>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/steel_draw_plate", <ore:ingotSteel>, <tfctech:metal/steel_draw_plate>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/black_steel_draw_plate", <ore:ingotBlackSteel>, <tfctech:metal/black_steel_draw_plate>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");

// Tongs
Anvil.addRecipe("tfg:tfctech/tongs", <ore:ingotWroughtIron>, <tfctech:metal/iron_tongs>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");

// Bowl Mount
Anvil.addRecipe("tfg:tfctech/bowl_mount", <ore:ingotWroughtIron>, <tfctech:metal/iron_bowl_mount>, 3, "general", "BEND_LAST", "DRAW_SECOND_LAST", "BEND_NOT_LAST");

// Blowpipes
Anvil.addRecipe("tfg:tfctech/blowpipe/wrought_iron", <ore:plateWroughtIron>, <tfctech:metal/wrought_iron_blowpipe>, 3, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/steel", <ore:plateSteel>, <tfctech:metal/steel_blowpipe>, 4, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/black_steel", <ore:plateBlackSteel>, <tfctech:metal/black_steel_blowpipe>, 5, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/blue_steel", <ore:plateBlueSteel>, <tfctech:metal/blue_steel_blowpipe>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST");
Anvil.addRecipe("tfg:tfctech/blowpipe/red_steel", <ore:plateRedSteel>, <tfctech:metal/red_steel_blowpipe>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST");

// Winch
recipes.addShaped(<tfctech:wiredraw/winch>,
[[<ore:stickWroughtIron>, null, <ore:stickWroughtIron>],
  [null, <ore:stickLongWroughtIron>, null],
  [<ore:stickWroughtIron>, null, <ore:stickWroughtIron>]]);

// Медный индуктор
recipes.addShaped(<tfctech:metal/copper_inductor>,
[[null, <ore:wireGtSingleCopper>, null],
  [<ore:wireGtSingleCopper>, <ore:gtce.tool.hard.hammers>, <ore:wireGtSingleCopper>],
  [null, <ore:wireGtSingleCopper>, null]]);

// Тигель
recipes.addShaped(<tfctech:induction_crucible>,
[[<ore:plateSteel>, null, <ore:plateSteel>],
  [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
  [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

// Электро наковальня
recipes.addShaped(<tfctech:electric_forge>,
[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>],
  [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>],
  [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

// Smeltery Cauldron
recipes.addShaped(<tfctech:smeltery_cauldron>,
[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
  [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
  [<ore:stickLongWroughtIron>, null, <ore:stickLongWroughtIron>]]);

// Smeltery Firebox
recipes.addShaped(<tfctech:smeltery_firebox>,
[[<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>],
  [<ore:plateWroughtIron>, <tfc:fire_bricks>, <ore:plateWroughtIron>],
  [<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>]]);

// Wire Draw Bench
recipes.addShaped(<tfctech:wire_draw_bench>,
[[<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <tfctech:metal/iron_tongs>],
  [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
  [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>]]);