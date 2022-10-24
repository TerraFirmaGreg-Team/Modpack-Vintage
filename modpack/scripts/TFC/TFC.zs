#priority 1
# TFC

import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Initializing 'TFC'...");


// Удаление рецептов из NEI 
var items = [<tfc:powder/coke>, <tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/sulfur>, <tfc:powder/saltpeter>, <tfc:powder/hematite>, <tfc:powder/lapis_lazuli>, <tfc:powder/limonite>, <tfc:powder/malachite>, <tfc:powder/salt>, <tfc:powder/fertilizer>, <tfc:powder/charcoal>, <tfc:stick_bundle>, <tfc:metal/dust/bismuth>, <tfc:metal/dust/bismuth_bronze>, <tfc:metal/dust/black_bronze>, <tfc:metal/dust/brass>, <tfc:metal/dust/bronze>, <tfc:metal/dust/copper>, <tfc:metal/dust/gold>, <tfc:metal/dust/lead>, <tfc:metal/dust/nickel>, <tfc:metal/dust/rose_gold>, <tfc:metal/dust/silver>, <tfc:metal/dust/tin>, <tfc:metal/dust/zinc>, <tfc:metal/dust/sterling_silver>, <tfc:metal/dust/wrought_iron>, <tfc:metal/dust/pig_iron>, <tfc:metal/dust/steel>, <tfc:metal/dust/platinum>, <tfc:metal/dust/black_steel>, <tfc:metal/dust/blue_steel>, <tfc:metal/dust/red_steel>, <tfc:metal/scrap/bismuth>, <tfc:metal/scrap/bismuth_bronze>, <tfc:metal/scrap/black_bronze>, <tfc:metal/scrap/brass>, <tfc:metal/scrap/bronze>, <tfc:metal/scrap/copper>, <tfc:metal/scrap/gold>, <tfc:metal/scrap/lead>, <tfc:metal/scrap/nickel>, <tfc:metal/scrap/rose_gold>, <tfc:metal/scrap/silver>, <tfc:metal/scrap/tin>, <tfc:metal/scrap/zinc>, <tfc:metal/scrap/sterling_silver>, <tfc:metal/scrap/wrought_iron>, <tfc:metal/scrap/pig_iron>, <tfc:metal/scrap/steel>, <tfc:metal/scrap/platinum>, <tfc:metal/scrap/black_steel>, <tfc:metal/scrap/blue_steel>, <tfc:metal/scrap/red_steel>, <tfc:ore/olivine>, <tfc:ore/sylvite>, <tfc:ore/serpentine>, <tfc:ore/cryolite>, <tfc:ore/pitchblende>, <tfc:ore/microcline>, <tfc:ore/jet>, <tfc:ore/petrified_wood>, <tfc:ore/selenite>, <tfc:ore/satinspar>, <tfc:ore/satinspar/marble>, <tfc:ore/satinspar/gneiss>, <tfc:ore/satinspar/schist>, <tfc:ore/satinspar/granite>, <tfc:ore/satinspar/diorite>, <tfc:ore/satinspar/gabbro>, <tfc:ore/satinspar/shale>, <tfc:ore/satinspar/claystone>, <tfc:ore/satinspar/rocksalt>, <tfc:ore/satinspar/limestone>, <tfc:ore/satinspar/conglomerate>, <tfc:ore/satinspar/dolomite>, <tfc:ore/satinspar/chert>, <tfc:ore/satinspar/chalk>, <tfc:ore/satinspar/rhyolite>, <tfc:ore/satinspar/basalt>, <tfc:ore/satinspar/andesite>, <tfc:ore/satinspar/dacite>, <tfc:ore/satinspar/quartzite>, <tfc:ore/satinspar/slate>, <tfc:ore/satinspar/phyllite>, <tfc:ore/selenite/marble>, <tfc:ore/selenite/gneiss>, <tfc:ore/selenite/schist>, <tfc:ore/selenite/phyllite>, <tfc:ore/selenite/slate>, <tfc:ore/selenite/quartzite>, <tfc:ore/selenite/limestone>, <tfc:ore/selenite/conglomerate>, <tfc:ore/selenite/dolomite>, <tfc:ore/selenite/chert>, <tfc:ore/selenite/chalk>, <tfc:ore/selenite/rhyolite>, <tfc:ore/selenite/basalt>, <tfc:ore/selenite/andesite>, <tfc:ore/selenite/dacite>, <tfc:ore/selenite/rocksalt>, <tfc:ore/selenite/claystone>, <tfc:ore/selenite/shale>, <tfc:ore/selenite/gabbro>, <tfc:ore/selenite/diorite>, <tfc:ore/selenite/granite>, <tfc:ore/petrified_wood/granite>, <tfc:ore/petrified_wood/diorite>, <tfc:ore/petrified_wood/gabbro>, <tfc:ore/petrified_wood/shale>, <tfc:ore/petrified_wood/claystone>, <tfc:ore/petrified_wood/rocksalt>, <tfc:ore/petrified_wood/limestone>, <tfc:ore/petrified_wood/conglomerate>, <tfc:ore/petrified_wood/dolomite>, <tfc:ore/petrified_wood/chert>, <tfc:ore/petrified_wood/chalk>, <tfc:ore/petrified_wood/rhyolite>, <tfc:ore/petrified_wood/basalt>, <tfc:ore/petrified_wood/andesite>, <tfc:ore/petrified_wood/dacite>, <tfc:ore/petrified_wood/quartzite>, <tfc:ore/petrified_wood/slate>, <tfc:ore/petrified_wood/phyllite>, <tfc:ore/petrified_wood/schist>, <tfc:ore/petrified_wood/gneiss>, <tfc:ore/petrified_wood/marble>, <tfc:ore/jet/granite>, <tfc:ore/jet/diorite>, <tfc:ore/jet/gabbro>, <tfc:ore/jet/shale>, <tfc:ore/jet/claystone>, <tfc:ore/jet/rocksalt>, <tfc:ore/jet/limestone>, <tfc:ore/jet/conglomerate>, <tfc:ore/jet/dolomite>, <tfc:ore/jet/chert>, <tfc:ore/jet/chalk>, <tfc:ore/jet/rhyolite>, <tfc:ore/jet/basalt>, <tfc:ore/jet/andesite>, <tfc:ore/jet/dacite>, <tfc:ore/jet/quartzite>, <tfc:ore/jet/slate>, <tfc:ore/jet/phyllite>, <tfc:ore/jet/schist>, <tfc:ore/jet/gneiss>, <tfc:ore/jet/marble>, <tfc:ore/microcline/granite>, <tfc:ore/microcline/diorite>, <tfc:ore/microcline/gabbro>, <tfc:ore/microcline/shale>, <tfc:ore/microcline/claystone>, <tfc:ore/microcline/rocksalt>, <tfc:ore/microcline/limestone>, <tfc:ore/microcline/conglomerate>, <tfc:ore/microcline/dolomite>, <tfc:ore/microcline/chert>, <tfc:ore/microcline/chalk>, <tfc:ore/microcline/rhyolite>, <tfc:ore/microcline/basalt>, <tfc:ore/microcline/andesite>, <tfc:ore/microcline/dacite>, <tfc:ore/microcline/quartzite>, <tfc:ore/microcline/slate>, <tfc:ore/microcline/phyllite>, <tfc:ore/microcline/schist>, <tfc:ore/microcline/gneiss>, <tfc:ore/microcline/marble>, <tfc:ore/pitchblende/granite>, <tfc:ore/pitchblende/diorite>, <tfc:ore/pitchblende/gabbro>, <tfc:ore/pitchblende/shale>, <tfc:ore/pitchblende/claystone>, <tfc:ore/pitchblende/rocksalt>, <tfc:ore/pitchblende/limestone>, <tfc:ore/pitchblende/conglomerate>, <tfc:ore/pitchblende/dolomite>, <tfc:ore/pitchblende/chert>, <tfc:ore/pitchblende/chalk>, <tfc:ore/pitchblende/rhyolite>, <tfc:ore/pitchblende/basalt>, <tfc:ore/pitchblende/andesite>, <tfc:ore/pitchblende/dacite>, <tfc:ore/pitchblende/quartzite>, <tfc:ore/pitchblende/slate>, <tfc:ore/pitchblende/phyllite>, <tfc:ore/pitchblende/schist>, <tfc:ore/pitchblende/gneiss>, <tfc:ore/pitchblende/marble>, <tfc:ore/cryolite/granite>, <tfc:ore/cryolite/diorite>, <tfc:ore/cryolite/gabbro>, <tfc:ore/cryolite/shale>, <tfc:ore/cryolite/claystone>, <tfc:ore/cryolite/rocksalt>, <tfc:ore/cryolite/limestone>, <tfc:ore/cryolite/conglomerate>, <tfc:ore/cryolite/dolomite>, <tfc:ore/cryolite/chert>, <tfc:ore/cryolite/chalk>, <tfc:ore/cryolite/rhyolite>, <tfc:ore/cryolite/basalt>, <tfc:ore/cryolite/andesite>, <tfc:ore/cryolite/dacite>, <tfc:ore/cryolite/quartzite>, <tfc:ore/cryolite/slate>, <tfc:ore/cryolite/phyllite>, <tfc:ore/cryolite/schist>, <tfc:ore/cryolite/gneiss>, <tfc:ore/cryolite/marble>, <tfc:ore/serpentine/granite>, <tfc:ore/serpentine/diorite>, <tfc:ore/serpentine/gabbro>, <tfc:ore/serpentine/shale>, <tfc:ore/serpentine/claystone>, <tfc:ore/serpentine/rocksalt>, <tfc:ore/serpentine/limestone>, <tfc:ore/serpentine/conglomerate>, <tfc:ore/serpentine/dolomite>, <tfc:ore/serpentine/chert>, <tfc:ore/serpentine/chalk>, <tfc:ore/serpentine/rhyolite>, <tfc:ore/serpentine/basalt>, <tfc:ore/serpentine/andesite>, <tfc:ore/serpentine/dacite>, <tfc:ore/serpentine/quartzite>, <tfc:ore/serpentine/slate>, <tfc:ore/serpentine/phyllite>, <tfc:ore/serpentine/schist>, <tfc:ore/serpentine/gneiss>, <tfc:ore/serpentine/marble>, <tfc:ore/sylvite/granite>, <tfc:ore/sylvite/diorite>, <tfc:ore/sylvite/gabbro>, <tfc:ore/sylvite/shale>, <tfc:ore/sylvite/claystone>, <tfc:ore/sylvite/rocksalt>, <tfc:ore/sylvite/limestone>, <tfc:ore/sylvite/conglomerate>, <tfc:ore/sylvite/dolomite>, <tfc:ore/sylvite/chert>, <tfc:ore/sylvite/chalk>, <tfc:ore/sylvite/rhyolite>, <tfc:ore/sylvite/basalt>, <tfc:ore/sylvite/andesite>, <tfc:ore/sylvite/dacite>, <tfc:ore/sylvite/quartzite>, <tfc:ore/sylvite/slate>, <tfc:ore/sylvite/phyllite>, <tfc:ore/sylvite/schist>, <tfc:ore/sylvite/gneiss>, <tfc:ore/sylvite/marble>, <tfc:ore/olivine/granite>, <tfc:ore/olivine/diorite>, <tfc:ore/olivine/gabbro>, <tfc:ore/olivine/shale>, <tfc:ore/olivine/claystone>, <tfc:ore/olivine/rocksalt>, <tfc:ore/olivine/limestone>, <tfc:ore/olivine/conglomerate>, <tfc:ore/olivine/dolomite>, <tfc:ore/olivine/chert>, <tfc:ore/olivine/chalk>, <tfc:ore/olivine/rhyolite>, <tfc:ore/olivine/basalt>, <tfc:ore/olivine/andesite>, <tfc:ore/olivine/dacite>, <tfc:ore/olivine/quartzite>, <tfc:ore/olivine/slate>, <tfc:ore/olivine/phyllite>, <tfc:ore/olivine/schist>, <tfc:ore/olivine/gneiss>, <tfc:ore/olivine/marble>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}


