#priority 979

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

////////////////////////////////////////////////////////
// --- TFC --- /////////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

// Raw Igneous Intrusive Rocks To One OreDict
for item in RawIgneousIntrusive {
	<ore:RawIgneousIntrusive>.add(item);
}

// Raw Igneous Extrusive Rocks To One OreDict
for item in RawIgneousExtrusive {
	<ore:RawIgneousExtrusive>.add(item);
}

// Rock Metamorphic Rocks To One OreDict
for item in RawMetamorphic {
	<ore:RawMetamorphic>.add(item);
}

// Rock Sedimentary Rocks To One OreDict
for item in RawSedimentary {
	<ore:RawSedimentary>.add(item);
}

// OreDicionary for all seeds
for item in All_Seeds {
	<ore:listAllSeeds>.add(item);
}

for item in TFC_Looms {
	<ore:loom>.add(item);
}

// OreDicionary for all slab
for item in TFC_Slabs_Smooth {
	<ore:slabStone>.add(item);
}

<ore:itemBeeswax>.add(<firmalife:beeswax>);
<ore:sugarcane>.add(<tfc:food/sugarcane>);
<ore:ingotUnfinishedWroughtIron>.add(<tfc:metal/ingot/wrought_iron>);

// Single Sheets = Single Plates
<ore:sheetCopper>.add(<metaitem:plateCopper>);
<ore:sheetBismuth>.add(<metaitem:plateBismuth>);
<ore:sheetBrass>.add(<metaitem:plateBrass>);
<ore:sheetGold>.add(<metaitem:plateGold>);
<ore:sheetLead>.add(<metaitem:plateLead>);
<ore:sheetNickel>.add(<metaitem:plateNickel>);
<ore:sheetRoseGold>.add(<metaitem:plateRoseGold>);
<ore:sheetSilver>.add(<metaitem:plateSilver>);
<ore:sheetTin>.add(<metaitem:plateTin>);
<ore:sheetZinc>.add(<metaitem:plateZinc>);
<ore:sheetSterlingSilver>.add(<metaitem:plateSterlingSilver>);
<ore:sheetPlatinum>.add(<metaitem:platePlatinum>);
<ore:sheetBismuthBronze>.add(<metaitem:plateBismuthBronze>);
<ore:sheetBronze>.add(<metaitem:plateBronze>);
<ore:sheetBlackBronze>.add(<metaitem:plateBlackBronze>);
<ore:sheetWroughtIron>.add(<metaitem:plateWroughtIron>);
<ore:sheetSteel>.add(<metaitem:plateSteel>);
<ore:sheetBlackSteel>.add(<metaitem:plateBlackSteel>);
<ore:sheetBlueSteel>.add(<metaitem:plateBlueSteel>);
<ore:sheetRedSteel>.add(<metaitem:plateRedSteel>);

// Double Sheets = Double Plates
<ore:sheetDoubleCopper>.add(<metaitem:plateDoubleCopper>);
<ore:sheetDoubleBismuth>.add(<metaitem:plateDoubleBismuth>);
<ore:sheetDoubleBrass>.add(<metaitem:plateDoubleBrass>);
<ore:sheetDoubleGold>.add(<metaitem:plateDoubleGold>);
<ore:sheetDoubleLead>.add(<metaitem:plateDoubleLead>);
<ore:sheetDoubleNickel>.add(<metaitem:plateDoubleNickel>);
<ore:sheetDoubleRoseGold>.add(<metaitem:plateDoubleRoseGold>);
<ore:sheetDoubleSilver>.add(<metaitem:plateDoubleSilver>);
<ore:sheetDoubleTin>.add(<metaitem:plateDoubleTin>);
<ore:sheetDoubleZinc>.add(<metaitem:plateDoubleZinc>);
<ore:sheetDoubleSterlingSilver>.add(<metaitem:plateDoubleSterlingSilver>);
<ore:sheetDoublePlatinum>.add(<metaitem:plateDoublePlatinum>);
<ore:sheetDoubleBismuthBronze>.add(<metaitem:plateDoubleBismuthBronze>);
<ore:sheetDoubleBronze>.add(<metaitem:plateDoubleBronze>);
<ore:sheetDoubleBlackBronze>.add(<metaitem:plateDoubleBlackBronze>);
<ore:sheetDoubleWroughtIron>.add(<metaitem:plateDoubleWroughtIron>);
<ore:sheetDoubleSteel>.add(<metaitem:plateDoubleSteel>);
<ore:sheetDoubleBlackSteel>.add(<metaitem:plateDoubleBlackSteel>);
<ore:sheetDoubleBlueSteel>.add(<metaitem:plateDoubleBlueSteel>);
<ore:sheetDoubleRedSteel>.add(<metaitem:plateDoubleRedSteel>);

// BronzeAny Single Sheets
<ore:sheetAnyBronze>.add(<metaitem:plateBronze>, <metaitem:plateBlackBronze>, <metaitem:plateBismuthBronze>);

// BronzeAny Double Sheets
<ore:sheetDoubleAnyBronze>.add(<metaitem:plateDoubleBronze>, <metaitem:plateDoubleBlackBronze>, <metaitem:plateDoubleBismuthBronze>);

// --- Удаление


