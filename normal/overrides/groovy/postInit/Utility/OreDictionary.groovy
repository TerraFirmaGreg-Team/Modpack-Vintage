// import postInit.Utility.ItemArray


// ////////////////////////////////////////////////////////
// // --- TFC --- /////////////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление

// // Raw Igneous Intrusive Rocks To One OreDict
// for (item in ItemArray.rawIgneousIntrusive) {
// 	ore('rawIgneousIntrusive').add(item)
// }

// // Raw Igneous Extrusive Rocks To One OreDict
// for (item in ItemArray.rawIgneousExtrusive) {
// 	ore('rawIgneousExtrusive').add(item)
// }

// // Rock Metamorphic Rocks To One OreDict
// for (item in ItemArray.rawMetamorphic) {
// 	ore('rawMetamorphic').add(item)
// }

// // Rock Sedimentary Rocks To One OreDict
// for (item in ItemArray.rawSedimentary) {
// 	ore('rawSedimentary').add(item)
// }

// // OreDicionary for all seeds
// for (item in ItemArray.allSeeds) {
// 	ore('allSeeds').add(item)
// }

// for (item in ItemArray.allLooms) {
// 	ore('loom').add(item)
// }

// // OreDicionary for all slab
// for (item in ItemArray.allSlabsSmooth) {
// 	ore('slabStone').add(item)
// }

// // OreDictionary for all fertilizers
// for (item in ItemArray.dustFertilizerArray) {
//     ore('dustFertilizer').add(item)
// }

// ore('itemBeeswax').add(item('firmalife:beeswax'))
// ore('sugarcane').add(item('tfc:food/sugarcane'))
// ore('ingotUnfinishedWroughtIron').add(item('tfc:metal/ingot/wrought_iron'))

// // Single Sheets = Single Plates
// ore('sheetCopper').add(metaitem('plateCopper'))
// ore('sheetBismuth').add(metaitem('plateBismuth'))
// ore('sheetBrass').add(metaitem('plateBrass'))
// ore('sheetGold').add(metaitem('plateGold'))
// ore('sheetLead').add(metaitem('plateLead'))
// ore('sheetNickel').add(metaitem('plateNickel'))
// ore('sheetRoseGold').add(metaitem('plateRoseGold'))
// ore('sheetSilver').add(metaitem('plateSilver'))
// ore('sheetTin').add(metaitem('plateTin'))
// ore('sheetZinc').add(metaitem('plateZinc'))
// ore('sheetSterlingSilver').add(metaitem('plateSterlingSilver'))
// ore('sheetPlatinum').add(metaitem('platePlatinum'))
// ore('sheetBismuthBronze').add(metaitem('plateBismuthBronze'))
// ore('sheetBronze').add(metaitem('plateBronze'))
// ore('sheetBlackBronze').add(metaitem('plateBlackBronze'))
// ore('sheetWroughtIron').add(metaitem('plateWroughtIron'))
// ore('sheetSteel').add(metaitem('plateSteel'))
// ore('sheetBlackSteel').add(metaitem('plateBlackSteel'))
// ore('sheetBlueSteel').add(metaitem('plateBlueSteel'))
// ore('sheetRedSteel').add(metaitem('plateRedSteel'))

// // Double Sheets = Double Plates
// ore('sheetDoubleCopper').add(metaitem('plateDoubleCopper'))
// ore('sheetDoubleBismuth').add(metaitem('plateDoubleBismuth'))
// ore('sheetDoubleBrass').add(metaitem('plateDoubleBrass'))
// ore('sheetDoubleGold').add(metaitem('plateDoubleGold'))
// ore('sheetDoubleLead').add(metaitem('plateDoubleLead'))
// ore('sheetDoubleNickel').add(metaitem('plateDoubleNickel'))
// ore('sheetDoubleRoseGold').add(metaitem('plateDoubleRoseGold'))
// ore('sheetDoubleSilver').add(metaitem('plateDoubleSilver'))
// ore('sheetDoubleTin').add(metaitem('plateDoubleTin'))
// ore('sheetDoubleZinc').add(metaitem('plateDoubleZinc'))
// ore('sheetDoubleSterlingSilver').add(metaitem('plateDoubleSterlingSilver'))
// ore('sheetDoublePlatinum').add(metaitem('plateDoublePlatinum'))
// ore('sheetDoubleBismuthBronze').add(metaitem('plateDoubleBismuthBronze'))
// ore('sheetDoubleBronze').add(metaitem('plateDoubleBronze'))
// ore('sheetDoubleBlackBronze').add(metaitem('plateDoubleBlackBronze'))
// ore('sheetDoubleWroughtIron').add(metaitem('plateDoubleWroughtIron'))
// ore('sheetDoubleSteel').add(metaitem('plateDoubleSteel'))
// ore('sheetDoubleBlackSteel').add(metaitem('plateDoubleBlackSteel'))
// ore('sheetDoubleBlueSteel').add(metaitem('plateDoubleBlueSteel'))
// ore('sheetDoubleRedSteel').add(metaitem('plateDoubleRedSteel'))

// // BronzeAny Single Sheets
// ore('sheetAnyBronze').add(metaitem('plateBronze'), metaitem('plateBlackBronze'), metaitem('plateBismuthBronze'))

// // BronzeAny Double Sheets
// ore('sheetDoubleAnyBronze').add(metaitem('plateDoubleBronze'), metaitem('plateDoubleBlackBronze'), metaitem('plateDoubleBismuthBronze'))

// // --- Удаление


// ore('gemDiamond').remove(item('tfc:gem/diamond', 2))
// ore('gemLapis').remove(item('tfc:ore/lapis_lazuli'))
// ore('gemEmerald').remove(item('tfc:gem/emerald', 2))
// ore('dustSalt').remove(item('tfc:powder/salt'))
// ore('dustSaltpeter').remove(item('tfc:powder/saltpeter'))
// ore('dustGraphite').remove(item('tfc:powder/graphite'))
// ore('logWood').remove(item('tfc:stick_bundle'))
// ore('sheetDoubleAnyBronze').remove(item('tfc:metal/double_sheet/bismuth_bronze'), item('tfc:metal/double_sheet/bronze'), item('tfc:metal/double_sheet/black_bronze'))
// ore('gemSulfur').remove(item('tfc:ore/sulfur'))
// ore('gemSaltpeter').remove(item('tfc:ore/saltpeter'))
// ore('gemGraphite').remove(item('tfc:ore/graphite'))

