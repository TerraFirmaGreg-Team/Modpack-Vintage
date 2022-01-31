#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

import mods.gregtech.StoneType;

//Add Custom Flags
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:magnesium>.addFlags("generate_plate");
<material:titanium>.addFlags("generate_foil");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:glowstone>.addOre(1, 1, true);
<material:copper>.addFlags("generate_long_rod");
<material:copper>.addTools(1, 1, 1, 600);
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");
<material:bismuth>.addOre();

// --- Fix toolSpeed and toolDurability
for material in MaterialRegistry.getAllMaterials()
{
    if (material.hasTools())
    {
        material.setToolStats(material.toolSpeed * 2, material.toolAttackDamage, material.toolDurability * 7);
    }
}

// --- Custom Stone Type
// - Andesite
val TFC_Andesite = MaterialBuilder(32000 ,"tfc_andesite").dust(1).build();
StoneType.create(16, "tfc_raw_andesite", "oreAndesiteTfc", TFC_Andesite, "tfc:raw/andesite");

// - Basalt
val TFC_Basalt = MaterialBuilder(32001 ,"tfc_basalt").dust(1).build();
StoneType.create(17, "tfc_raw_basalt", "oreBasalt", TFC_Basalt, "tfc:raw/basalt");

// - Breccia
val TFC_Breccia = MaterialBuilder(32002 ,"tfc_breccia").dust(1).build();
StoneType.create(18, "tfc_raw_breccia", "oreBrecciaTfc", TFC_Breccia, "tfc:raw/breccia");

// - Catlinite
val TFC_Catlinite = MaterialBuilder(32003 ,"tfc_catlinite").dust(1).build();
StoneType.create(19, "tfc_raw_catlinite", "oreCatliniteTfc", TFC_Catlinite, "tfc:raw/catlinite");

// - Chalk
val TFC_Chalk = MaterialBuilder(32004 ,"tfc_chalk").dust(1).build();
StoneType.create(20, "tfc_raw_chalk", "oreChalkTfc", TFC_Chalk, "tfc:raw/chalk");

// - Chert
val TFC_Chert = MaterialBuilder(32005 ,"tfc_chert").dust(1).build();
StoneType.create(21, "tfc_raw_chert", "oreChertTfc", TFC_Chert, "tfc:raw/chert");

// - Claystone
val TFC_Claystone = MaterialBuilder(32006 ,"tfc_claystone").dust(1).build();
StoneType.create(22, "tfc_raw_claystone", "oreClaystoneTfc", TFC_Claystone, "tfc:raw/claystone");

// - Conglomerate
val TFC_Conglomerate = MaterialBuilder(32007 ,"tfc_conglomerate").dust(1).build();
StoneType.create(23, "tfc_raw_conglomerate", "oreConglomerateTfc", TFC_Conglomerate, "tfc:raw/conglomerate");

// - Dacite
val TFC_Dacite = MaterialBuilder(32008 ,"tfc_dacite").dust(1).build();
StoneType.create(24, "tfc_raw_dacite", "oreDaciteTfc", TFC_Dacite, "tfc:raw/dacite");

// - Diorite
val TFC_Diorite = MaterialBuilder(32009 ,"tfc_diorite").dust(1).build();
StoneType.create(25, "tfc_raw_diorite", "oreDioriteTfc", TFC_Diorite, "tfc:raw/diorite");

// - Dolomite
val TFC_Dolomite = MaterialBuilder(32010 ,"tfc_dolomite").dust(1).build();
StoneType.create(26, "tfc_raw_dolomite", "oreDolomiteTfc", TFC_Dolomite, "tfc:raw/dolomite");

// - Gabbro
val TFC_Gabbro = MaterialBuilder(32011 ,"tfc_gabbro").dust(1).build();
StoneType.create(27, "tfc_raw_gabbro", "oreGabbroTfc", TFC_Gabbro, "tfc:raw/gabbro");

// - Gneiss
val TFC_Gneiss = MaterialBuilder(32012 ,"tfc_gneiss").dust(1).build();
StoneType.create(28, "tfc_raw_gneiss", "oreGneissTfc", TFC_Gneiss, "tfc:raw/gneiss");

// - Granite
val TFC_Granite = MaterialBuilder(32013 ,"tfc_granite").dust(1).build();
StoneType.create(29, "tfc_raw_granite", "oreGraniteTfc", TFC_Granite, "tfc:raw/granite");

