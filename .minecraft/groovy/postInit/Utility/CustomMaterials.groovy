
// import gregtech.api.GregTechAPI.PostMaterialEvent
// import gregtech.api.GregTechAPI.MaterialEvent
// import gregtech.api.unification.material.Material


// // --- Кастомные настройки материалов

// // Новые руды
// material('bismuth').addOre(1, 1, true)
// material('perlite').addOre(1, 1, true)
// material('uvarovite').addOre(1, 1, true)
// material('manganese').addOre(1, 1, true)
// material('arsenic').addOre(1, 1, true)
// material('iridium').addOre(1, 1, true)
// material('osmium').addOre(1, 1, true)
// material('chrome').addOre(1, 1, true)
// material('vanadium').addOre(1, 1, true)
// material('antimony').addOre(1, 1, true)
// material('rutile').addOre(1, 1, true)
// material('silicon').addOre(1, 1, true)
// material('uranium').addOre(1, 1, true)
// material('uranium_235').addOre(1, 1, true)
// material('niobium').addOre(1, 1, true)
// material('yttrium').addOre(1, 1, true)
// material('gallium').addOre(1, 1, true)
// material('titanium').addOre(1, 1, true)
// material('borax').addOre(1, 1, true)
// material('cadmium').addOre(1, 1, true)
// material('caesium').addOre(1, 1, true)
// material('samarium').addOre(1, 1, true)
// material('cerium').addOre(1, 1, true)
// material('lanthanum').addOre(1, 1, true)
// material('tungsten').addOre(1, 1, true)
// material('naquadah_enriched').addOre(1, 1, true)
// material('glowstone').addOre(1, 1, true)

// event_manager.listen { PostMaterialEvent event ->
//     // Другое
//     material('salt_water').setMaterialRGB(0x1F5099)
//     material('glowstone').setFormula("Au(Si(FeS2)5(CrAl2O3)Hg3)", true)
//     material('red_steel').addFlags("generate_long_rod", "generate_bolt_screw")
//     material('blue_steel').addFlags("generate_long_rod", "generate_bolt_screw")
//     material('black_steel').addFlags("generate_long_rod", "generate_dense", "generate_bolt_screw")
//     material('magnesium').addFlags("generate_plate")
//     material('titanium').addFlags("generate_foil", "generate_dense")
//     material('zinc').addFlags("generate_long_rod", "generate_gear", "generate_bolt_screw", "generate_bolt")
//     material('nickel').addFlags("generate_long_rod", "generate_gear", "generate_bolt_screw", "generate_bolt")
//     material('copper').addFlags("generate_long_rod", "generate_dense", "generate_gear", "generate_bolt_screw")
//     material('bismuth').addFlags("generate_long_rod", "generate_gear", "generate_plate", "generate_bolt_screw", "generate_bolt")
//     material('bismuth_bronze').addFlags("generate_gear")
//     material('certus_quartz').addFlags("generate_rod", "generate_bolt_screw")
//     material('nether_quartz').addFlags("generate_rod", "generate_bolt_screw")
//     material('certus_quartz').addFluid("liquid", false)
//     material('nether_quartz').addFluid("liquid", false)
//     material('steel').addFlags("generate_dense")
//     material('iron').addFlags("generate_dense")
//     material('tin').addFlags("generate_dense", "generate_gear")
//     material('aluminium').addFlags("generate_dense")
//     material('bronze').addFlags("generate_dense")
//     material('osmiridium').addFlags("generate_dense")
//     material('hsss').addFlags("generate_dense")
//     material('stainless_steel').addFlags("generate_dense")
//     material('platinum').addFlags("generate_dense", "generate_gear")
//     material('gold').addFlags("generate_gear")
//     material('brass').addFlags("generate_gear")
//     material('lead').addFlags("generate_gear", "generate_dense")
//     material('rose_gold').addFlags("generate_gear")
//     material('silver').addFlags("generate_gear")
//     material('sterling_silver').addFlags("generate_gear")
//     material('wrought_iron').addFlags("generate_small_gear", "generate_rotor", "generate_spring", "generate_spring_small", "generate_round")
//     material('netherrack').addFlags("no_unification")
//     material('wheat').addFlags("no_unification")
//     material('electrotine').addFlags("generate_plate")
//     material('ruridit').addFlags( "generate_bolt_screw")
//     material('ruridit')addFluid("liquid", true)
//     material('europium').addFlags( "generate_bolt_screw")
//     material('americium').addFlags("generate_dense")
//     material('naquadria').addFlags("generate_dense")
//     material('carbon').addFlags("generate_dense")
//     material('trinaquadalloy').addFlags("generate_dense")
//     material('enriched_naquadah_trinium_europium_duranide').addFlags("generate_dense")
//     material('trinium').addFlags("generate_dense")
//     material('rhodium_plated_palladium').addFlags("generate_foil")
//     material('darmstadtium').addFlags("generate_foil")
// }

// // --- Новые материалы

// event_manager.listen { MaterialEvent event ->

//     // - Без категории

//     // Сухой лед
//     def dryIce = new Material.Builder(32050, "dry_ice")
//         .fluid("liquid", false)
//         .fluidTemp(293)
//         .dust()
//         .color(0xB4CAD6)
//         .iconSet("DIAMOND")
//         .flags(["decomposition_by_electrolyzing"])
//         .components([material('carbon') * 1, material('oxygen') * 2])
//         .build()

//     // Изменчивый кристал
//     def fluix = new Material.Builder(32051, "fluix")
//         .fluid("fluid", false)
//         .fluidTemp(1200)
//         .dust()
//         .color(0x674FAF)
//         .iconSet("QUARTZ")
//         .flags([
//             "generate_lens", 
//             "generate_plate",
//             "decomposition_by_electrolyzing", 
//             "crystallizable"])
//         .components([material('silicon') * 2, material('oxygen') * 4, material('redstone') * 1])
//         .build()

//     // Заряженный изменчивый кристал
//     def chargedCertusQuartz = new Material.Builder(32052, "charged_certus_quartz")
//         .fluid("fluid", false)
//         .fluidTemp(1200)
//         .dust()
//         .color(0xCFDAFF)
//         .iconSet("QUARTZ")
//         .flags([
//             "generate_lens", 
//             "generate_plate",
//             "decomposition_by_electrolyzing", 
//             "crystallizable"])
//         .components([material('silicon') * 1,material('oxygen') * 2])
//         .build()

//     // Дэш
//     def desh = new Material.Builder(32053, "desh")
//         .dust()
//         .fluid("fluid", false)
//         .fluidTemp(2200)
//         .color(0x2b2d31)
//         .iconSet("FLINT")
//         .ore()
//         .flags([
//             "generate_plate", 
//             "generate_dense"])
//         .build()

//     // Плотный лед
//     def denseIce = new Material.Builder(32054, "dense_ice")
//         .dust()
//         .fluid("fluid", false)
//         .fluidTemp(0)
//         .color(0x5c7297)
//         .flags(["generate_plate", "generate_dense"])
//         .build()

//     // Метеоритное железо
//     def meteoricIron = new Material.Builder(32055, "meteoric_iron")
//         .dust()
//         .fluid("fluid", false)
//         .fluidTemp(2200)
//         .color(0x40311d)
//         .flags(["generate_plate", "generate_dense"])
//         .build()
// }