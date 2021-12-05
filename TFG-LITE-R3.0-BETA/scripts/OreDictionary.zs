#priority 1000

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//1 - Raw Igneous Intrusive
var RawIgneousIntrusive = [<tfc:raw/granite>, <tfc:raw/gabbro>, <tfc:raw/rhyolite>, <tfc:raw/diorite>, <tfc:raw/breccia>, <tfc:raw/porphyry>] as IItemStack[];
for item in RawIgneousIntrusive {
	<ore:RawIgneousIntrusive>.add(item);
}
//2 - Raw Igneous Extrusive
var RawIgneousExtrusive = [<tfc:raw/basalt>, <tfc:raw/dacite>, <tfc:raw/andesite>, <tfc:raw/peridotite>] as IItemStack[];
for item in RawIgneousExtrusive {
	<ore:RawIgneousExtrusive>.add(item);
}
//3 - Rock Metamorphic
var RawMetamorphic = [<tfc:raw/marble>, <tfc:raw/gneiss>, <tfc:raw/schist>, <tfc:raw/quartzite>, <tfc:raw/phyllite>, <tfc:raw/slate>, <tfc:raw/catlinite>, <tfc:raw/novaculite>, <tfc:raw/soapstone>, <tfc:raw/komatiite>] as IItemStack[];
for item in RawMetamorphic {
	<ore:RawMetamorphic>.add(item);
}
//4 - Rock Sedimentary
var RawSedimentary = [<tfc:raw/shale>, <tfc:raw/dolomite>, <tfc:raw/conglomerate>, <tfc:raw/limestone>, <tfc:raw/rocksalt>, <tfc:raw/claystone>, <tfc:raw/chert>, <tfc:raw/chalk>, <tfc:raw/mudstone>, <tfc:raw/sandstone>, <tfc:raw/siltstone>] as IItemStack[];
for item in RawSedimentary {
	<ore:RawSedimentary>.add(item);
}

//Seeds
var RawSedimentary = [
	<tfc:crop/seeds/barley>,
	<tfc:crop/seeds/maize>,
	<tfc:crop/seeds/oat>,
	<tfc:crop/seeds/rice>,
	<tfc:crop/seeds/rye>,
	<tfc:crop/seeds/wheat>,
	<tfc:crop/seeds/beet>,
	<tfc:crop/seeds/cabbage>,
	<tfc:crop/seeds/carrot>,
	<tfc:crop/seeds/garlic>,
	<tfc:crop/seeds/green_bean>,
	<tfc:crop/seeds/onion>,
	<tfc:crop/seeds/potato>,
	<tfc:crop/seeds/soybean>,
	<tfc:crop/seeds/squash>,
	<tfc:crop/seeds/sugarcane>,
	<tfc:crop/seeds/tomato>,
	<tfc:crop/seeds/red_bell_pepper>,
	<tfc:crop/seeds/yellow_bell_pepper>,
	<tfc:crop/seeds/jute>,
	<tfcflorae:crop/product/malt_spelt>,
	<tfcflorae:crop/seeds/amaranth>,
	<tfcflorae:crop/seeds/buckwheat>,
	<tfcflorae:crop/seeds/fonio>,
	<tfcflorae:crop/seeds/millet>,
	<tfcflorae:crop/seeds/quinoa>,
	<tfcflorae:crop/seeds/spelt>,
	<tfcflorae:crop/seeds/black_eyed_peas>,
	<tfcflorae:crop/seeds/cayenne_pepper>,
	<tfcflorae:crop/seeds/ginger>,
	<tfcflorae:crop/seeds/ginseng>,
	<tfcflorae:crop/seeds/rutabaga>,
	<tfcflorae:crop/seeds/turnip>,
	<tfcflorae:crop/seeds/sugar_beet>,
	<tfcflorae:crop/seeds/purple_grape>,
	<tfcflorae:crop/seeds/green_grape>,
	<tfcflorae:crop/seeds/liquorice_root>,
	<tfcflorae:crop/seeds/coffea>,
	<tfcflorae:crop/seeds/agave>,
	<tfcflorae:crop/seeds/coca>,
	<tfcflorae:crop/seeds/cotton>,
	<tfcflorae:crop/seeds/flax>,
	<tfcflorae:crop/seeds/hemp>,
	<tfcflorae:crop/seeds/hop>,
	<tfcflorae:crop/seeds/indigo>,
	<tfcflorae:crop/seeds/madder>,
	<tfcflorae:crop/seeds/opium_poppy>,
	<tfcflorae:crop/seeds/rape>,
	<tfcflorae:crop/seeds/weld>,
	<tfcflorae:crop/seeds/woad>,
	<tfcflorae:crop/seeds/tobacco>
	] as IItemStack[];
for item in RawSedimentary {
	<ore:listAllSeeds>.add(item);
}

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

//Beeswax
<ore:itemBeeswax>.add(<firmalife:beeswax>);

//<ore:dustSalt>.remove(<tfc:powder/salt>);
//<ore:dustSaltpeter>.remove(<tfc:powder/saltpeter>);

// --- Deleting OreDictionary
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
<ore:ingotCopper>.remove(<galacticraftcore:basic_item:3>);
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