<ore:gemDiamond>.remove(<tfc:gem/diamond:2>);
<ore:gemLapis>.remove(<tfc:ore/lapis_lazuli>);
<ore:gemEmerald>.remove(<tfc:gem/emerald:2>);
<ore:dustSalt>.remove(<tfc:powder/salt>);
<ore:dustSaltpeter>.remove(<tfc:powder/saltpeter>);
<ore:dustGraphite>.remove(<tfc:powder/graphite>);
<ore:logWood>.remove(<tfc:stick_bundle>);
<ore:sheetDoubleAnyBronze>.remove(<tfc:metal/double_sheet/bismuth_bronze>, <tfc:metal/double_sheet/bronze>, <tfc:metal/double_sheet/black_bronze>);
<ore:gemSulfur>.remove(<tfc:ore/sulfur>);
<ore:gemSaltpeter>.remove(<tfc:ore/saltpeter>);
<ore:gemGraphite>.remove(<tfc:ore/graphite>);

// Removing OreDicts from TFC ingots
<ore:ingotBismuth>.remove(<tfc:metal/ingot/bismuth>);
<ore:ingotBismuthBronze>.remove(<tfc:metal/ingot/bismuth_bronze>);
<ore:ingotBlackBronze>.remove(<tfc:metal/ingot/black_bronze>);
<ore:ingotBrass>.remove(<tfc:metal/ingot/brass>);
<ore:ingotBronze>.remove(<tfc:metal/ingot/bronze>);
<ore:ingotCopper>.remove(<tfc:metal/ingot/copper>);
<ore:ingotGold>.remove(<tfc:metal/ingot/gold>);
<ore:ingotLead>.remove(<tfc:metal/ingot/lead>);
<ore:ingotNickel>.remove(<tfc:metal/ingot/nickel>);
<ore:ingotRoseGold>.remove(<tfc:metal/ingot/rose_gold>);
<ore:ingotSilver>.remove(<tfc:metal/ingot/silver>);
<ore:ingotTin>.remove(<tfc:metal/ingot/tin>);
<ore:ingotZinc>.remove(<tfc:metal/ingot/zinc>);
<ore:ingotWroughtIron>.remove(<tfc:metal/ingot/wrought_iron>);
<ore:ingotSterlingSilver>.remove(<tfc:metal/ingot/sterling_silver>);
<ore:ingotSteel>.remove(<tfc:metal/ingot/steel>);
<ore:ingotPlatinum>.remove(<tfc:metal/ingot/platinum>);
<ore:ingotBlackSteel>.remove(<tfc:metal/ingot/black_steel>);
<ore:ingotBlueSteel>.remove(<tfc:metal/ingot/blue_steel>);
<ore:ingotRedSteel>.remove(<tfc:metal/ingot/red_steel>);

// Removing OreDicts from TFC sheets
<ore:sheetCopper>.remove(<tfc:metal/sheet/copper>);
<ore:sheetBismuth>.remove(<tfc:metal/sheet/bismuth>);
<ore:sheetBrass>.remove(<tfc:metal/sheet/brass>);
<ore:sheetGold>.remove(<tfc:metal/sheet/gold>);
<ore:sheetLead>.remove(<tfc:metal/sheet/lead>);
<ore:sheetNickel>.remove(<tfc:metal/sheet/nickel>);
<ore:sheetRoseGold>.remove(<tfc:metal/sheet/rose_gold>);
<ore:sheetSilver>.remove(<tfc:metal/sheet/silver>);
<ore:sheetTin>.remove(<tfc:metal/sheet/tin>);
<ore:sheetZinc>.remove(<tfc:metal/sheet/zinc>);
<ore:sheetSterlingSilver>.remove(<tfc:metal/sheet/sterling_silver>);
<ore:sheetPlatinum>.remove(<tfc:metal/sheet/platinum>);
<ore:sheetBismuthBronze>.remove(<tfc:metal/sheet/bismuth_bronze>);
<ore:sheetBronze>.remove(<tfc:metal/sheet/bronze>);
<ore:sheetBlackBronze>.remove(<tfc:metal/sheet/black_bronze>);
<ore:sheetWroughtIron>.remove(<tfc:metal/sheet/wrought_iron>);
<ore:sheetSteel>.remove(<tfc:metal/sheet/steel>);
<ore:sheetBlackSteel>.remove(<tfc:metal/sheet/black_steel>);
<ore:sheetBlueSteel>.remove(<tfc:metal/sheet/blue_steel>);
<ore:sheetRedSteel>.remove(<tfc:metal/sheet/red_steel>);

// Removing OreDicts from TFC double sheets
<ore:sheetDoubleCopper>.remove(<tfc:metal/double_sheet/copper>);
<ore:sheetDoubleBismuth>.remove(<tfc:metal/double_sheet/bismuth>);
<ore:sheetDoubleBrass>.remove(<tfc:metal/double_sheet/brass>);
<ore:sheetDoubleGold>.remove(<tfc:metal/double_sheet/gold>);
<ore:sheetDoubleLead>.remove(<tfc:metal/double_sheet/lead>);
<ore:sheetDoubleNickel>.remove(<tfc:metal/double_sheet/nickel>);
<ore:sheetDoubleRoseGold>.remove(<tfc:metal/double_sheet/rose_gold>);
<ore:sheetDoubleSilver>.remove(<tfc:metal/double_sheet/silver>);
<ore:sheetDoubleTin>.remove(<tfc:metal/double_sheet/tin>);
<ore:sheetDoubleZinc>.remove(<tfc:metal/double_sheet/zinc>);
<ore:sheetDoubleSterlingSilver>.remove(<tfc:metal/double_sheet/sterling_silver>);
<ore:sheetDoublePlatinum>.remove(<tfc:metal/double_sheet/platinum>);
<ore:sheetDoubleBismuthBronze>.remove(<tfc:metal/double_sheet/bismuth_bronze>);
<ore:sheetDoubleBronze>.remove(<tfc:metal/double_sheet/bronze>);
<ore:sheetDoubleBlackBronze>.remove(<tfc:metal/double_sheet/black_bronze>);
<ore:sheetDoubleWroughtIron>.remove(<tfc:metal/double_sheet/wrought_iron>);
<ore:sheetDoubleSteel>.remove(<tfc:metal/double_sheet/steel>);
<ore:sheetDoubleBlackSteel>.remove(<tfc:metal/double_sheet/black_steel>);
<ore:sheetDoubleBlueSteel>.remove(<tfc:metal/double_sheet/blue_steel>);
<ore:sheetDoubleRedSteel>.remove(<tfc:metal/double_sheet/red_steel>);