// - Komatiite
val TFC_Komatiite = MaterialBuilder(32014 ,"tfc_komatiite").dust(1).build();
StoneType.create(30, "tfc_raw_komatiite", "oreKomatiiteTfc", TFC_Komatiite, "tfc:raw/komatiite");

// - Limestone
val TFC_Limestone = MaterialBuilder(32015 ,"tfc_limestone").dust(1).build();
StoneType.create(31, "tfc_raw_limestone", "oreLimestoneTfc", TFC_Limestone, "tfc:raw/limestone");

// - Marble
val TFC_Marble = MaterialBuilder(32016 ,"tfc_marble").dust(1).build();
StoneType.create(32, "tfc_raw_marble", "oreMarble", TFC_Marble, "tfc:raw/marble");

// - Mudstone
val TFC_Mudstone = MaterialBuilder(32017 ,"tfc_mudstone").dust(1).build();
StoneType.create(33, "tfc_raw_mudstone", "oreMudstoneTfc", TFC_Mudstone, "tfc:raw/mudstone");

// - Novaculite
val TFC_Novaculite = MaterialBuilder(32018 ,"tfc_novaculite").dust(1).build();
StoneType.create(34, "tfc_raw_novaculite", "oreNovaculiteTfc", TFC_Novaculite, "tfc:raw/novaculite");

// - Peridotite
val TFC_Peridotite = MaterialBuilder(32019 ,"tfc_peridotite").dust(1).build();
StoneType.create(35, "tfc_raw_peridotite", "orePeridotiteTfc", TFC_Peridotite, "tfc:raw/peridotite");

// - Porphyry
val TFC_Porphyry = MaterialBuilder(32020 ,"tfc_porphyry").dust(1).build();
StoneType.create(36, "tfc_raw_porphyry", "orePorphyryTfc", TFC_Porphyry, "tfc:raw/porphyry");

// - Quartzite
val TFC_Quartzite = MaterialBuilder(32021 ,"tfc_quartzite").dust(1).build();
StoneType.create(37, "tfc_raw_quartzite", "oreQuartziteTfc", TFC_Quartzite, "tfc:raw/quartzite");

// - Rhyolite
val TFC_Rhyolite = MaterialBuilder(32022 ,"tfc_rhyolite").dust(1).build();
StoneType.create(38, "tfc_raw_rhyolite", "oreRhyoliteTfc", TFC_Rhyolite, "tfc:raw/rhyolite");

// - Rocksalt
val TFC_Rocksalt = MaterialBuilder(32023 ,"tfc_rocksalt").dust(1).build();
StoneType.create(39, "tfc_raw_rocksalt", "oreRocksaltTfc", TFC_Rocksalt, "tfc:raw/rocksalt");

// - Sandstone
val TFC_Sandstone = MaterialBuilder(32024 ,"tfc_sandstone").dust(1).build();
StoneType.create(40, "tfc_raw_sandstone", "oreSandstoneTfc", TFC_Sandstone, "tfc:raw/sandstone");

// - Schist
val TFC_Schist = MaterialBuilder(32026 ,"tfc_schist").dust(1).build();
StoneType.create(41, "tfc_raw_schist", "oreSchistTfc", TFC_Schist, "tfc:raw/schist");

// - Shale
val TFC_Shale = MaterialBuilder(32027 ,"tfc_shale").dust(1).build();
StoneType.create(42, "tfc_raw_shale", "oreShaleTfc", TFC_Shale, "tfc:raw/shale");

// - Siltstone
val TFC_Siltstone = MaterialBuilder(32028 ,"tfc_siltstone").dust(1).build();
StoneType.create(43, "tfc_raw_siltstone", "oreSiltstoneTfc", TFC_Siltstone, "tfc:raw/siltstone");

// - Slate
val TFC_Slate = MaterialBuilder(32029 ,"tfc_slate").dust(1).build();
StoneType.create(44, "tfc_raw_slate", "oreSlateTfc", TFC_Slate, "tfc:raw/slate");

// - Soapstone
val TFC_Soapstone = MaterialBuilder(32030 ,"tfc_soapstone").dust(1).build();
StoneType.create(45, "tfc_raw_soapstone", "oreSoapstoneTfc", TFC_Soapstone, "tfc:raw/soapstone");