// // Removing OreDicts from TFC ingots
// ore('ingotBismuth').remove(item('tfc:metal/ingot/bismuth'))
// ore('ingotBismuthBronze').remove(item('tfc:metal/ingot/bismuth_bronze'))
// ore('ingotBlackBronze').remove(item('tfc:metal/ingot/black_bronze'))
// ore('ingotBrass').remove(item('tfc:metal/ingot/brass'))
// ore('ingotBronze').remove(item('tfc:metal/ingot/bronze'))
// ore('ingotCopper').remove(item('tfc:metal/ingot/copper'))
// ore('ingotGold').remove(item('tfc:metal/ingot/gold'))
// ore('ingotLead').remove(item('tfc:metal/ingot/lead'))
// ore('ingotNickel').remove(item('tfc:metal/ingot/nickel'))
// ore('ingotRoseGold').remove(item('tfc:metal/ingot/rose_gold'))
// ore('ingotSilver').remove(item('tfc:metal/ingot/silver'))
// ore('ingotTin').remove(item('tfc:metal/ingot/tin'))
// ore('ingotZinc').remove(item('tfc:metal/ingot/zinc'))
// ore('ingotWroughtIron').remove(item('tfc:metal/ingot/wrought_iron'))
// ore('ingotSterlingSilver').remove(item('tfc:metal/ingot/sterling_silver'))
// ore('ingotSteel').remove(item('tfc:metal/ingot/steel'))
// ore('ingotPlatinum').remove(item('tfc:metal/ingot/platinum'))
// ore('ingotBlackSteel').remove(item('tfc:metal/ingot/black_steel'))
// ore('ingotBlueSteel').remove(item('tfc:metal/ingot/blue_steel'))
// ore('ingotRedSteel').remove(item('tfc:metal/ingot/red_steel'))

// // Removing OreDicts from TFC sheets
// ore('sheetCopper').remove(item('tfc:metal/sheet/copper'))
// ore('sheetBismuth').remove(item('tfc:metal/sheet/bismuth'))
// ore('sheetBrass').remove(item('tfc:metal/sheet/brass'))
// ore('sheetGold').remove(item('tfc:metal/sheet/gold'))
// ore('sheetLead').remove(item('tfc:metal/sheet/lead'))
// ore('sheetNickel').remove(item('tfc:metal/sheet/nickel'))
// ore('sheetRoseGold').remove(item('tfc:metal/sheet/rose_gold'))
// ore('sheetSilver').remove(item('tfc:metal/sheet/silver'))
// ore('sheetTin').remove(item('tfc:metal/sheet/tin'))
// ore('sheetZinc').remove(item('tfc:metal/sheet/zinc'))
// ore('sheetSterlingSilver').remove(item('tfc:metal/sheet/sterling_silver'))
// ore('sheetPlatinum').remove(item('tfc:metal/sheet/platinum'))
// ore('sheetBismuthBronze').remove(item('tfc:metal/sheet/bismuth_bronze'))
// ore('sheetBronze').remove(item('tfc:metal/sheet/bronze'))
// ore('sheetBlackBronze').remove(item('tfc:metal/sheet/black_bronze'))
// ore('sheetWroughtIron').remove(item('tfc:metal/sheet/wrought_iron'))
// ore('sheetSteel').remove(item('tfc:metal/sheet/steel'))
// ore('sheetBlackSteel').remove(item('tfc:metal/sheet/black_steel'))
// ore('sheetBlueSteel').remove(item('tfc:metal/sheet/blue_steel'))
// ore('sheetRedSteel').remove(item('tfc:metal/sheet/red_steel'))

// // Removing OreDicts from TFC double sheets
// ore('sheetDoubleCopper').remove(item('tfc:metal/double_sheet/copper'))
// ore('sheetDoubleBismuth').remove(item('tfc:metal/double_sheet/bismuth'))
// ore('sheetDoubleBrass').remove(item('tfc:metal/double_sheet/brass'))
// ore('sheetDoubleGold').remove(item('tfc:metal/double_sheet/gold'))
// ore('sheetDoubleLead').remove(item('tfc:metal/double_sheet/lead'))
// ore('sheetDoubleNickel').remove(item('tfc:metal/double_sheet/nickel'))
// ore('sheetDoubleRoseGold').remove(item('tfc:metal/double_sheet/rose_gold'))
// ore('sheetDoubleSilver').remove(item('tfc:metal/double_sheet/silver'))
// ore('sheetDoubleTin').remove(item('tfc:metal/double_sheet/tin'))
// ore('sheetDoubleZinc').remove(item('tfc:metal/double_sheet/zinc'))
// ore('sheetDoubleSterlingSilver').remove(item('tfc:metal/double_sheet/sterling_silver'))
// ore('sheetDoublePlatinum').remove(item('tfc:metal/double_sheet/platinum'))
// ore('sheetDoubleBismuthBronze').remove(item('tfc:metal/double_sheet/bismuth_bronze'))
// ore('sheetDoubleBronze').remove(item('tfc:metal/double_sheet/bronze'))
// ore('sheetDoubleBlackBronze').remove(item('tfc:metal/double_sheet/black_bronze'))
// ore('sheetDoubleWroughtIron').remove(item('tfc:metal/double_sheet/wrought_iron'))
// ore('sheetDoubleSteel').remove(item('tfc:metal/double_sheet/steel'))
// ore('sheetDoubleBlackSteel').remove(item('tfc:metal/double_sheet/black_steel'))
// ore('sheetDoubleBlueSteel').remove(item('tfc:metal/double_sheet/blue_steel'))
// ore('sheetDoubleRedSteel').remove(item('tfc:metal/double_sheet/red_steel'))

// for (item in ItemArray.allSaws) {
//     ore('saw').remove(item)
// }

