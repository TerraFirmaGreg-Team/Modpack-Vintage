import postInit.Utility.Array.arrayTFC


// --- Добавление

// Raw Igneous Intrusive Rocks To One OreDict
for (item in arrayTFC.rawIgneousIntrusive) {
	ore('rawIgneousIntrusive').add(item)
}

// Raw Igneous Extrusive Rocks To One OreDict
for (item in arrayTFC.rawIgneousExtrusive) {
	ore('rawIgneousExtrusive').add(item)
}

// Rock Metamorphic Rocks To One OreDict
for (item in arrayTFC.rawMetamorphic) {
	ore('rawMetamorphic').add(item)
}

// Rock Sedimentary Rocks To One OreDict
for (item in arrayTFC.rawSedimentary) {
	ore('rawSedimentary').add(item)
}

// OreDicionary for all seeds
for (item in arrayTFC.tfcSeeds) {
	ore('allSeeds').add(item)
}

for (item in arrayTFC.tfcLooms) {
	ore('loom').add(item)
}

// OreDicionary for all slab
for (item in arrayTFC.tfcSlabsSmooth) {
	ore('slabStone').add(item)
}

// OreDicionary for all helmets
for (item in ArrayTFC.tfcHelmets) {
	ore('helmet').add(item)
}
// OreDicionary for all chestplates
for (item in ArrayTFC.tfcChestplates) {
	ore('chestplate').add(item)
}
// OreDicionary for all greaves
for (item in ArrayTFC.tfcGreaves) {
	ore('greaves').add(item)
}
// OreDicionary for all boots
for (item in ArrayTFC.tfcBoots) {
	ore('boots').add(item)
}

ore('ingotClay').add(item('tfcflorae:ceramics/stoneware/stoneware_clay'))
ore('ingotClay').add(item('tfcflorae:ceramics/kaolinite/kaolinite_clay'))
ore('ingotClay').add(item('tfcflorae:ceramics/earthenware/earthenware_clay'))

ore('itemBeeswax').add(item('firmalife:beeswax'))
ore('sugarcane').add(item('tfc:food/sugarcane'))
ore('ingotUnfinishedWroughtIron').add(item('tfc:metal/ingot/wrought_iron'))

// Single Sheets = Single Plates
ore('sheetCopper').add(metaitem('plateCopper'))
ore('sheetBismuth').add(metaitem('plateBismuth'))
ore('sheetBrass').add(metaitem('plateBrass'))
ore('sheetGold').add(metaitem('plateGold'))
ore('sheetLead').add(metaitem('plateLead'))
ore('sheetNickel').add(metaitem('plateNickel'))
ore('sheetRoseGold').add(metaitem('plateRoseGold'))
ore('sheetSilver').add(metaitem('plateSilver'))
ore('sheetTin').add(metaitem('plateTin'))
ore('sheetZinc').add(metaitem('plateZinc'))
ore('sheetSterlingSilver').add(metaitem('plateSterlingSilver'))
ore('sheetPlatinum').add(metaitem('platePlatinum'))
ore('sheetBismuthBronze').add(metaitem('plateBismuthBronze'))
ore('sheetBronze').add(metaitem('plateBronze'))
ore('sheetBlackBronze').add(metaitem('plateBlackBronze'))
ore('sheetWroughtIron').add(metaitem('plateWroughtIron'))
ore('sheetSteel').add(metaitem('plateSteel'))
ore('sheetBlackSteel').add(metaitem('plateBlackSteel'))
ore('sheetBlueSteel').add(metaitem('plateBlueSteel'))
ore('sheetRedSteel').add(metaitem('plateRedSteel'))