for item in TFC_Saws {
    <ore:saw>.remove(item);
}

// Удаление OreDicts у TFCTech винтов
<ore:screwBismuth>.remove(<tfctech:metal/bismuth_screw>);
<ore:screwBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_screw>);
<ore:screwBlackBronze>.remove(<tfctech:metal/black_bronze_screw>);
<ore:screwBrass>.remove(<tfctech:metal/brass_screw>);
<ore:screwBronze>.remove(<tfctech:metal/bronze_screw>);
<ore:screwCopper>.remove(<tfctech:metal/copper_screw>);
<ore:screwGold>.remove(<tfctech:metal/gold_screw>);
<ore:screwLead>.remove(<tfctech:metal/lead_screw>);
<ore:screwNickel>.remove(<tfctech:metal/nickel_screw>);
<ore:screwSilver>.remove(<tfctech:metal/silver_screw>);
<ore:screwRoseGold>.remove(<tfctech:metal/rose_gold_screw>);
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

// Удаление OreDicts у TFCTech болтов
<ore:boltBismuth>.remove(<tfctech:metal/bismuth_bolt>);
<ore:boltBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_bolt>);
<ore:boltBlackBronze>.remove(<tfctech:metal/black_bronze_bolt>);
<ore:boltBrass>.remove(<tfctech:metal/brass_bolt>);
<ore:boltBronze>.remove(<tfctech:metal/bronze_bolt>);
<ore:boltCopper>.remove(<tfctech:metal/copper_bolt>);
<ore:boltGold>.remove(<tfctech:metal/gold_bolt>);
<ore:boltLead>.remove(<tfctech:metal/lead_bolt>);
<ore:boltNickel>.remove(<tfctech:metal/nickel_bolt>);
<ore:boltSilver>.remove(<tfctech:metal/silver_bolt>);
<ore:boltRoseGold>.remove(<tfctech:metal/rose_gold_bolt>);
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

// Удаление OreDicts у TFCTech шестеренок
<ore:gearBismuth>.remove(<tfctech:metal/bismuth_gear>);
<ore:gearBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_gear>);
<ore:gearBlackBronze>.remove(<tfctech:metal/black_bronze_gear>);
<ore:gearBrass>.remove(<tfctech:metal/brass_gear>);
<ore:gearBronze>.remove(<tfctech:metal/bronze_gear>);
<ore:gearCopper>.remove(<tfctech:metal/copper_gear>);
<ore:gearGold>.remove(<tfctech:metal/gold_gear>);
<ore:gearLead>.remove(<tfctech:metal/lead_gear>);
<ore:gearNickel>.remove(<tfctech:metal/nickel_gear>);
<ore:gearSilver>.remove(<tfctech:metal/silver_gear>);
<ore:gearRoseGold>.remove(<tfctech:metal/rose_gold_gear>);
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

// Удаление OreDicts у TFCTech длинных стержней
<ore:stickLongBismuth>.remove(<tfctech:metal/bismuth_long_rod>);
<ore:stickLongBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_long_rod>);
<ore:stickLongBlackBronze>.remove(<tfctech:metal/black_bronze_long_rod>);
<ore:stickLongBrass>.remove(<tfctech:metal/brass_long_rod>);
<ore:stickLongBronze>.remove(<tfctech:metal/bronze_long_rod>);
<ore:stickLongCopper>.remove(<tfctech:metal/copper_long_rod>);
<ore:stickLongGold>.remove(<tfctech:metal/gold_long_rod>);
<ore:stickLongLead>.remove(<tfctech:metal/lead_long_rod>);
<ore:stickLongNickel>.remove(<tfctech:metal/nickel_long_rod>);
<ore:stickLongSilver>.remove(<tfctech:metal/silver_long_rod>);
<ore:stickLongRoseGold>.remove(<tfctech:metal/rose_gold_long_rod>);
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

// Удаление OreDicts у TFCTech стержней
<ore:stickBismuth>.remove(<tfctech:metal/bismuth_rod>);
<ore:stickBismuthBronze>.remove(<tfctech:metal/bismuth_bronze_rod>);
<ore:stickBlackBronze>.remove(<tfctech:metal/black_bronze_rod>);
<ore:stickBrass>.remove(<tfctech:metal/brass_rod>);
<ore:stickBronze>.remove(<tfctech:metal/bronze_rod>);
<ore:stickCopper>.remove(<tfctech:metal/copper_rod>);
<ore:stickGold>.remove(<tfctech:metal/gold_rod>);
<ore:stickLead>.remove(<tfctech:metal/lead_rod>);
<ore:stickNickel>.remove(<tfctech:metal/nickel_rod>);
<ore:stickSilver>.remove(<tfctech:metal/silver_rod>);
<ore:stickRoseGold>.remove(<tfctech:metal/rose_gold_rod>);
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

// Removing OreDicts from Gypsum
<ore:gemGypsum>.remove(<tfc:ore/gypsum>);

////////////////////////////////////////////////////////
// --- GREGTECH --- ////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

