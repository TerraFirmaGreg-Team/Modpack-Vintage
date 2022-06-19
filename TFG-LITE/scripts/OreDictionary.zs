#priority 975

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

////////////////////////////////////////////////////////
// --- GREGTECH --- ////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

<ore:gtce.tool.wrenches>.addItems([
    <gregtech:meta_tool:8>.withEmptyTag(),
    <gregtech:meta_tool:28>.withEmptyTag(),
    <gregtech:meta_tool:29>.withEmptyTag(),
    <gregtech:meta_tool:30>.withEmptyTag()
]);

<ore:gtce.tool.screwdrivers>.addItems([
    <gregtech:meta_tool:11>.withEmptyTag(),
    <gregtech:meta_tool:31>.withEmptyTag()
]);

<ore:gtce.tool.hard.hammers>.addItems([
    <gregtech:meta_tool:6>.withEmptyTag()
]);

<ore:gtce.tool.saws>.addItems([
    <gregtech:meta_tool:5>.withEmptyTag(),
    <gregtech:meta_tool:25>.withEmptyTag(),
    <gregtech:meta_tool:26>.withEmptyTag(),
    <gregtech:meta_tool:27>.withEmptyTag(),
    <gregtech:meta_tool:32>.withEmptyTag()
]);

<ore:gtce.tool.files>.addItems([
    <gregtech:meta_tool:9>.withEmptyTag()
]);

<ore:gtce.tool.cutters>.addItems([
    <gregtech:meta_tool:13>.withEmptyTag()
]);

<ore:gtce.tool.soft.hammers>.addItems([
    <gregtech:meta_tool:7>.withEmptyTag()
]);

<ore:gtce.tool.mortars>.addItems([
    <gregtech:meta_tool:12>.withEmptyTag()
]);

<ore:gtce.tool.shovels>.addItems([
    <gregtech:meta_tool:2>.withEmptyTag()
]);

