#loader gregtech
#priority 998

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
<material:copper>.addTools(7, 1, 85);
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");
<material:bismuth>.addOre();
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");

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
StoneType.create(16, "tfc_raw_andesite", "oreAndesite", <material:andesite>, "tfc:raw/andesite");

// - Basalt
StoneType.create(17, "tfc_raw_basalt", "oreBasalt", <material:basalt>, "tfc:raw/basalt");

// - Breccia
val TFC_Breccia = MaterialBuilder(32002 ,"breccia")
    .color(0x3D3A34)
    .dust()
    .build();
StoneType.create(18, "tfc_raw_breccia", "oreBreccia", <material:breccia>, "tfc:raw/breccia");

// - Catlinite
val TFC_Catlinite = MaterialBuilder(32003 ,"catlinite")
    .color(0x934841)
    .dust()
    .build();
StoneType.create(19, "tfc_raw_catlinite", "oreCatlinite", <material:catlinite>, "tfc:raw/catlinite");

// - Chalk
val TFC_Chalk = MaterialBuilder(32004 ,"chalk")
    .color(0xA8A8A5)
    .dust()
    .build();
StoneType.create(20, "tfc_raw_chalk", "oreChalk", <material:chalk>, "tfc:raw/chalk");

// - Chert
val TFC_Chert = MaterialBuilder(32005 ,"chert")
    .color(0x6E4E3F)
    .dust()
    .build();
StoneType.create(21, "tfc_raw_chert", "oreChert", <material:chert>, "tfc:raw/chert");

// - Claystone
val TFC_Claystone = MaterialBuilder(32006 ,"claystone")
    .color(0x937D66)
    .dust()
    .build();
StoneType.create(22, "tfc_raw_claystone", "oreClaystone", <material:claystone>, "tfc:raw/claystone");

// - Conglomerate
val TFC_Conglomerate = MaterialBuilder(32007 ,"conglomerate")
    .color(0x90836C)
    .dust()
    .build();
StoneType.create(23, "tfc_raw_conglomerate", "oreConglomerate", <material:conglomerate>, "tfc:raw/conglomerate");

// - Dacite
val TFC_Dacite = MaterialBuilder(32008 ,"dacite")
    .color(0x787575)
    .dust()
    .build();
StoneType.create(24, "tfc_raw_dacite", "oreDacite", <material:dacite>, "tfc:raw/dacite");

// - Diorite
StoneType.create(25, "tfc_raw_diorite", "oreDiorite", <material:diorite>, "tfc:raw/diorite");

// - Dolomite
val TFC_Dolomite = MaterialBuilder(32010 ,"dolomite")
    .color(0x514D4D)
    .dust()
    .build();
StoneType.create(26, "tfc_raw_dolomite", "oreDolomite", <material:dolomite>, "tfc:raw/dolomite");

// - Gabbro
val TFC_Gabbro = MaterialBuilder(32011 ,"gabbro")
    .color(0x858586)
    .dust()
    .build();
StoneType.create(27, "tfc_raw_gabbro", "oreGabbro", <material:gabbro>, "tfc:raw/gabbro");

// - Gneiss
val TFC_Gneiss = MaterialBuilder(32012 ,"gneiss")
    .color(0xB4A495)
    .dust()
    .build();
StoneType.create(28, "tfc_raw_gneiss", "oreGneiss", <material:gneiss>, "tfc:raw/gneiss");

// - Granite
StoneType.create(29, "tfc_raw_granite", "oreGranite", <material:granite>, "tfc:raw/granite");

// - Komatiite
val TFC_Komatiite = MaterialBuilder(32014 ,"komatiite")
    .color(0x536151)
    .dust()
    .build();
StoneType.create(30, "tfc_raw_komatiite", "oreKomatiite", <material:komatiite>, "tfc:raw/komatiite");

// - Limestone
val TFC_Limestone = MaterialBuilder(32015 ,"limestone")
    .color(0xB4AE9B)
    .dust()
    .build();
StoneType.create(31, "tfc_raw_limestone", "oreLimestone", <material:limestone>, "tfc:raw/limestone");

// - Marble
StoneType.create(32, "tfc_raw_marble", "oreMarble", <material:marble>, "tfc:raw/marble");

// - Mudstone
val TFC_Mudstone = MaterialBuilder(32017 ,"mudstone")
    .color(0x9C988D)
    .dust()
    .build();
StoneType.create(33, "tfc_raw_mudstone", "oreMudstone", <material:mudstone>, "tfc:raw/mudstone");

// - Novaculite
val TFC_Novaculite = MaterialBuilder(32018 ,"novaculite")
    .color(0xAAA69E)
    .dust()
    .build();
StoneType.create(34, "tfc_raw_novaculite", "oreNovaculite", <material:novaculite>, "tfc:raw/novaculite");

// - Peridotite
val TFC_Peridotite = MaterialBuilder(32019 ,"peridotite")
    .color(0x5B6159)
    .dust()
    .build();
StoneType.create(35, "tfc_raw_peridotite", "orePeridotite", <material:peridotite>, "tfc:raw/peridotite");

// - Porphyry
val TFC_Porphyry = MaterialBuilder(32020 ,"porphyry")
    .color(0xB9664B)
    .dust()
    .build();
StoneType.create(36, "tfc_raw_porphyry", "orePorphyry", <material:porphyry>, "tfc:raw/porphyry");

// - Quartzite
StoneType.create(37, "tfc_raw_quartzite", "oreQuartzite", <material:quartzite>, "tfc:raw/quartzite");

// - Rhyolite
val TFC_Rhyolite = MaterialBuilder(32022 ,"rhyolite")
    .color(0x948D85)
    .dust()
    .build();
StoneType.create(38, "tfc_raw_rhyolite", "oreRhyolite", <material:rhyolite>, "tfc:raw/rhyolite");

// - Rocksalt
val TFC_Rocksalt = MaterialBuilder(32023 ,"rocksalt")
    .color(0xA19996)
    .dust()
    .build();
StoneType.create(39, "tfc_raw_rocksalt", "oreRocksalt", <material:rocksalt>, "tfc:raw/rocksalt");

// - Sandstone
val TFC_Sandstone = MaterialBuilder(32024 ,"sandstone")
    .color(0xB2A281)
    .dust()
    .build();
StoneType.create(40, "tfc_raw_sandstone", "oreSandstone", <material:sandstone>, "tfc:raw/sandstone");

// - Schist
val TFC_Schist = MaterialBuilder(32026 ,"schist")
    .color(0x727667)
    .dust()
    .build();
StoneType.create(41, "tfc_raw_schist", "oreSchist", <material:schist>, "tfc:raw/schist");

// - Shale
val TFC_Shale = MaterialBuilder(32027 ,"shale")
    .color(0x5D5C5F)
    .dust()
    .build();
StoneType.create(42, "tfc_raw_shale", "oreShale", <material:shale>, "tfc:raw/shale");

// - Siltstone
val TFC_Siltstone = MaterialBuilder(32028 ,"siltstone")
    .color(0xBEA393)
    .dust()
    .build();
StoneType.create(43, "tfc_raw_siltstone", "oreSiltstone", <material:siltstone>, "tfc:raw/siltstone");

// - Slate
val TFC_Slate = MaterialBuilder(32029 ,"slate")
    .color(0xB3ADA2)
    .dust()
    .build();
StoneType.create(44, "tfc_raw_slate", "oreSlate", <material:slate>, "tfc:raw/slate");

// - Soapstone
StoneType.create(45, "tfc_raw_soapstone", "oreSoapstone", <material:soapstone>, "tfc:raw/soapstone");
