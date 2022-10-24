#priority 2
# TFCOreDicts

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

print("Initializing 'TFCOreDicts'...");


// Регистрация дополнительного словаря для мечей из грега
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

// Регистрация дополнительного словаря руд для гранатов из ТФК
<ore:gemExquisiteGarnetRed>.addAll(<ore:gemExquisiteGarnet>);
<ore:gemFlawlessGarnetRed>.addAll(<ore:gemFlawlessGarnet>);
<ore:gemGarnetRed>.addAll(<ore:gemGarnet>);
<ore:gemFlawedGarnetRed>.addAll(<ore:gemFlawedGarnet>);
<ore:gemChippedGarnetRed>.addAll(<ore:gemChippedGarnet>);

// Регистрация дополнительного словоря руд для инструментов из Грега
<ore:saw>.addAll(<ore:craftingToolSawEmptyTag>);
<ore:knife>.addAll(<ore:craftingToolKnifeEmptyTag>);
<ore:chisel>.addAll(<ore:craftingToolFileEmptyTag>);
<ore:saw>.addAll(<ore:craftingToolSaw>);
<ore:knife>.addAll(<ore:craftingToolKnife>);
<ore:chisel>.addAll(<ore:craftingToolFile>);

// Регистрация дополнительного словаря руд для пластин из ТФК
<ore:plateBismuth>.addAll(<ore:sheetBismuth>);
<ore:plateBismuthBronze>.addAll(<ore:sheetBismuthBronze>);
<ore:plateBlackBronze>.addAll(<ore:sheetBlackBronze>);
<ore:plateBrass>.addAll(<ore:sheetBrass>);
<ore:plateBronze>.addAll(<ore:sheetBronze>);
<ore:plateCopper>.addAll(<ore:sheetCopper>);
<ore:plateGold>.addAll(<ore:sheetGold>);
<ore:plateLead>.addAll(<ore:sheetLead>);
<ore:plateNickel>.addAll(<ore:sheetNickel>);
<ore:plateRoseGold>.addAll(<ore:sheetRoseGold>);
<ore:plateSilver>.addAll(<ore:sheetSilver>);
<ore:plateTin>.addAll(<ore:sheetTin>);
<ore:plateZinc>.addAll(<ore:sheetZinc>);
<ore:plateSterlingSilver>.addAll(<ore:sheetSterlingSilver>);
<ore:plateWroughtIron>.addAll(<ore:sheetWroughtIron>);
<ore:plateSteel>.addAll(<ore:sheetSteel>);
<ore:platePlatinum>.addAll(<ore:sheetPlatinum>);
<ore:plateBlackSteel>.addAll(<ore:sheetBlackSteel>);
<ore:plateBlueSteel>.addAll(<ore:sheetBlueSteel>);
<ore:plateRedSteel>.addAll(<ore:sheetRedSteel>);

// Регистрация дополнительного словаря руд для пластин из Грега
<ore:sheetBismuth>.addAll(<ore:plateBismuth>);
<ore:sheetBismuthBronze>.addAll(<ore:plateBismuthBronze>);
<ore:sheetBlackBronze>.addAll(<ore:plateBlackBronze>);
<ore:sheetBrass>.addAll(<ore:plateBrass>);
<ore:sheetBronze>.addAll(<ore:plateBronze>);
<ore:sheetCopper>.addAll(<ore:plateCopper>);
<ore:sheetGold>.addAll(<ore:plateGold>);
<ore:sheetLead>.addAll(<ore:plateLead>);
<ore:sheetNickel>.addAll(<ore:plateNickel>);
<ore:sheetRoseGold>.addAll(<ore:plateRoseGold>);
<ore:sheetSilver>.addAll(<ore:plateSilver>);
<ore:sheetTin>.addAll(<ore:plateTin>);
<ore:sheetZinc>.addAll(<ore:plateZinc>);
<ore:sheetSterlingSilver>.addAll(<ore:plateSterlingSilver>);
<ore:sheetWroughtIron>.addAll(<ore:plateWroughtIron>);
<ore:sheetSteel>.addAll(<ore:plateSteel>);
<ore:sheetPlatinum>.addAll(<ore:platePlatinum>);
<ore:sheetBlackSteel>.addAll(<ore:plateBlackSteel>);
<ore:sheetBlueSteel>.addAll(<ore:plateBlueSteel>);
<ore:sheetRedSteel>.addAll(<ore:plateRedSteel>);