// Ключи
<ore:gtce.tool.wrenches>.addItems([
    <gregtech:meta_tool:8>.withEmptyTag(),
    <gregtech:meta_tool:28>.withEmptyTag(),
    <gregtech:meta_tool:29>.withEmptyTag(),
    <gregtech:meta_tool:30>.withEmptyTag()
]);
// Отвертки
<ore:gtce.tool.screwdrivers>.addItems([
    <gregtech:meta_tool:11>.withEmptyTag(),
    <gregtech:meta_tool:31>.withEmptyTag()
]);
// Молоты
<ore:gtce.tool.hard.hammers>.addItems([
    <gregtech:meta_tool:6>.withEmptyTag()
]);
// Пилы
<ore:gtce.tool.saws>.addItems([
    <gregtech:meta_tool:5>.withEmptyTag(),
    <gregtech:meta_tool:25>.withEmptyTag(),
    <gregtech:meta_tool:26>.withEmptyTag(),
    <gregtech:meta_tool:27>.withEmptyTag(),
    <gregtech:meta_tool:32>.withEmptyTag()
]);
// Напильники
<ore:gtce.tool.files>.addItems([
    <gregtech:meta_tool:9>.withEmptyTag()
]);
// Кусачки
<ore:gtce.tool.cutters>.addItems([
    <gregtech:meta_tool:13>.withEmptyTag()
]);
// Киянки
<ore:gtce.tool.soft.hammers>.addItems([
    <gregtech:meta_tool:7>.withEmptyTag()
]);
// Ступки
<ore:gtce.tool.mortars>.addItems([
    <gregtech:meta_tool:12>.withEmptyTag()
]);
// Лопаты
<ore:gtce.tool.shovels>.addItems([
    <gregtech:meta_tool:2>.withEmptyTag()
]);
// Ножи
<ore:gtce.tool.knife>.addItems([
    <gregtech:meta_tool:15>.withEmptyTag(),
    <gregtechfoodoption:gtfo_meta_tool:1>.withEmptyTag()
]);
// Скалки
<ore:gtce.tool.rolling.pins>.addItems([
    <gregtechfoodoption:gtfo_meta_tool>.withEmptyTag()
]);
// Щипцы
<ore:gtce.tool.tongs>.addItems([
    <tfgmod:meta_tool>.withEmptyTag()
]);
// Ящики
<ore:gtce.block.crate>.addItems([
    <gregtech:machine:1625>,
    <gregtech:machine:1626>,
    <gregtech:machine:1627>,
    <gregtech:machine:1628>,
    <gregtech:machine:1629>,
    <gregtech:machine:1630>,
    <gregtech:machine:1631>
]);

// Wrought Iron + Iron
<ore:blockIronAny>.add(<minecraft:iron_block>, <metaitem:blockWroughtIron>);
<ore:plateIronAny>.add(<metaitem:plateIron>, <metaitem:plateWroughtIron>);
<ore:plateDoubleIronAny>.add(<metaitem:plateDoubleIron>, <metaitem:plateDoubleWroughtIron>);
<ore:gearIronAny>.add(<metaitem:gearIron>, <metaitem:gearWroughtIron>);
<ore:gearSmallIronAny>.add(<metaitem:gearSmallIron>, <metaitem:gearSmallWroughtIron>);
<ore:springIronAny>.add(<metaitem:springIron>, <metaitem:springWroughtIron>);
<ore:springSmallIronAny>.add(<metaitem:springSmallIron>, <metaitem:springSmallWroughtIron>);
<ore:ringIronAny>.add(<metaitem:ringIron>, <metaitem:ringWroughtIron>);
<ore:stickIronAny>.add(<metaitem:stickIron>, <metaitem:stickWroughtIron>);
<ore:stickLongIronAny>.add(<metaitem:stickLongIron>, <metaitem:stickLongWroughtIron>);
<ore:boltIronAny>.add(<metaitem:boltIron>, <metaitem:boltWroughtIron>);
<ore:screwIronAny>.add(<metaitem:screwIron>, <metaitem:screwWroughtIron>);
<ore:rotorIronAny>.add(<metaitem:rotorIron>, <metaitem:rotorWroughtIron>);
<ore:toolHeadBuzzSawIronAny>.add(<metaitem:toolHeadBuzzSawIron>, <metaitem:toolHeadBuzzSawWroughtIron>);

// BronzeAny Screws
<ore:screwBronzeAny>.add(<metaitem:screwBismuthBronze>, <metaitem:screwBronze>, <metaitem:screwBlackBronze>);

// Chipped Gems from GT
<ore:gemChipped>.add(<gregtech:meta_gem_chipped:*>);
// Flawed Gems from GT
<ore:gemFlawed>.add(<gregtech:meta_gem_flawed:*>);
// Flawless Gems from GT
<ore:gemFlawless>.add(<gregtech:meta_gem_flawless:*>);
// Exquisite Gems from GT
<ore:gemExquisite>.add(<gregtech:meta_gem_exquisite:*>);


<ore:knife>.add(<metaitem:tool.knife>);
<ore:hammer>.add(<metaitem:tool.hard_hammer>);
<ore:saw>.add(<metaitem:tool.saw>);
<ore:shovel>.add(<metaitem:tool.shovel>);

// --- Удаление

<ore:stoneBasalt>.remove(<gregtech:stone_smooth:3>);
<ore:stoneMarble>.remove(<gregtech:stone_smooth:2>);

