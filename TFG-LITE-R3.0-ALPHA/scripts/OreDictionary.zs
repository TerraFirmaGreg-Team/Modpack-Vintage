#priority 9999

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//1 - Rock Igneus Instrusive
var RockII = [<tfc:raw/granite>,<tfc:raw/gabbro>,<tfc:raw/rhyolite>,<tfc:raw/diorite>, <tfc:raw/breccia>, <tfc:raw/porphyry>] as IItemStack[];
for item in RockII {
	<ore:RockII>.add(item);
}
//2 - Rock Igneus Extrusive
var RockIE = [<tfc:raw/basalt>, <tfc:raw/dacite>, <tfc:raw/andesite>, <tfc:raw/peridotite>] as IItemStack[];
for item in RockIE {
	<ore:RockIE>.add(item);
}
//3 - Rock Metamorfic
var RockMetamorpfic = [<tfc:raw/marble>, <tfc:raw/gneiss>, <tfc:raw/schist>, <tfc:raw/quartzite>, <tfc:raw/phyllite>, <tfc:raw/slate>, <tfc:raw/catlinite>, <tfc:raw/novaculite>, <tfc:raw/soapstone>, <tfc:raw/komatiite>] as IItemStack[];
for item in RockMetamorpfic {
	<ore:RockMetamorpfic>.add(item);
}
//4 - Rock Sedimentary
var RockSedimentary = [<tfc:raw/shale>,<tfc:raw/dolomite>,<tfc:raw/conglomerate>,<tfc:raw/limestone>,<tfc:raw/rocksalt>,<tfc:raw/claystone>,<tfc:raw/chert>,<tfc:raw/chalk>, <tfc:raw/mudstone>, <tfc:raw/sandstone>, <tfc:raw/siltstone>] as IItemStack[];
for item in RockSedimentary {
	<ore:RockSedimentary>.add(item);
}

// --- Deleting OreDictionary
//TFC-Gears
<ore:gearBismuth>.remove(<tfctech:metal/bismuth_gear>);
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

