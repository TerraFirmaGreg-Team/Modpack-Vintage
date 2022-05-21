#priority 995

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// --- TFC

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

// remove gemDiamond
<ore:gemDiamond>.remove(<tfc:gem/diamond:2>);

// remove gemLapis
<ore:gemLapis>.remove(<tfc:ore/lapis_lazuli>);

// remove gemEmerald
<ore:gemEmerald>.remove(<tfc:gem/emerald:2>);

// remove dustSalt
<ore:dustSalt>.remove(<tfc:powder/salt>);

// remove dustSaltpeter
<ore:dustSaltpeter>.remove(<tfc:powder/saltpeter>);

// Remove OreDict from saws
val RemoveItemOre as IItemStack[] = [
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/red_steel>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw_blade/bismuth_bronze>,
	<tfc:metal/saw_blade/black_bronze>,
	<tfc:metal/saw_blade/black_steel>,
	<tfc:metal/saw_blade/blue_steel>,
	<tfc:metal/saw_blade/bronze>,
	<tfc:metal/saw_blade/copper>,
	<tfc:metal/saw_blade/red_steel>,
	<tfc:metal/saw_blade/steel>,
	<tfc:metal/saw_blade/wrought_iron>
];
for item in RemoveItemOre{
    <ore:saw>.remove(item);
}

// add loom
for item in TFC_Loom {
	<ore:loom>.add(item);
}

// Rock Types GT = Rock Types TFC
//<ore:stoneBasalt>.add(<tfc:raw/basalt>);
//<ore:stoneMarble>.add(<tfc:raw/marble>);

// OreDicionary for all slab
for item in TFC_Slabs_Smooth {
	<ore:slabStone>.add(item);
}

// dustGraphite
<ore:dustGraphite>.remove(<tfc:powder/graphite>);

// StickBundle
<ore:logWood>.remove(<tfc:stick_bundle>);

// Sugarcane
<ore:sugarcane>.add(<tfc:food/sugarcane>);

// Unfinished Ingots
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
// PigIron

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
// PigIron

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

// gemSulfur
<ore:gemSulfur>.remove(<tfc:ore/sulfur>);

// gemSaltpeter
<ore:gemSaltpeter>.remove(<tfc:ore/saltpeter>);

// gemGraphite
<ore:gemGraphite>.remove(<tfc:ore/graphite>);

// Beeswax
<ore:itemBeeswax>.add(<firmalife:beeswax>);

// --- GregTech

// Tools
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
]);


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

// Knife
<ore:knife>.add(<metaitem:tool.knife>);

// Hammer
<ore:hammer>.add(<metaitem:tool.hard_hammer>);

// Saw
<ore:saw>.add(<metaitem:tool.saw>);

// Shovel
<ore:shovel>.add(<metaitem:tool.shovel>);

// Basalt
<ore:stoneBasalt>.remove(<gregtech:stone_smooth:3>);

// Marble
<ore:stoneMarble>.remove(<gregtech:stone_smooth:2>);

// --- GC
<ore:stoneMoon>.add(<galacticraftcore:basic_block_moon:4>);

// --- Deleting OreDictionary
// --- ProjectRed
// Copper
<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
// Tin
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
// Silver
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);
// RedAlloy
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);

// --- TFC-Florae
// Stick
<ore:stickWood>.remove(<tfcflorae:tools/walking_stick>);

// --- AE2
// Iron Dust
<ore:dustIron>.remove(<appliedenergistics2:material:49>);