// // Удаление OreDicts у TFCTech винтов
// ore('screwBismuth').remove(item('tfctech:metal/bismuth_screw'))
// ore('screwBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_screw'))
// ore('screwBlackBronze').remove(item('tfctech:metal/black_bronze_screw'))
// ore('screwBrass').remove(item('tfctech:metal/brass_screw'))
// ore('screwBronze').remove(item('tfctech:metal/bronze_screw'))
// ore('screwCopper').remove(item('tfctech:metal/copper_screw'))
// ore('screwGold').remove(item('tfctech:metal/gold_screw'))
// ore('screwLead').remove(item('tfctech:metal/lead_screw'))
// ore('screwNickel').remove(item('tfctech:metal/nickel_screw'))
// ore('screwSilver').remove(item('tfctech:metal/silver_screw'))
// ore('screwRoseGold').remove(item('tfctech:metal/rose_gold_screw'))
// ore('screwTin').remove(item('tfctech:metal/tin_screw'))
// ore('screwZinc').remove(item('tfctech:metal/zinc_screw'))
// ore('screwSterlingSilver').remove(item('tfctech:metal/sterling_silver_screw'))
// ore('screwWroughtIron').remove(item('tfctech:metal/wrought_iron_screw'))
// ore('screwPigIron').remove(item('tfctech:metal/pig_iron_screw'))
// ore('screwSteel').remove(item('tfctech:metal/steel_screw'))
// ore('screwPlatinum').remove(item('tfctech:metal/platinum_screw'))
// ore('screwBlackSteel').remove(item('tfctech:metal/black_steel_screw'))
// ore('screwBlueSteel').remove(item('tfctech:metal/blue_steel_screw'))
// ore('screwRedSteel').remove(item('tfctech:metal/red_steel_screw'))

// // Удаление OreDicts у TFCTech болтов
// ore('boltBismuth').remove(item('tfctech:metal/bismuth_bolt'))
// ore('boltBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_bolt'))
// ore('boltBlackBronze').remove(item('tfctech:metal/black_bronze_bolt'))
// ore('boltBrass').remove(item('tfctech:metal/brass_bolt'))
// ore('boltBronze').remove(item('tfctech:metal/bronze_bolt'))
// ore('boltCopper').remove(item('tfctech:metal/copper_bolt'))
// ore('boltGold').remove(item('tfctech:metal/gold_bolt'))
// ore('boltLead').remove(item('tfctech:metal/lead_bolt'))
// ore('boltNickel').remove(item('tfctech:metal/nickel_bolt'))
// ore('boltSilver').remove(item('tfctech:metal/silver_bolt'))
// ore('boltRoseGold').remove(item('tfctech:metal/rose_gold_bolt'))
// ore('boltTin').remove(item('tfctech:metal/tin_bolt'))
// ore('boltZinc').remove(item('tfctech:metal/zinc_bolt'))
// ore('boltSterlingSilver').remove(item('tfctech:metal/sterling_silver_bolt'))
// ore('boltWroughtIron').remove(item('tfctech:metal/wrought_iron_bolt'))
// ore('boltPigIron').remove(item('tfctech:metal/pig_iron_bolt'))
// ore('boltSteel').remove(item('tfctech:metal/steel_bolt'))
// ore('boltPlatinum').remove(item('tfctech:metal/platinum_bolt'))
// ore('boltBlackSteel').remove(item('tfctech:metal/black_steel_bolt'))
// ore('boltBlueSteel').remove(item('tfctech:metal/blue_steel_bolt'))
// ore('boltRedSteel').remove(item('tfctech:metal/red_steel_bolt'))

// // Удаление OreDicts у TFCTech шестеренок
// ore('gearBismuth').remove(item('tfctech:metal/bismuth_gear'))
// ore('gearBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_gear'))
// ore('gearBlackBronze').remove(item('tfctech:metal/black_bronze_gear'))
// ore('gearBrass').remove(item('tfctech:metal/brass_gear'))
// ore('gearBronze').remove(item('tfctech:metal/bronze_gear'))
// ore('gearCopper').remove(item('tfctech:metal/copper_gear'))
// ore('gearGold').remove(item('tfctech:metal/gold_gear'))
// ore('gearLead').remove(item('tfctech:metal/lead_gear'))
// ore('gearNickel').remove(item('tfctech:metal/nickel_gear'))
// ore('gearSilver').remove(item('tfctech:metal/silver_gear'))
// ore('gearRoseGold').remove(item('tfctech:metal/rose_gold_gear'))
// ore('gearTin').remove(item('tfctech:metal/tin_gear'))
// ore('gearZinc').remove(item('tfctech:metal/zinc_gear'))
// ore('gearSterlingSilver').remove(item('tfctech:metal/sterling_silver_gear'))
// ore('gearWroughtIron').remove(item('tfctech:metal/wrought_iron_gear'))
// ore('gearPigIron').remove(item('tfctech:metal/pig_iron_gear'))
// ore('gearSteel').remove(item('tfctech:metal/steel_gear'))
// ore('gearPlatinum').remove(item('tfctech:metal/platinum_gear'))
// ore('gearBlackSteel').remove(item('tfctech:metal/black_steel_gear'))
// ore('gearBlueSteel').remove(item('tfctech:metal/blue_steel_gear'))
// ore('gearRedSteel').remove(item('tfctech:metal/red_steel_gear'))