// Регистрация дополнительного словаря руд для двойных пластин из ТФК
<ore:plateDoubleBismuth>.addAll(<ore:sheetDoubleBismuth>);
<ore:plateDoubleBismuthBronze>.addAll(<ore:sheetDoubleBismuthBronze>);
<ore:plateDoubleBlackBronze>.addAll(<ore:sheetDoubleBlackBronze>);
<ore:plateDoubleBrass>.addAll(<ore:sheetDoubleBrass>);
<ore:plateDoubleBronze>.addAll(<ore:sheetDoubleBronze>);
<ore:plateDoubleCopper>.addAll(<ore:sheetDoubleCopper>);
<ore:plateDoubleGold>.addAll(<ore:sheetDoubleGold>);
<ore:plateDoubleLead>.addAll(<ore:sheetDoubleLead>);
<ore:plateDoubleNickel>.addAll(<ore:sheetDoubleNickel>);
<ore:plateDoubleRoseGold>.addAll(<ore:sheetDoubleRoseGold>);
<ore:plateDoubleSilver>.addAll(<ore:sheetDoubleSilver>);
<ore:plateDoubleTin>.addAll(<ore:sheetDoubleTin>);
<ore:plateDoubleZinc>.addAll(<ore:sheetDoubleZinc>);
<ore:plateDoubleSterlingSilver>.addAll(<ore:sheetDoubleSterlingSilver>);
<ore:plateDoubleWroughtIron>.addAll(<ore:sheetDoubleWroughtIron>);
<ore:plateDoubleSteel>.addAll(<ore:sheetDoubleSteel>);
<ore:plateDoublePlatinum>.addAll(<ore:sheetDoublePlatinum>);
<ore:plateDoubleBlackSteel>.addAll(<ore:sheetDoubleBlackSteel>);
<ore:plateDoubleBlueSteel>.addAll(<ore:sheetDoubleBlueSteel>);
<ore:plateDoubleRedSteel>.addAll(<ore:sheetDoubleRedSteel>);

// Регистрация дополнительного словаря руд для двойных пластин из Грега
<ore:sheetDoubleBismuth>.addAll(<ore:plateDoubleBismuth>);
<ore:sheetDoubleBismuthBronze>.addAll(<ore:plateDoubleBismuthBronze>);
<ore:sheetDoubleBlackBronze>.addAll(<ore:plateDoubleBlackBronze>);
<ore:sheetDoubleBrass>.addAll(<ore:plateDoubleBrass>);
<ore:sheetDoubleBronze>.addAll(<ore:plateDoubleBronze>);
<ore:sheetDoubleCopper>.addAll(<ore:plateDoubleCopper>);
<ore:sheetDoubleGold>.addAll(<ore:plateDoubleGold>);
<ore:sheetDoubleLead>.addAll(<ore:plateDoubleLead>);
<ore:sheetDoubleNickel>.addAll(<ore:plateDoubleNickel>);
<ore:sheetDoubleRoseGold>.addAll(<ore:plateDoubleRoseGold>);
<ore:sheetDoubleSilver>.addAll(<ore:plateDoubleSilver>);
<ore:sheetDoubleTin>.addAll(<ore:plateDoubleTin>);
<ore:sheetDoubleZinc>.addAll(<ore:plateDoubleZinc>);
<ore:sheetDoubleSterlingSilver>.addAll(<ore:plateDoubleSterlingSilver>);
<ore:sheetDoubleWroughtIron>.addAll(<ore:plateDoubleWroughtIron>);
<ore:sheetDoubleSteel>.addAll(<ore:plateDoubleSteel>);
<ore:sheetDoublePlatinum>.addAll(<ore:plateDoublePlatinum>);
<ore:sheetDoubleBlackSteel>.addAll(<ore:plateDoubleBlackSteel>);
<ore:sheetDoubleBlueSteel>.addAll(<ore:plateDoubleBlueSteel>);
<ore:sheetDoubleRedSteel>.addAll(<ore:plateDoubleRedSteel>);