// Double Sheets = Double Plates
ore('sheetDoubleCopper').add(metaitem('plateDoubleCopper'))
ore('sheetDoubleBismuth').add(metaitem('plateDoubleBismuth'))
ore('sheetDoubleBrass').add(metaitem('plateDoubleBrass'))
ore('sheetDoubleGold').add(metaitem('plateDoubleGold'))
ore('sheetDoubleLead').add(metaitem('plateDoubleLead'))
ore('sheetDoubleNickel').add(metaitem('plateDoubleNickel'))
ore('sheetDoubleRoseGold').add(metaitem('plateDoubleRoseGold'))
ore('sheetDoubleSilver').add(metaitem('plateDoubleSilver'))
ore('sheetDoubleTin').add(metaitem('plateDoubleTin'))
ore('sheetDoubleZinc').add(metaitem('plateDoubleZinc'))
ore('sheetDoubleSterlingSilver').add(metaitem('plateDoubleSterlingSilver'))
ore('sheetDoublePlatinum').add(metaitem('plateDoublePlatinum'))
ore('sheetDoubleBismuthBronze').add(metaitem('plateDoubleBismuthBronze'))
ore('sheetDoubleBronze').add(metaitem('plateDoubleBronze'))
ore('sheetDoubleBlackBronze').add(metaitem('plateDoubleBlackBronze'))
ore('sheetDoubleWroughtIron').add(metaitem('plateDoubleWroughtIron'))
ore('sheetDoubleSteel').add(metaitem('plateDoubleSteel'))
ore('sheetDoubleBlackSteel').add(metaitem('plateDoubleBlackSteel'))
ore('sheetDoubleBlueSteel').add(metaitem('plateDoubleBlueSteel'))
ore('sheetDoubleRedSteel').add(metaitem('plateDoubleRedSteel'))

// BronzeAny Single Sheets
ore('sheetAnyBronze').add(
	metaitem('plateBronze'), 
	metaitem('plateBlackBronze'), 
	metaitem('plateBismuthBronze'))

// BronzeAny Double Sheets
ore('sheetDoubleAnyBronze').add(
	metaitem('plateDoubleBronze'), 
	metaitem('plateDoubleBlackBronze'), 
	metaitem('plateDoubleBismuthBronze'))

// Резиновые деревья
ore('rubberTrees').add(
    item('tfc:wood/log/rubber_fig'), 
    item('tfc:wood/log/hevea')
)

// Грибы
ore('mushrooms').add(
    item('tfc:plants/amanita'), 
    item('tfc:plants/porcini'),
	item('tfc:plants/stinkhorn')
)

// --- Удаление


ore('gemDiamond').remove(item('tfc:gem/diamond', 2))
ore('gemLapis').remove(item('tfc:ore/lapis_lazuli'))
ore('gemEmerald').remove(item('tfc:gem/emerald', 2))
ore('dustSalt').remove(item('tfc:powder/salt'))
ore('dustSaltpeter').remove(item('tfc:powder/saltpeter'))
ore('dustGraphite').remove(item('tfc:powder/graphite'))
ore('logWood').remove(item('tfc:stick_bundle'))
ore('sheetDoubleAnyBronze').remove(item('tfc:metal/double_sheet/bismuth_bronze'), item('tfc:metal/double_sheet/bronze'), item('tfc:metal/double_sheet/black_bronze'))
ore('gemSulfur').remove(item('tfc:ore/sulfur'))
ore('gemSaltpeter').remove(item('tfc:ore/saltpeter'))
ore('gemGraphite').remove(item('tfc:ore/graphite'))

// Removing OreDicts from TFC ingots
ore('ingotBismuth').remove(item('tfc:metal/ingot/bismuth'))
ore('ingotBismuthBronze').remove(item('tfc:metal/ingot/bismuth_bronze'))
ore('ingotBlackBronze').remove(item('tfc:metal/ingot/black_bronze'))
ore('ingotBrass').remove(item('tfc:metal/ingot/brass'))
ore('ingotBronze').remove(item('tfc:metal/ingot/bronze'))
ore('ingotCopper').remove(item('tfc:metal/ingot/copper'))
ore('ingotGold').remove(item('tfc:metal/ingot/gold'))
ore('ingotLead').remove(item('tfc:metal/ingot/lead'))
ore('ingotNickel').remove(item('tfc:metal/ingot/nickel'))
ore('ingotRoseGold').remove(item('tfc:metal/ingot/rose_gold'))
ore('ingotSilver').remove(item('tfc:metal/ingot/silver'))
ore('ingotTin').remove(item('tfc:metal/ingot/tin'))
ore('ingotZinc').remove(item('tfc:metal/ingot/zinc'))
ore('ingotWroughtIron').remove(item('tfc:metal/ingot/wrought_iron'))
ore('ingotSterlingSilver').remove(item('tfc:metal/ingot/sterling_silver'))
ore('ingotSteel').remove(item('tfc:metal/ingot/steel'))
ore('ingotPlatinum').remove(item('tfc:metal/ingot/platinum'))
ore('ingotBlackSteel').remove(item('tfc:metal/ingot/black_steel'))
ore('ingotBlueSteel').remove(item('tfc:metal/ingot/blue_steel'))
ore('ingotRedSteel').remove(item('tfc:metal/ingot/red_steel'))