// Удаление рецепта крафта блока лазурита по названию
recipes.removeByRecipeName("tfc:vanilla/lapis_lazuli_block");

// Удаление рецепта крафта огнива из ТФК по названию
recipes.removeByRecipeName("tfc:vanilla/flint_and_steel");

// Удаление рецепта получения стекла в костре
Heating.removeRecipe(<minecraft:glass>);

// Новый крафт ведер из ТФК
Anvil.removeRecipe(<tfc:metal/bucket/blue_steel>);
Anvil.removeRecipe(<tfc:metal/bucket/red_steel>);
Anvil.addRecipe("TFG_bucket/BlueSteel", <ore:sheetDoubleBlueSteel>, <tfc:metal/bucket/blue_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_bucket/RedSteel", <ore:sheetDoubleRedSteel>, <tfc:metal/bucket/red_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

// Получение алмаза из ТФК из кимберлита
macerator.recipeBuilder()
    .inputs(<tfc:ore/kimberlite>)
    .outputs(<tfc:gem/diamond:2>)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();

// Новый крафт огнеупорной глины
recipes.removeByRecipeName("tfc:fire_clay");
recipes.addShapeless(<tfc:ceramics/fire_clay>, 
	[<minecraft:clay_ball>, <ore:dustKaolinite>, <ore:dustGraphite>]);

// Крафт флюса с молотом грега
recipes.addShapeless(<tfc:powder/flux> * 2, 
	[<ore:rockFlux>, <ore:craftingToolHardHammerEmptyTag>]);

// Переработка оливки в центрифуге
centrifuge.recipeBuilder()
    	.inputs([<tfc:food/olive>])
	.fluidInputs([<liquid:water> * 50])
    	.outputs(<tfc:food/olive_paste> * 2)
    	.duration(5 * 20)
	.EUt(8)
	.buildAndRegister();

// Добавление рецептов дробления руды в ручную мельницу
// Графит
Quern.addRecipe("TFG_dustGraphite_1", <ore:gemGraphite>, <gregtech:meta_dust:341>);
Quern.addRecipe("TFG_dustGraphite_2", <gregtech:meta_crushed:341>, <gregtech:meta_dust_impure:341>);
Quern.addRecipe("TFG_dustGraphite_3", <gregtech:meta_crushed_purified:341>, <gregtech:meta_dust_pure:341>);
// Гипс
Quern.addRecipe("TFG_dustGypsum_1", <ore:gemGypsum>, <gregtech:meta_dust:2032>);
Quern.addRecipe("TFG_dustGypsum_2", <ore:crushedGypsum>, <gregtech:meta_dust_impure:2032>);
Quern.addRecipe("TFG_dustGypsum_3", <ore:crushedPurifiedGypsum>, <gregtech:meta_dust_pure:2032>);
// Сера
Quern.addRecipe("TFG_dustSulfur_1", <ore:gemSulfur>, <gregtech:meta_dust:103>);
Quern.addRecipe("TFG_dustSulfur_2", <ore:crushedSulfur>, <gregtech:meta_dust_impure:103>);
Quern.addRecipe("TFG_dustSulfur_3", <ore:crushedPurifiedSulfur>, <gregtech:meta_dust_pure:103>);
// Селитра
Quern.addRecipe("TFG_dustSaltpeter_1", <ore:gemSaltpeter>, <gregtech:meta_dust:313>);
Quern.addRecipe("TFG_dustSaltpeter_2", <ore:crushedSaltpeter>, <gregtech:meta_dust_impure:313>);
Quern.addRecipe("TFG_dustSaltpeter_3", <ore:crushedPurifiedSaltpeter>, <gregtech:meta_dust_pure:313>);
// Уголь
Quern.addRecipe("TFG_dustCoal_1", <ore:gemCoal>, <gregtech:meta_dust:271>);
Quern.addRecipe("TFG_dustCoal_2", <ore:gemLignite>, <gregtech:meta_dust:271>);
// Древесный уголь
Quern.addRecipe("TFG_dustCharcoal_1", <ore:gemCharcoal>, <gregtech:meta_dust:266>);
// Соль
Quern.addRecipe("TFG_dustSalt_1", <tfc:raw/rocksalt>, <gregtech:meta_dust:312>);
Quern.addRecipe("TFG_dustSalt_2", <tfc:cobble/rocksalt>, <gregtech:meta_dust:312>);
Quern.addRecipe("TFG_dustSalt_3", <tfc:rock/rocksalt>, <gregtech:meta_dust_small:312>);
// Каолинит
Quern.addRecipe("TFG_dustKaolinite_1", <ore:gemKaolinite>, <gregtech:meta_dust:3120>);
// Редстоун
Quern.addRecipe("TFG_dustRedstone_1", <ore:crushedRedstone>, <gregtech:meta_dust_impure:2064>);
Quern.addRecipe("TFG_dustRedstone_2", <ore:crushedPurifiedRedstone>, <gregtech:meta_dust_pure:2064>);

// Удаление некоторых рецептов из ручной мельницы
Quern.removeRecipe(<minecraft:redstone>);
Quern.removeRecipe(<tfc:powder/charcoal>);
Quern.removeRecipe(<tfc:powder/salt>);
Quern.removeRecipe(<tfc:ore/gypsum>);
Quern.removeRecipe(<tfc:powder/graphite>);
Quern.removeRecipe(<tfc:powder/sulfur>);
Quern.removeRecipe(<tfc:powder/saltpeter>);
Quern.removeRecipe(<tfc:powder/lapis_lazuli>);
Quern.removeRecipe(<tfc:powder/kaolinite>);
Quern.removeRecipe(<tfc:powder/malachite>);

// Получение бумаги в бочке
Barrel.addRecipe("TFG_paper_1", <ore:dustPaper> * 3, <liquid:hot_water> * 500, <minecraft:paper> * 2, 1);
Barrel.addRecipe("TFG_paper_2", <ore:dustPaper> * 3, <liquid:fresh_water> * 500, <minecraft:paper> * 2, 8);

// Преобразование дробленой руды в очищенную руду в бочке с чистой водой
Barrel.addRecipe("TFG_purified_ore_1", <ore:crushedAluminium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2>, 0);
Barrel.addRecipe("TFG_purified_ore_2", <ore:crushedBeryllium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:10>, 0);
Barrel.addRecipe("TFG_purified_ore_3", <ore:crushedBismuth>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:11>, 0);
Barrel.addRecipe("TFG_purified_ore_4", <ore:crushedCobalt>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:23>, 0);
Barrel.addRecipe("TFG_purified_ore_5", <ore:crushedCopper>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:25>, 0);
Barrel.addRecipe("TFG_purified_ore_6", <ore:crushedGold>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:41>, 0);
Barrel.addRecipe("TFG_purified_ore_7", <ore:crushedIron>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:51>, 0);
Barrel.addRecipe("TFG_purified_ore_8", <ore:crushedLead>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:55>, 0);
Barrel.addRecipe("TFG_purified_ore_9", <ore:crushedLithium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:56>, 0);
Barrel.addRecipe("TFG_purified_ore_10", <ore:crushedMolybdenum>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:64>, 0);
Barrel.addRecipe("TFG_purified_ore_11", <ore:crushedNeodymium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:66>, 0);
Barrel.addRecipe("TFG_purified_ore_12", <ore:crushedNickel>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:69>, 0);
Barrel.addRecipe("TFG_purified_ore_13", <ore:crushedPalladium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:77>, 0);
Barrel.addRecipe("TFG_purified_ore_14", <ore:crushedPlatinum>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:80>, 0);
Barrel.addRecipe("TFG_purified_ore_15", <ore:crushedPlutonium239>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:81>, 0);
Barrel.addRecipe("TFG_purified_ore_16", <ore:crushedSilver>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:100>, 0);
Barrel.addRecipe("TFG_purified_ore_17", <ore:crushedSulfur>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:103>, 0);
Barrel.addRecipe("TFG_purified_ore_18", <ore:crushedThorium>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:109>, 0);
Barrel.addRecipe("TFG_purified_ore_19", <ore:crushedTin>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:112>, 0);
Barrel.addRecipe("TFG_purified_ore_20", <ore:crushedNaquadah>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:124>, 0);
Barrel.addRecipe("TFG_purified_ore_21", <ore:crushedCertusQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:214>, 0);
Barrel.addRecipe("TFG_purified_ore_22", <ore:crushedAlmandine>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:250>, 0);
Barrel.addRecipe("TFG_purified_ore_23", <ore:crushedAsbestos>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:253>, 0);
Barrel.addRecipe("TFG_purified_ore_24", <ore:crushedBandedIron>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:255>, 0);
Barrel.addRecipe("TFG_purified_ore_25", <ore:crushedBlueTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:257>, 0);
Barrel.addRecipe("TFG_purified_ore_26", <ore:crushedBrownLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:261>, 0);
Barrel.addRecipe("TFG_purified_ore_27", <ore:crushedCalcite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:262>, 0);
Barrel.addRecipe("TFG_purified_ore_28", <ore:crushedCassiterite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:263>, 0);
Barrel.addRecipe("TFG_purified_ore_29", <ore:crushedCassiteriteSand>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:264>, 0);
Barrel.addRecipe("TFG_purified_ore_30", <ore:crushedChalcopyrite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:265>, 0);
Barrel.addRecipe("TFG_purified_ore_31", <ore:crushedChromite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:267>, 0);
Barrel.addRecipe("TFG_purified_ore_32", <ore:crushedCinnabar>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:268>, 0);
Barrel.addRecipe("TFG_purified_ore_33", <ore:crushedCoal>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:271>, 0);
Barrel.addRecipe("TFG_purified_ore_34", <ore:crushedCobaltite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:272>, 0);
Barrel.addRecipe("TFG_purified_ore_35", <ore:crushedCooperite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:273>, 0);
Barrel.addRecipe("TFG_purified_ore_36", <ore:crushedDiamond>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:276>, 0);
Barrel.addRecipe("TFG_purified_ore_37", <ore:crushedEmerald>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:278>, 0);
Barrel.addRecipe("TFG_purified_ore_38", <ore:crushedGalena>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:279>, 0);
Barrel.addRecipe("TFG_purified_ore_39", <ore:crushedGarnierite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:280>, 0);
Barrel.addRecipe("TFG_purified_ore_40", <ore:crushedGreenSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:281>, 0);
Barrel.addRecipe("TFG_purified_ore_41", <ore:crushedGrossular>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:282>, 0);
Barrel.addRecipe("TFG_purified_ore_42", <ore:crushedIlmenite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:284>, 0);
Barrel.addRecipe("TFG_purified_ore_43", <ore:crushedBauxite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:286>, 0);
Barrel.addRecipe("TFG_purified_ore_44", <ore:crushedLazurite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:289>, 0);
Barrel.addRecipe("TFG_purified_ore_45", <ore:crushedMagnesite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:291>, 0);
Barrel.addRecipe("TFG_purified_ore_46", <ore:crushedMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:292>, 0);
Barrel.addRecipe("TFG_purified_ore_47", <ore:crushedMolybdenite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:293>, 0);
Barrel.addRecipe("TFG_purified_ore_48", <ore:crushedPowellite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:305>, 0);
Barrel.addRecipe("TFG_purified_ore_49", <ore:crushedPyrite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:306>, 0);
Barrel.addRecipe("TFG_purified_ore_50", <ore:crushedPyrolusite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:307>, 0);
Barrel.addRecipe("TFG_purified_ore_51", <ore:crushedPyrope>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:308>, 0);
Barrel.addRecipe("TFG_purified_ore_52", <ore:crushedRockSalt>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:309>, 0);
Barrel.addRecipe("TFG_purified_ore_53", <ore:crushedRuby>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:311>, 0);
Barrel.addRecipe("TFG_purified_ore_54", <ore:crushedSalt>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:312>, 0);
Barrel.addRecipe("TFG_purified_ore_55", <ore:crushedSaltpeter>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:313>, 0);
Barrel.addRecipe("TFG_purified_ore_56", <ore:crushedSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:314>, 0);
Barrel.addRecipe("TFG_purified_ore_57", <ore:crushedScheelite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:315>, 0);
Barrel.addRecipe("TFG_purified_ore_58", <ore:crushedSodalite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:316>, 0);
Barrel.addRecipe("TFG_purified_ore_59", <ore:crushedTantalite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:318>, 0);
Barrel.addRecipe("TFG_purified_ore_60", <ore:crushedSpessartine>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:321>, 0);
Barrel.addRecipe("TFG_purified_ore_61", <ore:crushedSphalerite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:322>, 0);
Barrel.addRecipe("TFG_purified_ore_62", <ore:crushedStibnite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:325>, 0);
Barrel.addRecipe("TFG_purified_ore_63", <ore:crushedTetrahedrite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:327>, 0);
Barrel.addRecipe("TFG_purified_ore_64", <ore:crushedTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:329>, 0);
Barrel.addRecipe("TFG_purified_ore_65", <ore:crushedTungstate>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:330>, 0);
Barrel.addRecipe("TFG_purified_ore_66", <ore:crushedUraninite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:332>, 0);
Barrel.addRecipe("TFG_purified_ore_67", <ore:crushedWulfenite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:336>, 0);
Barrel.addRecipe("TFG_purified_ore_68", <ore:crushedYellowLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:337>, 0);
Barrel.addRecipe("TFG_purified_ore_69", <ore:crushedNetherQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:339>, 0);
Barrel.addRecipe("TFG_purified_ore_70", <ore:crushedQuartzite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:340>, 0);
Barrel.addRecipe("TFG_purified_ore_71", <ore:crushedGraphite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:341>, 0);
Barrel.addRecipe("TFG_purified_ore_72", <ore:crushedBornite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:347>, 0);
Barrel.addRecipe("TFG_purified_ore_73", <ore:crushedChalcocite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:348>, 0);
Barrel.addRecipe("TFG_purified_ore_74", <ore:crushedRealgar>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:365>, 0);
Barrel.addRecipe("TFG_purified_ore_75", <ore:crushedBastnasite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:379>, 0);
Barrel.addRecipe("TFG_purified_ore_76", <ore:crushedPentlandite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:380>, 0);
Barrel.addRecipe("TFG_purified_ore_77", <ore:crushedSpodumene>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:381>, 0);
Barrel.addRecipe("TFG_purified_ore_78", <ore:crushedLepidolite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:382>, 0);
Barrel.addRecipe("TFG_purified_ore_79", <ore:crushedGlauconiteSand>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:384>, 0);
Barrel.addRecipe("TFG_purified_ore_80", <ore:crushedMalachite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:385>, 0);
Barrel.addRecipe("TFG_purified_ore_81", <ore:crushedMica>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:386>, 0);
Barrel.addRecipe("TFG_purified_ore_82", <ore:crushedBarite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:387>, 0);
Barrel.addRecipe("TFG_purified_ore_83", <ore:crushedAlunite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:388>, 0);
Barrel.addRecipe("TFG_purified_ore_84", <ore:crushedTalc>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:392>, 0);
Barrel.addRecipe("TFG_purified_ore_85", <ore:crushedSoapstone>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:393>, 0);
Barrel.addRecipe("TFG_purified_ore_86", <ore:crushedKyanite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:394>, 0);
Barrel.addRecipe("TFG_purified_ore_87", <ore:crushedPyrochlore>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:449>, 0);
Barrel.addRecipe("TFG_purified_ore_88", <ore:crushedOilsands>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:1597>, 0);
Barrel.addRecipe("TFG_purified_ore_89", <ore:crushedGlowstone>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:1601>, 0);
Barrel.addRecipe("TFG_purified_ore_90", <ore:crushedOlivine>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2004>, 0);
Barrel.addRecipe("TFG_purified_ore_91", <ore:crushedOpal>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2005>, 0);
Barrel.addRecipe("TFG_purified_ore_92", <ore:crushedAmethyst>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2006>, 0);
Barrel.addRecipe("TFG_purified_ore_93", <ore:crushedLapis>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2007>, 0);
Barrel.addRecipe("TFG_purified_ore_94", <ore:crushedApatite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2010>, 0);
Barrel.addRecipe("TFG_purified_ore_95", <ore:crushedTricalciumPhosphate>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2015>, 0);
Barrel.addRecipe("TFG_purified_ore_96", <ore:crushedGarnetRed>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2016>, 0);
Barrel.addRecipe("TFG_purified_ore_97", <ore:crushedGarnetYellow>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2017>, 0);
Barrel.addRecipe("TFG_purified_ore_98", <ore:crushedVanadiumMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2022>, 0);
Barrel.addRecipe("TFG_purified_ore_99", <ore:crushedPollucite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2024>, 0);
Barrel.addRecipe("TFG_purified_ore_100", <ore:crushedBentonite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2026>, 0);
Barrel.addRecipe("TFG_purified_ore_101", <ore:crushedFullersEarth>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2027>, 0);
Barrel.addRecipe("TFG_purified_ore_102", <ore:crushedPitchblende>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2028>, 0);
Barrel.addRecipe("TFG_purified_ore_103", <ore:crushedMonazite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2029>, 0);
Barrel.addRecipe("TFG_purified_ore_104", <ore:crushedTrona>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2031>, 0);
Barrel.addRecipe("TFG_purified_ore_105", <ore:crushedGypsum>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2032>, 0);
Barrel.addRecipe("TFG_purified_ore_106", <ore:crushedZeolite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2033>, 0);
Barrel.addRecipe("TFG_purified_ore_107", <ore:crushedRedstone>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2064>, 0);
Barrel.addRecipe("TFG_purified_ore_108", <ore:crushedElectrotine>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2507>, 0);
Barrel.addRecipe("TFG_purified_ore_109", <ore:crushedDiatomite>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2509>, 0);
Barrel.addRecipe("TFG_purified_ore_110", <ore:crushedGraniticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2513>, 0);
Barrel.addRecipe("TFG_purified_ore_111", <ore:crushedGarnetSand>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2515>, 0);
Barrel.addRecipe("TFG_purified_ore_112", <ore:crushedBasalticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_crushed_purified:2518>, 0);

// Преобразование грязных кучек пыли в очищенные кучки пыли в бочке с чистой водой
Barrel.addRecipe("TFG_pure_dust_1", <ore:dustImpureAluminium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2>, 0);
Barrel.addRecipe("TFG_pure_dust_2", <ore:dustImpureBeryllium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:10>, 0);
Barrel.addRecipe("TFG_pure_dust_3", <ore:dustImpureBismuth>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:11>, 0);
Barrel.addRecipe("TFG_pure_dust_4", <ore:dustImpureCobalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:23>, 0);
Barrel.addRecipe("TFG_pure_dust_5", <ore:dustImpureCopper>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:25>, 0);
Barrel.addRecipe("TFG_pure_dust_6", <ore:dustImpureGold>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:41>, 0);
Barrel.addRecipe("TFG_pure_dust_7", <ore:dustImpureIron>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:51>, 0);
Barrel.addRecipe("TFG_pure_dust_8", <ore:dustImpureLead>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:55>, 0);
Barrel.addRecipe("TFG_pure_dust_9", <ore:dustImpureLithium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:56>, 0);
Barrel.addRecipe("TFG_pure_dust_10", <ore:dustImpureMolybdenum>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:64>, 0);
Barrel.addRecipe("TFG_pure_dust_11", <ore:dustImpureNeodymium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:66>, 0);
Barrel.addRecipe("TFG_pure_dust_12", <ore:dustImpureNickel>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:69>, 0);
Barrel.addRecipe("TFG_pure_dust_13", <ore:dustImpurePalladium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:77>, 0);
Barrel.addRecipe("TFG_pure_dust_14", <ore:dustImpurePlatinum>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:80>, 0);
Barrel.addRecipe("TFG_pure_dust_15", <ore:dustImpurePlutonium239>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:81>, 0);
Barrel.addRecipe("TFG_pure_dust_16", <ore:dustImpureSilver>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:100>, 0);
Barrel.addRecipe("TFG_pure_dust_17", <ore:dustImpureSulfur>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:103>, 0);
Barrel.addRecipe("TFG_pure_dust_18", <ore:dustImpureThorium>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:109>, 0);
Barrel.addRecipe("TFG_pure_dust_19", <ore:dustImpureTin>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:112>, 0);
Barrel.addRecipe("TFG_pure_dust_20", <ore:dustImpureNaquadah>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:124>, 0);
Barrel.addRecipe("TFG_pure_dust_21", <ore:dustImpureCertusQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:214>, 0);
Barrel.addRecipe("TFG_pure_dust_22", <ore:dustImpureAlmandine>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:250>, 0);
Barrel.addRecipe("TFG_pure_dust_23", <ore:dustImpureAsbestos>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:253>, 0);
Barrel.addRecipe("TFG_pure_dust_24", <ore:dustImpureBandedIron>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:255>, 0);
Barrel.addRecipe("TFG_pure_dust_25", <ore:dustImpureBlueTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:257>, 0);
Barrel.addRecipe("TFG_pure_dust_26", <ore:dustImpureBrownLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:261>, 0);
Barrel.addRecipe("TFG_pure_dust_27", <ore:dustImpureCalcite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:262>, 0);
Barrel.addRecipe("TFG_pure_dust_28", <ore:dustImpureCassiterite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:263>, 0);
Barrel.addRecipe("TFG_pure_dust_29", <ore:dustImpureCassiteriteSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:264>, 0);
Barrel.addRecipe("TFG_pure_dust_30", <ore:dustImpureChalcopyrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:265>, 0);
Barrel.addRecipe("TFG_pure_dust_31", <ore:dustImpureChromite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:267>, 0);
Barrel.addRecipe("TFG_pure_dust_32", <ore:dustImpureCinnabar>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:268>, 0);
Barrel.addRecipe("TFG_pure_dust_33", <ore:dustImpureCoal>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:271>, 0);
Barrel.addRecipe("TFG_pure_dust_34", <ore:dustImpureCobaltite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:272>, 0);
Barrel.addRecipe("TFG_pure_dust_35", <ore:dustImpureCooperite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:273>, 0);
Barrel.addRecipe("TFG_pure_dust_36", <ore:dustImpureDiamond>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:276>, 0);
Barrel.addRecipe("TFG_pure_dust_37", <ore:dustImpureEmerald>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:278>, 0);
Barrel.addRecipe("TFG_pure_dust_38", <ore:dustImpureGalena>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:279>, 0);
Barrel.addRecipe("TFG_pure_dust_39", <ore:dustImpureGarnierite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:280>, 0);
Barrel.addRecipe("TFG_pure_dust_40", <ore:dustImpureGreenSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:281>, 0);
Barrel.addRecipe("TFG_pure_dust_41", <ore:dustImpureGrossular>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:282>, 0);
Barrel.addRecipe("TFG_pure_dust_42", <ore:dustImpureIlmenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:284>, 0);
Barrel.addRecipe("TFG_pure_dust_43", <ore:dustImpureBauxite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:286>, 0);
Barrel.addRecipe("TFG_pure_dust_44", <ore:dustImpureLazurite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:289>, 0);
Barrel.addRecipe("TFG_pure_dust_45", <ore:dustImpureMagnesite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:291>, 0);
Barrel.addRecipe("TFG_pure_dust_46", <ore:dustImpureMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:292>, 0);
Barrel.addRecipe("TFG_pure_dust_47", <ore:dustImpureMolybdenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:293>, 0);
Barrel.addRecipe("TFG_pure_dust_48", <ore:dustImpurePowellite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:305>, 0);
Barrel.addRecipe("TFG_pure_dust_49", <ore:dustImpurePyrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:306>, 0);
Barrel.addRecipe("TFG_pure_dust_50", <ore:dustImpurePyrolusite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:307>, 0);
Barrel.addRecipe("TFG_pure_dust_51", <ore:dustImpurePyrope>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:308>, 0);
Barrel.addRecipe("TFG_pure_dust_52", <ore:dustImpureRockSalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:309>, 0);
Barrel.addRecipe("TFG_pure_dust_53", <ore:dustImpureRuby>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:311>, 0);
Barrel.addRecipe("TFG_pure_dust_54", <ore:dustImpureSalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:312>, 0);
Barrel.addRecipe("TFG_pure_dust_55", <ore:dustImpureSaltpeter>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:313>, 0);
Barrel.addRecipe("TFG_pure_dust_56", <ore:dustImpureSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:314>, 0);
Barrel.addRecipe("TFG_pure_dust_57", <ore:dustImpureScheelite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:315>, 0);
Barrel.addRecipe("TFG_pure_dust_58", <ore:dustImpureSodalite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:316>, 0);
Barrel.addRecipe("TFG_pure_dust_59", <ore:dustImpureTantalite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:318>, 0);
Barrel.addRecipe("TFG_pure_dust_60", <ore:dustImpureSpessartine>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:321>, 0);
Barrel.addRecipe("TFG_pure_dust_61", <ore:dustImpureSphalerite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:322>, 0);
Barrel.addRecipe("TFG_pure_dust_62", <ore:dustImpureStibnite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:325>, 0);
Barrel.addRecipe("TFG_pure_dust_63", <ore:dustImpureTetrahedrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:327>, 0);
Barrel.addRecipe("TFG_pure_dust_64", <ore:dustImpureTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:329>, 0);
Barrel.addRecipe("TFG_pure_dust_65", <ore:dustImpureTungstate>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:330>, 0);
Barrel.addRecipe("TFG_pure_dust_66", <ore:dustImpureUraninite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:332>, 0);
Barrel.addRecipe("TFG_pure_dust_67", <ore:dustImpureWulfenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:336>, 0);
Barrel.addRecipe("TFG_pure_dust_68", <ore:dustImpureYellowLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:337>, 0);
Barrel.addRecipe("TFG_pure_dust_69", <ore:dustImpureNetherQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:339>, 0);
Barrel.addRecipe("TFG_pure_dust_70", <ore:dustImpureQuartzite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:340>, 0);
Barrel.addRecipe("TFG_pure_dust_71", <ore:dustImpureGraphite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:341>, 0);
Barrel.addRecipe("TFG_pure_dust_72", <ore:dustImpureBornite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:347>, 0);
Barrel.addRecipe("TFG_pure_dust_73", <ore:dustImpureChalcocite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:348>, 0);
Barrel.addRecipe("TFG_pure_dust_74", <ore:dustImpureRealgar>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:365>, 0);
Barrel.addRecipe("TFG_pure_dust_75", <ore:dustImpureBastnasite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:379>, 0);
Barrel.addRecipe("TFG_pure_dust_76", <ore:dustImpurePentlandite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:380>, 0);
Barrel.addRecipe("TFG_pure_dust_77", <ore:dustImpureSpodumene>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:381>, 0);
Barrel.addRecipe("TFG_pure_dust_78", <ore:dustImpureLepidolite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:382>, 0);
Barrel.addRecipe("TFG_pure_dust_79", <ore:dustImpureGlauconiteSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:384>, 0);
Barrel.addRecipe("TFG_pure_dust_80", <ore:dustImpureMalachite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:385>, 0);
Barrel.addRecipe("TFG_pure_dust_81", <ore:dustImpureMica>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:386>, 0);
Barrel.addRecipe("TFG_pure_dust_82", <ore:dustImpureBarite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:387>, 0);
Barrel.addRecipe("TFG_pure_dust_83", <ore:dustImpureAlunite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:388>, 0);
Barrel.addRecipe("TFG_pure_dust_84", <ore:dustImpureTalc>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:392>, 0);
Barrel.addRecipe("TFG_pure_dust_85", <ore:dustImpureSoapstone>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:393>, 0);
Barrel.addRecipe("TFG_pure_dust_86", <ore:dustImpureKyanite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:394>, 0);
Barrel.addRecipe("TFG_pure_dust_87", <ore:dustImpurePyrochlore>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:449>, 0);
Barrel.addRecipe("TFG_pure_dust_88", <ore:dustImpureOilsands>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:1597>, 0);
Barrel.addRecipe("TFG_pure_dust_89", <ore:dustImpureGlowstone>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:1601>, 0);
Barrel.addRecipe("TFG_pure_dust_90", <ore:dustImpureOlivine>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2004>, 0);
Barrel.addRecipe("TFG_pure_dust_91", <ore:dustImpureOpal>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2005>, 0);
Barrel.addRecipe("TFG_pure_dust_92", <ore:dustImpureAmethyst>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2006>, 0);
Barrel.addRecipe("TFG_pure_dust_93", <ore:dustImpureLapis>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2007>, 0);
Barrel.addRecipe("TFG_pure_dust_94", <ore:dustImpureApatite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2010>, 0);
Barrel.addRecipe("TFG_pure_dust_95", <ore:dustImpureTricalciumPhosphate>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2015>, 0);
Barrel.addRecipe("TFG_pure_dust_96", <ore:dustImpureGarnetRed>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2016>, 0);
Barrel.addRecipe("TFG_pure_dust_97", <ore:dustImpureGarnetYellow>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2017>, 0);
Barrel.addRecipe("TFG_pure_dust_98", <ore:dustImpureVanadiumMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2022>, 0);
Barrel.addRecipe("TFG_pure_dust_99", <ore:dustImpurePollucite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2024>, 0);
Barrel.addRecipe("TFG_pure_dust_100", <ore:dustImpureBentonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2026>, 0);
Barrel.addRecipe("TFG_pure_dust_101", <ore:dustImpureFullersEarth>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2027>, 0);
Barrel.addRecipe("TFG_pure_dust_102", <ore:dustImpurePitchblende>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2028>, 0);
Barrel.addRecipe("TFG_pure_dust_103", <ore:dustImpureMonazite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2029>, 0);
Barrel.addRecipe("TFG_pure_dust_104", <ore:dustImpureTrona>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2031>, 0);
Barrel.addRecipe("TFG_pure_dust_105", <ore:dustImpureGypsum>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2032>, 0);
Barrel.addRecipe("TFG_pure_dust_106", <ore:dustImpureZeolite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2033>, 0);
Barrel.addRecipe("TFG_pure_dust_107", <ore:dustImpureRedstone>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2064>, 0);
Barrel.addRecipe("TFG_pure_dust_108", <ore:dustImpureElectrotine>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2507>, 0);
Barrel.addRecipe("TFG_pure_dust_109", <ore:dustImpureDiatomite>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2509>, 0);
Barrel.addRecipe("TFG_pure_dust_110", <ore:dustImpureGraniticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2513>, 0);
Barrel.addRecipe("TFG_pure_dust_111", <ore:dustImpureGarnetSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2515>, 0);
Barrel.addRecipe("TFG_pure_dust_112", <ore:dustImpureBasalticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust_pure:2518>, 0);

// Преобразование очищенных кучек пыли в кучки пыли в бочке с чистой водой
Barrel.addRecipe("TFG_dust_1", <ore:dustPureAluminium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2>, 0);
Barrel.addRecipe("TFG_dust_2", <ore:dustPureBeryllium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:10>, 0);
Barrel.addRecipe("TFG_dust_3", <ore:dustPureBismuth>, <liquid:fresh_water> * 500, <gregtech:meta_dust:11>, 0);
Barrel.addRecipe("TFG_dust_4", <ore:dustPureCobalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust:23>, 0);
Barrel.addRecipe("TFG_dust_5", <ore:dustPureCopper>, <liquid:fresh_water> * 500, <gregtech:meta_dust:25>, 0);
Barrel.addRecipe("TFG_dust_6", <ore:dustPureGold>, <liquid:fresh_water> * 500, <gregtech:meta_dust:41>, 0);
Barrel.addRecipe("TFG_dust_7", <ore:dustPureIron>, <liquid:fresh_water> * 500, <gregtech:meta_dust:51>, 0);
Barrel.addRecipe("TFG_dust_8", <ore:dustPureLead>, <liquid:fresh_water> * 500, <gregtech:meta_dust:55>, 0);
Barrel.addRecipe("TFG_dust_9", <ore:dustPureLithium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:56>, 0);
Barrel.addRecipe("TFG_dust_10", <ore:dustPureMolybdenum>, <liquid:fresh_water> * 500, <gregtech:meta_dust:64>, 0);
Barrel.addRecipe("TFG_dust_11", <ore:dustPureNeodymium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:66>, 0);
Barrel.addRecipe("TFG_dust_12", <ore:dustPureNickel>, <liquid:fresh_water> * 500, <gregtech:meta_dust:69>, 0);
Barrel.addRecipe("TFG_dust_13", <ore:dustPurePalladium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:77>, 0);
Barrel.addRecipe("TFG_dust_14", <ore:dustPurePlatinum>, <liquid:fresh_water> * 500, <gregtech:meta_dust:80>, 0);
Barrel.addRecipe("TFG_dust_15", <ore:dustPurePlutonium239>, <liquid:fresh_water> * 500, <gregtech:meta_dust:81>, 0);
Barrel.addRecipe("TFG_dust_16", <ore:dustPureSilver>, <liquid:fresh_water> * 500, <gregtech:meta_dust:100>, 0);
Barrel.addRecipe("TFG_dust_17", <ore:dustPureSulfur>, <liquid:fresh_water> * 500, <gregtech:meta_dust:103>, 0);
Barrel.addRecipe("TFG_dust_18", <ore:dustPureThorium>, <liquid:fresh_water> * 500, <gregtech:meta_dust:109>, 0);
Barrel.addRecipe("TFG_dust_19", <ore:dustPureTin>, <liquid:fresh_water> * 500, <gregtech:meta_dust:112>, 0);
Barrel.addRecipe("TFG_dust_20", <ore:dustPureNaquadah>, <liquid:fresh_water> * 500, <gregtech:meta_dust:124>, 0);
Barrel.addRecipe("TFG_dust_21", <ore:dustPureCertusQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_dust:214>, 0);
Barrel.addRecipe("TFG_dust_22", <ore:dustPureAlmandine>, <liquid:fresh_water> * 500, <gregtech:meta_dust:250>, 0);
Barrel.addRecipe("TFG_dust_23", <ore:dustPureAsbestos>, <liquid:fresh_water> * 500, <gregtech:meta_dust:253>, 0);
Barrel.addRecipe("TFG_dust_24", <ore:dustPureBandedIron>, <liquid:fresh_water> * 500, <gregtech:meta_dust:255>, 0);
Barrel.addRecipe("TFG_dust_25", <ore:dustPureBlueTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_dust:257>, 0);
Barrel.addRecipe("TFG_dust_26", <ore:dustPureBrownLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:261>, 0);
Barrel.addRecipe("TFG_dust_27", <ore:dustPureCalcite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:262>, 0);
Barrel.addRecipe("TFG_dust_28", <ore:dustPureCassiterite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:263>, 0);
Barrel.addRecipe("TFG_dust_29", <ore:dustPureCassiteriteSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust:264>, 0);
Barrel.addRecipe("TFG_dust_30", <ore:dustPureChalcopyrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:265>, 0);
Barrel.addRecipe("TFG_dust_31", <ore:dustPureChromite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:267>, 0);
Barrel.addRecipe("TFG_dust_32", <ore:dustPureCinnabar>, <liquid:fresh_water> * 500, <gregtech:meta_dust:268>, 0);
Barrel.addRecipe("TFG_dust_33", <ore:dustPureCoal>, <liquid:fresh_water> * 500, <gregtech:meta_dust:271>, 0);
Barrel.addRecipe("TFG_dust_34", <ore:dustPureCobaltite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:272>, 0);
Barrel.addRecipe("TFG_dust_35", <ore:dustPureCooperite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:273>, 0);
Barrel.addRecipe("TFG_dust_36", <ore:dustPureDiamond>, <liquid:fresh_water> * 500, <gregtech:meta_dust:276>, 0);
Barrel.addRecipe("TFG_dust_37", <ore:dustPureEmerald>, <liquid:fresh_water> * 500, <gregtech:meta_dust:278>, 0);
Barrel.addRecipe("TFG_dust_38", <ore:dustPureGalena>, <liquid:fresh_water> * 500, <gregtech:meta_dust:279>, 0);
Barrel.addRecipe("TFG_dust_39", <ore:dustPureGarnierite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:280>, 0);
Barrel.addRecipe("TFG_dust_40", <ore:dustPureGreenSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_dust:281>, 0);
Barrel.addRecipe("TFG_dust_41", <ore:dustPureGrossular>, <liquid:fresh_water> * 500, <gregtech:meta_dust:282>, 0);
Barrel.addRecipe("TFG_dust_42", <ore:dustPureIlmenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:284>, 0);
Barrel.addRecipe("TFG_dust_43", <ore:dustPureBauxite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:286>, 0);
Barrel.addRecipe("TFG_dust_44", <ore:dustPureLazurite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:289>, 0);
Barrel.addRecipe("TFG_dust_45", <ore:dustPureMagnesite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:291>, 0);
Barrel.addRecipe("TFG_dust_46", <ore:dustPureMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:292>, 0);
Barrel.addRecipe("TFG_dust_47", <ore:dustPureMolybdenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:293>, 0);
Barrel.addRecipe("TFG_dust_48", <ore:dustPurePowellite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:305>, 0);
Barrel.addRecipe("TFG_dust_49", <ore:dustPurePyrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:306>, 0);
Barrel.addRecipe("TFG_dust_50", <ore:dustPurePyrolusite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:307>, 0);
Barrel.addRecipe("TFG_dust_51", <ore:dustPurePyrope>, <liquid:fresh_water> * 500, <gregtech:meta_dust:308>, 0);
Barrel.addRecipe("TFG_dust_52", <ore:dustPureRockSalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust:309>, 0);
Barrel.addRecipe("TFG_dust_53", <ore:dustPureRuby>, <liquid:fresh_water> * 500, <gregtech:meta_dust:311>, 0);
Barrel.addRecipe("TFG_dust_54", <ore:dustPureSalt>, <liquid:fresh_water> * 500, <gregtech:meta_dust:312>, 0);
Barrel.addRecipe("TFG_dust_55", <ore:dustPureSaltpeter>, <liquid:fresh_water> * 500, <gregtech:meta_dust:313>, 0);
Barrel.addRecipe("TFG_dust_56", <ore:dustPureSapphire>, <liquid:fresh_water> * 500, <gregtech:meta_dust:314>, 0);
Barrel.addRecipe("TFG_dust_57", <ore:dustPureScheelite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:315>, 0);
Barrel.addRecipe("TFG_dust_58", <ore:dustPureSodalite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:316>, 0);
Barrel.addRecipe("TFG_dust_59", <ore:dustPureTantalite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:318>, 0);
Barrel.addRecipe("TFG_dust_60", <ore:dustPureSpessartine>, <liquid:fresh_water> * 500, <gregtech:meta_dust:321>, 0);
Barrel.addRecipe("TFG_dust_61", <ore:dustPureSphalerite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:322>, 0);
Barrel.addRecipe("TFG_dust_62", <ore:dustPureStibnite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:325>, 0);
Barrel.addRecipe("TFG_dust_63", <ore:dustPureTetrahedrite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:327>, 0);
Barrel.addRecipe("TFG_dust_64", <ore:dustPureTopaz>, <liquid:fresh_water> * 500, <gregtech:meta_dust:329>, 0);
Barrel.addRecipe("TFG_dust_65", <ore:dustPureTungstate>, <liquid:fresh_water> * 500, <gregtech:meta_dust:330>, 0);
Barrel.addRecipe("TFG_dust_66", <ore:dustPureUraninite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:332>, 0);
Barrel.addRecipe("TFG_dust_67", <ore:dustPureWulfenite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:336>, 0);
Barrel.addRecipe("TFG_dust_68", <ore:dustPureYellowLimonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:337>, 0);
Barrel.addRecipe("TFG_dust_69", <ore:dustPureNetherQuartz>, <liquid:fresh_water> * 500, <gregtech:meta_dust:339>, 0);
Barrel.addRecipe("TFG_dust_70", <ore:dustPureQuartzite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:340>, 0);
Barrel.addRecipe("TFG_dust_71", <ore:dustPureGraphite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:341>, 0);
Barrel.addRecipe("TFG_dust_72", <ore:dustPureBornite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:347>, 0);
Barrel.addRecipe("TFG_dust_73", <ore:dustPureChalcocite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:348>, 0);
Barrel.addRecipe("TFG_dust_74", <ore:dustPureRealgar>, <liquid:fresh_water> * 500, <gregtech:meta_dust:365>, 0);
Barrel.addRecipe("TFG_dust_75", <ore:dustPureBastnasite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:379>, 0);
Barrel.addRecipe("TFG_dust_76", <ore:dustPurePentlandite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:380>, 0);
Barrel.addRecipe("TFG_dust_77", <ore:dustPureSpodumene>, <liquid:fresh_water> * 500, <gregtech:meta_dust:381>, 0);
Barrel.addRecipe("TFG_dust_78", <ore:dustPureLepidolite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:382>, 0);
Barrel.addRecipe("TFG_dust_79", <ore:dustPureGlauconiteSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust:384>, 0);
Barrel.addRecipe("TFG_dust_80", <ore:dustPureMalachite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:385>, 0);
Barrel.addRecipe("TFG_dust_81", <ore:dustPureMica>, <liquid:fresh_water> * 500, <gregtech:meta_dust:386>, 0);
Barrel.addRecipe("TFG_dust_82", <ore:dustPureBarite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:387>, 0);
Barrel.addRecipe("TFG_dust_83", <ore:dustPureAlunite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:388>, 0);
Barrel.addRecipe("TFG_dust_84", <ore:dustPureTalc>, <liquid:fresh_water> * 500, <gregtech:meta_dust:392>, 0);
Barrel.addRecipe("TFG_dust_85", <ore:dustPureSoapstone>, <liquid:fresh_water> * 500, <gregtech:meta_dust:393>, 0);
Barrel.addRecipe("TFG_dust_86", <ore:dustPureKyanite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:394>, 0);
Barrel.addRecipe("TFG_dust_87", <ore:dustPurePyrochlore>, <liquid:fresh_water> * 500, <gregtech:meta_dust:449>, 0);
Barrel.addRecipe("TFG_dust_88", <ore:dustPureOilsands>, <liquid:fresh_water> * 500, <gregtech:meta_dust:1597>, 0);
Barrel.addRecipe("TFG_dust_89", <ore:dustPureGlowstone>, <liquid:fresh_water> * 500, <minecraft:glowstone_dust>, 0);
Barrel.addRecipe("TFG_dust_90", <ore:dustPureOlivine>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2004>, 0);
Barrel.addRecipe("TFG_dust_91", <ore:dustPureOpal>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2005>, 0);
Barrel.addRecipe("TFG_dust_92", <ore:dustPureAmethyst>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2006>, 0);
Barrel.addRecipe("TFG_dust_93", <ore:dustPureLapis>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2007>, 0);
Barrel.addRecipe("TFG_dust_94", <ore:dustPureApatite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2010>, 0);
Barrel.addRecipe("TFG_dust_95", <ore:dustPureTricalciumPhosphate>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2015>, 0);
Barrel.addRecipe("TFG_dust_96", <ore:dustPureGarnetRed>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2016>, 0);
Barrel.addRecipe("TFG_dust_97", <ore:dustPureGarnetYellow>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2017>, 0);
Barrel.addRecipe("TFG_dust_98", <ore:dustPureVanadiumMagnetite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2022>, 0);
Barrel.addRecipe("TFG_dust_99", <ore:dustPurePollucite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2024>, 0);
Barrel.addRecipe("TFG_dust_100", <ore:dustPureBentonite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2026>, 0);
Barrel.addRecipe("TFG_dust_101", <ore:dustPureFullersEarth>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2027>, 0);
Barrel.addRecipe("TFG_dust_102", <ore:dustPurePitchblende>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2028>, 0);
Barrel.addRecipe("TFG_dust_103", <ore:dustPureMonazite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2029>, 0);
Barrel.addRecipe("TFG_dust_104", <ore:dustPureTrona>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2031>, 0);
Barrel.addRecipe("TFG_dust_105", <ore:dustPureGypsum>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2032>, 0);
Barrel.addRecipe("TFG_dust_106", <ore:dustPureZeolite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2033>, 0);
Barrel.addRecipe("TFG_dust_107", <ore:dustPureRedstone>, <liquid:fresh_water> * 500, <minecraft:redstone>, 0);
Barrel.addRecipe("TFG_dust_108", <ore:dustPureElectrotine>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2507>, 0);
Barrel.addRecipe("TFG_dust_109", <ore:dustPureDiatomite>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2509>, 0);
Barrel.addRecipe("TFG_dust_110", <ore:dustPureGraniticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2513>, 0);
Barrel.addRecipe("TFG_dust_111", <ore:dustPureGarnetSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2515>, 0);
Barrel.addRecipe("TFG_dust_112", <ore:dustPureBasalticMineralSand>, <liquid:fresh_water> * 500, <gregtech:meta_dust:2518>, 0);

// Получение обработанных досок из грега в бочке
Barrel.addRecipe("TFG_wood_treated", <ore:plankWood>, <liquid:creosote> * 250, <gregtech:planks:1>, 0);

// Получение растительного масла из форестри из оливкового в бочке
Barrel.addRecipe("TFG_seed_oil_1", <minecraft:stick> * 1, <liquid:olive_oil> * 1000, null, <liquid:seed.oil> * 1000, 1);
Barrel.addRecipe("TFG_seed_oil_2", <tfc:wooden_bucket> * 1, <liquid:olive_oil> * 1000, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "seed.oil", Amount: 1000}}), 1);
// Получение полированной палки в бочке
Barrel.addRecipe("TFG_forestry_stick", <minecraft:stick> * 1, <liquid:seed.oil> * 100, <forestry:oak_stick>, 12);