//Bronze Forestry
<ore:ingotBronze>.remove(<forestry:ingot_bronze>);
//Tin Forestry
<ore:ingotTin>.remove(<forestry:ingot_tin>);
//Copper Forestry
<ore:ingotCopper>.remove(<forestry:ingot_copper>);
//Apatite Forestry
<ore:gemApatite>.remove(<forestry:apatite>);
//Bronze Block Forestry
<ore:blockBronze>.remove(<forestry:resource_storage:3>);
//Tin Block Forestry
<ore:blockTin>.remove(<forestry:resource_storage:2>);
//Copper Block Forestry
<ore:blockCopper>.remove(<forestry:resource_storage:1>);
//Apatite Block Forestry
<ore:blockApatite>.remove(<forestry:resource_storage>);
//Minecraft goldingot
<ore:ingotGold>.remove(<minecraft:gold_ingot>);
//Minecraft emerald
<ore:gemEmerald>.remove(<minecraft:emerald>);
//Minecraft diamond
<ore:gemDiamond>.remove(<minecraft:diamond>);
//Lapis
<ore:dye>.remove(<minecraft:dye:4>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:gemLapis>.remove(<minecraft:dye:4>);
//Stone coal
<ore:oreCoal>.remove(<minecraft:coal_ore>);
//Redstone
<ore:oreRedstone>.remove(<minecraft:redstone_ore>);
//Diamond
<ore:oreDiamond>.remove(<minecraft:diamond_ore>);
//Emerald
<ore:oreEmerald>.remove(<minecraft:emerald_ore>);
//Gold
<ore:oreGold>.remove(<minecraft:gold_ore>);
//Iron
<ore:oreIron>.remove(<minecraft:iron_ore>);
<ore:oreIron>.remove(<galacticraftplanets:mars:3>);
<ore:oreIron>.remove(<galacticraftplanets:asteroids_block:5>);
//Copper
<ore:oreCopper>.remove(<galacticraftcore:basic_block_moon>);
<ore:oreCopper>.remove(<galacticraftplanets:mars>);
<ore:oreCopper>.remove(<forestry:resources:1>);
<ore:oreCopper>.remove(<galacticraftcore:basic_block_core:5>);
<ore:oreCopper>.remove(<galacticraftplanets:venus:7>);
//Tin
<ore:oreTin>.remove(<forestry:resources:2>);
<ore:oreTin>.remove(<galacticraftcore:basic_block_moon:1>);
<ore:oreTin>.remove(<galacticraftplanets:mars:1>);
<ore:oreTin>.remove(<galacticraftplanets:venus:11>);
<ore:oreTin>.remove(<galacticraftcore:basic_block_core:6>);
//Aluminium/Aluminum etc
<ore:oreAluminium>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminium>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminium>.remove(<galacticraftplanets:venus:6>);
<ore:oreAluminum>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminum>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminum>.remove(<galacticraftplanets:venus:6>);
<ore:oreNaturalAluminum>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreNaturalAluminum>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreNaturalAluminum>.remove(<galacticraftplanets:venus:6>);
//Solar ore
<ore:oreSolar>.remove(<galacticraftplanets:venus:13>);
//Silicon
<ore:oreSilicon>.remove(<galacticraftplanets:venus:10>);
<ore:oreSilicon>.remove(<galacticraftcore:basic_block_core:8>);
//Quartz
<ore:oreQuartz>.remove(<galacticraftplanets:venus:9>);
//Apatite
<ore:oreApatite>.remove(<forestry:resources>);
//Lead
<ore:oreLead>.remove(<galacticraftplanets:venus:8>);
//Ilmenite
<ore:oreIlmenite>.remove(<galacticraftplanets:asteroids_block:4>);

/*             ///Сундуки из форестри в один oredictionary///               */
var ForestryChestsArray = [
<forestry:butterfly_chest>,
<forestry:tree_chest>,
<forestry:bee_chest>
] as IItemStack[];
var ForestryChests1 = <ore:ForestryChests>;
for item in ForestryChestsArray {
	ForestryChests1.add(item);
}

/*             ///Прополис из форестри в один oredictionary///               */
var ForestryPropolisArray = [
<forestry:propolis>,
<forestry:propolis:1>,
<forestry:propolis:3>
] as IItemStack[];
var ForestryPropolis1 = <ore:ForestryPropolis>;
for item in ForestryPropolisArray {
	ForestryPropolis1.add(item);
}

/*             ///Кнопки деревянные из тфк в один oredictionary///               */
var ButtonWood = [
<tfc:wood/button/palm>,
<tfc:wood/button/pine>,
<tfc:wood/button/rosewood>,
<tfc:wood/button/sequoia>,
<tfc:wood/button/spruce>,
<tfc:wood/button/sycamore>,
<tfc:wood/button/white_cedar>,
<tfc:wood/button/willow>,
<tfc:wood/button/birch>,
<tfc:wood/button/aspen>,
<tfc:wood/button/ash>,
<tfc:wood/button/hevea>,
<tfc:wood/button/acacia>,
<tfc:wood/button/maple>,
<tfc:wood/button/oak>,
<tfc:wood/button/kapok>,
<tfc:wood/button/hickory>,
<tfc:wood/button/douglas_fir>,
<tfc:wood/button/chestnut>,
<tfc:wood/button/blackwood>
] as IItemStack[];
var oreButtonWood = <ore:ButtonWood>;
for item in ButtonWood {
	oreButtonWood.add(item);
}

/*             ///Каменные копки из тфк в один oredictionary///               */
var ButtonStone = [
<tfc:stone/button/claystone>,
<tfc:stone/button/rocksalt>,
<tfc:stone/button/limestone>,
<tfc:stone/button/conglomerate>,
<tfc:stone/button/dolomite>,
<tfc:stone/button/chert>,
<tfc:stone/button/chalk>,
<tfc:stone/button/diorite>,
<tfc:stone/button/granite>,
<tfc:stone/button/basalt>,
<tfc:stone/button/andesite>,
<tfc:stone/button/dacite>,
<tfc:stone/button/quartzite>,
<tfc:stone/button/slate>,
<tfc:stone/button/schist>,
<tfc:stone/button/phyllite>,
<tfc:stone/button/gneiss>,
<tfc:stone/button/marble>,
<tfc:stone/button/gabbro>,
<tfc:stone/button/shale>,
<tfc:stone/button/rhyolite>
] as IItemStack[];
var oreButtonStone = <ore:ButtonStone>;
for item in ButtonStone {
	oreButtonStone.add(item);
}

//Beeswax
<ore:itemBeeswax>.add(<firmalife:beeswax>);

//Молоты TFC = Молоты GT
<ore:hammer>.addAll(<ore:craftingToolHardHammer>);

//Пилы TFC = Пилы GT
<ore:saw>.addAll(<ore:craftingToolSaw>);

//Ножи TFC = Ножи GT
//<ore:knife>.addAll(<ore:craftingToolKnife>);
//<ore:toolCuttingboard>.add(<gregtech:meta_tool:17>.withTag({}));

//Фикc железка
//<ore:plateWroughtIron>.remove(<gregtech:meta_item_1:12197>);
//<ore:ingotWroughtIron>.remove(<gregtech:meta_item_1:10197>);
//<ore:nuggetWroughtIron>.remove(<tfc:metal/nugget/wrought_iron>);
//<ore:sheetDoubleWroughtIron>.remove(<tfc:metal/double_sheet/wrought_iron>);
//<ore:sheetDoubleWroughtIron>.add(<gtadditions:ga_meta_item:1197>);

<ore:dustSalt>.remove(<tfc:powder/salt>);
<ore:dustSaltpeter>.remove(<tfc:powder/saltpeter>);