////////////////////////////////////////////////////////
// --- AE2 --- /////////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление
// Интерфейсы
<ore:ae2.interface.item>.addItems([
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:440>
]);
// Жидкостные интерфейсы
<ore:ae2.interface.fluid>.addItems([
    <appliedenergistics2:fluid_interface>,
    <appliedenergistics2:part:441>
]);
// Стеклянный кабель
for glassCable in glassCables {
    <ore:ae2.cable.glass>.add(glassCable);
    if (glassCable has <appliedenergistics2:part:16>) {}
    else {
        <ore:ae2.cable.glass.colors>.add(glassCable);
    }
}
// Закрытый кабель
for coveredCable in coveredCables {
    <ore:ae2.cable.covered>.add(coveredCable);
    if (coveredCable has <appliedenergistics2:part:36>) {}
    else {
        <ore:ae2.cable.covered.colors>.add(coveredCable);
    }
}
// Умный кабель
for smartCable in smartCables {
    <ore:ae2.cable.smart>.add(smartCable);
    if (smartCable has <appliedenergistics2:part:56>) {}
    else {
        <ore:ae2.cable.smart.colors>.add(smartCable);
    }
}
// Плотный закрытый кабель
for denseCoveredCable in denseCoveredCables {
    <ore:ae2.cable.dense.covered>.add(denseCoveredCable);
    if (denseCoveredCable has <appliedenergistics2:part:516>) {}
    else {
        <ore:ae2.cable.dense.covered.colors>.add(denseCoveredCable);
    }
}
// Плотный умный кабель
for denseSmartCable in denseSmartCables {
    <ore:ae2.cable.dense.smart>.add(denseSmartCable);
    if (denseSmartCable has <appliedenergistics2:part:76>) {}
    else {
        <ore:ae2.cable.dense.smart.colors>.add(denseSmartCable);
    }
}
// Шарик с краской
for paintBall in paintBalls {
    <ore:ae2.paint.ball.colors>.add(paintBall);
}
// Люмен шарик с краской
for paintBallLumen in paintBallsLumen {
	<ore:ae2.paint.ball.colors>.add(paintBallLumen);
    <ore:ae2.paint.ball.colors.lumen>.add(paintBallLumen);
}
// Изменчивый кристал
<ore:gemFluix>.addItems([<appliedenergistics2:material:7>]);
<ore:blockFluix>.addItems([<appliedenergistics2:fluix_block>]);
// Заряженный изменчивый кристал
<ore:gemChargedCertusQuartz>.addItems([<appliedenergistics2:material:1>]);

// --- Удаление
// Пыль жемчуга эндера
<ore:dustEnder>.remove(<appliedenergistics2:material:46>);
<ore:dustEnderPearl>.remove(<appliedenergistics2:material:46>);
// Истинный кварц
<ore:crystalCertusQuartz>.remove(<appliedenergistics2:material>);
// Силикон
<ore:itemSilicon>.remove(<appliedenergistics2:material:5>);

////////////////////////////////////////////////////////
// --- PROJECTRED --- //////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

<ore:dustIlluminar>.add(illuminarsArray);
<ore:lampBlockDeactivated>.add(deactivatedLampsArray);
<ore:lampBlockActivated>.add(activatedLampsArray);
<ore:lampButton>.add(buttonLampsArray);
<ore:lampButtonFeedback>.add(feedbackLampsArray);
<ore:lampLanternDeactivated>.add(deactivatedLanternLampsArray);
<ore:lampLanternActivated>.add(activatedLanternLampsArray);
<ore:lampFixtureDeactivated>.add(deactivatedFixtureLampsArray);
<ore:lampFixtureActivated>.add(deactivatedFixtureLampsArray);
<ore:lampFalloutDeactivated>.add(deactivatedFalloutLampsArray);
<ore:lampFalloutActivated>.add(activatedFalloutLampsArray);
<ore:lampCageDeactivated>.add(deactivatedCageLampsArray);
<ore:lampCageActivated>.add(activatedCageLampsArray);

// --- Удаление

<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);
<ore:ingotElectrotineAlloy>.remove(<projectred-core:resource_item:104>);
<ore:gemRuby>.remove(<projectred-core:resource_item:200>);
<ore:gemSapphire>.remove(<projectred-core:resource_item:201>);
<ore:gemPeridot>.remove(<projectred-core:resource_item:202>);
<ore:dustElectrotine>.remove(<projectred-core:resource_item:105>);

////////////////////////////////////////////////////////
// --- TFC-Florae --- //////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

<ore:ingotClay>.add(<tfcflorae:ceramics/stoneware/stoneware_clay>);
<ore:ingotClay>.add(<tfcflorae:ceramics/kaolinite/kaolinite_clay>);
<ore:ingotClay>.add(<tfcflorae:ceramics/earthenware/earthenware_clay>);


// --- Удаление

<ore:stickWood>.remove(<tfcflorae:tools/walking_stick>);

////////////////////////////////////////////////////////
// --- TFC-Medicinal --- ///////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