// Получение воды из обычного майнкрафта
Barrel.addRecipe("TFG_water_1", <tfc:wooden_bucket> * 1, <liquid:fresh_water> * 1000, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), 0);
Barrel.addRecipe("TFG_water_2", <tfc:crop/product/jute_net> * 1, <liquid:fresh_water> * 1000, <tfc:crop/product/jute_net>, <liquid:water> * 1000, 0);

// Удаление рецептов из наковальни
Anvil.removeRecipe(<minecraft:iron_bars>);
Anvil.removeRecipe(<minecraft:iron_door>);

// Крафт аналогов инструментов из грега
// Оголовья молотов
Anvil.addRecipe("TFG_hammerHead_1", <tfc:metal/hammer_head/bismuth_bronze>, <gregtech:meta_tool_head_hammer:303>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_2", <tfc:metal/hammer_head/black_bronze>, <gregtech:meta_tool_head_hammer:302>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_3", <tfc:metal/hammer_head/bronze>, <gregtech:meta_tool_head_hammer:260>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_4", <tfc:metal/hammer_head/wrought_iron>, <gregtech:meta_tool_head_hammer:335>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_5", <tfc:metal/hammer_head/steel>, <gregtech:meta_tool_head_hammer:324>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_6", <tfc:metal/hammer_head/black_steel>, <gregtech:meta_tool_head_hammer:2011>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_7", <tfc:metal/hammer_head/blue_steel>, <gregtech:meta_tool_head_hammer:2511>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_hammerHead_8", <tfc:metal/hammer_head/red_steel>, <gregtech:meta_tool_head_hammer:2510>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
// Оголовья пил
Anvil.addRecipe("TFG_sawBlade_1", <tfc:metal/saw_blade/bismuth_bronze>, <gregtech:meta_tool_head_saw:303>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_2", <tfc:metal/saw_blade/black_bronze>, <gregtech:meta_tool_head_saw:302>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_3", <tfc:metal/saw_blade/bronze>, <gregtech:meta_tool_head_saw:260>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_4", <tfc:metal/saw_blade/wrought_iron>, <gregtech:meta_tool_head_saw:335>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_5", <tfc:metal/saw_blade/steel>, <gregtech:meta_tool_head_saw:324>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_6", <tfc:metal/saw_blade/black_steel>, <gregtech:meta_tool_head_saw:2011>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_7", <tfc:metal/saw_blade/blue_steel>, <gregtech:meta_tool_head_saw:2511>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_sawBlade_8", <tfc:metal/saw_blade/red_steel>, <gregtech:meta_tool_head_saw:2510>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST");
// Оголовья напильников
Anvil.addRecipe("TFG_chiselHead_1", <tfc:metal/chisel_head/bismuth_bronze>, <gregtech:meta_tool_head_file:303>, 2, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_2", <tfc:metal/chisel_head/black_bronze>, <gregtech:meta_tool_head_file:302>, 2, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_3", <tfc:metal/chisel_head/bronze>, <gregtech:meta_tool_head_file:260>, 2, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_4", <tfc:metal/chisel_head/wrought_iron>, <gregtech:meta_tool_head_file:335>, 3, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_5", <tfc:metal/chisel_head/steel>, <gregtech:meta_tool_head_file:324>, 4, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_6", <tfc:metal/chisel_head/black_steel>, <gregtech:meta_tool_head_file:2011>, 5, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_7", <tfc:metal/chisel_head/blue_steel>, <gregtech:meta_tool_head_file:2511>, 6, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_chiselHead_8", <tfc:metal/chisel_head/red_steel>, <gregtech:meta_tool_head_file:2510>, 6, "general", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
// Оголовья кос
Anvil.addRecipe("TFG_scytheBlade_1", <tfc:metal/scythe_blade/bismuth_bronze>, <gregtech:meta_tool_head_sense:303>, 2, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_2", <tfc:metal/scythe_blade/black_bronze>, <gregtech:meta_tool_head_sense:302>, 2, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_3", <tfc:metal/scythe_blade/bronze>, <gregtech:meta_tool_head_sense:260>, 2, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_4", <tfc:metal/scythe_blade/wrought_iron>, <gregtech:meta_tool_head_sense:335>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_5", <tfc:metal/scythe_blade/steel>, <gregtech:meta_tool_head_sense:324>, 4, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_6", <tfc:metal/scythe_blade/black_steel>, <gregtech:meta_tool_head_sense:2011>, 5, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_7", <tfc:metal/scythe_blade/blue_steel>, <gregtech:meta_tool_head_sense:2511>, 6, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_scytheBlade_8", <tfc:metal/scythe_blade/red_steel>, <gregtech:meta_tool_head_sense:2510>, 6, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");

// Крафт форм на наковальне
Welding.addRecipe("TFG_shape_0", <ore:plateDoubleSteel>, <ore:plateDoubleSteel>, <gregtech:meta_item_1:11>, 4);
Anvil.addRecipe("TFG_shape_1", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:12>, 4, "general", "HIT_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_2", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:13>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_3", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:14>, 4, "general", "HIT_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_4", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:15>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_5", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:16>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_6", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:17>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_7", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:18>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_8", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:19>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_9", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:20>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_10", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:21>, 4, "general", "PUNCH_LAST", "HIT_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_11", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:22>, 4, "general", "HIT_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_12", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:23>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");
Anvil.addRecipe("TFG_shape_13", <gregtech:meta_item_1:11>, <gregtech:meta_item_1:24>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

// Крафт горячей воды в печке
furnace.addRecipe(<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}));
furnace.addRecipe(<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}));
furnace.addRecipe(<tfc:metal/bucket/red_steel>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:metal/bucket/red_steel>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}));
furnace.addRecipe(<tfc:metal/bucket/red_steel>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:metal/bucket/red_steel>.withTag({Fluid: {FluidName: "water", Amount: 1000}}));

