#priority 988
#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

// --- Кастомные настройки материалов

// Новые руды
<material:bismuth>.addOre();
<material:perlite>.addOre();
<material:uvarovite>.addOre();
<material:manganese>.addOre();
<material:arsenic>.addOre();
<material:iridium>.addOre();
<material:osmium>.addOre();
<material:chrome>.addOre();
<material:vanadium>.addOre();
<material:antimony>.addOre();
<material:rutile>.addOre();
<material:silicon>.addOre();
<material:uranium>.addOre();
<material:uranium_235>.addOre();
<material:niobium>.addOre();
<material:yttrium>.addOre();
<material:gallium>.addOre();
<material:titanium>.addOre();
<material:borax>.addOre();
<material:cadmium>.addOre();
<material:caesium>.addOre();
<material:samarium>.addOre();
<material:cerium>.addOre();
<material:lanthanum>.addOre();
<material:tungsten>.addOre();
<material:naquadah_enriched>.addOre();
<material:glowstone>.addOre(1, 1, true);

// Другое
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:glowstone>.setFormula("Au(Si(FeS2)5(CrAl2O3)Hg3)", true);
<material:red_steel>.addFlags("generate_long_rod", "generate_bolt_screw", "generate_double_plate");
<material:blue_steel>.addFlags("generate_long_rod", "generate_bolt_screw", "generate_double_plate");
<material:black_steel>.addFlags("generate_long_rod", "generate_dense", "generate_bolt_screw", "generate_double_plate");
<material:magnesium>.addFlags("generate_plate");
<material:titanium>.addFlags("generate_foil", "generate_dense");
<material:zinc>.addFlags("generate_long_rod", "generate_double_plate", "generate_gear", "generate_bolt_screw", "generate_bolt");
<material:nickel>.addFlags("generate_long_rod", "generate_gear", "generate_bolt_screw", "generate_bolt");
<material:copper>.addFlags("generate_long_rod", "generate_dense", "generate_gear", "generate_bolt_screw");
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate", "generate_double_plate", "generate_bolt_screw", "generate_bolt");
<material:bismuth_bronze>.addFlags("generate_gear", "generate_double_plate");
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:certus_quartz>.addFluid("liquid", false);
<material:nether_quartz>.addFluid("liquid", false);
<material:steel>.addFlags("generate_dense");
<material:iron>.addFlags("generate_dense", "generate_double_plate");
<material:tin>.addFlags("generate_dense", "generate_gear");
<material:aluminium>.addFlags("generate_dense");
<material:bronze>.addFlags("generate_dense");
<material:osmiridium>.addFlags("generate_dense");
<material:hsss>.addFlags("generate_dense");
<material:stainless_steel>.addFlags("generate_dense");
<material:platinum>.addFlags("generate_dense", "generate_gear");
<material:gold>.addFlags("generate_gear");
<material:brass>.addFlags("generate_gear");
<material:lead>.addFlags("generate_gear", "generate_dense");
<material:rose_gold>.addFlags("generate_gear");
<material:silver>.addFlags("generate_gear");
<material:sterling_silver>.addFlags("generate_gear");
<material:wrought_iron>.addFlags("generate_small_gear", "generate_rotor", "generate_spring", "generate_spring_small", "generate_round");
<material:netherrack>.addFlags("no_unification");
<material:wheat>.addFlags("no_unification");
<material:electrotine>.addFlags("generate_plate");
<material:ruridit>.addFlags( "generate_bolt_screw");
<material:ruridit>.addFluid("liquid", true);
<material:europium>.addFlags( "generate_bolt_screw");
<material:americium>.addFlags("generate_dense");
<material:naquadria>.addFlags("generate_dense");
<material:carbon>.addFlags("generate_dense");
<material:trinaquadalloy>.addFlags("generate_dense");
<material:enriched_naquadah_trinium_europium_duranide>.addFlags("generate_dense");
<material:trinium>.addFlags("generate_dense");
<material:rhodium_plated_palladium>.addFlags("generate_foil");
<material:darmstadtium>.addFlags("generate_foil");


// --- Новые материалы

// - Без категории

// Сухой лед
var dryIce = MaterialBuilder(32050, "dry_ice")
    .fluid("liquid", false)
    .fluidTemp(293)
    .dust()
    .color(0xB4CAD6)
    .iconSet("DIAMOND")
    .flags(["decomposition_by_electrolyzing"])
    .components([<material:carbon> * 1, <material:oxygen> * 2])
    .build();

// Изменчивый кристал
var fluix = MaterialBuilder(32051, "fluix")
    .fluid("fluid", false)
    .fluidTemp(1200)
    .dust()
    .color(0x674FAF)
    .iconSet("QUARTZ")
    .flags([
        "generate_lens", 
        "generate_plate",
        "decomposition_by_electrolyzing", 
        "crystallizable"])
    .components([<material:silicon> * 2, <material:oxygen> * 4, <material:redstone> * 1])
    .build();

// Заряженный изменчивый кристал
var chargedCertusQuartz = MaterialBuilder(32052, "charged_certus_quartz")
    .fluid("fluid", false)
    .fluidTemp(1200)
    .dust()
    .color(0xCFDAFF)
    .iconSet("QUARTZ")
    .flags([
        "generate_lens", 
        "generate_plate",
        "decomposition_by_electrolyzing", 
        "crystallizable"])
    .components([<material:silicon> * 1,<material:oxygen> * 2])
    .build();

// Дэш
var desh = MaterialBuilder(32053, "desh")
    .dust()
    .fluid("fluid", false)
    .fluidTemp(2200)
    .color(0x2b2d31)
    .iconSet("FLINT")
    .ore()
    .flags([
        "generate_plate", 
        "generate_dense"])
    .build();