<ore:herbalExtractHolder>.add([
    <tfc:plants/raddia_grass>,
    <tfc:plants/bromegrass>,
    <tfc:plants/woolly_bush>,
    <tfc:plants/prairie_junegrass>,
    <tfc:plants/timothy_grass>,
    <tfc:plants/tall_fescue_grass>,
    <tfc:plants/orchard_grass>,
    <tfc:plants/winged_kelp>,
    <tfc:plants/turtle_grass>,
    <tfc:plants/star_grass>,
    <tfc:plants/seaweed>,
    <tfc:plants/seagrass>,
    <tfc:plants/pondweed>,
    <tfc:plants/manatee_grass>,
    <tfc:plants/leafy_kelp>,
    <tfc:plants/giant_kelp>,
    <tfc:plants/eel_grass>,
    <tfc:plants/coontail>,
    <tfc:plants/silvervein_creeper>,
    <tfc:plants/jungle_vine>,
    <tfc:plants/japanese_ivy>,
    <tfc:plants/rattan>,
    <tfc:plants/lipstick_palm>,
    <tfc:plants/summer_asphodel>,
    <tfc:plants/red_sealing_wax_palm>,
    <tfc:plants/queen_sago>,
    <tfc:plants/giant_feather_grass>,
    <tfc:plants/giant_elephant_ear>,
    <tfc:plants/dwarf_sugar_palm>,
    <tfc:plants/drakensberg_cycad>,
    <tfc:plants/climbing_cactus>,
    <tfc:plants/takakia>,
    <tfc:plants/tackweed>,
    <tfc:plants/reed_mannagrass>,
    <tfcflorae:coral/fan/tube/green>,
    <tfcflorae:coral/fan/fire/green>,
    <tfcflorae:coral/fan/bubble/green>,
    <tfcflorae:coral/fan/brain/green>,
    <tfcflorae:coral/fan/bubble/cyan>,
    <tfcflorae:coral/fan/tube/lime>,
    <tfcflorae:coral/tube/green>,
    <tfcflorae:coral/fire/green>,
    <tfcflorae:coral/bubble/green>,
    <tfcflorae:coral/bubble/cyan>,
    <tfcflorae:coral/fire/cyan>,
    <tfcflorae:coral/tube/lime>,
    <tfcflorae:coral/fire/lime>,
    <tfcflorae:plants/coontail>,
    <tfcflorae:plants/eel_grass>,
    <tfcflorae:plants/giant_kelp>,
    <tfcflorae:plants/leafy_kelp>,
    <tfcflorae:plants/hanging_vine>,
    <tfcflorae:plants/jungle_vine>,
    <tfcflorae:plants/jungle_vine_creeping>,
    <tfcflorae:plants/takakia>,
    <tfcflorae:plants/leafy_kelp>
]);
<ore:livelyExtractHolder>.add([
    <tfc:plants/bromelia_laciniosa>,
    <tfc:plants/pygmy_date_palm>,
    <tfc:plants/zimbabwe_aloe>
]);
<ore:energeticExtractHolder>.add([
    <tfcflorae:plants/glowshroom>,
    <tfcflorae:plants/glowing_sea_banana>,
    <tfcflorae:coral/fan/horn/lime>,
    <tfcflorae:coral/fan/bubble/lime>,
    <tfcflorae:coral/fan/brain/lime>,
    <tfcflorae:coral/brain/green>,
    <tfcflorae:coral/horn/lime>,
    <tfcflorae:coral/brain/lime>,
    <tfcflorae:coral/bubble/lime>
]);
<ore:focusedExtractHolder>.add([
    <tfcflorae:crop/product/indigo>,
    <tfcflorae:coral/bubble/magenta>,
    <tfcflorae:coral/tube/magenta>,
    <tfcflorae:coral/fire/purple>,
    <tfcflorae:coral/tube/purple>,
    <tfcflorae:coral/fan/bubble/pink>,
    <tfcflorae:coral/fan/fire/purple>
]);
<ore:earthyExtractHolder>.add([
    <tfc:plants/bunch_grass_floating>,
    <tfc:plants/cattail>,
    <tfc:plants/milfoil>,
    <tfc:plants/liana>,
    <tfc:plants/bunch_grass_reed>,
    <tfcflorae:plants/liana_creeping>,
    <tfcflorae:plants/liana>,
    <tfcflorae:plants/milfoil>,
    <tfcflorae:plants/tackweed>,
    <tfcflorae:plants/badderlocks>,
    <tfcflorae:food/dried/cannabis_leaf>,
    <tfcflorae:food/dried/coca_leaf>,
    <tfcflorae:food/dried/tobacco_leaf>,
    <tfcflorae:food/dried/cannabis_bud>,
    <tfcflorae:live_starfish>,
    <tfcflorae:coral/bubble/yellow>,
    <tfcflorae:food/clove>,
    <tfcflorae:food/roasted/parasol_mushroom>,
    <tfcflorae:food/roasted/black_powderpuff>,
    <tfcflorae:food/roasted/stinkhorn>,
    <tfcflorae:food/roasted/weeping_milk_cap>,
    <tfcflorae:food/roasted/turkey_tail>,
    <tfcflorae:food/roasted/sulphur_shelf>,
    <tfcflorae:food/roasted/artists_conk>,
    <tfcflorae:food/butternut>,
    <tfcflorae:food/black_walnut>,
    <tfcflorae:food/beechnut>,
    <tfcflorae:food/dried/barrel_cactus_fruit>
]);
<ore:pureExtractHolder>.add([
    <tfcflorae:coral/fan/horn/black>,
    <tfcflorae:coral/fan/horn/blue>,
    <tfcflorae:coral/fan/tube/silver>,
    <tfcflorae:coral/fan/horn/silver>,
    <tfcflorae:coral/fan/fire/silver>,
    <tfcflorae:coral/fan/bubble/silver>,
    <tfcflorae:coral/fan/brain/silver>,
    <tfcflorae:coral/fan/horn/gray>,
    <tfcflorae:coral/fan/horn/white>,
    <tfcflorae:coral/fan/bubble/dead>,
    <tfcflorae:coral/horn/black>,
    <tfcflorae:coral/brain/black>,
    <tfcflorae:coral/tube/silver>,
    <tfcflorae:coral/horn/silver>,
    <tfcflorae:coral/fire/silver>,
    <tfcflorae:coral/bubble/silver>,
    <tfcflorae:coral/brain/silver>,
    <tfcflorae:coral/brain/gray>,
    <tfcflorae:coral/horn/white>,
    <tfcflorae:coral/brain/white>,
    <tfcflorae:coral/tube/dead>,
    <tfcflorae:plants/blueshroom>,
    <tfcflorae:plants/sulphur_shroom>
]);
<ore:fragrantExtractHolder>.add([
    <tfcflorae:coral/fire/magenta>,
    <tfcflorae:coral/bubble/purple>,
    <tfcflorae:coral/fan/bubble/magenta>,
    <tfcflorae:coral/fan/fire/magenta>,
    <tfcflorae:coral/fan/tube/magenta>,
    <tfcflorae:coral/fan/bubble/purple>,
    <tfcflorae:coral/fan/tube/purple>
]);