// Рецепты в измельчителе
// Переработка аметистов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/amethyst:4>)
    .outputs(<gregtech:meta_dust:2006> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/amethyst:3>)
    .outputs(<gregtech:meta_dust:2006> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/amethyst:2>)
    .outputs(<gregtech:meta_dust:2006>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/amethyst:1>)
    .outputs(<gregtech:meta_dust_small:2006> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/amethyst>)
    .outputs(<gregtech:meta_dust_small:2006>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка изумрудов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/emerald:4>)
    .outputs(<gregtech:meta_dust:278> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/emerald:3>)
    .outputs(<gregtech:meta_dust:278> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/emerald:2>)
    .outputs(<gregtech:meta_dust:278>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/emerald:1>)
    .outputs(<gregtech:meta_dust_small:278> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/emerald>)
    .outputs(<gregtech:meta_dust_small:278>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка алмазов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/diamond:4>)
    .outputs(<gregtech:meta_dust:276> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/diamond:3>)
    .outputs(<gregtech:meta_dust:276> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/diamond:2>)
    .outputs(<gregtech:meta_dust:276>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/diamond:1>)
    .outputs(<gregtech:meta_dust_small:276> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/diamond>)
    .outputs(<gregtech:meta_dust_small:276>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка гранатов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/garnet:4>)
    .outputs(<gregtech:meta_dust:2016> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/garnet:3>)
    .outputs(<gregtech:meta_dust:2016> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/garnet:2>)
    .outputs(<gregtech:meta_dust:2016>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/garnet:1>)
    .outputs(<gregtech:meta_dust_small:2016> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/garnet>)
    .outputs(<gregtech:meta_dust_small:2016>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка опалов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/opal:4>)
    .outputs(<gregtech:meta_dust:2005> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/opal:3>)
    .outputs(<gregtech:meta_dust:2005> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/opal:2>)
    .outputs(<gregtech:meta_dust:2005>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/opal:1>)
    .outputs(<gregtech:meta_dust_small:2005> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/opal>)
    .outputs(<gregtech:meta_dust_small:2005>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка рубинов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/ruby:4>)
    .outputs(<gregtech:meta_dust:311> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/ruby:3>)
    .outputs(<gregtech:meta_dust:311> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/ruby:2>)
    .outputs(<gregtech:meta_dust:311>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/ruby:1>)
    .outputs(<gregtech:meta_dust_small:311> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/ruby>)
    .outputs(<gregtech:meta_dust_small:311>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка сапфиров из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/sapphire:4>)
    .outputs(<gregtech:meta_dust:314> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/sapphire:3>)
    .outputs(<gregtech:meta_dust:314> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/sapphire:2>)
    .outputs(<gregtech:meta_dust:314>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/sapphire:1>)
    .outputs(<gregtech:meta_dust_small:314> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/sapphire>)
    .outputs(<gregtech:meta_dust_small:314>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка топазов из тфк в дробителе
macerator.recipeBuilder()
    .inputs(<tfc:gem/topaz:4>)
    .outputs(<gregtech:meta_dust:329> * 4)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/topaz:3>)
    .outputs(<gregtech:meta_dust:329> * 2)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/topaz:2>)
    .outputs(<gregtech:meta_dust:329>)
    .duration(1 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/topaz:1>)
    .outputs(<gregtech:meta_dust_small:329> * 2)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:gem/topaz>)
    .outputs(<gregtech:meta_dust_small:329>)
    .duration(0.25 * 20)
    .EUt(2)
    .buildAndRegister();

