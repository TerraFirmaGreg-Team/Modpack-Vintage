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
var AllSeeds = [
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
for item in AllSeeds {
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

// --- Adding OreDictionary
// --- TFC
//Rock Types
<ore:stoneBasalt>.add(<tfc:raw/basalt>);
<ore:stoneMarble>.add(<tfc:raw/marble>);

// --- Forestry
//Beeswax
<ore:itemBeeswax>.add(<firmalife:beeswax>);

// --- GregTech
//gemChipped
var gemChipped = [
	<metaitem:gemChippedCertusQuartz>,
	<metaitem:gemChippedGarnetYellow>,
	<metaitem:gemChippedAlmandine>,
	<metaitem:gemChippedAndradite>,
	<metaitem:gemChippedBlueTopaz>,
	<metaitem:gemChippedCinnabar>,
	<metaitem:gemChippedCoal>,
	<metaitem:gemChippedDiamond>,
	<metaitem:gemChippedEmerald>,
	<metaitem:gemChippedGreenSapphire>,
	<metaitem:gemChippedGrossular>,
	<metaitem:gemChippedRutile>,
	<metaitem:gemChippedLazurite>,
	<metaitem:gemChippedPyrope>,
	<metaitem:gemChippedRockSalt>,
	<metaitem:gemChippedRuby>,
	<metaitem:gemChippedSalt>,
	<metaitem:gemChippedSapphire>,
	<metaitem:gemChippedSodalite>,
	<metaitem:gemChippedCoke>,
	<metaitem:gemChippedSpessartine>,
	<metaitem:gemChippedTopaz>,
	<metaitem:gemChippedUvarovite>,
	<metaitem:gemChippedNetherQuartz>,
	<metaitem:gemChippedQuartzite>,
	<metaitem:gemChippedRealgar>,
	<metaitem:gemChippedMalachite>,
	<metaitem:gemChippedSugar>,
	<metaitem:gemChippedGlass>,
	<metaitem:gemChippedOlivine>,
	<metaitem:gemChippedOpal>,
	<metaitem:gemChippedAmethyst>,
	<metaitem:gemChippedLapis>,
	<metaitem:gemChippedApatite>,
	<metaitem:gemChippedGarnetRed>,
	<metaitem:gemChippedGarnetYellow>,
	<metaitem:gemChippedMonazite>
	] as IItemStack[];
for item in gemChipped {
	<ore:gemChipped>.add(item);
}

//gemFlawed
var gemFlawed = [
	<metaitem:gemFlawedCertusQuartz>,
	<metaitem:gemFlawedGarnetYellow>,
	<metaitem:gemFlawedAlmandine>,
	<metaitem:gemFlawedAndradite>,
	<metaitem:gemFlawedBlueTopaz>,
	<metaitem:gemFlawedCinnabar>,
	<metaitem:gemFlawedCoal>,
	<metaitem:gemFlawedDiamond>,
	<metaitem:gemFlawedEmerald>,
	<metaitem:gemFlawedGreenSapphire>,
	<metaitem:gemFlawedGrossular>,
	<metaitem:gemFlawedRutile>,
	<metaitem:gemFlawedLazurite>,
	<metaitem:gemFlawedPyrope>,
	<metaitem:gemFlawedRockSalt>,
	<metaitem:gemFlawedRuby>,
	<metaitem:gemFlawedSalt>,
	<metaitem:gemFlawedSapphire>,
	<metaitem:gemFlawedSodalite>,
	<metaitem:gemFlawedCoke>,
	<metaitem:gemFlawedSpessartine>,
	<metaitem:gemFlawedTopaz>,
	<metaitem:gemFlawedUvarovite>,
	<metaitem:gemFlawedNetherQuartz>,
	<metaitem:gemFlawedQuartzite>,
	<metaitem:gemFlawedRealgar>,
	<metaitem:gemFlawedMalachite>,
	<metaitem:gemFlawedSugar>,
	<metaitem:gemFlawedGlass>,
	<metaitem:gemFlawedOlivine>,
	<metaitem:gemFlawedOpal>,
	<metaitem:gemFlawedAmethyst>,
	<metaitem:gemFlawedLapis>,
	<metaitem:gemFlawedApatite>,
	<metaitem:gemFlawedGarnetRed>,
	<metaitem:gemFlawedGarnetYellow>,
	<metaitem:gemFlawedMonazite>
	] as IItemStack[];
for item in gemFlawed {
	<ore:gemFlawed>.add(item);
}

//gemFlawless
var gemFlawless = [
	<metaitem:gemFlawlessGarnetYellow>,
	<metaitem:gemFlawlessAlmandine>,
	<metaitem:gemFlawlessAndradite>,
	<metaitem:gemFlawlessBlueTopaz>,
	<metaitem:gemFlawlessCinnabar>,
	<metaitem:gemFlawlessCoal>,
	<metaitem:gemFlawlessDiamond>,
	<metaitem:gemFlawlessEmerald>,
	<metaitem:gemFlawlessGreenSapphire>,
	<metaitem:gemFlawlessGrossular>,
	<metaitem:gemFlawlessRutile>,
	<metaitem:gemFlawlessLazurite>,
	<metaitem:gemFlawlessPyrope>,
	<metaitem:gemFlawlessRockSalt>,
	<metaitem:gemFlawlessRuby>,
	<metaitem:gemFlawlessSalt>,
	<metaitem:gemFlawlessSapphire>,
	<metaitem:gemFlawlessSodalite>,
	<metaitem:gemFlawlessCoke>,
	<metaitem:gemFlawlessSpessartine>,
	<metaitem:gemFlawlessTopaz>,
	<metaitem:gemFlawlessUvarovite>,
	<metaitem:gemFlawlessNetherQuartz>,
	<metaitem:gemFlawlessQuartzite>,
	<metaitem:gemFlawlessRealgar>,
	<metaitem:gemFlawlessMalachite>,
	<metaitem:gemFlawlessSugar>,
	<metaitem:gemFlawlessGlass>,
	<metaitem:gemFlawlessOlivine>,
	<metaitem:gemFlawlessOpal>,
	<metaitem:gemFlawlessAmethyst>,
	<metaitem:gemFlawlessLapis>,
	<metaitem:gemFlawlessApatite>,
	<metaitem:gemFlawlessGarnetRed>,
	<metaitem:gemFlawlessGarnetYellow>,
	<metaitem:gemFlawlessMonazite>
	] as IItemStack[];
for item in gemFlawless {
	<ore:gemFlawless>.add(item);
}

//gemExquisite
var gemExquisite = [
	<metaitem:gemExquisiteGarnetYellow>,
	<metaitem:gemExquisiteAlmandine>,
	<metaitem:gemExquisiteAndradite>,
	<metaitem:gemExquisiteBlueTopaz>,
	<metaitem:gemExquisiteCinnabar>,
	<metaitem:gemExquisiteCoal>,
	<metaitem:gemExquisiteDiamond>,
	<metaitem:gemExquisiteEmerald>,
	<metaitem:gemExquisiteGreenSapphire>,
	<metaitem:gemExquisiteGrossular>,
	<metaitem:gemExquisiteRutile>,
	<metaitem:gemExquisiteLazurite>,
	<metaitem:gemExquisitePyrope>,
	<metaitem:gemExquisiteRockSalt>,
	<metaitem:gemExquisiteRuby>,
	<metaitem:gemExquisiteSalt>,
	<metaitem:gemExquisiteSapphire>,
	<metaitem:gemExquisiteSodalite>,
	<metaitem:gemExquisiteCoke>,
	<metaitem:gemExquisiteSpessartine>,
	<metaitem:gemExquisiteTopaz>,
	<metaitem:gemExquisiteUvarovite>,
	<metaitem:gemExquisiteNetherQuartz>,
	<metaitem:gemExquisiteQuartzite>,
	<metaitem:gemExquisiteRealgar>,
	<metaitem:gemExquisiteMalachite>,
	<metaitem:gemExquisiteSugar>,
	<metaitem:gemExquisiteGlass>,
	<metaitem:gemExquisiteOlivine>,
	<metaitem:gemExquisiteOpal>,
	<metaitem:gemExquisiteAmethyst>,
	<metaitem:gemExquisiteLapis>,
	<metaitem:gemExquisiteApatite>,
	<metaitem:gemExquisiteGarnetRed>,
	<metaitem:gemExquisiteGarnetYellow>,
	<metaitem:gemExquisiteMonazite>
	] as IItemStack[];
for item in gemExquisite {
	<ore:gemExquisite>.add(item);
}



// --- Deleting OreDictionary
// --- ProjectRed
//Copper
<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
//Tin
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
//Silver
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);
//RedAlloy
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);
// --- Forestry
//Bronze
<ore:ingotBronze>.remove(<forestry:ingot_bronze>);
//Tin
<ore:ingotTin>.remove(<forestry:ingot_tin>);
//Copper
<ore:ingotCopper>.remove(<forestry:ingot_copper>);
//Apatite
<ore:gemApatite>.remove(<forestry:apatite>);
//Bronze Block
<ore:blockBronze>.remove(<forestry:resource_storage:3>);
//Tin Block
<ore:blockTin>.remove(<forestry:resource_storage:2>);
//Copper Block
<ore:blockCopper>.remove(<forestry:resource_storage:1>);
//Apatite Block
<ore:blockApatite>.remove(<forestry:resource_storage>);
// --- TFC-Florae
//Stick
<ore:stickWood>.remove(<tfcflorae:tools/walking_stick>);
// --- Minecraft
//Sand
<ore:sand>.remove(<minecraft:sand>);
//Dirt
<ore:dirt>.remove(<minecraft:dirt>);
//Stone
<ore:stone>.remove(<minecraft:stone>);
//Gravel
<ore:gravel>.remove(<minecraft:gravel>);
//Cobblestone
<ore:cobblestone>.remove(<minecraft:cobblestone>);
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
//Nickel
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);
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