// --- GC/GS
// Iron
<ore:oreIron>.remove(<galacticraftplanets:mars:3>);
<ore:oreIron>.remove(<galacticraftplanets:asteroids_block:5>);
// Copper
<ore:oreCopper>.remove(<galacticraftcore:basic_block_moon>);
<ore:oreCopper>.remove(<galacticraftplanets:mars>);
<ore:oreCopper>.remove(<galacticraftcore:basic_block_core:5>);
<ore:oreCopper>.remove(<galacticraftplanets:venus:7>);
<ore:ingotCopper>.remove(<galacticraftcore:basic_item:3>);
// Tin
<ore:oreTin>.remove(<galacticraftcore:basic_block_moon:1>);
<ore:oreTin>.remove(<galacticraftplanets:mars:1>);
<ore:oreTin>.remove(<galacticraftplanets:venus:11>);
<ore:oreTin>.remove(<galacticraftcore:basic_block_core:6>);
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
// Nickel
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);
// Solar ore
<ore:oreSolar>.remove(<galacticraftplanets:venus:13>);
// Silicon
<ore:oreSilicon>.remove(<galacticraftplanets:venus:10>);
<ore:oreSilicon>.remove(<galacticraftcore:basic_block_core:8>);
// Quartz
<ore:oreQuartz>.remove(<galacticraftplanets:venus:9>);
// Lead
<ore:oreLead>.remove(<galacticraftplanets:venus:8>);
// Ilmenite
<ore:oreIlmenite>.remove(<galacticraftplanets:asteroids_block:4>);

// --- Vanilla

// Grass
<ore:grass>.remove(<minecraft:grass>);

// Sand
<ore:sand>.remove(<minecraft:sand>);

// Dirt
<ore:dirt>.remove(<minecraft:dirt>);

// Stone
<ore:stone>.remove(<minecraft:stone>);
<ore:stoneSmooth>.remove(<minecraft:stone>);

// Gravel
<ore:gravel>.remove(<minecraft:gravel>);

// Cobblestone
<ore:cobblestone>.remove(<minecraft:cobblestone>);
<ore:stoneCobble>.remove(<minecraft:cobblestone>);

// Granite
<ore:stoneGranite>.remove(<minecraft:stone:1>);

// Polished Granite
<ore:stoneGranite>.remove(<minecraft:stone:2>);
<ore:stoneGranitePolished>.remove(<minecraft:stone:2>);

// Diorite
<ore:stoneDiorite>.remove(<minecraft:stone:3>);

// Polished Diorite
<ore:stoneDiorite>.remove(<minecraft:stone:4>);
<ore:stoneDioritePolished>.remove(<minecraft:stone:4>);

// Andesite
<ore:stoneAndesite>.remove(<minecraft:stone:5>);

// Polished Andesite
<ore:stoneAndesite>.remove(<minecraft:stone:6>);
<ore:stoneAndesitePolished>.remove(<minecraft:stone:6>);

// Stone coal
<ore:oreCoal>.remove(<minecraft:coal_ore>);

// Redstone
<ore:oreRedstone>.remove(<minecraft:redstone_ore>);

// Diamond
<ore:oreDiamond>.remove(<minecraft:diamond_ore>);

// Emerald
<ore:oreEmerald>.remove(<minecraft:emerald_ore>);

// Gold
<ore:oreGold>.remove(<minecraft:gold_ore>);

// Iron
<ore:oreIron>.remove(<minecraft:iron_ore>);

// Remove sugarcane OreDict
<ore:sugarcane>.remove(<minecraft:reeds>);

// Remove Bookshelf OreDict
<ore:bookshelf>.remove(<minecraft:bookshelf>);

// Remove treeSapling OreDict
<ore:treeSapling>.remove(<minecraft:sapling:*>);

// Remove slabWood OreDict
<ore:slabWood>.remove(<minecraft:wooden_slab:*>);

// Remove plankWood OreDict
<ore:plankWood>.remove(<minecraft:planks:*>);

// Remove logWood OreDict
<ore:logWood>.remove(<minecraft:log:*>);

// Remove stairWood
<ore:stairWood>.remove(<minecraft:oak_stairs>, <minecraft:spruce_stairs>, <minecraft:birch_stairs>, <minecraft:jungle_stairs>, <minecraft:acacia_stairs>, <minecraft:dark_oak_stairs>);

// Remove chest and chestWood and chestTrapped
<ore:chest>.remove(<minecraft:chest>, <minecraft:trapped_chest>);
<ore:chestWood>.remove(<minecraft:chest>, <minecraft:trapped_chest>);
<ore:chestTrapped>.remove(<minecraft:trapped_chest>);