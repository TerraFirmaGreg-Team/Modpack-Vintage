// #loader gregtech

// import mods.gregtech.material.MaterialRegistry;
// import mods.gregtech.material.MaterialBuilder;
// import mods.gregtech.material.Material;

// import mods.gregtech.StoneType;

// // --- Custom Stone Type

// // - TFC

// /*

// StoneType.builder()
//     .id(32)
//     .name("tfc_marble")
//     .orePrefix("oreMarble")
//     .material(<material:diamond>)
//     .blockState("tfc:raw/marble")
//     // .blockStateMatcher([your state matcher]) // optional
//     // .registerItem() // optional
//     .buildAndRegister();

// */

// // Marble
// StoneType.create(32, "tfc_marble", "oreMarble", <material:marble>, "tfc:raw/marble");

// // Basalt
// StoneType.create(17, "tfc_basalt", "oreBasalt", <material:basalt>, "tfc:raw/basalt");

// // Andesite
// StoneType.create(16, "tfc_andesite", "oreAndesite", <material:andesite>, "tfc:raw/andesite");

// // Diorite
// StoneType.create(25, "tfc_diorite", "oreDiorite", <material:diorite>, "tfc:raw/diorite");

// // Granite
// StoneType.create(29, "tfc_granite", "oreGranite", <material:granite>, "tfc:raw/granite");

// // Quartzite
// StoneType.create(37, "tfc_quartzite", "oreQuartzite", <material:quartzite>, "tfc:raw/quartzite");

// // Soapstone
// StoneType.create(45, "tfc_soapstone", "oreSoapstone", <material:soapstone>, "tfc:raw/soapstone");

// // Rocksalt
// StoneType.create(39, "tfc_rocksalt", "oreRocksalt", <material:rock_salt>, "tfc:raw/rocksalt");

// // Breccia
// StoneType.create(18, "tfc_breccia", "oreBreccia", <material:breccia>, "tfc:raw/breccia");

// // Catlinite
// StoneType.create(19, "tfc_catlinite", "oreCatlinite", <material:catlinite>, "tfc:raw/catlinite");

// // Chalk
// StoneType.create(20, "tfc_chalk", "oreChalk", <material:chalk>, "tfc:raw/chalk");

// // Chert
// StoneType.create(21, "tfc_chert", "oreChert", <material:chert>, "tfc:raw/chert");

// // Claystone
// StoneType.create(22, "tfc_claystone", "oreClaystone", <material:claystone>, "tfc:raw/claystone");

// // Conglomerate
// StoneType.create(23, "tfc_conglomerate", "oreConglomerate", <material:conglomerate>, "tfc:raw/conglomerate");

// // Dacite
// StoneType.create(24, "tfc_dacite", "oreDacite", <material:dacite>, "tfc:raw/dacite");

// // Dolomite
// StoneType.create(26, "tfc_dolomite", "oreDolomite", <material:dolomite>, "tfc:raw/dolomite");

// // Gabbro
// StoneType.create(27, "tfc_gabbro", "oreGabbro", <material:gabbro>, "tfc:raw/gabbro");

// // Gneiss
// StoneType.create(28, "tfc_gneiss", "oreGneiss", <material:gneiss>, "tfc:raw/gneiss");

// // Komatiite
// StoneType.create(30, "tfc_komatiite", "oreKomatiite", <material:komatiite>, "tfc:raw/komatiite");

// // Limestone
// StoneType.create(31, "tfc_limestone", "oreLimestone", <material:limestone>, "tfc:raw/limestone");

// // Mudstone
// StoneType.create(33, "tfc_mudstone", "oreMudstone", <material:mudstone>, "tfc:raw/mudstone");

// // Novaculite
// StoneType.create(34, "tfc_novaculite", "oreNovaculite", <material:novaculite>, "tfc:raw/novaculite");

// // Peridotite
// StoneType.create(35, "tfc_peridotite", "orePeridotite", <material:peridotite>, "tfc:raw/peridotite");

// // Phyllite
// StoneType.create(46, "tfc_phyllite", "orePhyllite", <material:phyllite>, "tfc:raw/phyllite");

// // Porphyry
// StoneType.create(36, "tfc_porphyry", "orePorphyry", <material:porphyry>, "tfc:raw/porphyry");

// // Rhyolite
// StoneType.create(38, "tfc_rhyolite", "oreRhyolite", <material:rhyolite>, "tfc:raw/rhyolite");

// // Sandstone
// StoneType.create(40, "tfc_sandstone", "oreSandstone", <material:sandstone>, "tfc:raw/sandstone");

// // Schist
// StoneType.create(41, "tfc_schist", "oreSchist", <material:schist>, "tfc:raw/schist");

// // Shale
// StoneType.create(42, "tfc_shale", "oreShale", <material:shale>, "tfc:raw/shale");

// // Siltstone
// StoneType.create(43, "tfc_siltstone", "oreSiltstone", <material:siltstone>, "tfc:raw/siltstone");

// // Slate
// StoneType.create(44, "tfc_slate", "oreSlate", <material:slate>, "tfc:raw/slate");

// // - GC

// // Mercury
// // StoneType.create(47, "gc_mercurystone", "oreMercurystone", <material:mercurystone>, blockState);
// // val blockState = "extraplanets:mercuryblocks:type=mercury_stone";