// Removing OreDicts from TFC sheets
ore('sheetCopper').remove(item('tfc:metal/sheet/copper'))
ore('sheetBismuth').remove(item('tfc:metal/sheet/bismuth'))
ore('sheetBrass').remove(item('tfc:metal/sheet/brass'))
ore('sheetGold').remove(item('tfc:metal/sheet/gold'))
ore('sheetLead').remove(item('tfc:metal/sheet/lead'))
ore('sheetNickel').remove(item('tfc:metal/sheet/nickel'))
ore('sheetRoseGold').remove(item('tfc:metal/sheet/rose_gold'))
ore('sheetSilver').remove(item('tfc:metal/sheet/silver'))
ore('sheetTin').remove(item('tfc:metal/sheet/tin'))
ore('sheetZinc').remove(item('tfc:metal/sheet/zinc'))
ore('sheetSterlingSilver').remove(item('tfc:metal/sheet/sterling_silver'))
ore('sheetPlatinum').remove(item('tfc:metal/sheet/platinum'))
ore('sheetBismuthBronze').remove(item('tfc:metal/sheet/bismuth_bronze'))
ore('sheetBronze').remove(item('tfc:metal/sheet/bronze'))
ore('sheetBlackBronze').remove(item('tfc:metal/sheet/black_bronze'))
ore('sheetWroughtIron').remove(item('tfc:metal/sheet/wrought_iron'))
ore('sheetSteel').remove(item('tfc:metal/sheet/steel'))
ore('sheetBlackSteel').remove(item('tfc:metal/sheet/black_steel'))
ore('sheetBlueSteel').remove(item('tfc:metal/sheet/blue_steel'))
ore('sheetRedSteel').remove(item('tfc:metal/sheet/red_steel'))

// Removing OreDicts from TFC double sheets
ore('sheetDoubleCopper').remove(item('tfc:metal/double_sheet/copper'))
ore('sheetDoubleBismuth').remove(item('tfc:metal/double_sheet/bismuth'))
ore('sheetDoubleBrass').remove(item('tfc:metal/double_sheet/brass'))
ore('sheetDoubleGold').remove(item('tfc:metal/double_sheet/gold'))
ore('sheetDoubleLead').remove(item('tfc:metal/double_sheet/lead'))
ore('sheetDoubleNickel').remove(item('tfc:metal/double_sheet/nickel'))
ore('sheetDoubleRoseGold').remove(item('tfc:metal/double_sheet/rose_gold'))
ore('sheetDoubleSilver').remove(item('tfc:metal/double_sheet/silver'))
ore('sheetDoubleTin').remove(item('tfc:metal/double_sheet/tin'))
ore('sheetDoubleZinc').remove(item('tfc:metal/double_sheet/zinc'))
ore('sheetDoubleSterlingSilver').remove(item('tfc:metal/double_sheet/sterling_silver'))
ore('sheetDoublePlatinum').remove(item('tfc:metal/double_sheet/platinum'))
ore('sheetDoubleBismuthBronze').remove(item('tfc:metal/double_sheet/bismuth_bronze'))
ore('sheetDoubleBronze').remove(item('tfc:metal/double_sheet/bronze'))
ore('sheetDoubleBlackBronze').remove(item('tfc:metal/double_sheet/black_bronze'))
ore('sheetDoubleWroughtIron').remove(item('tfc:metal/double_sheet/wrought_iron'))
ore('sheetDoubleSteel').remove(item('tfc:metal/double_sheet/steel'))
ore('sheetDoubleBlackSteel').remove(item('tfc:metal/double_sheet/black_steel'))
ore('sheetDoubleBlueSteel').remove(item('tfc:metal/double_sheet/blue_steel'))
ore('sheetDoubleRedSteel').remove(item('tfc:metal/double_sheet/red_steel'))

for (item in arrayTFC.tfcSaws) {
    ore('saw').remove(item)
}

