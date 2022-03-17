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

// -- TFC

// - Andesite
StoneType.create(16, "tfc_andesite", "ore", <material:stone>, "tfc:raw/andesite");

// - Basalt
StoneType.create(17, "tfc_basalt", "ore", <material:stone>, "tfc:raw/basalt");

// - Breccia
StoneType.create(18, "tfc_breccia", "ore", <material:stone>, "tfc:raw/breccia");

// - Catlinite
StoneType.create(19, "tfc_catlinite", "ore", <material:stone>, "tfc:raw/catlinite");

// - Chalk
StoneType.create(20, "tfc_chalk", "ore", <material:stone>, "tfc:raw/chalk");

// - Chert
StoneType.create(21, "tfc_chert", "ore", <material:stone>, "tfc:raw/chert");

// - Claystone
StoneType.create(22, "tfc_claystone", "ore", <material:stone>, "tfc:raw/claystone");

// - Conglomerate
StoneType.create(23, "tfc_conglomerate", "ore", <material:stone>, "tfc:raw/conglomerate");

// - Dacite
StoneType.create(24, "tfc_dacite", "ore", <material:stone>, "tfc:raw/dacite");

// - Diorite
StoneType.create(25, "tfc_diorite", "ore", <material:stone>, "tfc:raw/diorite");

// - Dolomite
StoneType.create(26, "tfc_dolomite", "ore", <material:stone>, "tfc:raw/dolomite");

// - Gabbro
StoneType.create(27, "tfc_gabbro", "ore", <material:stone>, "tfc:raw/gabbro");

// - Gneiss
StoneType.create(28, "tfc_gneiss", "ore", <material:stone>, "tfc:raw/gneiss");

// - Granite
StoneType.create(29, "tfc_granite", "ore", <material:stone>, "tfc:raw/granite");

// - Komatiite
StoneType.create(30, "tfc_komatiite", "ore", <material:stone>, "tfc:raw/komatiite");

// - Limestone
StoneType.create(31, "tfc_limestone", "ore", <material:stone>, "tfc:raw/limestone");

// - Marble
StoneType.create(32, "tfc_marble", "ore", <material:stone>, "tfc:raw/marble");

// - Mudstone
StoneType.create(33, "tfc_mudstone", "ore", <material:stone>, "tfc:raw/mudstone");

// - Novaculite
StoneType.create(34, "tfc_novaculite", "ore", <material:stone>, "tfc:raw/novaculite");

// - Peridotite
StoneType.create(35, "tfc_peridotite", "ore", <material:stone>, "tfc:raw/peridotite");

// - Porphyry
StoneType.create(36, "tfc_porphyry", "ore", <material:stone>, "tfc:raw/porphyry");

// - Quartzite
StoneType.create(37, "tfc_quartzite", "ore", <material:stone>, "tfc:raw/quartzite");

// - Rhyolite
StoneType.create(38, "tfc_rhyolite", "ore", <material:stone>, "tfc:raw/rhyolite");

// - Rocksalt
StoneType.create(39, "tfc_rocksalt", "ore", <material:stone>, "tfc:raw/rocksalt");

// - Sandstone
StoneType.create(40, "tfc_sandstone", "ore", <material:stone>, "tfc:raw/sandstone");

// - Schist
StoneType.create(41, "tfc_schist", "ore", <material:stone>, "tfc:raw/schist");

// - Shale
StoneType.create(42, "tfc_shale", "ore", <material:stone>, "tfc:raw/shale");

// - Siltstone
StoneType.create(43, "tfc_siltstone", "ore", <material:stone>, "tfc:raw/siltstone");

// - Slate
StoneType.create(44, "tfc_slate", "ore", <material:stone>, "tfc:raw/slate");

// - Soapstone
StoneType.create(45, "tfc_soapstone", "ore", <material:stone>, "tfc:raw/soapstone");

// -- Galacticraft/GalaxySpace

// - Mercury
MaterialBuilder(32100, "mercurystone").color(0xC7FFFB).dust().build();

// - Venus
MaterialBuilder(32101, "venusstone").color(0xA86540).dust().build();

// - Moon
MaterialBuilder(32102, "moonstone").color(0xFFFFFF).dust().build();

// - Mars
MaterialBuilder(32103, "marsstone").color(0xFF7A5C).dust().build();

// - Asteroids
MaterialBuilder(32104, "asteroidsstoneblack").color(0x1C1C1C).dust().build();
MaterialBuilder(32105, "asteroidsstonegray").color(0x505050).dust().build();
MaterialBuilder(32106, "asteroidsstonelightgray").color(0xBBBBBB).dust().build();