// // Удаление OreDicts у TFCTech длинных стержней
// ore('stickLongBismuth').remove(item('tfctech:metal/bismuth_long_rod'))
// ore('stickLongBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_long_rod'))
// ore('stickLongBlackBronze').remove(item('tfctech:metal/black_bronze_long_rod'))
// ore('stickLongBrass').remove(item('tfctech:metal/brass_long_rod'))
// ore('stickLongBronze').remove(item('tfctech:metal/bronze_long_rod'))
// ore('stickLongCopper').remove(item('tfctech:metal/copper_long_rod'))
// ore('stickLongGold').remove(item('tfctech:metal/gold_long_rod'))
// ore('stickLongLead').remove(item('tfctech:metal/lead_long_rod'))
// ore('stickLongNickel').remove(item('tfctech:metal/nickel_long_rod'))
// ore('stickLongSilver').remove(item('tfctech:metal/silver_long_rod'))
// ore('stickLongRoseGold').remove(item('tfctech:metal/rose_gold_long_rod'))
// ore('stickLongTin').remove(item('tfctech:metal/tin_long_rod'))
// ore('stickLongZinc').remove(item('tfctech:metal/zinc_long_rod'))
// ore('stickLongSterlingSilver').remove(item('tfctech:metal/sterling_silver_long_rod'))
// ore('stickLongWroughtIron').remove(item('tfctech:metal/wrought_iron_long_rod'))
// ore('stickLongPigIron').remove(item('tfctech:metal/pig_iron_long_rod'))
// ore('stickLongSteel').remove(item('tfctech:metal/steel_long_rod'))
// ore('stickLongPlatinum').remove(item('tfctech:metal/platinum_long_rod'))
// ore('stickLongBlackSteel').remove(item('tfctech:metal/black_steel_long_rod'))
// ore('stickLongBlueSteel').remove(item('tfctech:metal/blue_steel_long_rod'))
// ore('stickLongRedSteel').remove(item('tfctech:metal/red_steel_long_rod'))

// // Удаление OreDicts у TFCTech стержней
// ore('stickBismuth').remove(item('tfctech:metal/bismuth_rod'))
// ore('stickBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_rod'))
// ore('stickBlackBronze').remove(item('tfctech:metal/black_bronze_rod'))
// ore('stickBrass').remove(item('tfctech:metal/brass_rod'))
// ore('stickBronze').remove(item('tfctech:metal/bronze_rod'))
// ore('stickCopper').remove(item('tfctech:metal/copper_rod'))
// ore('stickGold').remove(item('tfctech:metal/gold_rod'))
// ore('stickLead').remove(item('tfctech:metal/lead_rod'))
// ore('stickNickel').remove(item('tfctech:metal/nickel_rod'))
// ore('stickSilver').remove(item('tfctech:metal/silver_rod'))
// ore('stickRoseGold').remove(item('tfctech:metal/rose_gold_rod'))
// ore('stickTin').remove(item('tfctech:metal/tin_rod'))
// ore('stickZinc').remove(item('tfctech:metal/zinc_rod'))
// ore('stickSterlingSilver').remove(item('tfctech:metal/sterling_silver_rod'))
// ore('stickWroughtIron').remove(item('tfctech:metal/wrought_iron_rod'))
// ore('stickPigIron').remove(item('tfctech:metal/pig_iron_rod'))
// ore('stickSteel').remove(item('tfctech:metal/steel_rod'))
// ore('stickPlatinum').remove(item('tfctech:metal/platinum_rod'))
// ore('stickBlackSteel').remove(item('tfctech:metal/black_steel_rod'))
// ore('stickBlueSteel').remove(item('tfctech:metal/blue_steel_rod'))
// ore('stickRedSteel').remove(item('tfctech:metal/red_steel_rod'))

// // Removing OreDicts from Gypsum
// ore('gemGypsum').remove(item('tfc:ore/gypsum'))

// ////////////////////////////////////////////////////////
// // --- GREGTECH --- ////////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление
// ore('damageTypeSlashing').addAll(ore('craftingToolSword'))


// // Wrought Iron + Iron
// ore('blockIronAny').add(item('minecraft:iron_block'), metaitem('blockWroughtIron'))
// ore('plateIronAny').add(metaitem('plateIron'), metaitem('plateWroughtIron'))
// ore('plateDoubleIronAny').add(metaitem('plateDoubleIron'), metaitem('plateDoubleWroughtIron'))
// ore('gearIronAny').add(metaitem('gearIron'), metaitem('gearWroughtIron'))
// ore('gearSmallIronAny').add(metaitem('gearSmallIron'), metaitem('gearSmallWroughtIron'))
// ore('springIronAny').add(metaitem('springIron'), metaitem('springWroughtIron'))
// ore('springSmallIronAny').add(metaitem('springSmallIron'), metaitem('springSmallWroughtIron'))
// ore('ringIronAny').add(metaitem('ringIron'), metaitem('ringWroughtIron'))
// ore('stickIronAny').add(metaitem('stickIron'), metaitem('stickWroughtIron'))
// ore('stickLongIronAny').add(metaitem('stickLongIron'), metaitem('stickLongWroughtIron'))
// ore('boltIronAny').add(metaitem('boltIron'), metaitem('boltWroughtIron'))
// ore('screwIronAny').add(metaitem('screwIron'), metaitem('screwWroughtIron'))
// ore('rotorIronAny').add(metaitem('rotorIron'), metaitem('rotorWroughtIron'))
// ore('toolHeadBuzzSawIronAny').add(metaitem('toolHeadBuzzSawIron'), metaitem('toolHeadBuzzSawWroughtIron'))

// // BronzeAny Screws
// ore('screwBronzeAny').add(metaitem('screwBismuthBronze'), metaitem('screwBronze'), metaitem('screwBlackBronze'))

// // Chipped Gems from GT
// ore('gemChipped').add(item('gregtech:meta_gem_chipped:*'))
// // Flawed Gems from GT
// ore('gemFlawed').add(item('gregtech:meta_gem_flawed:*'))
// // Flawless Gems from GT
// ore('gemFlawless').add(item('gregtech:meta_gem_flawless:*'))
// // Exquisite Gems from GT
// ore('gemExquisite').add(item('gregtech:meta_gem_exquisite:*'))

// // --- Удаление

// ore('stoneBasalt').remove(item('gregtech:stone_smooth', 3))
// ore('stoneMarble').remove(item('gregtech:stone_smooth', 2))

// ////////////////////////////////////////////////////////
// // --- AE2 --- /////////////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление

// // Интерфейсы
// ore('ae2.interface.item').add([
//     item('appliedenergistics2:interface'),
//     item('appliedenergistics2:part', 440)
// ])

// // Жидкостные интерфейсы

// ore('ae2.interface.fluid').add([
//     item('appliedenergistics2:fluid_interface'),
//     item('appliedenergistics2:part', 441)
// ])

// // Стеклянный кабель
// for (glassCable in ItemArray.glassCables) {
//     ore('ae2.cable.glass').add(glassCable)
//     if (glassCable has item('appliedenergistics2:part', 16)) {}
//     else {
//         ore('ae2.cable.glass.colors').add(glassCable)
//     }
// }

