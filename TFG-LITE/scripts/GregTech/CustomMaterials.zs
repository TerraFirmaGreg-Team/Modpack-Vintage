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
StoneType.create(16, "tfc_raw_andesite", "ore", <material:andesite>, "tfc:raw/andesite");

// - Basalt
StoneType.create(17, "tfc_raw_basalt", "ore", <material:basalt>, "tfc:raw/basalt");

// - Breccia
val TFC_Breccia = MaterialBuilder(32002 ,"breccia").dust(1).build();
StoneType.create(18, "tfc_raw_breccia", "ore", <material:breccia>, "tfc:raw/breccia");

// - Catlinite
val TFC_Catlinite = MaterialBuilder(32003 ,"catlinite").dust(1).build();
StoneType.create(19, "tfc_raw_catlinite", "ore", <material:catlinite>, "tfc:raw/catlinite");

// - Chalk
val TFC_Chalk = MaterialBuilder(32004 ,"chalk").dust(1).build();
StoneType.create(20, "tfc_raw_chalk", "ore", <material:chalk>, "tfc:raw/chalk");

// - Chert
val TFC_Chert = MaterialBuilder(32005 ,"chert").dust(1).build();
StoneType.create(21, "tfc_raw_chert", "ore", <material:chert>, "tfc:raw/chert");

// - Claystone
val TFC_Claystone = MaterialBuilder(32006 ,"claystone").dust(1).build();
StoneType.create(22, "tfc_raw_claystone", "ore", <material:claystone>, "tfc:raw/claystone");

// - Conglomerate
val TFC_Conglomerate = MaterialBuilder(32007 ,"conglomerate").dust(1).build();
StoneType.create(23, "tfc_raw_conglomerate", "ore", <material:conglomerate>, "tfc:raw/conglomerate");

// - Dacite
val TFC_Dacite = MaterialBuilder(32008 ,"dacite").dust(1).build();
StoneType.create(24, "tfc_raw_dacite", "ore", <material:dacite>, "tfc:raw/dacite");

// - Diorite
StoneType.create(25, "tfc_raw_diorite", "ore", <material:diorite>, "tfc:raw/diorite");

// - Dolomite
val TFC_Dolomite = MaterialBuilder(32010 ,"dolomite").dust(1).build();
StoneType.create(26, "tfc_raw_dolomite", "ore", <material:dolomite>, "tfc:raw/dolomite");

// - Gabbro
val TFC_Gabbro = MaterialBuilder(32011 ,"gabbro").dust(1).build();
StoneType.create(27, "tfc_raw_gabbro", "ore", <material:gabbro>, "tfc:raw/gabbro");

// - Gneiss
val TFC_Gneiss = MaterialBuilder(32012 ,"gneiss").dust(1).build();
StoneType.create(28, "tfc_raw_gneiss", "ore", <material:gneiss>, "tfc:raw/gneiss");

// - Granite
StoneType.create(29, "tfc_raw_granite", "ore", <material:granite>, "tfc:raw/granite");

// - Komatiite
val TFC_Komatiite = MaterialBuilder(32014 ,"komatiite").dust(1).build();
StoneType.create(30, "tfc_raw_komatiite", "ore", <material:komatiite>, "tfc:raw/komatiite");

// - Limestone
val TFC_Limestone = MaterialBuilder(32015 ,"limestone").dust(1).build();
StoneType.create(31, "tfc_raw_limestone", "ore", <material:limestone>, "tfc:raw/limestone");

// - Marble
StoneType.create(32, "tfc_raw_marble", "ore", <material:marble>, "tfc:raw/marble");

// - Mudstone
val TFC_Mudstone = MaterialBuilder(32017 ,"mudstone").dust(1).build();
StoneType.create(33, "tfc_raw_mudstone", "ore", <material:mudstone>, "tfc:raw/mudstone");

// - Novaculite
val TFC_Novaculite = MaterialBuilder(32018 ,"novaculite").dust(1).build();
StoneType.create(34, "tfc_raw_novaculite", "ore", <material:novaculite>, "tfc:raw/novaculite");

// - Peridotite
val TFC_Peridotite = MaterialBuilder(32019 ,"peridotite").dust(1).build();
StoneType.create(35, "tfc_raw_peridotite", "ore", <material:peridotite>, "tfc:raw/peridotite");

// - Porphyry
val TFC_Porphyry = MaterialBuilder(32020 ,"porphyry").dust(1).build();
StoneType.create(36, "tfc_raw_porphyry", "ore", <material:porphyry>, "tfc:raw/porphyry");

// - Quartzite
val TFC_Quartzite = MaterialBuilder(32021 ,"quartzite").dust(1).build();
StoneType.create(37, "tfc_raw_quartzite", "ore", <material:quartzite>, "tfc:raw/quartzite");

// - Rhyolite
val TFC_Rhyolite = MaterialBuilder(32022 ,"rhyolite").dust(1).build();
StoneType.create(38, "tfc_raw_rhyolite", "ore", <material:rhyolite>, "tfc:raw/rhyolite");

// - Rocksalt
val TFC_Rocksalt = MaterialBuilder(32023 ,"rocksalt").dust(1).build();
StoneType.create(39, "tfc_raw_rocksalt", "ore", <material:rocksalt>, "tfc:raw/rocksalt");

// - Sandstone
val TFC_Sandstone = MaterialBuilder(32024 ,"sandstone").dust(1).build();
StoneType.create(40, "tfc_raw_sandstone", "ore", <material:sandstone>, "tfc:raw/sandstone");

// - Schist
val TFC_Schist = MaterialBuilder(32026 ,"schist").dust(1).build();
StoneType.create(41, "tfc_raw_schist", "ore", <material:schist>, "tfc:raw/schist");

// - Shale
val TFC_Shale = MaterialBuilder(32027 ,"shale").dust(1).build();
StoneType.create(42, "tfc_raw_shale", "ore", <material:shale>, "tfc:raw/shale");

// - Siltstone
val TFC_Siltstone = MaterialBuilder(32028 ,"siltstone").dust(1).build();
StoneType.create(43, "tfc_raw_siltstone", "ore", <material:siltstone>, "tfc:raw/siltstone");

// - Slate
val TFC_Slate = MaterialBuilder(32029 ,"slate").dust(1).build();
StoneType.create(44, "tfc_raw_slate", "ore", <material:slate>, "tfc:raw/slate");

// - Soapstone
val TFC_Soapstone = MaterialBuilder(32030 ,"soapstone").dust(1).build();
StoneType.create(45, "tfc_raw_soapstone", "ore", <material:soapstone>, "tfc:raw/soapstone");