// Рецепты в гибочном станке
// Ведро из синей стали
bender.recipeBuilder()
    .inputs(<ore:plateDoubleBlueSteel>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<tfc:metal/bucket/blue_steel>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Ведро из красной стали
bender.recipeBuilder()
    .inputs(<ore:plateDoubleRedSteel>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<tfc:metal/bucket/red_steel>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Стержень из кованого железа
bender.recipeBuilder()
    .inputs(<ore:plateWroughtIron>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 3}))
    .outputs(<tfc:metal/rod/wrought_iron>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Стержень из стали
bender.recipeBuilder()
    .inputs(<ore:plateSteel>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 3}))
    .outputs(<tfc:metal/rod/steel>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Сушка кофе
centrifuge.recipeBuilder()
    .inputs(<ca:coffee_cherries>)
    .outputs(<ca:coffee_cherries_dried>)
    .duration(10 * 20)
    .EUt(2)
    .buildAndRegister();
// Измельчение кофе
macerator.recipeBuilder()
    .inputs(<ca:coffee_cherries_dried>)
    .outputs(<ca:coffee_beans_green> * 2)
    .duration(2 * 20)
    .EUt(2)
    .buildAndRegister();
// Обжарка кофе
furnace.addRecipe(<ca:coffee_beans>, <ca:coffee_beans_green>);
// Измельчение обжареного кофе
macerator.recipeBuilder()
    .inputs(<ca:coffee_beans>)
    .outputs(<ca:coffee_ground> * 2)
    .duration(2 * 20)
    .EUt(2)
    .buildAndRegister();

// Приготовления яйца
furnace.addRecipe(<tfc:food/cooked_egg>, <minecraft:egg>);

// Получение танина
mixer.recipeBuilder()
    .inputs(<ore:dustWood>)
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:tannin> * 1000])
    .duration(20 * 20)
    .EUt(16)
    .buildAndRegister();