// // Закрытый кабель
// for (coveredCable in ItemArray.coveredCables) {
//     ore('ae2.cable.covered').add(coveredCable)
//     if (coveredCable has item('appliedenergistics2:part:', 36)) {}
//     else {
//         ore('ae2.cable.covered.colors').add(coveredCable)
//     }
// }

// // Умный кабель
// for (smartCable in ItemArray.smartCables) {
//     ore('ae2.cable.smart').add(smartCable)
//     if (smartCable has item('appliedenergistics2:part', 56)) {}
//     else {
//         ore('ae2.cable.smart.colors').add(smartCable)
//     }
// }

// // Плотный закрытый кабель
// for (denseCoveredCable in ItemArray.denseCoveredCables) {
//     ore('ae2.cable.dense.covered').add(denseCoveredCable)
//     if (denseCoveredCable has item('appliedenergistics2:part', 516)) {}
//     else {
//         ore('ae2.cable.dense.covered.colors').add(denseCoveredCable)
//     }
// }

// // Плотный умный кабель
// for (denseSmartCable in ItemArray.denseSmartCables) {
//     ore('ae2.cable.dense.smart').add(denseSmartCable)
//     if (denseSmartCable has item('appliedenergistics2:part', 76)) {}
//     else {
//         ore('ae2.cable.dense.smart.colors').add(denseSmartCable)
//     }
// }

// // Шарик с краской
// for (paintBall in ItemArray.paintBalls) {
//     ore('ae2.paint.ball.colors').add(paintBall)
// }

// // Люмен шарик с краской
// for (paintBallLumen in ItemArray.paintBallsLumen) {
// 	ore('ae2.paint.ball.colors').add(paintBallLumen)
//     ore('ae2.paint.ball.colors.lumen').add(paintBallLumen)
// }

// // Изменчивый кристал
// ore('gemFluix').add(item('appliedenergistics2:material', 7))
// ore('blockFluix').add(item('appliedenergistics2:fluix_block'))

// // Заряженный изменчивый кристал
// ore('gemChargedCertusQuartz').add(item('appliedenergistics2:material', 1))

// // --- Удаление
// // Пыль жемчуга эндера
// ore('dustEnder').remove(item('appliedenergistics2:material', 46))
// ore('dustEnderPearl').remove(item('appliedenergistics2:material', 46))
// // Истинный кварц
// ore('crystalCertusQuartz').remove(item('appliedenergistics2:material'))
// // Силикон
// ore('itemSilicon').remove(item('appliedenergistics2:material', 5))

// ////////////////////////////////////////////////////////
// // --- PROJECTRED --- //////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление

// ore('dustIlluminar').add(illuminarsArray)
// ore('lampBlockDeactivated').add(deactivatedLampsArray)
// ore('lampBlockActivated').add(activatedLampsArray)
// ore('lampButton').add(buttonLampsArray)
// ore('lampButtonFeedback').add(feedbackLampsArray)
// ore('lampLanternDeactivated').add(deactivatedLanternLampsArray)
// ore('lampLanternActivated').add(activatedLanternLampsArray)
// ore('lampFixtureDeactivated').add(deactivatedFixtureLampsArray)
// ore('lampFixtureActivated').add(deactivatedFixtureLampsArray)
// ore('lampFalloutDeactivated').add(deactivatedFalloutLampsArray)
// ore('lampFalloutActivated').add(activatedFalloutLampsArray)
// ore('lampCageDeactivated').add(deactivatedCageLampsArray)
// ore('lampCageActivated').add(activatedCageLampsArray)

// // --- Удаление

// ore('ingotCopper').remove(item('projectred-core:resource_item', 100))
// ore('ingotTin').remove(item('projectred-core:resource_item', 101))
// ore('ingotSilver').remove(item('projectred-core:resource_item', 102))
// ore('ingotRedAlloy').remove(item('projectred-core:resource_item', 103))
// ore('ingotElectrotineAlloy').remove(item('projectred-core:resource_item', 104))
// ore('gemRuby').remove(item('projectred-core:resource_item', 200))
// ore('gemSapphire').remove(item('projectred-core:resource_item', 201))
// ore('gemPeridot').remove(item('projectred-core:resource_item', 202))
// ore('dustElectrotine').remove(item('projectred-core:resource_item', 105))

// ////////////////////////////////////////////////////////
// // --- TFC-Florae --- //////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление

// ore('ingotClay').add(item('tfcflorae:ceramics/stoneware/stoneware_clay'))
// ore('ingotClay').add(item('tfcflorae:ceramics/kaolinite/kaolinite_clay'))
// ore('ingotClay').add(item('tfcflorae:ceramics/earthenware/earthenware_clay'))


// // --- Удаление

// ore('stickWood').remove(item('tfcflorae:tools/walking_stick'))

// ////////////////////////////////////////////////////////
// // --- TFC-Medicinal --- ///////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление

