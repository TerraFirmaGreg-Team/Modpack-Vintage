import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.firmalife.Oven;
import mods.horsepower.Grindstone;

// --- Унификация пластин
Anvil.addRecipe("tfc:TFG_plate_bismuth", <metaitem:ingotBismuth>, <metaitem:plateBismuth>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:plateBismuthBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_bronze", <ore:ingotBlackBronze>, <metaitem:plateBlackBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_brass", <metaitem:ingotBrass>, <metaitem:plateBrass>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bronze", <metaitem:ingotBronze>, <metaitem:plateBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_copper", <metaitem:ingotCopper>, <metaitem:plateCopper>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_gold", <minecraft:gold_ingot>, <metaitem:plateGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_lead", <metaitem:ingotLead>, <metaitem:plateLead>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_nickel", <metaitem:ingotNickel>, <metaitem:plateNickel>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_rose_gold", <metaitem:ingotRoseGold>, <metaitem:plateRoseGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_silver", <metaitem:ingotSilver>, <metaitem:plateSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_tin", <metaitem:ingotTin>, <metaitem:plateTin>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_zinc", <metaitem:ingotZinc>, <metaitem:plateZinc>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_sterling_silver", <metaitem:ingotSterlingSilver>, <metaitem:plateSterlingSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:plateWroughtIron>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_steel", <metaitem:ingotSteel>, <metaitem:plateSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_platinum", <metaitem:ingotPlatinum>, <metaitem:platePlatinum>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_steel", <metaitem:ingotBlackSteel>, <metaitem:plateBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_blue_steel", <metaitem:ingotBlueSteel>, <metaitem:plateBlueSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_red_steel", <metaitem:ingotRedSteel>, <metaitem:plateRedSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
//
Welding.addRecipe("tfc:TFG_plate_wrought_iron", <metaitem:plateWroughtIron>, <metaitem:plateCopper>, <tfc:metal/sheet/wrought_iron>, 3);

// --- Унификация двойных пластин
Welding.addRecipe("tfc:TFG_double_plate_bismuth", <metaitem:plateBismuth>, <metaitem:plateBismuth>, <metaitem:plateDoubleBismuth>, 1);
Welding.addRecipe("tfc:TFG_double_plate_bismuth_bronze", <metaitem:plateBismuthBronze>, <metaitem:plateBismuthBronze>, <metaitem:plateDoubleBismuthBronze>, 2);
Welding.addRecipe("tfc:TFG_double_plate_black_bronze", <metaitem:plateBlackBronze>, <metaitem:plateBlackBronze>, <metaitem:plateDoubleBlackBronze>, 2);
Welding.addRecipe("tfc:TFG_double_plate_brass", <metaitem:plateBrass>, <metaitem:plateBrass>, <metaitem:plateDoubleBrass>, 1);
Welding.addRecipe("tfc:TFG_double_plate_bronze", <metaitem:plateBronze>, <metaitem:plateBronze>, <metaitem:plateDoubleBronze>, 2);
Welding.addRecipe("tfc:TFG_double_plate_copper", <metaitem:plateCopper>, <metaitem:plateCopper>, <metaitem:plateDoubleCopper>, 1);
Welding.addRecipe("tfc:TFG_double_plate_gold", <metaitem:plateGold>, <metaitem:plateGold>, <metaitem:plateDoubleGold>, 1);
Welding.addRecipe("tfc:TFG_double_plate_lead", <metaitem:plateLead>, <metaitem:plateLead>, <metaitem:plateDoubleLead>, 1);
Welding.addRecipe("tfc:TFG_double_plate_nickel", <metaitem:plateNickel>, <metaitem:plateNickel>, <metaitem:plateDoubleNickel>, 1);
Welding.addRecipe("tfc:TFG_double_plate_rose_gold", <metaitem:plateRoseGold>, <metaitem:plateRoseGold>, <metaitem:plateDoubleRoseGold>, 1);
Welding.addRecipe("tfc:TFG_double_plate_silver", <metaitem:plateSilver>, <metaitem:plateSilver>, <metaitem:plateDoubleSilver>, 1);
Welding.addRecipe("tfc:TFG_double_plate_tin", <metaitem:plateTin>, <metaitem:plateTin>, <metaitem:plateDoubleTin>, 1);
Welding.addRecipe("tfc:TFG_double_plate_zinc", <metaitem:plateZinc>, <metaitem:plateZinc>, <metaitem:plateDoubleZinc>, 1);
Welding.addRecipe("tfc:TFG_double_plate_sterling_silver", <metaitem:plateSterlingSilver>, <metaitem:plateSterlingSilver>, <metaitem:plateDoubleSterlingSilver>, 1);
Welding.addRecipe("tfc:TFG_double_plate_wrought_iron", <metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:plateDoubleWroughtIron>, 3);
Welding.addRecipe("tfc:TFG_double_plate_steel", <metaitem:plateSteel>, <metaitem:plateSteel>, <metaitem:plateDoubleSteel>, 4);
Welding.addRecipe("tfc:TFG_double_plate_platinum", <metaitem:platePlatinum>, <metaitem:platePlatinum>, <metaitem:plateDoublePlatinum>, 5);
Welding.addRecipe("tfc:TFG_double_plate_black_steel", <metaitem:plateBlackSteel>, <metaitem:plateBlackSteel>, <metaitem:plateDoubleBlackSteel>, 5);
Welding.addRecipe("tfc:TFG_double_plate_blue_steel", <metaitem:plateBlueSteel>, <metaitem:plateBlueSteel>, <metaitem:plateDoubleBlueSteel>, 6);
Welding.addRecipe("tfc:TFG_double_plate_red_steel", <metaitem:plateRedSteel>, <metaitem:plateRedSteel>, <metaitem:plateDoubleRedSteel>, 6);

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

// --- ---  Унификация высокоуглеродной стали
Anvil.removeRecipe(<tfc:metal/ingot/high_carbon_steel>);
Anvil.addRecipe("tfc:TFG_high_carbon_steel", <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_steel>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация высокоуглеродной черной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_black_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_black_steel", <tfc:metal/ingot/weak_steel>, <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_black_steel>, 3);

// --- --- Унификация высокоуглеродной красной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_red_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_red_steel", <tfc:metal/ingot/weak_red_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_red_steel>, 4);

// --- --- Унификация высокоуглеродной синей стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_blue_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_blue_steel", <tfc:metal/ingot/weak_blue_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_blue_steel>, 4);

// --- --- Унификация стали
Anvil.removeRecipe(<tfc:metal/ingot/steel>);
Anvil.addRecipe("tfc:TFG_steel_ingot", <tfc:metal/ingot/high_carbon_steel>, <ore:ingotSteel>.firstItem, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация черной стали
Anvil.removeRecipe(<tfc:metal/ingot/black_steel>);
Anvil.addRecipe("tfc:TFG_black_steel_ingot", <tfc:metal/ingot/high_carbon_black_steel>, <ore:ingotBlackSteel>.firstItem, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация красной стали
Anvil.removeRecipe(<tfc:metal/ingot/red_steel>);
Anvil.addRecipe("tfc:TFG_red_steel_ingot", <tfc:metal/ingot/high_carbon_red_steel>, <ore:ingotRedSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация синей стали
Anvil.removeRecipe(<tfc:metal/ingot/blue_steel>);
Anvil.addRecipe("tfc:TFG_blue_steel_ingot", <tfc:metal/ingot/high_carbon_blue_steel>, <ore:ingotBlueSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация каолинита(Mica)
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/kaolinite> * 4);
Heating.removeRecipe(<tfc:powder/kaolinite>);
Oven.removeRecipe(<tfc:powder/kaolinite>);
Grindstone.remove(<tfc:powder/kaolinite> * 6);
// --- --- Добавление рецептов
Quern.addRecipe("tfc:TFG_quern_mica_to_kaolinite", <ore:dustMica>, <tfc:powder/kaolinite> * 2);
Grindstone.add(<ore:dustMica>, <tfc:powder/kaolinite> * 4, 10, false);

// --- --- Унификация графита
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/graphite> * 4);
Grindstone.remove(<tfc:powder/graphite> * 6);
// --- --- Добавление рецептов
Quern.addRecipe("tfc:TFG_quern_graphite_to_graphite", <ore:dustGraphite>, <tfc:powder/graphite> * 2);
Grindstone.add(<ore:dustGraphite>, <tfc:powder/graphite> * 4, 10, false);

// --- --- Унификация серы
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/sulfur> * 4);
Grindstone.remove(<tfc:powder/sulfur> * 8);
// --- Добавление рецептов

// --- --- Унификация ляписа
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/lapis_lazuli> * 4);
Grindstone.remove(<tfc:powder/lapis_lazuli> * 8);

// --- --- Унификация древесный уголь
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/charcoal> * 4);
Grindstone.remove(<tfc:powder/charcoal> * 8);

// --- --- Унификация соли
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/salt>);
Grindstone.remove(<tfc:powder/salt>);
// --- Добавление рецептов
Quern.addRecipe("quern_saltrock_to_salt", <tfc:rock/rocksalt>, <metaitem:dustSalt> * 4);
Grindstone.add(<tfc:rock/rocksalt>, <metaitem:dustSalt> * 8, 10, false);

// --- --- Унификация сальпетера
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/saltpeter>);
Grindstone.remove(<tfc:powder/saltpeter>);

