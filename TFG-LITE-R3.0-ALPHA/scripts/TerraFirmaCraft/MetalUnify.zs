import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.tfcdryingrack.Rack;
import mods.horsepower.Grindstone;

/*
 *
 * Файл унификации металлов TFG
 *
 */

// --- Унификация длинных палок
Anvil.removeRecipe(<tfctech:metal/brass_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bismuth_bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/black_bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/copper_long_rod>);
Anvil.removeRecipe(<tfctech:metal/gold_long_rod>);
Anvil.removeRecipe(<tfctech:metal/lead_long_rod>);
Anvil.removeRecipe(<tfctech:metal/rose_gold_long_rod>);
Anvil.removeRecipe(<tfctech:metal/silver_long_rod>);
Anvil.removeRecipe(<tfctech:metal/tin_long_rod>);
Anvil.removeRecipe(<tfctech:metal/sterling_silver_long_rod>);
Anvil.removeRecipe(<tfctech:metal/wrought_iron_long_rod>);
Anvil.removeRecipe(<tfctech:metal/pig_iron_long_rod>);
Anvil.removeRecipe(<tfctech:metal/steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/black_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/blue_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/red_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/nickel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bismuth_long_rod>);
Anvil.removeRecipe(<tfctech:metal/platinum_long_rod>);
Anvil.removeRecipe(<tfctech:metal/zinc_long_rod>);
Anvil.addRecipe("tfctech:TFG_long_rod_brass", <ore:ingotBrass>, <gregtech:meta_stick_long:259>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bronze", <ore:ingotBronze>, <gregtech:meta_stick_long:260>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_copper", <ore:ingotCopper>, <gregtech:meta_stick_long:25>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_gold", <ore:ingotGold>, <gregtech:meta_stick_long:41>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_lead", <ore:ingotLead>, <gregtech:meta_stick_long:55>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_rose_gold", <ore:ingotRoseGold>, <gregtech:meta_stick_long:301>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_silver", <ore:ingotSilver>, <gregtech:meta_stick_long:100>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_tin", <ore:ingotTin>, <gregtech:meta_stick_long:112>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth_bronze", <ore:ingotBismuthBronze>, <gregtech:meta_stick_long:303>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_bronze", <ore:ingotBlackBronze>, <gregtech:meta_stick_long:302>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_steel", <ore:ingotSteel>, <gregtech:meta_stick_long:324>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_pig_iron", <ore:ingotPigIron>, <gregtech:meta_stick_long:299>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_wrought_iron", <ore:ingotWroughtIron>, <gregtech:meta_stick_long:335>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_sterling_silver", <ore:ingotSterlingSilver>, <gregtech:meta_stick_long:300>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_red_steel", <ore:ingotRedSteel>, <gregtech:meta_stick_long:2510>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_blue_steel", <ore:ingotBlueSteel>, <gregtech:meta_stick_long:2511>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_steel", <ore:ingotBlackSteel>, <gregtech:meta_stick_long:2011>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_platinum", <ore:ingotPlatinum>, <gregtech:meta_stick_long:80>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_nickel", <ore:ingotNickel>, <gregtech:meta_stick_long:69>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth", <ore:ingotBismuth>, <gregtech:meta_stick_long:11>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_zinc", <ore:ingotZinc>, <gregtech:meta_stick_long:122>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация двойных пластин
Welding.removeRecipe(<tfc:metal/double_sheet/bismuth>);
Welding.removeRecipe(<tfc:metal/double_sheet/bismuth_bronze>);
Welding.removeRecipe(<tfc:metal/double_sheet/black_bronze>);
Welding.removeRecipe(<tfc:metal/double_sheet/brass>);
Welding.removeRecipe(<tfc:metal/double_sheet/bronze>);
Welding.removeRecipe(<tfc:metal/double_sheet/copper>);
Welding.removeRecipe(<tfc:metal/double_sheet/gold>);
Welding.removeRecipe(<tfc:metal/double_sheet/lead>);
Welding.removeRecipe(<tfc:metal/double_sheet/nickel>);
Welding.removeRecipe(<tfc:metal/double_sheet/rose_gold>);
Welding.removeRecipe(<tfc:metal/double_sheet/silver>);
Welding.removeRecipe(<tfc:metal/double_sheet/tin>);
Welding.removeRecipe(<tfc:metal/double_sheet/zinc>);
Welding.removeRecipe(<tfc:metal/double_sheet/sterling_silver>);
Welding.removeRecipe(<tfc:metal/double_sheet/wrought_iron>);
Welding.removeRecipe(<tfc:metal/double_sheet/pig_iron>);
Welding.removeRecipe(<tfc:metal/double_sheet/steel>);
Welding.removeRecipe(<tfc:metal/double_sheet/platinum>);
Welding.removeRecipe(<tfc:metal/double_sheet/black_steel>);
Welding.removeRecipe(<tfc:metal/double_sheet/blue_steel>);
Welding.removeRecipe(<tfc:metal/double_sheet/red_steel>);
Welding.addRecipe("tfc:TFG_double_plate_bismuth", <ore:plateBismuth>, <ore:plateBismuth>, <ore:plateDoubleBismuth>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_bismuth_bronze", <ore:plateBismuthBronze>, <ore:plateBismuthBronze>, <ore:plateDoubleBismuthBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_black_bronze", <ore:plateBlackBronze>, <ore:plateBlackBronze>, <ore:plateDoubleBlackBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_brass", <ore:plateBrass>, <ore:plateBrass>, <ore:plateDoubleBrass>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_bronze", <ore:plateBronze>, <ore:plateBronze>, <ore:plateDoubleBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_copper", <ore:plateCopper>, <ore:plateCopper>, <ore:plateDoubleCopper>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_gold", <ore:plateGold>, <ore:plateGold>, <ore:plateDoubleGold>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_lead", <ore:plateLead>, <ore:plateLead>, <ore:plateDoubleLead>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_nickel", <ore:plateNickel>, <ore:plateNickel>, <ore:plateDoubleNickel>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_rose_gold", <ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateDoubleRoseGold>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_silver", <ore:plateSilver>, <ore:plateSilver>, <ore:plateDoubleSilver>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_tin", <ore:plateTin>, <ore:plateTin>, <ore:plateDoubleTin>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_zinc", <ore:plateZinc>, <ore:plateZinc>, <ore:plateDoubleZinc>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_sterling_silver", <ore:plateSterlingSilver>, <ore:plateSterlingSilver>, <ore:plateDoubleSterlingSilver>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_wrought_iron", <ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateDoubleWroughtIron>.firstItem, 3);
Welding.addRecipe("tfc:TFG_double_plate_pig_iron", <ore:platePigIron>, <ore:platePigIron>, <ore:plateDoublePigIron>.firstItem, 3);
Welding.addRecipe("tfc:TFG_double_plate_steel", <ore:plateSteel>, <ore:plateSteel>, <ore:plateDoubleSteel>.firstItem, 4);
Welding.addRecipe("tfc:TFG_double_plate_platinum", <ore:platePlatinum>, <ore:platePlatinum>, <ore:plateDoublePlatinum>.firstItem, 5);
Welding.addRecipe("tfc:TFG_double_plate_black_steel", <ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateDoubleBlackSteel>.firstItem, 5);
Welding.addRecipe("tfc:TFG_double_plate_blue_steel", <ore:plateBlueSteel>, <ore:plateBlueSteel>, <ore:plateDoubleBlueSteel>.firstItem, 6);
Welding.addRecipe("tfc:TFG_double_plate_red_steel", <ore:plateRedSteel>, <ore:plateRedSteel>, <ore:plateDoubleRedSteel>.firstItem, 6);

// --- Унификация пластин
Welding.removeRecipe(<tfc:metal/sheet/bismuth>);
Welding.removeRecipe(<tfc:metal/sheet/bismuth_bronze>);
Welding.removeRecipe(<tfc:metal/sheet/black_bronze>);
Welding.removeRecipe(<tfc:metal/sheet/brass>);
Welding.removeRecipe(<tfc:metal/sheet/bronze>);
Welding.removeRecipe(<tfc:metal/sheet/copper>);
Welding.removeRecipe(<tfc:metal/sheet/gold>);
Welding.removeRecipe(<tfc:metal/sheet/lead>);
Welding.removeRecipe(<tfc:metal/sheet/nickel>);
Welding.removeRecipe(<tfc:metal/sheet/rose_gold>);
Welding.removeRecipe(<tfc:metal/sheet/silver>);
Welding.removeRecipe(<tfc:metal/sheet/tin>);
Welding.removeRecipe(<tfc:metal/sheet/zinc>);
Welding.removeRecipe(<tfc:metal/sheet/sterling_silver>);
Welding.removeRecipe(<tfc:metal/sheet/pig_iron>);
Welding.removeRecipe(<tfc:metal/sheet/steel>);
Welding.removeRecipe(<tfc:metal/sheet/platinum>);
Welding.removeRecipe(<tfc:metal/sheet/black_steel>);
Welding.removeRecipe(<tfc:metal/sheet/blue_steel>);
Welding.removeRecipe(<tfc:metal/sheet/red_steel>);
//Welding.removeRecipe(<tfc:metal/sheet/wrought_iron>);
Anvil.addRecipe("tfc:TFG_plate_bismuth", <ore:ingotDoubleBismuth>, <ore:plateBismuth>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bismuth_bronze", <ore:ingotDoubleBismuthBronze>, <ore:plateBismuthBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_bronze", <ore:ingotDoubleBlackBronze>, <ore:plateBlackBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_brass", <ore:ingotDoubleBrass>, <ore:plateBrass>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bronze", <ore:ingotDoubleBronze>, <ore:plateBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_copper", <ore:ingotDoubleCopper>, <ore:plateCopper>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_gold", <ore:ingotDoubleGold>, <ore:plateGold>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_lead", <ore:ingotDoubleLead>, <ore:plateLead>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_nickel", <ore:ingotDoubleNickel>, <ore:plateNickel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_rose_gold", <ore:ingotDoubleRoseGold>, <ore:plateRoseGold>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_silver", <ore:ingotDoubleSilver>, <ore:plateSilver>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_tin", <ore:ingotDoubleTin>, <ore:plateTin>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_zinc", <ore:ingotDoubleZinc>, <ore:plateZinc>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_sterling_silver", <ore:ingotDoubleSterlingSilver>, <ore:plateSterlingSilver>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_pig_iron", <ore:ingotDoublePigIron>, <ore:platePigIron>.firstItem, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_steel", <ore:ingotDoubleSteel>, <ore:plateSteel>.firstItem, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_platinum", <ore:ingotDoublePlatinum>, <ore:platePlatinum>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_steel", <ore:ingotDoubleBlackSteel>, <ore:plateBlackSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_blue_steel", <ore:ingotDoubleBlueSteel>, <ore:plateBlueSteel>.firstItem, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_red_steel", <ore:ingotDoubleRedSteel>, <ore:plateRedSteel>.firstItem, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
//Anvil.addRecipe("tfc:TFG_plate_wrought_iron", <ore:ingotDoubleWroughtIron>, <ore:plateWroughtIron>.firstItem, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация шестеренок
Welding.removeRecipe(<tfctech:metal/bismuth_gear>);
Welding.removeRecipe(<tfctech:metal/bismuth_bronze_gear>);
Welding.removeRecipe(<tfctech:metal/black_bronze_gear>);
Welding.removeRecipe(<tfctech:metal/brass_gear>);
Welding.removeRecipe(<tfctech:metal/bronze_gear>);
Welding.removeRecipe(<tfctech:metal/copper_gear>);
Welding.removeRecipe(<tfctech:metal/gold_gear>);
Welding.removeRecipe(<tfctech:metal/lead_gear>);
Welding.removeRecipe(<tfctech:metal/nickel_gear>);
Welding.removeRecipe(<tfctech:metal/rose_gold_gear>);
Welding.removeRecipe(<tfctech:metal/silver_gear>);
Welding.removeRecipe(<tfctech:metal/tin_gear>);
Welding.removeRecipe(<tfctech:metal/zinc_gear>);
Welding.removeRecipe(<tfctech:metal/sterling_silver_gear>);
Welding.removeRecipe(<tfctech:metal/wrought_iron_gear>);
Welding.removeRecipe(<tfctech:metal/pig_iron_gear>);
Welding.removeRecipe(<tfctech:metal/steel_gear>);
Welding.removeRecipe(<tfctech:metal/platinum_gear>);
Welding.removeRecipe(<tfctech:metal/black_steel_gear>);
Welding.removeRecipe(<tfctech:metal/blue_steel_gear>);
Welding.removeRecipe(<tfctech:metal/red_steel_gear>);
Welding.addRecipe("tfc:TFG_gear_bismuth", <ore:rackwheelBismuth>, <ore:sleeveTin>, <gregtech:meta_gear:11>, 1);
Welding.addRecipe("tfc:TFG_gear_bismuth_bronze", <ore:rackwheelBismuthBronze>, <ore:sleeveTin>, <gregtech:meta_gear:303>, 2);
Welding.addRecipe("tfc:TFG_gear_black_bronze", <ore:rackwheelBlackBronze>, <ore:sleeveTin>, <gregtech:meta_gear:302>, 2);
Welding.addRecipe("tfc:TFG_gear_brass", <ore:rackwheelBrass>, <ore:sleeveTin>, <gregtech:meta_gear:259>, 1);
Welding.addRecipe("tfc:TFG_gear_bronze", <ore:rackwheelBronze>, <ore:sleeveTin>, <gregtech:meta_gear:260>, 2);
Welding.addRecipe("tfc:TFG_gear_copper", <ore:rackwheelCopper>, <ore:sleeveTin>, <gregtech:meta_gear:25>, 1);
Welding.addRecipe("tfc:TFG_gear_gold", <ore:rackwheelGold>, <ore:sleeveTin>, <gregtech:meta_gear:41>, 1);
Welding.addRecipe("tfc:TFG_gear_lead", <ore:rackwheelLead>, <ore:sleeveTin>, <gregtech:meta_gear:55>, 1);
Welding.addRecipe("tfc:TFG_gear_nickel", <ore:rackwheelNickel>, <ore:plateNickel>, <gregtech:meta_gear:69>, 1);
Welding.addRecipe("tfc:TFG_gear_rose_gold", <ore:rackwheelRoseGold>, <ore:sleeveTin>, <gregtech:meta_gear:301>, 1);
Welding.addRecipe("tfc:TFG_gear_silver", <ore:rackwheelSilver>, <ore:sleeveTin>, <gregtech:meta_gear:100>, 1);
Welding.addRecipe("tfc:TFG_gear_tin", <ore:rackwheelTin>, <ore:sleeveTin>, <gregtech:meta_gear:112>, 1);
Welding.addRecipe("tfc:TFG_gear_zinc", <ore:rackwheelZinc>, <ore:sleeveTin>, <gregtech:meta_gear:122>, 1);
Welding.addRecipe("tfc:TFG_gear_sterling_silver", <ore:rackwheelSterlingSilver>, <ore:sleeveTin>, <gregtech:meta_gear:300>, 1);
Welding.addRecipe("tfc:TFG_gear_wrought_iron", <ore:rackwheelWroughtIron>, <ore:sleeveBrass>, <gregtech:meta_gear:335>, 3);
Welding.addRecipe("tfc:TFG_gear_pig_iron", <ore:rackwheelPigIron>, <ore:sleeveBrass>, <gregtech:meta_gear:299>, 3);
Welding.addRecipe("tfc:TFG_gear_steel", <ore:rackwheelSteel>, <ore:sleeveBrass>, <gregtech:meta_gear:324>, 4);
Welding.addRecipe("tfc:TFG_gear_platinum", <ore:rackwheelPlatinum>, <ore:sleeveSteel>, <gregtech:meta_gear:80>, 5);
Welding.addRecipe("tfc:TFG_gear_black_steel", <ore:rackwheelBlackSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2011>, 5);
Welding.addRecipe("tfc:TFG_gear_blue_steel", <ore:rackwheelBlueSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2511>, 6);
Welding.addRecipe("tfc:TFG_gear_red_steel", <ore:rackwheelRedSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2510>, 6);

// --- Унификация каолинита

// --- Унификация графита

// --- Унификация серы

// --- Удаление гематита

// --- Унификация ляписа

// --- Унификация желтого лимонита

// --- Унификация малахита

// --- Унификация древесного угля

// --- Унификация кованного железа
/*
//CONVERT
forge_hammer.recipeBuilder().inputs(<gregtech:meta_item_1:10197>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//FH Hot Iron Ingot --> Wrought Iron Ingot
recipes.removeByRecipeName("gtadditions:ga_wrought");
recipes.addShapeless(<tfc:metal/ingot/wrought_iron>, [<gtadditions:ga_meta_item:32037>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag()]);
//Двойная пластина
Welding.removeRecipe(<tfc:metal/double_sheet/wrought_iron>);
Welding.addRecipe("tfc:double_plate_fixed", <ore:plateWroughtIron>, <ore:plateWroughtIron>, <gtadditions:ga_meta_item:1197>, 3);
//Слиток
furnace.remove(<gregtech:meta_item_1:10197>);
furnace.addRecipe(<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:2197>);
forge_hammer.findRecipe(8, [<gtadditions:ga_meta_item:32037>], null).remove();
forge_hammer.recipeBuilder().inputs(<gtadditions:ga_meta_item:32037>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Наггет
alloy_smelter.findRecipe(8, [<gregtech:meta_item_1:9197>*9, <gregtech:meta_item_1:32306>], null).remove();
alloy_smelter.recipeBuilder().inputs(<gregtech:meta_item_1:9197>*9).notConsumable(<gregtech:meta_item_1:32306>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Пластина
recipes.removeByRecipeName("gtadditions:plate_wrought_iron");
recipes.removeByRecipeName("gtadditions:flatten_plate_wrought_iron");
recipes.addShaped(<tfc:metal/sheet/wrought_iron>,
[[null, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), null], 
[null, <gtadditions:ga_meta_item:197>, null],
[null, null, null]]);
//Жидкость слиток
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32306>], [<liquid:wrought_iron>*144]).remove();
fluid_solidifier.recipeBuilder().notConsumable(<gregtech:meta_item_1:32306>).fluidInputs([<liquid:wrought_iron>*144]).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Жидкость пластина
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:wrought_iron>*144]).remove();
fluid_solidifier.recipeBuilder().notConsumable(<gregtech:meta_item_1:32301>).fluidInputs([<liquid:wrought_iron>*144]).outputs(<tfc:metal/sheet/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Пластина AlloySmelter
alloy_smelter.findRecipe(16, [<tfc:metal/ingot/wrought_iron>*2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>*2).notConsumable(<gregtech:meta_item_1:32301>).outputs(<tfc:metal/sheet/wrought_iron>).duration(200).EUt(16).buildAndRegister(); 
//Слиток Compressor
compressor.findRecipe(2, [<tfc:metal/nugget/wrought_iron>*9], null).remove();
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:9197>*9).outputs(<tfc:metal/ingot/wrought_iron>).duration(200).EUt(8).buildAndRegister(); 
//Блок AlloySmelter
alloy_smelter.findRecipe(8, [<gregtech:meta_block_compressed_12:5>, <gregtech:meta_item_1:32306>], null).remove();
alloy_smelter.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).notConsumable(<gregtech:meta_item_1:32306>).outputs(<tfc:metal/ingot/wrought_iron>*9).duration(1000).EUt(8).buildAndRegister(); 
//Слиток BlastFurnace
blast_furnace.findRecipe(500, [<gregtech:meta_item_1:2121>*5], null).remove();
blast_furnace.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2121>*5)
    .outputs(<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:2122>*3)
    .property("temperature", 1700)
    .duration(600).EUt(500).buildAndRegister();
//Слиток Packer
packer.findRecipe(4, [<tfc:metal/nugget/wrought_iron>*9, <gtadditions:ga_meta_item:32133>], null).remove();
//Блок Unpacker
unpacker.findRecipe(8, [<gregtech:meta_block_compressed_12:5>, <gtadditions:ga_meta_item:32133>], null).remove();
//Пластина MetalBender
metal_bender.findRecipe(24, [<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:197>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0})).outputs(<tfc:metal/sheet/wrought_iron>).duration(140).EUt(24).buildAndRegister(); 
metal_bender.recipeBuilder().inputs(<gtadditions:ga_meta_item:197>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0})).outputs(<tfc:metal/sheet/wrought_iron>).duration(140).EUt(24).buildAndRegister(); 
//Пластины CuttingSaw
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:water>*42]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:distilled_water>*31]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:lubricant>*10]).remove();
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:water>*42]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(600).EUt(30).buildAndRegister(); 
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:distilled_water>*31]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(400).EUt(30).buildAndRegister(); 
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:lubricant>*10]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(200).EUt(30).buildAndRegister(); 
//Пластины Extruder
extruder.findRecipe(64, [<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:32350>], null).remove();
extruder.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).notConsumable(<gregtech:meta_item_1:32350>).outputs(<tfc:metal/sheet/wrought_iron>).duration(150).EUt(64).buildAndRegister(); 
//Пластины ForgeHammer
forge_hammer.findRecipe(16, [<tfc:metal/ingot/wrought_iron>*3], null).remove();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>*3).outputs(<tfc:metal/sheet/wrought_iron>*2).duration(100).EUt(16).buildAndRegister(); 
//Исправляем железные прутья
Anvil.removeRecipe(<minecraft:iron_bars>*16);
//Исправляем гриль
Anvil.removeRecipe(<tfc:wrought_iron_grill>);
Anvil.addRecipe("tfc:WroughtIronGrillTweaked", <ore:plateDoubleWroughtIron>, <tfc:wrought_iron_grill>, 3, "general", "DRAW_ANY", "PUNCH_LAST", "PUNCH_NOT_LAST");
//Крафт железного трапдора через наковальню тфк
Anvil.addRecipe("tfc:IronTrapdoorTweaked", <ore:plateDoubleWroughtIron>, <minecraft:iron_trapdoor>, 3, "general", "UPSET_NOT_LAST", "BEND_NOT_LAST", "UPSET_THIRD_LAST");
*/

// --- Унификация соли
Quern.removeRecipe(<tfc:powder/salt>*4);
Quern.removeRecipe(<tfc:powder/salt>*2);
Grindstone.remove(<tfc:powder/salt>*6);
Grindstone.remove(<tfc:powder/salt>*8);
Rack.removeRecipe(<ore:dustSaltpeter>.firstItem);
Quern.addRecipe("quern_saltrock_to_salt", <tfc:rock/rocksalt>, <ore:dustSalt>.firstItem * 4);
Grindstone.add(<tfc:rock/rocksalt>, <ore:dustSalt>.firstItem * 8, 10, false);
Rack.addRecipe("rack_saltpeter_to_salt", <ore:dustSaltpeter>.firstItem, <ore:dustSalt>.firstItem, 24, 1.0);

// --- Унификация сальпетера
Quern.removeRecipe(<tfc:powder/saltpeter>*4);
Grindstone.remove(<tfc:powder/saltpeter>*8);