// ore('herbalExtractHolder').add([
//     item('tfc:plants/raddia_grass'),
//     item('tfc:plants/bromegrass'),
//     item('tfc:plants/woolly_bush'),
//     item('tfc:plants/prairie_junegrass'),
//     item('tfc:plants/timothy_grass'),
//     item('tfc:plants/tall_fescue_grass'),
//     item('tfc:plants/orchard_grass'),
//     item('tfc:plants/winged_kelp'),
//     item('tfc:plants/turtle_grass'),
//     item('tfc:plants/star_grass'),
//     item('tfc:plants/seaweed'),
//     item('tfc:plants/seagrass'),
//     item('tfc:plants/pondweed'),
//     item('tfc:plants/manatee_grass'),
//     item('tfc:plants/leafy_kelp'),
//     item('tfc:plants/giant_kelp'),
//     item('tfc:plants/eel_grass'),
//     item('tfc:plants/coontail'),
//     item('tfc:plants/silvervein_creeper'),
//     item('tfc:plants/jungle_vine'),
//     item('tfc:plants/japanese_ivy'),
//     item('tfc:plants/rattan'),
//     item('tfc:plants/lipstick_palm'),
//     item('tfc:plants/summer_asphodel'),
//     item('tfc:plants/red_sealing_wax_palm'),
//     item('tfc:plants/queen_sago'),
//     item('tfc:plants/giant_feather_grass'),
//     item('tfc:plants/giant_elephant_ear'),
//     item('tfc:plants/dwarf_sugar_palm'),
//     item('tfc:plants/drakensberg_cycad'),
//     item('tfc:plants/climbing_cactus'),
//     item('tfc:plants/takakia'),
//     item('tfc:plants/tackweed'),
//     item('tfc:plants/reed_mannagrass'),
//     item('tfcflorae::coral/fan/tube/green'),
//     item('tfcflorae::coral/fan/fire/green'),
//     item('tfcflorae::coral/fan/bubble/green'),
//     item('tfcflorae::coral/fan/brain/green'),
//     item('tfcflorae::coral/fan/bubble/cyan'),
//     item('tfcflorae::coral/fan/tube/lime'),
//     item('tfcflorae::coral/tube/green'),
//     item('tfcflorae::coral/fire/green'),
//     item('tfcflorae::coral/bubble/green'),
//     item('tfcflorae::coral/bubble/cyan'),
//     item('tfcflorae::coral/fire/cyan'),
//     item('tfcflorae::coral/tube/lime'),
//     item('tfcflorae::coral/fire/lime'),
//     item('tfcflorae::plants/coontail'),
//     item('tfcflorae::plants/eel_grass'),
//     item('tfcflorae::plants/giant_kelp'),
//     item('tfcflorae::plants/leafy_kelp'),
//     item('tfcflorae::plants/hanging_vine'),
//     item('tfcflorae::plants/jungle_vine'),
//     item('tfcflorae::plants/jungle_vine_creeping'),
//     item('tfcflorae::plants/takakia'),
//     item('tfcflorae::plants/leafy_kelp')
// ])
// ore('livelyExtractHolder').add([
//     item('tfc:plants/bromelia_laciniosa'),
//     item('tfc:plants/pygmy_date_palm'),
//     item('tfc:plants/zimbabwe_aloe')
// ])
// ore('energeticExtractHolder').add([
//     item('tfcflorae::plants/glowshroom'),
//     item('tfcflorae::plants/glowing_sea_banana'),
//     item('tfcflorae::coral/fan/horn/lime'),
//     item('tfcflorae::coral/fan/bubble/lime'),
//     item('tfcflorae::coral/fan/brain/lime'),
//     item('tfcflorae::coral/brain/green'),
//     item('tfcflorae::coral/horn/lime'),
//     item('tfcflorae::coral/brain/lime'),
//     item('tfcflorae::coral/bubble/lime')
// ])
// ore('focusedExtractHolder').add([
//     item('tfcflorae::crop/product/indigo'),
//     item('tfcflorae::coral/bubble/magenta'),
//     item('tfcflorae::coral/tube/magenta'),
//     item('tfcflorae::coral/fire/purple'),
//     item('tfcflorae::coral/tube/purple'),
//     item('tfcflorae::coral/fan/bubble/pink'),
//     item('tfcflorae::coral/fan/fire/purple')
// ])
// ore('earthyExtractHolder').add([
//     item('tfc:plants/bunch_grass_floating'),
//     item('tfc:plants/cattail'),
//     item('tfc:plants/milfoil'),
//     item('tfc:plants/liana'),
//     item('tfc:plants/bunch_grass_reed'),
//     item('tfcflorae::plants/liana_creeping'),
//     item('tfcflorae::plants/liana'),
//     item('tfcflorae::plants/milfoil'),
//     item('tfcflorae::plants/tackweed'),
//     item('tfcflorae::plants/badderlocks'),
//     item('tfcflorae::food/dried/cannabis_leaf'),
//     item('tfcflorae::food/dried/coca_leaf'),
//     item('tfcflorae::food/dried/tobacco_leaf'),
//     item('tfcflorae::food/dried/cannabis_bud'),
//     item('tfcflorae::live_starfish'),
//     item('tfcflorae::coral/bubble/yellow'),
//     item('tfcflorae::food/clove'),
//     item('tfcflorae::food/roasted/parasol_mushroom'),
//     item('tfcflorae::food/roasted/black_powderpuff'),
//     item('tfcflorae::food/roasted/stinkhorn'),
//     item('tfcflorae::food/roasted/weeping_milk_cap'),
//     item('tfcflorae::food/roasted/turkey_tail'),
//     item('tfcflorae::food/roasted/sulphur_shelf'),
//     item('tfcflorae::food/roasted/artists_conk'),
//     item('tfcflorae::food/butternut'),
//     item('tfcflorae::food/black_walnut'),
//     item('tfcflorae::food/beechnut'),
//     item('tfcflorae::food/dried/barrel_cactus_fruit')
// ])
// ore('pureExtractHolder').add([
//     item('tfcflorae::coral/fan/horn/black'),
//     item('tfcflorae::coral/fan/horn/blue'),
//     item('tfcflorae::coral/fan/tube/silver'),
//     item('tfcflorae::coral/fan/horn/silver'),
//     item('tfcflorae::coral/fan/fire/silver'),
//     item('tfcflorae::coral/fan/bubble/silver'),
//     item('tfcflorae::coral/fan/brain/silver'),
//     item('tfcflorae::coral/fan/horn/gray'),
//     item('tfcflorae::coral/fan/horn/white'),
//     item('tfcflorae::coral/fan/bubble/dead'),
//     item('tfcflorae::coral/horn/black'),
//     item('tfcflorae::coral/brain/black'),
//     item('tfcflorae::coral/tube/silver'),
//     item('tfcflorae::coral/horn/silver'),
//     item('tfcflorae::coral/fire/silver'),
//     item('tfcflorae::coral/bubble/silver'),
//     item('tfcflorae::coral/brain/silver'),
//     item('tfcflorae::coral/brain/gray'),
//     item('tfcflorae::coral/horn/white'),
//     item('tfcflorae::coral/brain/white'),
//     item('tfcflorae::coral/tube/dead'),
//     item('tfcflorae::plants/blueshroom'),
//     item('tfcflorae::plants/sulphur_shroom')
// ])
// ore('fragrantExtractHolder').add([
//     item('tfcflorae::coral/fire/magenta'),
//     item('tfcflorae::coral/bubble/purple'),
//     item('tfcflorae::coral/fan/bubble/magenta'),
//     item('tfcflorae::coral/fan/fire/magenta'),
//     item('tfcflorae::coral/fan/tube/magenta'),
//     item('tfcflorae::coral/fan/bubble/purple'),
//     item('tfcflorae::coral/fan/tube/purple')
// ])