// Удаление OreDicts у TFCTech винтов
ore('screwBismuth').remove(item('tfctech:metal/bismuth_screw'))
ore('screwBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_screw'))
ore('screwBlackBronze').remove(item('tfctech:metal/black_bronze_screw'))
ore('screwBrass').remove(item('tfctech:metal/brass_screw'))
ore('screwBronze').remove(item('tfctech:metal/bronze_screw'))
ore('screwCopper').remove(item('tfctech:metal/copper_screw'))
ore('screwGold').remove(item('tfctech:metal/gold_screw'))
ore('screwLead').remove(item('tfctech:metal/lead_screw'))
ore('screwNickel').remove(item('tfctech:metal/nickel_screw'))
ore('screwSilver').remove(item('tfctech:metal/silver_screw'))
ore('screwRoseGold').remove(item('tfctech:metal/rose_gold_screw'))
ore('screwTin').remove(item('tfctech:metal/tin_screw'))
ore('screwZinc').remove(item('tfctech:metal/zinc_screw'))
ore('screwSterlingSilver').remove(item('tfctech:metal/sterling_silver_screw'))
ore('screwWroughtIron').remove(item('tfctech:metal/wrought_iron_screw'))
ore('screwPigIron').remove(item('tfctech:metal/pig_iron_screw'))
ore('screwSteel').remove(item('tfctech:metal/steel_screw'))
ore('screwPlatinum').remove(item('tfctech:metal/platinum_screw'))
ore('screwBlackSteel').remove(item('tfctech:metal/black_steel_screw'))
ore('screwBlueSteel').remove(item('tfctech:metal/blue_steel_screw'))
ore('screwRedSteel').remove(item('tfctech:metal/red_steel_screw'))

// Удаление OreDicts у TFCTech болтов
ore('boltBismuth').remove(item('tfctech:metal/bismuth_bolt'))
ore('boltBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_bolt'))
ore('boltBlackBronze').remove(item('tfctech:metal/black_bronze_bolt'))
ore('boltBrass').remove(item('tfctech:metal/brass_bolt'))
ore('boltBronze').remove(item('tfctech:metal/bronze_bolt'))
ore('boltCopper').remove(item('tfctech:metal/copper_bolt'))
ore('boltGold').remove(item('tfctech:metal/gold_bolt'))
ore('boltLead').remove(item('tfctech:metal/lead_bolt'))
ore('boltNickel').remove(item('tfctech:metal/nickel_bolt'))
ore('boltSilver').remove(item('tfctech:metal/silver_bolt'))
ore('boltRoseGold').remove(item('tfctech:metal/rose_gold_bolt'))
ore('boltTin').remove(item('tfctech:metal/tin_bolt'))
ore('boltZinc').remove(item('tfctech:metal/zinc_bolt'))
ore('boltSterlingSilver').remove(item('tfctech:metal/sterling_silver_bolt'))
ore('boltWroughtIron').remove(item('tfctech:metal/wrought_iron_bolt'))
ore('boltPigIron').remove(item('tfctech:metal/pig_iron_bolt'))
ore('boltSteel').remove(item('tfctech:metal/steel_bolt'))
ore('boltPlatinum').remove(item('tfctech:metal/platinum_bolt'))
ore('boltBlackSteel').remove(item('tfctech:metal/black_steel_bolt'))
ore('boltBlueSteel').remove(item('tfctech:metal/blue_steel_bolt'))
ore('boltRedSteel').remove(item('tfctech:metal/red_steel_bolt'))

// Удаление OreDicts у TFCTech шестеренок
ore('gearBismuth').remove(item('tfctech:metal/bismuth_gear'))
ore('gearBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_gear'))
ore('gearBlackBronze').remove(item('tfctech:metal/black_bronze_gear'))
ore('gearBrass').remove(item('tfctech:metal/brass_gear'))
ore('gearBronze').remove(item('tfctech:metal/bronze_gear'))
ore('gearCopper').remove(item('tfctech:metal/copper_gear'))
ore('gearGold').remove(item('tfctech:metal/gold_gear'))
ore('gearLead').remove(item('tfctech:metal/lead_gear'))
ore('gearNickel').remove(item('tfctech:metal/nickel_gear'))
ore('gearSilver').remove(item('tfctech:metal/silver_gear'))
ore('gearRoseGold').remove(item('tfctech:metal/rose_gold_gear'))
ore('gearTin').remove(item('tfctech:metal/tin_gear'))
ore('gearZinc').remove(item('tfctech:metal/zinc_gear'))
ore('gearSterlingSilver').remove(item('tfctech:metal/sterling_silver_gear'))
ore('gearWroughtIron').remove(item('tfctech:metal/wrought_iron_gear'))
ore('gearPigIron').remove(item('tfctech:metal/pig_iron_gear'))
ore('gearSteel').remove(item('tfctech:metal/steel_gear'))
ore('gearPlatinum').remove(item('tfctech:metal/platinum_gear'))
ore('gearBlackSteel').remove(item('tfctech:metal/black_steel_gear'))
ore('gearBlueSteel').remove(item('tfctech:metal/blue_steel_gear'))
ore('gearRedSteel').remove(item('tfctech:metal/red_steel_gear'))

