import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

/*             ///Выдаем oredictionary для пород тфк///               */
//
//1 - Rock Igneus Instrusive
var GenRockII = [<tfc:raw/granite>,<tfc:raw/gabbro>,<tfc:raw/rhyolite>,<tfc:raw/diorite>] as IItemStack[];
var gen1_GenRockII = <ore:GenRockII>;
for item in GenRockII {
	gen1_GenRockII.add(item);
}
//2 - Rock Metamorfic
var GenRockMetamorf = [
<tfc:raw/marble>,
<tfc:raw/gneiss>,
<tfc:raw/schist>,
<tfc:raw/quartzite>,
<tfc:raw/phyllite>,
<tfc:raw/slate>
] as IItemStack[];
var gen2_GenRockMetamorf = <ore:GenRockMetamorf>;
for item in GenRockMetamorf {
	gen2_GenRockMetamorf.add(item);
}
//3 - Rock Sedimentary
var GenRockSedimentary = [
<tfc:raw/shale>,
<tfc:raw/dolomite>,
<tfc:raw/conglomerate>,
<tfc:raw/limestone>,
<tfc:raw/rocksalt>,
<tfc:raw/claystone>,
<tfc:raw/chert>,
<tfc:raw/chalk>
] as IItemStack[];
var gen3_GenRockSedimentary = <ore:GenRockSedimentary>;
for item in GenRockSedimentary {
	gen3_GenRockSedimentary.add(item);
}
//4 - Rock Igneus Extrusive
var GenRockIE = [<tfc:raw/basalt>,<tfc:raw/dacite>,<tfc:raw/andesite>] as IItemStack[];
var gen4_GenRockIE = <ore:GenRockIE>;
for item in GenRockIE {
	gen4_GenRockIE.add(item);
}
//Прописывание oredictionary для камней тфк
//Доломит
<ore:GenDolomite>.add(<tfc:raw/dolomite>);
//Конгломерат
<ore:GenConglomerate>.add(<tfc:raw/conglomerate>);
//Известняк
<ore:GenLimestone>.add(<tfc:raw/limestone>);
//Каменная соль
<ore:GenRocksalt>.add(<tfc:raw/rocksalt>);
//Диорит
<ore:GenDiorite>.add(<tfc:raw/diorite>);
//Гранит
<ore:GenGranite>.add(<tfc:raw/granite>);
//Сланец
<ore:GenShale>.add(<tfc:raw/shale>);
//Андезит
<ore:GenAndesite>.add(<tfc:raw/andesite>);
//Базальт
<ore:GenBasalt>.add(<tfc:raw/basalt>);
//Мрамор
<ore:GenMarble>.add(<tfc:raw/marble>);
//Габбро
<ore:GenGabbro>.add(<tfc:raw/gabbro>);
//Агриллит
<ore:GenClaystone>.add(<tfc:raw/claystone>);
//Кремнистый известняк
<ore:GenChert>.add(<tfc:raw/chert>);
//Мел
<ore:GenChalk>.add(<tfc:raw/chalk>);
//Риолит
<ore:GenRhyolite>.add(<tfc:raw/rhyolite>);
//Дацит
<ore:GenDacite>.add(<tfc:raw/dacite>);
//Квартизит
<ore:GenQuartzite>.add(<tfc:raw/quartzite>);
//Шифер
<ore:GenSlate>.add(<tfc:raw/slate>);
//Филит
<ore:GenPhyllite>.add(<tfc:raw/phyllite>);
//Аспидный сланец
<ore:GenSchist>.add(<tfc:raw/schist>);
//Гнейс
<ore:GenGneiss>.add(<tfc:raw/gneiss>);
//Андезитовый песок
<ore:GenAndesiteSand>.add(<tfc:sand/andesite>);

//Сопоставление мрамора и базальта TFC с GT
//Мрамор
<ore:stoneMarble>.add(<tfc:raw/marble>);
//Базальт
<ore:stoneBasalt>.add(<tfc:raw/basalt>);

/*             ///Убирание oredictionary у не используемых металлов///               */
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
//Minecraft iron ingot
<ore:ingotIron>.remove(<minecraft:iron_ingot>);
//Minecraft goldingot
<ore:ingotGold>.remove(<minecraft:gold_ingot>);
//Thaumcraft Brass Plate
//<ore:plateIron>.remove(<thaumcraft:plate:1>);
//Thaumcraft Iron Plate
//<ore:plateBrass>.remove(<thaumcraft:plate>);
//Minecraft emerald
<ore:gemEmerald>.remove(<minecraft:emerald>);
//Minecraft diamond
<ore:gemDiamond>.remove(<minecraft:diamond>);
//Lapis
<ore:dye>.remove(<minecraft:dye:4>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:gemLapis>.remove(<minecraft:dye:4>);
/*             ///Убирание oredictionary у не используемых руд///               */
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

/*             ///Камень из тфк в один oredictionary///               */
var TFCCrackedStoneBricksArray = [
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_granite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_diorite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_gabbro_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_shale_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_claystone_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_rocksalt_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_phyllite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_slate_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_conglomerate_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_dolomite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_chert_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_chalk_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_rhyolite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_basalt_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_andesite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_dacite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_quartzite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_granite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_basalt_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_gneiss_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_marble_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_rhyolite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_chalk_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_chert_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_schist_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_limestone_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_phyllite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_slate_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_gabbro_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_diorite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_claystone_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_shale_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_quartzite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_dacite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_andesite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_marble_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_rocksalt_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_limestone_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_dolomite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_conglomerate_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_gneiss_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_schist_0:2>
] as IItemStack[];
var TFCCSB1 = <ore:stoneCracked>;
for item in TFCCrackedStoneBricksArray {
	TFCCSB1.add(item);
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

//Молоты TFC = Молоты GT
<ore:hammer>.addAll(<ore:craftingToolHardHammer>);

//Пилы TFC = Пилы GT
<ore:saw>.addAll(<ore:craftingToolSaw>);

//Ножи TFC = Ножи GT
<ore:knife>.addAll(<ore:craftingToolKnife>);

<ore:toolCuttingboard>.add(<gregtech:meta_tool:17>.withTag({}));

//ПЕРЕРАБОТКА КОВАННОГО ЖЕЛЕЗА
<ore:ingotWroughtIron>.remove(<tfc:metal/ingot/wrought_iron>);
<ore:plateWroughtIron>.remove(<tfc:metal/sheet/wrought_iron>);
<ore:sheetWroughtIron>.remove(<tfc:metal/sheet/wrought_iron>);
<ore:dustWroughtIron>.remove(<tfc:metal/dust/wrought_iron>);
<ore:nuggetWroughtIron>.remove(<tfc:metal/nugget/wrought_iron>);