// ////////////////////////////////////////////////////////
// // --- GC/EP --- ///////////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Добавление
// // Лунный камень
// ore('stoneMoon').add(item('galacticraftcore:basic_block_moon:4'))

// // Сухой лед
// ore('blockDryIce').add(item('extraplanets:iapetus:6'))

// // Парашуты
// for (gcParachute in ItemArray.gcParachute) {
//     ore('gc.parachute').add(gcParachute)
//     if (gcParachute has item('galacticraftcore:parachute')) {}
//     else {
//         ore('gc.parachute.colors').add(gcParachute)
//     }
// }

// // Балоны
// for (oxygenTankLight in ItemArray.oxygenTankLight) {
//     ore('gc.oxygen.tank.light').add(oxygenTankLight)
//     if (oxygenTankLight has item('extraplanets:oxygen_tank_light_full_white')) {}
//     else {
//         ore('gc.oxygen.tank.light.colors').add(oxygenTankLight)
//     }
// }
// for (oxygenTankMed in ItemArray.oxygenTankMed) {
//     ore('gc.oxygen.tank.med').add(oxygenTankMed)
//     if (oxygenTankMed has item('extraplanets:oxygen_tank_med_full_white')) {}
//     else {
//         ore('gc.oxygen.tank.med.colors').add(oxygenTankMed)
//     }
// }
// for (oxygenTankHeavy in ItemArray.oxygenTankHeavy) {
//     ore('gc.oxygen.tank.heavy').add(oxygenTankHeavy)
//     if (oxygenTankHeavy has item('extraplanets:oxygen_tank_heavy_full_white')) {}
//     else {
//         ore('gc.oxygen.tank.heavy.colors').add(oxygenTankHeavy)
//     }
// }

// ore('logWood').add([
//     item('extraplanets::kepler22b_maple_logs:2'),
//     item('extraplanets::kepler22b_maple_logs:3'),
//     item('extraplanets::kepler22b_maple_logs:1'),
//     item('extraplanets::kepler22b_maple_logs'),
//     item('extraplanets::kepler22b_maple_logs2:1'),
//     item('extraplanets::kepler22b_maple_logs2')
// ])

// ore('plankWood').add([
//     item('extraplanets::kepler22b_planks:4'),
//     item('extraplanets::kepler22b_planks:1'),
//     item('extraplanets::kepler22b_planks:3'),
//     item('extraplanets::kepler22b_planks:2'),
//     item('extraplanets::kepler22b_planks'),
//     item('extraplanets::kepler22b_planks:5')
// ])

// ore('gravel').add([
//     item('extraplanets::titania_gravel'),
//     item('extraplanets::deimos_gravel'),
//     item('extraplanets::io_gravel'),
//     item('extraplanets::europa_gravel'),
//     item('extraplanets::eris_gravel'),
//     item('extraplanets::pluto_gravel'),
//     item('extraplanets::saturn_gravel'),
//     item('extraplanets::jupiter_gravel'),
//     item('extraplanets::ceres_gravel'),
//     item('extraplanets::mercury_gravel'),
//     item('extraplanets::iapetus_gravel'),
//     item('extraplanets::titania_gravel'),
//     item('extraplanets::oberon_gravel'),
//     item('extraplanets::titan_gravel'),
//     item('extraplanets::rhea_gravel'),
//     item('extraplanets::ganymede_gravel'),
//     item('extraplanets::callisto_gravel'),
//     item('extraplanets::triton_gravel'),
//     item('extraplanets::phobos_gravel')
// ])

// // Дэш
// ore('stickDesh').add(item('galacticraftplanets:item_basic_mars', 1))

// // Плотный лед
// ore('blockDenseIce').add(item('galacticraftplanets:dense_ice'))

// // Метеоритное железо
// ore('blockMeteoricIron').add(item('galacticraftcore:basic_block_core', 12))

// // --- Удаление

// // Iron
// ore('oreIron').remove(item('galacticraftplanets:mars', 3))
// ore('oreIron').remove(item('galacticraftplanets:asteroids_block', 5))

// // Copper
// ore('oreCopper').remove([
//     item('galacticraftcore:basic_block_moon'),
//     item('galacticraftplanets:mars'),
//     item('galacticraftcore:basic_block_core', 5),
//     item('galacticraftplanets:venus', 7)
//     ])
// ore('ingotCopper').remove(item('galacticraftcore:basic_item', 3))
// ore('blockCopper').remove(item('galacticraftcore:basic_block_core', 9))

// // Tin
// ore('oreTin').remove([
//     item('galacticraftcore:basic_block_moon', 1),
//     item('galacticraftplanets:mars', 1),
//     item('galacticraftplanets:venus', 11),
//     item('galacticraftcore:basic_block_core', 6)
//     ])
// ore('ingotTin').remove(item('galacticraftcore:basic_item', 4))
// ore('blockTin').remove(item('galacticraftcore:basic_block_core', 10))

// // Aluminium/Aluminum etc
// ore('oreAluminium').remove([
//     item('galacticraftplanets:asteroids_block', 3),
//     item('galacticraftcore:basic_block_core', 7),
//     item('galacticraftplanets:venus', 6)
//     ])
// ore('oreAluminum').remove([
//     item('galacticraftplanets:asteroids_block', 3),
//     item('galacticraftcore:basic_block_core', 7),
//     item('galacticraftplanets:venus', 6)
//     ])
// ore('oreNaturalAluminum').remove([
//     item('galacticraftplanets:asteroids_block', 3),
//     item('galacticraftcore:basic_block_core', 7),
//     item('galacticraftplanets:venus', 6)
//     ])
// ore('ingotAluminum').remove(item('galacticraftcore:basic_item', 5))
// ore('blockAluminum').remove(item('galacticraftcore:basic_block_core', 11))
// ore('blockAluminium').remove(item('galacticraftcore:basic_block_core', 11))

