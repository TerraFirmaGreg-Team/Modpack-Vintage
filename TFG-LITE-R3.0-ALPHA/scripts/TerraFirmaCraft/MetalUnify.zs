import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.tfcdryingrack.Rack;
import mods.horsepower.Grindstone;

/*
 *
 * Файл унификации металлов TFG -> 1000-7
 *
 */

// --- Унификация пластин
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
//Anvil.addRecipe("tfc:TFG_plate_wrought_iron", <ore:ingotDoubleWroughtIron>, <tfc:metal/sheet/wrought_iron>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация двойных пластин
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
//
Welding.addRecipe("tfc:TFG_plate_wrought_iron", <ore:sheetWroughtIron>, <ore:plateBronze>, <tfc:metal/sheet/wrought_iron>, 3);

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

// --- Унификация слабой стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_steel>);
Welding.addRecipe("tfc:TFG_weak_steel", <tfc:metal/ingot/weak_steel>, <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_black_steel>, 3);

// --- Унификация слабой красной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_red_steel>);
Welding.addRecipe("tfc:TFG_weak_red_steel", <tfc:metal/ingot/weak_red_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_red_steel>, 4);

// --- Унификация слабой синей стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_blue_steel>);
Welding.addRecipe("tfc:TFG_weak_blue_steel", <tfc:metal/ingot/weak_blue_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_blue_steel>, 4);

// --- Унификация стали
Anvil.removeRecipe(<tfc:metal/ingot/steel>);
Anvil.addRecipe("tfc:TFG_steel_ingot", <tfc:metal/ingot/high_carbon_steel>, <ore:ingotSteel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация черной стали
Anvil.removeRecipe(<tfc:metal/ingot/black_steel>);
Anvil.addRecipe("tfc:TFG_black_steel_ingot", <tfc:metal/ingot/high_carbon_black_steel>, <ore:ingotBlackSteel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация красной стали
Anvil.removeRecipe(<tfc:metal/ingot/red_steel>);
Anvil.addRecipe("tfc:TFG_red_steel_ingot", <tfc:metal/ingot/high_carbon_red_steel>, <ore:ingotRedSteel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация синей стали
Anvil.removeRecipe(<tfc:metal/ingot/blue_steel>);
Anvil.addRecipe("tfc:TFG_blue_steel_ingot", <tfc:metal/ingot/high_carbon_blue_steel>, <ore:ingotBlueSteel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация каолинита

// --- Унификация каолинита

// --- Унификация графита

// --- Унификация серы

// --- Удаление гематита

// --- Унификация ляписа

// --- Унификация желтого лимонита

// --- Унификация малахита

// --- Унификация древесного угля

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