/*
        //TFG-MOD
        //Tools
        OreDictionary.registerOre("saw", MetaItems.SAW.getStackForm());
        OreDictionary.registerOre("hammer", MetaItems.HARD_HAMMER.getStackForm());
        OreDictionary.registerOre("knife", MetaItems.KNIFE.getStackForm());

        //Bronze Double Sheets
        OreDictionary.registerOre("sheetAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Bronze));
        OreDictionary.registerOre("sheetAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BismuthBronze));
        OreDictionary.registerOre("sheetAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BlackBronze));

        //Bronze Single Sheets
        OreDictionary.registerOre("sheetDoubleAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Bronze));
        OreDictionary.registerOre("sheetDoubleAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BismuthBronze));
        OreDictionary.registerOre("sheetDoubleAnyBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BlackBronze));

        //Single Sheets -> GT plates
        OreDictionary.registerOre("sheetCopper", OreDictUnifier.get(OrePrefix.plate, Materials.Copper));
        OreDictionary.registerOre("sheetBismuth", OreDictUnifier.get(OrePrefix.plate, Materials.Bismuth));
        OreDictionary.registerOre("sheetBrass", OreDictUnifier.get(OrePrefix.plate, Materials.Brass));
        OreDictionary.registerOre("sheetGold", OreDictUnifier.get(OrePrefix.plate, Materials.Gold));
        OreDictionary.registerOre("sheetLead", OreDictUnifier.get(OrePrefix.plate, Materials.Lead));
        OreDictionary.registerOre("sheetNickel", OreDictUnifier.get(OrePrefix.plate, Materials.Nickel));
        OreDictionary.registerOre("sheetRoseGold", OreDictUnifier.get(OrePrefix.plate, Materials.RoseGold));
        OreDictionary.registerOre("sheetSilver", OreDictUnifier.get(OrePrefix.plate, Materials.Silver));
        OreDictionary.registerOre("sheetTin", OreDictUnifier.get(OrePrefix.plate, Materials.Tin));
        OreDictionary.registerOre("sheetZinc", OreDictUnifier.get(OrePrefix.plate, Materials.Zinc));
        OreDictionary.registerOre("sheetSterlingSilver", OreDictUnifier.get(OrePrefix.plate, Materials.SterlingSilver));
        OreDictionary.registerOre("sheetPlatinum", OreDictUnifier.get(OrePrefix.plate, Materials.Platinum));
        OreDictionary.registerOre("sheetBismuthBronze", OreDictUnifier.get(OrePrefix.plate, Materials.BismuthBronze));
        OreDictionary.registerOre("sheetBronze", OreDictUnifier.get(OrePrefix.plate, Materials.Bronze));
        OreDictionary.registerOre("sheetBlackBronze", OreDictUnifier.get(OrePrefix.plate, Materials.BlackBronze));
        OreDictionary.registerOre("sheetWroughtIron", OreDictUnifier.get(OrePrefix.plate, Materials.WroughtIron));
        OreDictionary.registerOre("sheetSteel", OreDictUnifier.get(OrePrefix.plate, Materials.Steel));
        OreDictionary.registerOre("sheetBlackSteel", OreDictUnifier.get(OrePrefix.plate, Materials.BlackSteel));
        OreDictionary.registerOre("sheetBlueSteel", OreDictUnifier.get(OrePrefix.plate, Materials.BlueSteel));
        OreDictionary.registerOre("sheetRedSteel", OreDictUnifier.get(OrePrefix.plate, Materials.RedSteel));

        //Double Sheets -> GT plates
        OreDictionary.registerOre("sheetDoubleCopper", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Copper));
        OreDictionary.registerOre("sheetDoubleBismuth", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Bismuth));
        OreDictionary.registerOre("sheetDoubleBrass", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Brass));
        OreDictionary.registerOre("sheetDoubleGold", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Gold));
        OreDictionary.registerOre("sheetDoubleLead", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Lead));
        OreDictionary.registerOre("sheetDoubleNickel", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Nickel));
        OreDictionary.registerOre("sheetDoubleRoseGold", OreDictUnifier.get(OrePrefix.plateDouble, Materials.RoseGold));
        OreDictionary.registerOre("sheetDoubleSilver", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Silver));
        OreDictionary.registerOre("sheetDoubleTin", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Tin));
        OreDictionary.registerOre("sheetDoubleZinc", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Zinc));
        OreDictionary.registerOre("sheetDoubleSterlingSilver", OreDictUnifier.get(OrePrefix.plateDouble, Materials.SterlingSilver));
        OreDictionary.registerOre("sheetDoublePlatinum", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Platinum));
        OreDictionary.registerOre("sheetDoubleBismuthBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BismuthBronze));
        OreDictionary.registerOre("sheetDoubleBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Bronze));
        OreDictionary.registerOre("sheetDoubleBlackBronze", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BlackBronze));
        OreDictionary.registerOre("sheetDoubleWroughtIron", OreDictUnifier.get(OrePrefix.plateDouble, Materials.WroughtIron));
        OreDictionary.registerOre("sheetDoubleSteel", OreDictUnifier.get(OrePrefix.plateDouble, Materials.Steel));
        OreDictionary.registerOre("sheetDoubleBlackSteel", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BlackSteel));
        OreDictionary.registerOre("sheetDoubleBlueSteel", OreDictUnifier.get(OrePrefix.plateDouble, Materials.BlueSteel));
        OreDictionary.registerOre("sheetDoubleRedSteel", OreDictUnifier.get(OrePrefix.plateDouble, Materials.RedSteel));
		*/