// // Солнечная руда
// ore('oreSolar').remove(item('galacticraftplanets:venus', 13))

// // Дэш
// ore('oreDesh').remove(item('galacticraftplanets:mars', 2))

// // Кремний
// ore('oreSilicon').remove(
//     item('galacticraftplanets:venus', 10),
//     item('galacticraftcore:basic_block_core', 8)
//     )
// ore('blockSilicon').remove(item('galacticraftcore:basic_block_core', 13))

// // Квартц
// ore('oreQuartz').remove(item('galacticraftplanets:venus', 9))

// // Lead
// ore('oreLead').remove(item('galacticraftplanets:venus', 8))
// ore('ingotLead').remove(item('galacticraftplanets:basic_item_venus', 1))
// ore('blockLead').remove(item('galacticraftplanets:venus', 12))

// // Ilmenite
// ore('oreIlmenite').remove(item('galacticraftplanets:asteroids_block', 4))

// // Титан
// ore('dustTitanium').remove(item('galacticraftplanets:item_basic_asteroids', 9))
// ore('ingotTitanium').remove(item('galacticraftplanets:item_basic_asteroids'))
// ore('blockTitanium').remove(item('galacticraftplanets:asteroids_block', 7))

// // Сыр
// ore('foodCheese').remove(item('galacticraftcore:cheese_curd'))

// ////////////////////////////////////////////////////////
// // --- Vanilla --- /////////////////////////////////////
// ////////////////////////////////////////////////////////

// ore('grass').remove(item('minecraft:grass'))
// ore('sand').remove(item('minecraft:sand'))
// ore('dirt').remove(item('minecraft:dirt'))
// ore('stone').remove(item('minecraft:stone'))
// ore('stoneSmooth').remove(item('minecraft:stone'))
// ore('gravel').remove(item('minecraft:gravel'))
// ore('stoneGranite').remove(item('minecraft:stone', 1))
// ore('stoneDiorite').remove(item('minecraft:stone', 3))
// ore('stoneAndesite').remove(item('minecraft:stone', 5))
// ore('oreCoal').remove(item('minecraft:coal_ore'))
// ore('oreRedstone').remove(item('minecraft:redstone_ore'))
// ore('oreDiamond').remove(item('minecraft:diamond_ore'))
// ore('oreEmerald').remove(item('minecraft:emerald_ore'))
// ore('oreGold').remove(item('minecraft:gold_ore'))
// ore('oreIron').remove(item('minecraft:iron_ore'))
// ore('sugarcane').remove(item('minecraft:reeds'))
// ore('bookshelf').remove(item('minecraft:bookshelf'))
// ore('treeSapling').remove(item('minecraft:sapling:*'))
// ore('slabWood').remove(item('minecraft:wooden_slab:*'))
// ore('plankWood').remove(item('minecraft:planks:*'))
// ore('logWood').remove(item('minecraft:log:*'), item('minecraft:log2:*'))
// ore('chest').remove(item('minecraft:chest'), item('minecraft:trapped_chest'))
// ore('chestWood').remove(item('minecraft:trapped_chest'), item('minecraft:chest'))
// ore('chestTrapped').remove(item('minecraft:trapped_chest'))
// ore('stairWood').remove([
//     item('minecraft:oak_stairs'), 
//     item('minecraft:spruce_stairs'), 
//     item('minecraft:birch_stairs'), 
//     item('minecraft:jungle_stairs'), 
//     item('minecraft:acacia_stairs'), 
//     item('minecraft:dark_oak_stairs')
// ])

// // Cobblestone
// ore('cobblestone').remove(item('minecraft:cobblestone'))
// ore('stoneCobble').remove(item('minecraft:cobblestone'))

// // Polished Granite
// ore('stoneGranite').remove(item('minecraft:stone', 2))
// ore('stoneGranitePolished').remove(item('minecraft:stone', 2))

// // Polished Diorite
// ore('stoneDiorite').remove(item('minecraft:stone', 4))
// ore('stoneDioritePolished').remove(item('minecraft:stone', 4))

// // Polished Andesite
// ore('stoneAndesite').remove(item('minecraft:stone', 6))
// ore('stoneAndesitePolished').remove(item('minecraft:stone', 6))

// ////////////////////////////////////////////////////////
// // --- jsg --- ///////////////////////////////////////
// ////////////////////////////////////////////////////////

// // --- Удаление
// // Титан
// ore('ingotTitanium').remove(item('jsg:titanium_ingot'))
// ore('blockTitanium').remove(item('jsg:titanium_block'))
// ore('plateTitanium').remove(item('jsg:plate_titanium'))
// ore('gearTitanium').remove(item('jsg:gear_titanium'))
// // Триниум
// ore('ingotTrinium').remove(item('jsg:trinium_ingot'))
// ore('blockTrinium').remove(item('jsg:trinium_block'))
// ore('oreTrinium').remove(item('jsg:trinium_ore'))
// ore('plateTrinium').remove(item('jsg:plate_trinium'))
// ore('gearTrinium').remove(item('jsg:gear_trinium'))
// // Наквадах
// ore('ingotNaquadahRefined').remove(item('jsg:naquadah_alloy'))
// ore('blockNaquadahRefined').remove(item('jsg:naquadah_block'))
// ore('plateNaquadahRefined').remove(item('jsg:plate_naquadah'))
// ore('gearNaquadahRefined').remove(item('jsg:gear_naquadah'))
// // Необработаный наквадах
// ore('ingotNaquadahRaw').remove(item('jsg:naquadah_alloy_raw'))
// ore('blockNaquadahRaw').remove(item('jsg:naquadah_block_raw'))
// ore('plateNaquadahRaw').remove(item('jsg:plate_naquadah_raw'))
// ore('oreNaquadahRaw').remove(item('jsg:naquadah_ore_stone'))
// ore('oreNaquadahRaw').remove(item('jsg:naquadah_ore'))


