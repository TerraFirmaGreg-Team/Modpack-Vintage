// MODS_LOADED: tfc
// ==== Добавление

import classes.array.TerraFirmaCraft


// --- Добавление

// Raw Igneous Intrusive Rocks To One OreDict
for (item in TerraFirmaCraft.rawIgneousIntrusive) {
  ore('rawIgneousIntrusive').add(item)
}

// Raw Igneous Extrusive Rocks To One OreDict
for (item in TerraFirmaCraft.rawIgneousExtrusive) {
  ore('rawIgneousExtrusive').add(item)
}

// Rock Metamorphic Rocks To One OreDict
for (item in TerraFirmaCraft.rawMetamorphic) {
  ore('rawMetamorphic').add(item)
}

// Rock Sedimentary Rocks To One OreDict
for (item in TerraFirmaCraft.rawSedimentary) {
  ore('rawSedimentary').add(item)
}

// OreDicionary for all seeds
for (item in TerraFirmaCraft.tfcSeeds) {
  ore('allSeeds').add(item)
}

for (item in TerraFirmaCraft.tfcLooms) {
  ore('loom').add(item)
}

// OreDicionary for all slab
for (item in TerraFirmaCraft.tfcSlabsSmooth) {
  ore('slabStone').add(item)
}

// OreDicionary for all helmets
for (item in TerraFirmaCraft.tfcHelmets) {
  ore('helmet').add(item)
}

// OreDicionary for all chestplates
for (item in TerraFirmaCraft.tfcChestplates) {
  ore('chestplate').add(item)
}

// OreDicionary for all greaves
for (item in TerraFirmaCraft.tfcGreaves) {
  ore('greaves').add(item)
}

// OreDicionary for all boots
for (item in TerraFirmaCraft.tfcBoots) {
  ore('boots').add(item)
}

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