// Плотный лед
var denseIce = MaterialBuilder(32054, "dense_ice")
    .dust()
    .fluid("fluid", false)
    .fluidTemp(0)
    .color(0x5c7297)
    .flags(["generate_plate", "generate_dense"])
    .build();

// Метеоритное железо
var meteoricIron = MaterialBuilder(32055, "meteoric_iron")
    .dust()
    .fluid("fluid", false)
    .fluidTemp(2200)
    .color(0x40311d)
    .flags(["generate_plate", "generate_dense"])
    .build();

// - Породы планет

// Mercury
MaterialBuilder(32123, "stone_mercury").dust().color(0x727272).build();

// Venus
MaterialBuilder(32124, "stone_venus").dust().color(0xA86540).build();

// Moon
MaterialBuilder(32125, "stone_moon").dust().color(0xFFFFFF).build();

// Mars
MaterialBuilder(32126, "stone_mars").dust().color(0x431401).build();

// Phobos
MaterialBuilder(32127, "stone_phobos").dust().color(0x8c7965).build();

// Deimos
MaterialBuilder(32128, "stone_deimos").dust().color(0xcbb48c).build();

// Ceres
MaterialBuilder(32129, "stone_ceres").dust().color(0x757573).build();

// Asteroids
MaterialBuilder(32130, "stone_asteroid_black").dust().color(0x2f2d2a).build();
MaterialBuilder(32131, "stone_asteroid_gray").dust().color(0x3a3a3a).build();
MaterialBuilder(32132, "stone_asteroid_lightgray").dust().color(0x535250).build();

// Jupiter
MaterialBuilder(32133, "stone_jupiter").dust().color(0xfdc890).build();

// IO
MaterialBuilder(32134, "stone_io").dust().color(0xac8033).build();

// Europa
MaterialBuilder(32135, "stone_europa").dust().color(0x767069).build();

// Ganymede
MaterialBuilder(32136, "stone_ganymede").dust().color(0x5d5851).build();

// Callisto
MaterialBuilder(32137, "stone_callisto").dust().color(0x6a5447).build();

// Saturn
MaterialBuilder(32138, "stone_saturn").dust().color(0xb57b51).build();

// Rhea
MaterialBuilder(32139, "stone_rhea").dust().color(0x6c6c6c).build();

// Titan
MaterialBuilder(32140, "stone_titan").dust().color(0x584737).build();

// Iapetus
MaterialBuilder(32141, "stone_iapetus").dust().color(0x4c371f).build();

// Uranus
MaterialBuilder(32142, "stone_uranus").dust().color(0xa7c6f6).build();

// Oberon
MaterialBuilder(32143, "stone_oberon").dust().color(0x78667b).build();

// Neptune
MaterialBuilder(32144, "stone_neptune").dust().color(0x226ea1).build();

// Triton
MaterialBuilder(32145, "stone_triton").dust().color(0x807a80).build();

// Pluto
MaterialBuilder(32146, "stone_pluto").dust().color(0x757674).build();

// Eris
MaterialBuilder(32147, "stone_eris").dust().color(0xc1c1bd).build();

// - Атмосферы планет

// Mercury
MaterialBuilder(32200, "mercury_air").fluid("gas", false).color(0x8E8E8E).build();
MaterialBuilder(32201, "mercury_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x8E8E8E).build();

// Venus
MaterialBuilder(32202, "venus_air").fluid("gas", false).color(0xAC815C).build();
MaterialBuilder(32203, "venus_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xAC815C).build();

// Moon
MaterialBuilder(32204, "moon_air").fluid("gas", false).color(0xBEC1B6).build();
MaterialBuilder(32205, "moon_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xBEC1B6).build();

// Mars
MaterialBuilder(32206, "mars_air").fluid("gas", false).color(0x9D5C4B).build();
MaterialBuilder(32207, "mars_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x9D5C4B).build();

// Jupiter
MaterialBuilder(32208, "jupiter_air").fluid("gas", false).color(0x9F7652).build();
MaterialBuilder(32209, "jupiter_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x9F7652).build();

// IO
MaterialBuilder(32210, "io_air").fluid("gas", false).color(0xDED866).build();
MaterialBuilder(32211, "io_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xDED866).build();

// Europa
MaterialBuilder(32212, "europa_air").fluid("gas", false).color(0xAA907C).build();
MaterialBuilder(32213, "europa_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xAA907C).build();

// Callisto
MaterialBuilder(32214, "callisto_air").fluid("gas", false).color(0x736655).build();
MaterialBuilder(32215, "callisto_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x736655).build();

// Saturn
MaterialBuilder(32216, "saturn_air").fluid("gas", false).color(0xF1D88C).build();
MaterialBuilder(32217, "saturn_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xF1D88C).build();

// Titan
MaterialBuilder(32218, "titan_air").fluid("gas", false).color(0x4F7755).build();
MaterialBuilder(32219, "titan_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x4F7755).build();

// Uran
MaterialBuilder(32220, "uranus_air").fluid("gas", false).color(0xA0EAF5).build();
MaterialBuilder(32221, "uranus_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xA0EAF5).build();

// Neptune
MaterialBuilder(32222, "neptune_air").fluid("gas", false).color(0x6793E3).build();
MaterialBuilder(32223, "neptune_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0x6793E3).build();

// Triton
MaterialBuilder(32224, "triton_air").fluid("gas", false).color(0xCCA9bA).build();
MaterialBuilder(32225, "triton_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xCCA9bA).build();

// Pluto
MaterialBuilder(32226, "pluto_air").fluid("gas", false).color(0xCDA787).build();
MaterialBuilder(32227, "pluto_liquid_air").fluid("fluid", false).fluidTemp(32).flags(["no_unification"]).color(0xCDA787).build();