<ore:gtce.tool.knife>.addItems([
    <gregtech:meta_tool:15>.withEmptyTag(),
    <gregtechfoodoption:gtfo_meta_tool:1>.withEmptyTag()
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

// BronzeAny Screws
<ore:screwBronzeAny>.add(<metaitem:screwBismuthBronze>, <metaitem:screwBronze>, <metaitem:screwBlackBronze>);

// Chipped Gems from GT
for item in Gem_Chipped {
	<ore:gemChipped>.add(item);
}
// Flawed Gems from GT
for item in Gem_Flawed {
	<ore:gemFlawed>.add(item);
}
// Flawless Gems from GT
for item in Gem_Flawless {
	<ore:gemFlawless>.add(item);
}
// Exquisite Gems from GT
for item in Gem_Exquisite {
	<ore:gemExquisite>.add(item);
}

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

// Interface
<ore:ae2.interface.item>.addItems([
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:440>
]);

// Fluid Interface
<ore:ae2.interface.fluid>.addItems([
    <appliedenergistics2:fluid_interface>,
    <appliedenergistics2:part:441>
]);

// Glass Cable
for glassCable in glassCables {
    <ore:ae2.cable.glass>.add(glassCable);
    if (glassCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.glass.colors>.add(glassCable);
    }
}

// Covered Cable
for coveredCable in coveredCables {
    <ore:ae2.cable.covered>.add(coveredCable);
    if (coveredCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.covered.colors>.add(coveredCable);
    }
}

// Smart Cable
for smartCable in smartCables {
    <ore:ae2.cable.smart>.add(smartCable);
    if (smartCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.smart.colors>.add(smartCable);
    }
}

// Dense Covered Cable
for denseCoveredCable in denseCoveredCables {
    <ore:ae2.cable.dense.covered>.add(denseCoveredCable);
    if (denseCoveredCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.dense.covered.colors>.add(denseCoveredCable);
    }
}

// Dense Smart Cable
for denseSmartCable in denseSmartCables {
    <ore:ae2.cable.dense.smart>.add(denseSmartCable);
    if (denseSmartCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.dense.smart.colors>.add(denseSmartCable);
    }
}

// Iron Dust
<ore:dustIron>.remove(<appliedenergistics2:material:49>);

////////////////////////////////////////////////////////
// --- PROJECTRED --- //////////////////////////////////
////////////////////////////////////////////////////////

<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);

////////////////////////////////////////////////////////
// --- TFC-Florae --- //////////////////////////////////
////////////////////////////////////////////////////////

<ore:stickWood>.remove(<tfcflorae:tools/walking_stick>);

////////////////////////////////////////////////////////
// --- GC/GS/EP --- ///////////////////////////////////////
////////////////////////////////////////////////////////

// --- Добавление

<ore:stoneMoon>.add(<galacticraftcore:basic_block_moon:4>);

// --- Удаление

// Iron
<ore:oreIron>.remove(<galacticraftplanets:mars:3>);
<ore:oreIron>.remove(<galacticraftplanets:asteroids_block:5>);
<ore:oreIron>.remove(<galaxyspace:barnarda_c_ores:1>);
<ore:oreIron>.remove(<galaxyspace:mirandablocks:3>);
<ore:oreIron>.remove(<galaxyspace:mercuryblocks:4>);

// Copper
<ore:oreCopper>.remove(<galacticraftcore:basic_block_moon>);
<ore:oreCopper>.remove(<galacticraftplanets:mars>);
<ore:oreCopper>.remove(<galacticraftcore:basic_block_core:5>);
<ore:oreCopper>.remove(<galacticraftplanets:venus:7>);
<ore:ingotCopper>.remove(<galacticraftcore:basic_item:3>);
<ore:oreCopper>.remove(<galaxyspace:barnarda_c_ores:7>);
<ore:oreCopper>.remove(<galaxyspace:ioblocks:3>);
<ore:oreCopper>.remove(<galaxyspace:proxima_b_blocks:7>);

// Tin
<ore:oreTin>.remove(<galacticraftcore:basic_block_moon:1>);
<ore:oreTin>.remove(<galacticraftplanets:mars:1>);
<ore:oreTin>.remove(<galacticraftplanets:venus:11>);
<ore:oreTin>.remove(<galacticraftcore:basic_block_core:6>);
<ore:oreTin>.remove(<galaxyspace:barnarda_c_ores:8>);
<ore:oreTin>.remove(<galaxyspace:proxima_b_blocks:6>);

// Aluminium/Aluminum etc
<ore:oreAluminium>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminium>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminium>.remove(<galacticraftplanets:venus:6>);
<ore:oreAluminum>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminum>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminum>.remove(<galacticraftplanets:venus:6>);
<ore:oreNaturalAluminum>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreNaturalAluminum>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreNaturalAluminum>.remove(<galacticraftplanets:venus:6>);
<ore:oreAluminum>.remove(<galaxyspace:barnarda_c_ores:9>);
<ore:oreAluminum>.remove(<galaxyspace:marsores:5>);
<ore:oreAluminum>.remove(<galaxyspace:haumeablocks:3>);
<ore:oreAluminum>.remove(<galaxyspace:europablocks:5>);

// Nickel
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);

// Solar ore
<ore:oreSolar>.remove(<galacticraftplanets:venus:13>);

// Silicon
<ore:oreSilicon>.remove(<galacticraftplanets:venus:10>);
<ore:oreSilicon>.remove(<galacticraftcore:basic_block_core:8>);
<ore:oreSilicon>.remove(<galaxyspace:barnarda_c_ores:6>);
<ore:oreSilicon>.remove(<galaxyspace:marsores:4>);
<ore:oreSilicon>.remove(<galaxyspace:proxima_b_blocks:9>);
<ore:oreSilicon>.remove(<galaxyspace:europablocks:4>);

// Quartz
<ore:oreQuartz>.remove(<galacticraftplanets:venus:9>);
<ore:oreQuartz>.remove(<galaxyspace:barnarda_c_ores:10>);
<ore:oreQuartz>.remove(<galaxyspace:mirandablocks:6>);