// Обработка сырой кожи
autoclave.recipeBuilder()
    .inputs(<tfc:hide/raw/large>)
    .fluidInputs([<liquid:limewater> * 500])
    .outputs(<tfc:hide/soaked/large>)
    .duration(30 * 20)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/raw/medium>)
    .fluidInputs([<liquid:limewater> * 400])
    .outputs(<tfc:hide/soaked/medium>)
    .duration(30 * 20)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/raw/small>)
    .fluidInputs([<liquid:limewater> * 300])
    .outputs(<tfc:hide/soaked/small>)
    .duration(30 * 20)
    .EUt(24)
    .buildAndRegister();

// Обработка пропитанной кожи
centrifuge.recipeBuilder()
    .inputs(<tfc:hide/soaked/large>)
    .notConsumable(<minecraft:flint>)
    .outputs(<tfc:hide/scraped/large>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .inputs(<tfc:hide/soaked/medium>)
    .notConsumable(<minecraft:flint>)
    .outputs(<tfc:hide/scraped/medium>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .inputs(<tfc:hide/soaked/small>)
    .notConsumable(<minecraft:flint>)
    .outputs(<tfc:hide/scraped/small>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Обработка обскобленной кожи
autoclave.recipeBuilder()
    .inputs(<tfc:hide/scraped/large>)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<tfc:hide/prepared/large>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/scraped/medium>)
    .fluidInputs([<liquid:water> * 400])
    .outputs(<tfc:hide/prepared/medium>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/scraped/small>)
    .fluidInputs([<liquid:water> * 300])
    .outputs(<tfc:hide/prepared/small>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Обработка приготовленной кожи
autoclave.recipeBuilder()
    .inputs(<tfc:hide/prepared/large>)
    .fluidInputs([<liquid:tannin> * 500])
    .outputs(<minecraft:leather> * 3)
    .duration(25 * 20)
    .EUt(16)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/prepared/medium>)
    .fluidInputs([<liquid:tannin> * 400])
    .outputs(<minecraft:leather> * 2)
    .duration(25 * 20)
    .EUt(16)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:hide/prepared/small>)
    .fluidInputs([<liquid:tannin> * 300])
    .outputs(<minecraft:leather>)
    .duration(25 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение джутового волокна
autoclave.recipeBuilder()
    .inputs(<tfc:crop/product/jute>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<tfc:crop/product/jute_fiber> * 2)
    .duration(30 * 20)
    .EUt(16)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs(<tfc:crop/product/jute>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<tfc:crop/product/jute_fiber> * 2)
    .duration(30 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение джутовой ткани
assembler.recipeBuilder()
    .inputs(<tfc:crop/product/jute_fiber> * 12)
    .outputs(<tfc:crop/product/burlap_cloth>)
    .duration(20 * 20)
    .EUt(24)
    .buildAndRegister();

// Получение торфа
mixer.recipeBuilder()
    .inputs(<ore:dustDarkAsh> * 4, <ore:dustCoal> * 4, <gregtech:meta_item_1:439> * 4, <tfc:dirt/basalt>)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<tfc:peat>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs(<ore:dustDarkAsh> * 4, <ore:dustCoal> * 4, <gregtech:meta_item_1:439> * 4, <tfc:dirt/basalt>)
    .fluidInputs([<liquid:fresh_water> * 500])
    .outputs(<tfc:peat>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Обработка слитков из ТФК на машинах из грега
// Сталь
forge_hammer.recipeBuilder()
    .inputs(<tfc:metal/ingot/pig_iron>)
    .outputs(<tfc:metal/ingot/high_carbon_steel>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();
forge_hammer.recipeBuilder()
    .inputs(<tfc:metal/ingot/high_carbon_steel>)
    .outputs(<tfc:metal/ingot/steel>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();
// Черная сталь
forge_hammer.recipeBuilder()
    .inputs(<tfc:metal/ingot/high_carbon_black_steel>)
    .outputs(<tfc:metal/ingot/black_steel>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();
// Синяя сталь
forge_hammer.recipeBuilder()
    .inputs(<tfc:metal/ingot/high_carbon_blue_steel>)
    .outputs(<tfc:metal/ingot/blue_steel>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();
// Красная сталь
forge_hammer.recipeBuilder()
    .inputs(<tfc:metal/ingot/high_carbon_red_steel>)
    .outputs(<tfc:metal/ingot/red_steel>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();

// Получение горячей воды
fluid_heater.recipeBuilder()
    .circuit(2)
    .fluidInputs(<liquid:fresh_water> * 100)
    .fluidOutputs(<liquid:hot_water> * 100)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
fluid_heater.recipeBuilder()
    .circuit(2)
    .fluidInputs(<liquid:water> * 100)
    .fluidOutputs(<liquid:hot_water> * 100)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Рецепты свежей воды
chemical_reactor.recipeBuilder()
    .circuit(4)
    .notConsumable(<ore:foilSilver>)
    .fluidInputs(<liquid:water> * 1000)
    .fluidOutputs(<liquid:fresh_water> * 1000)
    .duration(30 * 20)
    .EUt(16)
    .buildAndRegister();

// Известковая вода
mixer.recipeBuilder()
    .inputs(<ore:dustBorax>)
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs(<liquid:limewater> * 1000)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Строительный раствор
mixer.recipeBuilder()
    .inputs(<ore:sand>)
    .fluidInputs([<liquid:limewater> * 250])
    .outputs(<tfc:mortar> * 16)
    .duration(25 * 20)
    .EUt(24)
    .buildAndRegister();


print("Initialized 'TFC'");