////////////////////////////////////////////////////////
// --- GC/EP --- ///////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление
// Лунный камень
<ore:stoneMoon>.add(<galacticraftcore:basic_block_moon:4>);

// Сухой лед
<ore:blockDryIce>.add(<extraplanets:iapetus:6>);

// Парашуты
for gcParachute in gcParachute {
    <ore:gc.parachute>.add(gcParachute);
    if (gcParachute has <galacticraftcore:parachute>) {}
    else {
        <ore:gc.parachute.colors>.add(gcParachute);
    }
}

// Балоны
for oxygenTankLight in oxygenTankLight {
    <ore:gc.oxygen.tank.light>.add(oxygenTankLight);
    if (oxygenTankLight has <extraplanets:oxygen_tank_light_full_white>) {}
    else {
        <ore:gc.oxygen.tank.light.colors>.add(oxygenTankLight);
    }
}
for oxygenTankMed in oxygenTankMed {
    <ore:gc.oxygen.tank.med>.add(oxygenTankMed);
    if (oxygenTankMed has <extraplanets:oxygen_tank_med_full_white>) {}
    else {
        <ore:gc.oxygen.tank.med.colors>.add(oxygenTankMed);
    }
}
for oxygenTankHeavy in oxygenTankHeavy {
    <ore:gc.oxygen.tank.heavy>.add(oxygenTankHeavy);
    if (oxygenTankHeavy has <extraplanets:oxygen_tank_heavy_full_white>) {}
    else {
        <ore:gc.oxygen.tank.heavy.colors>.add(oxygenTankHeavy);
    }
}

<ore:logWood>.addItems([
    <extraplanets:kepler22b_maple_logs:2>,
    <extraplanets:kepler22b_maple_logs:3>,
    <extraplanets:kepler22b_maple_logs:1>,
    <extraplanets:kepler22b_maple_logs>,
    <extraplanets:kepler22b_maple_logs2:1>,
    <extraplanets:kepler22b_maple_logs2>
]);

<ore:plankWood>.addItems([
    <extraplanets:kepler22b_planks:4>,
    <extraplanets:kepler22b_planks:1>,
    <extraplanets:kepler22b_planks:3>,
    <extraplanets:kepler22b_planks:2>,
    <extraplanets:kepler22b_planks>,
    <extraplanets:kepler22b_planks:5>
]);

<ore:gravel>.addItems([
    <extraplanets:titania_gravel>,
    <extraplanets:deimos_gravel>,
    <extraplanets:io_gravel>,
    <extraplanets:europa_gravel>,
    <extraplanets:eris_gravel>,
    <extraplanets:pluto_gravel>,
    <extraplanets:saturn_gravel>,
    <extraplanets:jupiter_gravel>,
    <extraplanets:ceres_gravel>,
    <extraplanets:mercury_gravel>,
    <extraplanets:iapetus_gravel>,
    <extraplanets:titania_gravel>,
    <extraplanets:oberon_gravel>,
    <extraplanets:titan_gravel>,
    <extraplanets:rhea_gravel>,
    <extraplanets:ganymede_gravel>,
    <extraplanets:callisto_gravel>,
    <extraplanets:triton_gravel>,
    <extraplanets:phobos_gravel>
]);

// Дэш
<ore:stickDesh>.addItems([<galacticraftplanets:item_basic_mars:1>]);

// Плотный лед
<ore:blockDenseIce>.addItems([<galacticraftplanets:dense_ice>]);

// Метеоритное железо
<ore:blockMeteoricIron>.addItems([<galacticraftcore:basic_block_core:12>]);

// --- Удаление

// Iron
<ore:oreIron>.remove(<galacticraftplanets:mars:3>);
<ore:oreIron>.remove(<galacticraftplanets:asteroids_block:5>);

// Copper
<ore:oreCopper>.remove([
    <galacticraftcore:basic_block_moon>,
    <galacticraftplanets:mars>,
    <galacticraftcore:basic_block_core:5>,
    <galacticraftplanets:venus:7>
    ]);
<ore:ingotCopper>.remove(<galacticraftcore:basic_item:3>);
<ore:blockCopper>.remove(<galacticraftcore:basic_block_core:9>);

// Tin
<ore:oreTin>.remove([
    <galacticraftcore:basic_block_moon:1>,
    <galacticraftplanets:mars:1>,
    <galacticraftplanets:venus:11>,
    <galacticraftcore:basic_block_core:6>
    ]);
<ore:ingotTin>.remove(<galacticraftcore:basic_item:4>);
<ore:blockTin>.remove(<galacticraftcore:basic_block_core:10>);

// Aluminium/Aluminum etc
<ore:oreAluminium>.remove([
    <galacticraftplanets:asteroids_block:3>,
    <galacticraftcore:basic_block_core:7>,
    <galacticraftplanets:venus:6>
    ]);
<ore:oreAluminum>.remove([
    <galacticraftplanets:asteroids_block:3>,
    <galacticraftcore:basic_block_core:7>,
    <galacticraftplanets:venus:6>
    ]);