// Lead
<ore:oreLead>.remove(<galacticraftplanets:venus:8>);

// Ilmenite
<ore:oreIlmenite>.remove(<galacticraftplanets:asteroids_block:4>);
<ore:oreIlmenite>.remove(<galaxyspace:ganymedeblocks:3>);

// Sulfur
<ore:oreSulfur>.remove(<galaxyspace:ioblocks:4>);

// Coal
<ore:oreCoal>.remove(<galaxyspace:proxima_b_blocks:8>);
<ore:oreCoal>.remove(<galaxyspace:marsores:2>);
<ore:oreCoal>.remove(<galaxyspace:barnarda_c_ores>);
<ore:oreCoal>.remove(<galaxyspace:enceladusblocks:2>);
<ore:oreCoal>.remove(<galaxyspace:titanblocks:6>);

// Gold
<ore:oreGold>.remove(<galaxyspace:barnarda_c_ores:2>);
<ore:oreGold>.remove(<galaxyspace:marsores:1>);
<ore:oreGold>.remove(<galaxyspace:proxima_b_blocks:5>);

// Redstone
<ore:oreRedstone>.remove(<galaxyspace:barnarda_c_ores:3>);
<ore:oreRedstone>.remove(<galaxyspace:marsores:3>);
<ore:oreRedstone>.remove(<galaxyspace:titanblocks:8>);

// Diamond
<ore:oreDiamond>.remove(<galaxyspace:barnarda_c_ores:5>);
<ore:oreDiamond>.remove(<galaxyspace:marsores>);
<ore:oreDiamond>.remove(<galaxyspace:proxima_b_blocks:10>);
<ore:oreDiamond>.remove(<galaxyspace:titanblocks:5>);
<ore:oreDiamond>.remove(<galaxyspace:mirandablocks:5>);

// Nickel
<ore:oreNickel>.remove(<galaxyspace:barnarda_c_ores:12>);
<ore:oreNickel>.remove(<galaxyspace:gsores:1>);
<ore:oreNickel>.remove(<galaxyspace:mercuryblocks:3>);

// Lapis
<ore:oreLapis>.remove(<galaxyspace:barnarda_c_ores:4>);
<ore:oreLapis>.remove(<galaxyspace:titanblocks:7>);

// Cobalt
<ore:oreCobalt>.remove(<galaxyspace:barnarda_c_ores:11>);
<ore:oreCobalt>.remove(<galaxyspace:gsores>);
<ore:oreCobalt>.remove(<galaxyspace:mirandablocks:7>);

// Uranium
<ore:oreUranium>.remove(<galaxyspace:gsores:2>);

// Magnesium
<ore:oreMagnesium>.remove(<galaxyspace:mercuryblocks:5>);
<ore:oreMagnesium>.remove(<galaxyspace:ganymedeblocks:2>);

// Sapphire
<ore:oreSapphire>.remove(<galaxyspace:titanblocks:3>);

// Emerald
<ore:oreEmerald>.remove(<galaxyspace:titanblocks:4>);
<ore:oreEmerald>.remove(<galaxyspace:europablocks:3>);

// Dolomite
<ore:oreDolomite>.remove(<galaxyspace:mirandablocks:4>);


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
<ore:logWood>.remove(<minecraft:log:*>);
<ore:chest>.remove(<minecraft:chest>, <minecraft:trapped_chest>);
<ore:chestWood>.remove(<minecraft:trapped_chest>);
<ore:chestWood>.remove(<minecraft:chest>);
<ore:chestTrapped>.remove(<minecraft:trapped_chest>);
<ore:stairWood>.remove(<minecraft:oak_stairs>, <minecraft:spruce_stairs>, <minecraft:birch_stairs>, <minecraft:jungle_stairs>, <minecraft:acacia_stairs>, <minecraft:dark_oak_stairs>);

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