// Удаление OreDicts у TFCTech длинных стержней
ore('stickLongBismuth').remove(item('tfctech:metal/bismuth_long_rod'))
ore('stickLongBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_long_rod'))
ore('stickLongBlackBronze').remove(item('tfctech:metal/black_bronze_long_rod'))
ore('stickLongBrass').remove(item('tfctech:metal/brass_long_rod'))
ore('stickLongBronze').remove(item('tfctech:metal/bronze_long_rod'))
ore('stickLongCopper').remove(item('tfctech:metal/copper_long_rod'))
ore('stickLongGold').remove(item('tfctech:metal/gold_long_rod'))
ore('stickLongLead').remove(item('tfctech:metal/lead_long_rod'))
ore('stickLongNickel').remove(item('tfctech:metal/nickel_long_rod'))
ore('stickLongSilver').remove(item('tfctech:metal/silver_long_rod'))
ore('stickLongRoseGold').remove(item('tfctech:metal/rose_gold_long_rod'))
ore('stickLongTin').remove(item('tfctech:metal/tin_long_rod'))
ore('stickLongZinc').remove(item('tfctech:metal/zinc_long_rod'))
ore('stickLongSterlingSilver').remove(item('tfctech:metal/sterling_silver_long_rod'))
ore('stickLongWroughtIron').remove(item('tfctech:metal/wrought_iron_long_rod'))
ore('stickLongPigIron').remove(item('tfctech:metal/pig_iron_long_rod'))
ore('stickLongSteel').remove(item('tfctech:metal/steel_long_rod'))
ore('stickLongPlatinum').remove(item('tfctech:metal/platinum_long_rod'))
ore('stickLongBlackSteel').remove(item('tfctech:metal/black_steel_long_rod'))
ore('stickLongBlueSteel').remove(item('tfctech:metal/blue_steel_long_rod'))
ore('stickLongRedSteel').remove(item('tfctech:metal/red_steel_long_rod'))

// Удаление OreDicts у TFCTech стержней
ore('stickBismuth').remove(item('tfctech:metal/bismuth_rod'))
ore('stickBismuthBronze').remove(item('tfctech:metal/bismuth_bronze_rod'))
ore('stickBlackBronze').remove(item('tfctech:metal/black_bronze_rod'))
ore('stickBrass').remove(item('tfctech:metal/brass_rod'))
ore('stickBronze').remove(item('tfctech:metal/bronze_rod'))
ore('stickCopper').remove(item('tfctech:metal/copper_rod'))
ore('stickGold').remove(item('tfctech:metal/gold_rod'))
ore('stickLead').remove(item('tfctech:metal/lead_rod'))
ore('stickNickel').remove(item('tfctech:metal/nickel_rod'))
ore('stickSilver').remove(item('tfctech:metal/silver_rod'))
ore('stickRoseGold').remove(item('tfctech:metal/rose_gold_rod'))
ore('stickTin').remove(item('tfctech:metal/tin_rod'))
ore('stickZinc').remove(item('tfctech:metal/zinc_rod'))
ore('stickSterlingSilver').remove(item('tfctech:metal/sterling_silver_rod'))
ore('stickWroughtIron').remove(item('tfctech:metal/wrought_iron_rod'))
ore('stickPigIron').remove(item('tfctech:metal/pig_iron_rod'))
ore('stickSteel').remove(item('tfctech:metal/steel_rod'))
ore('stickPlatinum').remove(item('tfctech:metal/platinum_rod'))
ore('stickBlackSteel').remove(item('tfctech:metal/black_steel_rod'))
ore('stickBlueSteel').remove(item('tfctech:metal/blue_steel_rod'))
ore('stickRedSteel').remove(item('tfctech:metal/red_steel_rod'))

// Removing OreDicts from Gypsum
ore('gemGypsum').remove(item('tfc:ore/gypsum'))

ore('stickWood').remove(item('tfcflorae:tools/walking_stick'))