// Удаление словоря руд из некоторых предметов из TFCTech
// Шестерни
<ore:gearBismuthBronze>.remove(<tfctech:metal/bismuth_gear>);
<ore:gearBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_gear>);
<ore:gearBlackBronze>.remove(<tfctech:metal/black_bronze_gear>);
<ore:gearBrass>.remove(<tfctech:metal/brass_gear>);
<ore:gearBronze>.remove(<tfctech:metal/bronze_gear>);
<ore:gearCopper>.remove(<tfctech:metal/copper_gear>);
<ore:gearGold>.remove(<tfctech:metal/gold_gear>);
<ore:gearLead>.remove(<tfctech:metal/lead_gear>);
<ore:gearNickel>.remove(<tfctech:metal/nickel_gear>);
<ore:gearRoseGold>.remove(<tfctech:metal/rose_gold_gear>);
<ore:gearSilver>.remove(<tfctech:metal/silver_gear>);
<ore:gearTin>.remove(<tfctech:metal/tin_gear>);
<ore:gearZinc>.remove(<tfctech:metal/zinc_gear>);
<ore:gearSterlingSilver>.remove(<tfctech:metal/sterling_silver_gear>);
<ore:gearWroughtIron>.remove(<tfctech:metal/wrought_iron_gear>);
<ore:gearPigIron>.remove(<tfctech:metal/pig_iron_gear>);
<ore:gearSteel>.remove(<tfctech:metal/steel_gear>);
<ore:gearPlatinum>.remove(<tfctech:metal/platinum_gear>);
<ore:gearBlackSteel>.remove(<tfctech:metal/black_steel_gear>);
<ore:gearBlueSteel>.remove(<tfctech:metal/blue_steel_gear>);
<ore:gearRedSteel>.remove(<tfctech:metal/red_steel_gear>);
// Длинные прутья
<ore:stickLongBismuth>.remove(<tfctech:metal/bismuth_long_rod>);
<ore:stickLongBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_long_rod>);
<ore:stickLongBlackBronze>.remove(<tfctech:metal/black_bronze_long_rod>);
<ore:stickLongBrass>.remove(<tfctech:metal/brass_long_rod>);
<ore:stickLongBronze>.remove(<tfctech:metal/bronze_long_rod>);
<ore:stickLongCopper>.remove(<tfctech:metal/copper_long_rod>);
<ore:stickLongGold>.remove(<tfctech:metal/gold_long_rod>);
<ore:stickLongLead>.remove(<tfctech:metal/lead_long_rod>);
<ore:stickLongNickel>.remove(<tfctech:metal/nickel_long_rod>);
<ore:stickLongRoseGold>.remove(<tfctech:metal/rose_gold_long_rod>);
<ore:stickLongSilver>.remove(<tfctech:metal/silver_long_rod>);
<ore:stickLongTin>.remove(<tfctech:metal/tin_long_rod>);
<ore:stickLongZinc>.remove(<tfctech:metal/zinc_long_rod>);
<ore:stickLongSterlingSilver>.remove(<tfctech:metal/sterling_silver_long_rod>);
<ore:stickLongWroughtIron>.remove(<tfctech:metal/wrought_iron_long_rod>);
<ore:stickLongPigIron>.remove(<tfctech:metal/pig_iron_long_rod>);
<ore:stickLongSteel>.remove(<tfctech:metal/steel_long_rod>);
<ore:stickLongPlatinum>.remove(<tfctech:metal/platinum_long_rod>);
<ore:stickLongBlackSteel>.remove(<tfctech:metal/black_steel_long_rod>);
<ore:stickLongBlueSteel>.remove(<tfctech:metal/blue_steel_long_rod>);
<ore:stickLongRedSteel>.remove(<tfctech:metal/red_steel_long_rod>);
// Прутья
<ore:stickBismuth>.remove(<tfctech:metal/bismuth_rod>);
<ore:stickBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_rod>);
<ore:stickBlackBronze>.remove(<tfctech:metal/black_bronze_rod>);
<ore:stickBrass>.remove(<tfctech:metal/brass_rod>);
<ore:stickBronze>.remove(<tfctech:metal/bronze_rod>);
<ore:stickCopper>.remove(<tfctech:metal/copper_rod>);
<ore:stickGold>.remove(<tfctech:metal/gold_rod>);
<ore:stickLead>.remove(<tfctech:metal/lead_rod>);
<ore:stickNickel>.remove(<tfctech:metal/nickel_rod>);
<ore:stickRoseGold>.remove(<tfctech:metal/rose_gold_rod>);
<ore:stickSilver>.remove(<tfctech:metal/silver_rod>);
<ore:stickTin>.remove(<tfctech:metal/tin_rod>);
<ore:stickZinc>.remove(<tfctech:metal/zinc_rod>);
<ore:stickSterlingSilver>.remove(<tfctech:metal/sterling_silver_rod>);
<ore:stickWroughtIron>.remove(<tfctech:metal/wrought_iron_rod>);
<ore:stickPigIron>.remove(<tfctech:metal/pig_iron_rod>);
<ore:stickSteel>.remove(<tfctech:metal/steel_rod>);
<ore:stickPlatinum>.remove(<tfctech:metal/platinum_rod>);
<ore:stickBlackSteel>.remove(<tfctech:metal/black_steel_rod>);
<ore:stickBlueSteel>.remove(<tfctech:metal/blue_steel_rod>);
<ore:stickRedSteel>.remove(<tfctech:metal/red_steel_rod>);
// Болты
<ore:boltBismuth>.remove(<tfctech:metal/bismuth_bolt>);
<ore:boltBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_bolt>);
<ore:boltBlackBronze>.remove(<tfctech:metal/black_bronze_bolt>);
<ore:boltBrass>.remove(<tfctech:metal/brass_bolt>);
<ore:boltBronze>.remove(<tfctech:metal/bronze_bolt>);
<ore:boltCopper>.remove(<tfctech:metal/copper_bolt>);
<ore:boltGold>.remove(<tfctech:metal/gold_bolt>);
<ore:boltLead>.remove(<tfctech:metal/lead_bolt>);
<ore:boltNickel>.remove(<tfctech:metal/nickel_bolt>);
<ore:boltRoseGold>.remove(<tfctech:metal/rose_gold_bolt>);
<ore:boltSilver>.remove(<tfctech:metal/silver_bolt>);
<ore:boltTin>.remove(<tfctech:metal/tin_bolt>);
<ore:boltZinc>.remove(<tfctech:metal/zinc_bolt>);
<ore:boltSterlingSilver>.remove(<tfctech:metal/sterling_silver_bolt>);
<ore:boltWroughtIron>.remove(<tfctech:metal/wrought_iron_bolt>);
<ore:boltPigIron>.remove(<tfctech:metal/pig_iron_bolt>);
<ore:boltSteel>.remove(<tfctech:metal/steel_bolt>);
<ore:boltPlatinum>.remove(<tfctech:metal/platinum_bolt>);
<ore:boltBlackSteel>.remove(<tfctech:metal/black_steel_bolt>);
<ore:boltBlueSteel>.remove(<tfctech:metal/blue_steel_bolt>);
<ore:boltRedSteel>.remove(<tfctech:metal/red_steel_bolt>);
// Винты
<ore:screwBrass>.remove(<tfctech:metal/brass_screw>);
<ore:screwBronze>.remove(<tfctech:metal/bronze_screw>);
<ore:screwCopper>.remove(<tfctech:metal/copper_screw>);
<ore:screwGold>.remove(<tfctech:metal/gold_screw>);
<ore:screwLead>.remove(<tfctech:metal/lead_screw>);
<ore:screwNickel>.remove(<tfctech:metal/nickel_screw>);
<ore:screwRoseGold>.remove(<tfctech:metal/rose_gold_screw>);
<ore:screwSilver>.remove(<tfctech:metal/silver_screw>);
<ore:screwTin>.remove(<tfctech:metal/tin_screw>);
<ore:screwZinc>.remove(<tfctech:metal/zinc_screw>);
<ore:screwSterlingSilver>.remove(<tfctech:metal/sterling_silver_screw>);
<ore:screwWroughtIron>.remove(<tfctech:metal/wrought_iron_screw>);
<ore:screwPigIron>.remove(<tfctech:metal/pig_iron_screw>);
<ore:screwSteel>.remove(<tfctech:metal/steel_screw>);
<ore:screwPlatinum>.remove(<tfctech:metal/platinum_screw>);
<ore:screwBlackSteel>.remove(<tfctech:metal/black_steel_screw>);
<ore:screwBlueSteel>.remove(<tfctech:metal/blue_steel_screw>);
<ore:screwRedSteel>.remove(<tfctech:metal/red_steel_screw>);
// Пыльки
<ore:dustWood>.remove(<tfctech:powder/wood>);
<ore:dustPotash>.remove(<tfctech:powder/potash>);
<ore:dustAsh>.remove(<tfctech:powder/ash>);




print("Initialized 'TFCOreDicts'");