<ore:oreNaturalAluminum>.remove([
    <galacticraftplanets:asteroids_block:3>,
    <galacticraftcore:basic_block_core:7>,
    <galacticraftplanets:venus:6>
    ]);
<ore:ingotAluminum>.remove(<galacticraftcore:basic_item:5>);
<ore:blockAluminum>.remove(<galacticraftcore:basic_block_core:11>);
<ore:blockAluminium>.remove(<galacticraftcore:basic_block_core:11>);

// Солнечная руда
<ore:oreSolar>.remove(<galacticraftplanets:venus:13>);

// Дэш
<ore:oreDesh>.remove(<galacticraftplanets:mars:2>);

// Кремний
<ore:oreSilicon>.remove([
    <galacticraftplanets:venus:10>,
    <galacticraftcore:basic_block_core:8>
    ]);
<ore:blockSilicon>.remove(<galacticraftcore:basic_block_core:13>);

// Квартц
<ore:oreQuartz>.remove(<galacticraftplanets:venus:9>);

// Lead
<ore:oreLead>.remove(<galacticraftplanets:venus:8>);
<ore:ingotLead>.remove(<galacticraftplanets:basic_item_venus:1>);
<ore:blockLead>.remove(<galacticraftplanets:venus:12>);

// Ilmenite
<ore:oreIlmenite>.remove(<galacticraftplanets:asteroids_block:4>);

// Титан
<ore:dustTitanium>.remove(<galacticraftplanets:item_basic_asteroids:9>);
<ore:ingotTitanium>.remove(<galacticraftplanets:item_basic_asteroids>);
<ore:blockTitanium>.remove(<galacticraftplanets:asteroids_block:7>);

// Сыр
<ore:foodCheese>.remove(<galacticraftcore:cheese_curd>);

////////////////////////////////////////////////////////
// --- Vanilla --- /////////////////////////////////////
////////////////////////////////////////////////////////

<ore:grass>.remove(<minecraft:grass>);
<ore:sand>.remove(<minecraft:sand>);
<ore:dirt>.remove(<minecraft:dirt>);
<ore:stone>.remove(<minecraft:stone>);
<ore:stoneSmooth>.remove(<minecraft:stone>);
<ore:gravel>.remove(<minecraft:gravel>);
<ore:stoneGranite>.remove(<minecraft:stone:1>);
<ore:stoneDiorite>.remove(<minecraft:stone:3>);
<ore:stoneAndesite>.remove(<minecraft:stone:5>);
<ore:oreCoal>.remove(<minecraft:coal_ore>);
<ore:oreRedstone>.remove(<minecraft:redstone_ore>);
<ore:oreDiamond>.remove(<minecraft:diamond_ore>);
<ore:oreEmerald>.remove(<minecraft:emerald_ore>);
<ore:oreGold>.remove(<minecraft:gold_ore>);
<ore:oreIron>.remove(<minecraft:iron_ore>);
<ore:sugarcane>.remove(<minecraft:reeds>);
<ore:bookshelf>.remove(<minecraft:bookshelf>);
<ore:treeSapling>.remove(<minecraft:sapling:*>);
<ore:slabWood>.remove(<minecraft:wooden_slab:*>);
<ore:plankWood>.remove(<minecraft:planks:*>);
<ore:logWood>.remove(<minecraft:log:*>, <minecraft:log2:*>);
<ore:chest>.remove(<minecraft:chest>, <minecraft:trapped_chest>);
<ore:chestWood>.remove(
    <minecraft:trapped_chest>, 
    <minecraft:chest>);
<ore:chestTrapped>.remove(<minecraft:trapped_chest>);
<ore:stairWood>.remove([
    <minecraft:oak_stairs>, 
    <minecraft:spruce_stairs>, 
    <minecraft:birch_stairs>, 
    <minecraft:jungle_stairs>, 
    <minecraft:acacia_stairs>, 
    <minecraft:dark_oak_stairs>
]);

// Cobblestone
<ore:cobblestone>.remove(<minecraft:cobblestone>);
<ore:stoneCobble>.remove(<minecraft:cobblestone>);

// Polished Granite
<ore:stoneGranite>.remove(<minecraft:stone:2>);
<ore:stoneGranitePolished>.remove(<minecraft:stone:2>);

// Polished Diorite
<ore:stoneDiorite>.remove(<minecraft:stone:4>);
<ore:stoneDioritePolished>.remove(<minecraft:stone:4>);

// Polished Andesite
<ore:stoneAndesite>.remove(<minecraft:stone:6>);
<ore:stoneAndesitePolished>.remove(<minecraft:stone:6>);

////////////////////////////////////////////////////////
// --- jsg --- ///////////////////////////////////////
////////////////////////////////////////////////////////

// --- Удаление
// Титан
<ore:ingotTitanium>.remove(<jsg:titanium_ingot>);
<ore:blockTitanium>.remove(<jsg:titanium_block>);
// Триниум
<ore:ingotTrinium>.remove(<jsg:trinium_ingot>);
<ore:blockTrinium>.remove(<jsg:trinium_block>);
<ore:oreTrinium>.remove(<jsg:trinium_ore>);
// Наквадах
<ore:ingotNaquadahRefined>.remove(<jsg:naquadah_alloy>);
<ore:blockNaquadahRefined>.remove(<jsg:naquadah_block>);
// Необработаный наквадах
<ore:ingotNaquadahRaw>.remove(<jsg:naquadah_alloy_raw>);
<ore:blockNaquadahRaw>.remove(<jsg:naquadah_block_raw>);
<ore:oreNaquadahRaw>.remove(<jsg:naquadah_ore_stone>);
<ore:oreNaquadahRaw>.remove(<jsg:naquadah_ore>);