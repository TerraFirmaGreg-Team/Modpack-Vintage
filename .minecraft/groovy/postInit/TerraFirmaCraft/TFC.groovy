import postInit.Utility.Array.arrayVanila
import postInit.Utility.Array.arrayTFC
import postInit.Utility.Array.arrayGT

// Фикс палок из люмбера
crafting.addShapeless("tfg/tfc/stick_from_lumber", item('minecraft:stick') * 6, [ore('lumber'), ore('toolSaw')])

// Alabaster Bricks
crafting.addShapeless("tfg/tfc/alabaster_bricks", item('tfc:alabaster_brick') * 4, [metaitem('dustGypsum'), ore('toolFile')])

// Cladding
alloy_smelter.recipeBuilder()
	.inputs(
        metaitem('plateWroughtIron'), 
        metaitem('plateCopper'))
	.outputs(item('tfc:metal/sheet/wrought_iron'))
	.duration(400).EUt(2).buildAndRegister()

// Контроллер доменной печи
crafting.addShaped("tfg/tfc/blast_furnace", item('tfc:blast_furnace'), [
	[ore('plateDoubleIronAny'), ore('plateDoubleIronAny'), ore('plateDoubleIronAny')],
	[ore('plateDoubleIronAny'), item('tfc:crucible'), ore('plateDoubleIronAny')],
	[ore('plateDoubleIronAny'), ore('plateDoubleIronAny'), ore('plateDoubleIronAny')]])

// Огнеупорная глина
crafting.addShaped("tfg/tfc/fire_clay", item('tfc:ceramics/fire_clay'), [
	[item('tfc:powder/kaolinite'), item('tfc:powder/graphite'), item('tfc:powder/kaolinite')],
	[item('tfc:powder/graphite'), ore('clay'), item('tfc:powder/graphite')],
	[item('tfc:powder/kaolinite'), item('tfc:powder/graphite'), item('tfc:powder/kaolinite')]])

// TFC Resin -> Sticky resin
furnace.add(metaitem('rubber_drop'), item('tfc:plants/resin'))

// Сырой камень -> Сырой камень
for (int i = 0; i < arrayTFC.tfcRaws.size(); i++) {
	rock_breaker.recipeBuilder()
		.notConsumable(arrayTFC.tfcRaws[i])
		.outputs(arrayTFC.tfcRaws[i])
		.duration(16).EUt(32).buildAndRegister()
}

// Сырой камень -> Булыжник
for (int i = 0; i < arrayTFC.tfcCobbles.size(); i++) {
	forge_hammer.recipeBuilder()
		.inputs(arrayTFC.tfcRaws[i])
		.outputs(arrayTFC.tfcCobbles[i])
		.duration(200).EUt(7).buildAndRegister()
}

// Сырой камень -> Гладкий
for (int i = 0; i < arrayTFC.tfcSmooths.size(); i++) {
	laser_engraver.recipeBuilder()
        .notConsumable(ore('craftingLensGlass'))
		.inputs(arrayTFC.tfcRaws[i])
		.outputs(arrayTFC.tfcSmooths[i])
		.duration(200).EUt(30).buildAndRegister()
}

// Булыжник -> Гравий
for (int i = 0; i < arrayTFC.tfcCobbles.size(); i++) {
	forge_hammer.recipeBuilder()
			.inputs(arrayTFC.tfcCobbles[i])
			.outputs(arrayTFC.tfcGravel[i])
			.duration(200).EUt(7).buildAndRegister()
}

// Гравий -> Песок
for (int i = 0; i < arrayTFC.tfcSands.size(); i++) {
	forge_hammer.recipeBuilder()
			.inputs(arrayTFC.tfcGravel[i])
			.outputs(arrayTFC.tfcSands[i])
			.duration(200).EUt(7).buildAndRegister()
}

// Кирпичи -> Блоки кирпичей
for (int i = 0; i < arrayTFC.tfcBricksBlock.size(); i++) {
	assembler.recipeBuilder()
        .circuitMeta(4)
	    .inputs(arrayTFC.tfcBricksItem[i] * 4)
		.fluidInputs(fluid('concrete') * 100)
	    .outputs(arrayTFC.tfcBricksBlock[i] * 4)
	    .duration(200).EUt(7).buildAndRegister()
}

// Кирпичи из грязи -> Блоки кирпичей
for (int i = 0; i < arrayTFC.tfcMudBricksItem.size(); i++) {
	assembler.recipeBuilder()
        .circuitMeta(4)
	    .inputs(arrayTFC.tfcMudBricksItem[i] * 4)
		.fluidInputs(fluid('concrete') * 100)
	    .outputs(arrayTFC.tfcMudBricksBlock[i] * 4)
	    .duration(200).EUt(7).buildAndRegister()
}

// Булыжник -> Полублок
for (int i = 0; i < arrayTFC.tfcCobbles.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcCobbles[i])
		.outputs(arrayTFC.tfcSlabsCobble[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Булыжник -> Ступенька
for (int i = 0; i < arrayTFC.tfcCobbles.size(); i++) {
	assembler.recipeBuilder()
        .circuitMeta(7)
		.inputs(arrayTFC.tfcCobbles[i] * 6)
		.outputs(arrayTFC.tfcStairsCobble[i] * 16)
		.duration(200).EUt(7).buildAndRegister()
}

// Кирпичи -> Полублок
for (int i = 0; i < arrayTFC.tfcBricksBlock.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcBricksBlock[i])
		.outputs(arrayTFC.tfcSlabsBricks[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Кирпичи -> Ступенька
for (int i = 0; i < arrayTFC.tfcBricksBlock.size(); i++) {
	assembler.recipeBuilder()
        .circuitMeta(7)
		.inputs(arrayTFC.tfcBricksBlock[i] * 6)
		.outputs(arrayTFC.tfcStairsBricks[i] * 16)
		.duration(200).EUt(7).buildAndRegister()
}

// Гладкий блок -> Полублок
for (int i = 0; i < arrayTFC.tfcSmooths.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcSmooths[i])
		.outputs(arrayTFC.tfcSlabsSmooth[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Гладкий блок -> Ступенька
for (int i = 0; i < arrayTFC.tfcSmooths.size(); i++) {
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcSmooths[i] * 6)
		.circuitMeta(7)
		.outputs(arrayTFC.tfcStairsSmooth[i] * 16)
		.duration(200).EUt(7).buildAndRegister()
}

// Сырой блок -> Полублок
for (int i = 0; i < arrayTFC.tfcRaws.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcRaws[i])
		.outputs(arrayTFC.tfcRawSlabs[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Сырой блок -> Ступенька
for (int i = 0; i < arrayTFC.tfcRaws.size(); i++) {
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcRaws[i] * 6)
		.circuitMeta(7)
		.outputs(arrayTFC.tfcRawStairs[i] * 16)
		.duration(200).EUt(7).buildAndRegister()
}

// Кирпичи из грязи -> Полублок
for (int i = 0; i < arrayTFC.tfcMudBricksBlock.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcMudBricksBlock[i])
		.outputs(arrayTFC.tfcMudBricksSlabs[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Кирпичи из грязи -> Ступенька
for (int i = 0; i < arrayTFC.tfcMudBricksBlock.size(); i++) {
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcMudBricksBlock[i] * 6)
		.circuitMeta(7)
		.outputs(arrayTFC.tfcMudBricksStairs[i])
		.duration(200).EUt(7).buildAndRegister()
}

// Сырой камень -> Нажимные каменные пластины
for (int i = 0; i < arrayTFC.tfcRaws.size(); i++) {
	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcRaws[i] * 2, 
            metaitem('springIron'))
		.outputs(arrayTFC.tfcStonePressurePlates[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Нажимные каменные пластины -> Кнопки
for (int i = 0; i < arrayTFC.tfcStoneButtons.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcStonePressurePlates[i] * 6)
		.fluidInputs(fluid('lubricant') * 1)
		.outputs(arrayTFC.tfcStoneButtons[i] * 12)
		.duration(200).EUt(7).buildAndRegister()
}

for (int i = 0; i == 83 < arrayTFC.tfcLumber.size(); i++) {
// Бочки
    // if (i != 83 .. 107) {
		assembler.recipeBuilder()
            .circuitMeta(15)
			.inputs(arrayTFC.tfcLumber[i] * 7)
			.outputs(arrayTFC.tfcBarrels[i])
			.duration(205).EUt(4).buildAndRegister()
	// }
}
// 
for (int i = 0; i < arrayGT.gtDustsForRawStones.size(); i++) {
	// Raw Block
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcRaws[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 3)
		.duration(100).EUt(4).buildAndRegister()

	// Raw Stairs
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcRawStairs[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 2)
		.duration(100).EUt(4).buildAndRegister()

	// Raw Slab
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcRawSlabs[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 1)
		.duration(100).EUt(4).buildAndRegister()

	// Smooth Block
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcSmooths[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 3)
		.duration(100).EUt(4).buildAndRegister()

	// Smooth Stairs
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcStairsSmooth[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 2)
		.duration(100).EUt(4).buildAndRegister()

	// Smooth Slab
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcSlabsSmooth[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 1)
		.duration(100).EUt(4).buildAndRegister()

	// Cobble Block
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcCobbles[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 3)
		.duration(100).EUt(4).buildAndRegister()

	// Cobble Stairs
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcStairsCobble[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 2)
		.duration(100).EUt(4).buildAndRegister()

	// Cobble Slab
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcSlabsCobble[i])
		.outputs(arrayGT.gtDustsForRawStones[i] * 1)
		.duration(100).EUt(4).buildAndRegister()
}

// Дерево -> Пиломатериалы (Для эвкалипта)
for (int i = 0; i < arrayTFC.tfcEucaliptusLogs.size(); i++) {
	
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcEucaliptusLogs[i])
		.fluidInputs(fluid('lubricant') * 1)
		.outputs(
            item('tfc:wood/lumber/eucalyptus') * 16, 
            metaitem('dustWood') * 2)
		.duration(200).EUt(7).buildAndRegister()

	// saw_mill.recipeBuilder()
	// 	.circuitMeta(1)
	// 	.inputs([arrayTFC.tfcEucaliptusLogs])
	// 	.fluidInputs(fluid('lubricant') * 1000)
	// 	.outputs(
	// 		item('tfc:wood/lumber/eucalyptus') * 64, 
	// 		metaitem('dustWood') * 8)
	// 	.duration(450)
	// 	.EUt(32)
	// 	.buildAndRegister()
}

// Доски -> Пиломатериалы
for (int i = 0; i < arrayTFC.tfcPlanks.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcPlanks[i])
		.fluidInputs(fluid('lubricant') * 1)
		.outputs(arrayTFC.tfcLumber[i] * 4)
		.duration(200).EUt(7).buildAndRegister()

// Пиломатериалы -> Доски
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcLumber[i] * 4)
		.circuitMeta(3)
		.outputs(arrayTFC.tfcPlanks[i])
		.duration(200).EUt(7).buildAndRegister()

// Доски -> Полу-блоки
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcPlanks[i])
		.circuitMeta(6)
		.outputs(arrayTFC.tfcSlabs[i] * 2)
		.duration(200).EUt(7).buildAndRegister()

// Доски -> Ступеньки
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcPlanks[i] * 6)
		.circuitMeta(7)
		.outputs(arrayTFC.tfcStairs[i] * 16)
		.duration(200).EUt(7).buildAndRegister()

// Доски -> Нажимные деревянные пластины
	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcPlanks[i] * 2, 
            metaitem('springIron'))
		.circuitMeta(4)
		.outputs(arrayTFC.tfcPressurePlates[i] * 2)
		.duration(200).EUt(7).buildAndRegister()

// Доски -> Забор
	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcPlanks[i] * 2, 
            item('minecraft:stick') * 2)
		.circuitMeta(1)
		.outputs(arrayTFC.tfcFences[i] * 8)
		.duration(200).EUt(7).buildAndRegister()

// Доски -> Калитка
	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcPlanks[i] * 2, 
            item('minecraft:stick') * 3)
		.circuitMeta(2)
		.outputs(arrayTFC.tfcFenceGates[i] * 2)
		.duration(200).EUt(7).buildAndRegister()
}

// Нажимные деревянные пластины -> Кнопки
for (int i = 0; i < arrayTFC.tfcPressurePlates.size(); i++) {
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcPressurePlates[i] * 6)
		.fluidInputs(fluid('lubricant') * 1)
		.outputs(arrayTFC.tfcButtons[i] * 12)
		.duration(200).EUt(7).buildAndRegister()
}

// Бревна -> Забор из бревен
for (int i = 0; i < arrayTFC.tfcFenceLog.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(1)
		.inputs(
			arrayTFC.tfcLogs[i + 83] * 2, 
			item('minecraft:stick') * 3)
		.outputs(arrayTFC.tfcFenceLog[i])
		.duration(200).EUt(7).buildAndRegister()
}

for (int i = 0; i < arrayTFC.tfcLogs.size(); i++) {

// Бревна -> Калитка из бревен
	assembler.recipeBuilder()
		.inputs(
			arrayTFC.tfcLogs[i] * 2, 
			item('minecraft:stick') * 3)
		.circuitMeta(2)
		.outputs(arrayTFC.tfcFenceGatesLog[i] * 8)
		.duration(200).EUt(7).buildAndRegister()

// Бревна -> Опоры
	assembler.recipeBuilder()
        .circuitMeta(7)
		.inputs(arrayTFC.tfcLogs[i] * 2)
		.outputs(arrayTFC.tfcSupports[i] * 16)
		.duration(200).EUt(7).buildAndRegister()
}

for (int i = 0; i < arrayTFC.tfcLumber.size(); i++) {

// Двери
	assembler.recipeBuilder()
        .circuitMeta(8)
		.inputs(arrayTFC.tfcLumber[i] * 6)
		.outputs(arrayTFC.tfcDoors[i] * 2)
		.duration(350).EUt(4).buildAndRegister()

// Люки
	assembler.recipeBuilder()
        .circuitMeta(9)
		.inputs(arrayTFC.tfcLumber[i] * 6)
		.outputs(arrayTFC.tfcTrapdoors[i] * 3)
		.duration(320).EUt(4).buildAndRegister()

// Сундуки
	crafting.addShaped("tfg/tfc/chest_" + i, arrayTFC.tfcChests[i], [
		[arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i]],
		[arrayTFC.tfcLumber[i], null, arrayTFC.tfcLumber[i]],
		[arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i]]])
	
	assembler.recipeBuilder()
        .circuitMeta(12)
		.inputs(arrayTFC.tfcLumber[i] * 8)
		.outputs(arrayTFC.tfcChests[i])
		.duration(280).EUt(4).buildAndRegister()

// Прялки
	assembler.recipeBuilder()
        .circuitMeta(13)
		.inputs(
            arrayTFC.tfcLumber[i] * 7, 
            item('minecraft:stick'))
		.outputs(arrayTFC.tfcLooms[i])
		.duration(210).EUt(4).buildAndRegister()


// Полка для инструментов
	assembler.recipeBuilder()
    	.circuitMeta(14)
		.inputs(arrayTFC.tfcLumber[i] * 6)
		.outputs(arrayTFC.tfcToolRacks[i])
		.duration(205).EUt(4).buildAndRegister()

// Лодки
	crafting.addShaped("tfg/tfc/boat_" + i, arrayTFC.tfcBoats[i], [
		[item('gregtech:meta_screw:*'), item('gregtech:meta_screw:*'), item('gregtech:meta_screw:*')],
		[arrayTFC.tfcLumber[i], metaitem('rubber_drop'), arrayTFC.tfcLumber[i]],
		[arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i], arrayTFC.tfcLumber[i]]])

	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcLumber[i] * 5, 
            metaitem('rubber_drop'), 
            item('gregtech:meta_screw:*') * 3)
		.circuitMeta(16)
		.outputs(arrayTFC.tfcBoats[i])
		.duration(270).EUt(4).buildAndRegister()

// Lumber -> dustWood
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcLumber[i])
		.fluidInputs(fluid('lubricant') * 1000)
		.outputs(
			metaitem('dustWood') * 48,
			metaitem('dustSmallWood') * 32)
		.duration(400).EUt(12).buildAndRegister()

// Дерево -> Пиломатериалы
	cutter.recipeBuilder()
		.inputs(arrayTFC.tfcLogs[i])
		.fluidInputs(fluid('lubricant') * 1)
		.outputs(
            arrayTFC.tfcLumber[i] * 16, 
            metaitem('dustWood') * 2)
		.duration(200).EUt(7).buildAndRegister()
	
	// saw_mill.recipeBuilder()
	// 	.circuitMeta(1)
	// 	.inputs([arrayTFC.tfcLogs[i]])
	// 	.fluidInputs(fluid('lubricant') * 1000)
	// 	.outputs(
	// 		arrayTFC.tfcLumber * 64, 
	// 		metaitem('dustWood') * 8)
	// 	.duration(450)
	// 	.EUt(32)
	// 	.buildAndRegister()
}


// Железные люки
for (int i = 0; i < arrayGT.gtTFCPlates.size(); i++) {
	assembler.recipeBuilder()
        .circuitMeta(22)
		.inputs(arrayGT.gtTFCPlates[i])
		.outputs(arrayTFC.tfcMetalTrapdoors[i])
		.duration(205).EUt(8).buildAndRegister()	
}

// Книжные полки
for (int i = 0; i < arrayTFC.tfcPlanks.size(); i++) {
	assembler.recipeBuilder()
		.inputs(
            arrayTFC.tfcPlanks[i] * 6, 
            item('minecraft:book') * 3)
		.circuitMeta(10)
		.outputs(arrayTFC.tfcBookshelfs[i])
		.duration(400).EUt(4).buildAndRegister()

// Верстаки
	assembler.recipeBuilder()
		.inputs(arrayTFC.tfcPlanks[i] * 4)
		.circuitMeta(11)
		.outputs(arrayTFC.tfcWorkbenchs[i])
		.duration(250).EUt(4).buildAndRegister()
}

// --- Furnace recipes for TFC items
// Хавка
for (int i = 0; i < arrayTFC.tfcCookedMeat.size(); i++) {
	furnace.add(arrayTFC.tfcCookedMeat[i], arrayTFC.tfcRawMeat[i])
}

// Керамика
for (int i = 0; i < arrayTFC.tfcFiredCeramics.size(); i++) {
	//furnace.add(arrayTFC.tfcFiredCeramics[i], arrayTFC.tfcUnfiredCeramics[i])
}

// Spindle
furnace.add(item('tfc:ceramics/fired/spindle'), item('tfc:ceramics/unfired/spindle'))

// Macerator recipes for Quern/Grindstone recipes
for (int i = 0; i < arrayTFC.tfcQuernToMaceratorInput.size(); i++) {
	macerator.recipeBuilder()
		.inputs(arrayTFC.tfcQuernToMaceratorInput[i])
		.outputs(arrayTFC.tfcQuernToMaceratorOutput[i] * 2)
		.duration(50).EUt(2).buildAndRegister()
}

// Переработка TFC камня в ресурсы

// Breccia
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustBreccia') * 3)
	.chancedOutput(metaitem('dustSmallSilicon'), 6700, 700)
	.chancedOutput(metaitem('dustTinyLithium'), 6700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 16)
	.duration(450).EUt(64).buildAndRegister()

// - Catlinite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustCatlinite') * 3)
	.chancedOutput(metaitem('dustSmallSodium'), 6700, 700)
	.chancedOutput(metaitem('dustTinySilicon'), 6700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 24)
	.duration(450).EUt(64).buildAndRegister()

// - Chalk
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustChalk') * 3)
	.chancedOutput(metaitem('dustSmallCalcium'), 6700, 700)
	.chancedOutput(metaitem('dustSmallCarbon'), 6700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 24)
	.duration(450).EUt(64).buildAndRegister()

// - Chert
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustChert') * 3)
	.chancedOutput(metaitem('dustSmallSilicon'), 6700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 5700, 700)
	.fluidOutputs(fluid('oxygen') * 24)
	.duration(450).EUt(64).buildAndRegister()

// - Claystone
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustClaystone') * 3)
	.chancedOutput(metaitem('dustTinyAluminium'), 6700, 700)
	.chancedOutput(metaitem('dustTinySilicon'), 6700, 700)
	.chancedOutput(metaitem('dustTinyBandedIron'), 6700, 700)
	.fluidOutputs(fluid('oxygen') * 5)
	.duration(450).EUt(64).buildAndRegister()

// - Conglomerate
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustConglomerate') * 3)
	.chancedOutput(metaitem('dustSmallBandedIron'), 6700, 700)
	.chancedOutput(metaitem('dustSmallSilicon'), 6700, 700)
	.chancedOutput(metaitem('dustSmallTricalciumPhosphate'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 5)
	.duration(450).EUt(64).buildAndRegister()

// - Dacite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustDacite') * 3)
	.chancedOutput(metaitem('dustSodium'), 6700, 700)
	.chancedOutput(metaitem('dustSmallCalcium'), 6700, 700)
	.chancedOutput(metaitem('dustSmallSiliconDioxide'), 6700, 700)
	.chancedOutput(metaitem('dustSmallAluminium'), 3700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 12)
	.duration(450).EUt(64).buildAndRegister()

// - Dolomite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustDolomite') * 3)
	.chancedOutput(metaitem('dustSmallMagnesium'), 6700, 700)
	.chancedOutput(metaitem('dustSmallCalcium'), 5700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 16)
	.duration(450).EUt(64).buildAndRegister()

// - Gabbro
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustGabbro') * 3)
	.chancedOutput(metaitem('dustSmallTitanium'), 6700, 700)
	.chancedOutput(metaitem('dustSmallIron'), 3700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 24)
	.duration(450).EUt(64).buildAndRegister()

// - Gneiss
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustGneiss') * 3)
	.chancedOutput(metaitem('dustSmallQuartzite'), 6700, 700)
	.chancedOutput(metaitem('dustSmallBiotite'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 2)
	.duration(450).EUt(64).buildAndRegister()

// - Komatiite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustKomatiite') * 3)
	.chancedOutput(metaitem('dustSmallManganese'), 8700, 700)
	.fluidOutputs(fluid('oxygen') * 12)
	.duration(450).EUt(64).buildAndRegister()

// - Limestone
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustLimestone') * 3)
	.chancedOutput(metaitem('dustSmallCalcium'), 8700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 36)
	.duration(450).EUt(64).buildAndRegister()

// - Mudstone
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustMudstone') * 3)
	.chancedOutput(metaitem('dustSmallClay'), 8700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 46)
	.duration(450).EUt(64).buildAndRegister()

// - Novaculite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustNovaculite') * 3)
	.chancedOutput(metaitem('dustSmallSiliconDioxide'), 8700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 46)
	.duration(450).EUt(64).buildAndRegister()

// - Peridotite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustPeridotite') * 3)
	.chancedOutput(metaitem('dustOlivine'), 5700, 700)
	.chancedOutput(metaitem('dustTinyAluminium'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 12)
	.duration(450).EUt(64).buildAndRegister()

// - Phyllite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustPhyllite') * 3)
	.chancedOutput(metaitem('dustSmallQuartzite'), 5700, 700)
	.chancedOutput(metaitem('dustSmallCalciumChloride'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 2)
	.duration(450).EUt(64).buildAndRegister()

// - Porphyry
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustPorphyry') * 3)
	.chancedOutput(metaitem('dustSmallSodium'), 9500, 700)
	.chancedOutput(metaitem('dustSmallQuartzite'), 8700, 700)
	.chancedOutput(metaitem('dustSmallCalcium'), 1700, 700)
	.duration(450).EUt(64).buildAndRegister()

// - Rhyolite
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustRhyolite') * 3)
	.chancedOutput(metaitem('dustSiliconDioxide'), 8700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 100, 100)
	.duration(450).EUt(64).buildAndRegister()

// - Sandstone
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustSandstone') * 3)
	.chancedOutput(metaitem('dustTinyCalcium'), 6700, 700)
	.chancedOutput(metaitem('dustTinyAluminium'), 3700, 700)
	.chancedOutput(metaitem('dustTinySilicon'), 1700, 700)
	.fluidOutputs(fluid('oxygen') * 6)
	.duration(450).EUt(64).buildAndRegister()

// - Schist
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustSchist') * 3)
	.chancedOutput(metaitem('dustSmallMica'), 6700, 700)
	.chancedOutput(metaitem('dustSmallTalc'), 5700, 700)
	.chancedOutput(metaitem('dustSmallGraphite'), 3700, 700)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 3700, 700)
	.fluidOutputs(fluid('oxygen') * 12)
	.duration(450).EUt(64).buildAndRegister()

// - Shale
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustShale') * 3)
	.chancedOutput(metaitem('dustSodium'), 9500, 500)
	.chancedOutput(metaitem('dustTinyMetalMixture'), 1500, 500)
	.fluidOutputs(fluid('oxygen') * 16)
	.duration(450).EUt(64).buildAndRegister()

// - Siltstone
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustSiltstone') * 3)
	.chancedOutput(metaitem('dustCertusQuartz'), 6700, 700)
	.chancedOutput(metaitem('dustQuartzite'), 5700, 700)
	.fluidOutputs(fluid('oxygen') * 2)
	.duration(450).EUt(64).buildAndRegister()

// - Slate
electrolyzer.recipeBuilder()
	.inputs(metaitem('dustSlate') * 3)
	.chancedOutput(metaitem('dustSmallMetalMixture'), 6700, 700)
	.fluidOutputs(fluid('oxygen') * 4)
	.duration(450).EUt(64).buildAndRegister()

// Цемент из тфк -> цемент разных цветов
// White Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_white') * 144).outputs(item('minecraft:concrete_powder') * 4).duration(15).EUt(7).buildAndRegister()
// Orange Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_orange') * 144).outputs(item('minecraft:concrete_powder:1') * 4).duration(15).EUt(7).buildAndRegister()
// Magenta Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_magenta') * 144).outputs(item('minecraft:concrete_powder:2') * 4).duration(15).EUt(7).buildAndRegister()
// Light Blue Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_light_blue') * 144).outputs(item('minecraft:concrete_powder:3') * 4).duration(15).EUt(7).buildAndRegister()	
// Yellow Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_yellow') * 144).outputs(item('minecraft:concrete_powder:4') * 4).duration(15).EUt(7).buildAndRegister()	
// Lime Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_lime') * 144).outputs(item('minecraft:concrete_powder:5') * 4).duration(15).EUt(7).buildAndRegister()	
// Pink Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_pink') * 144).outputs(item('minecraft:concrete_powder:6') * 4).duration(15).EUt(7).buildAndRegister()	
// Gray Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_gray') * 144).outputs(item('minecraft:concrete_powder:7') * 4).duration(15).EUt(7).buildAndRegister()
// Light Gray Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_light_gray') * 144).outputs(item('minecraft:concrete_powder:8') * 4).duration(15).EUt(7).buildAndRegister()
// Cyan Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_cyan') * 144).outputs(item('minecraft:concrete_powder:9') * 4).duration(15).EUt(7).buildAndRegister()
// Purple Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_purple') * 144).outputs(item('minecraft:concrete_powder:10') * 4).duration(15).EUt(7).buildAndRegister()
// Blue Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_blue') * 144).outputs(item('minecraft:concrete_powder:11') * 4).duration(15).EUt(7).buildAndRegister()
// Brown Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_brown') * 144).outputs(item('minecraft:concrete_powder:12') * 4).duration(15).EUt(7).buildAndRegister()
// Green Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_green') * 144).outputs(item('minecraft:concrete_powder:13') * 4).duration(15).EUt(7).buildAndRegister()
// Red Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_red') * 144).outputs(item('minecraft:concrete_powder:14') * 4).duration(15).EUt(7).buildAndRegister()
// Black Concrete Powder * 8
mixer.recipeBuilder().inputs(item('tfc:aggregate') * 4).fluidInputs(fluid('dye_black') * 144).outputs(item('minecraft:concrete_powder:15') * 4).duration(15).EUt(7).buildAndRegister()

// Переработка тфк еды в метан
// Мясо
centrifuge.recipeBuilder().circuitMeta(1).inputs(ore('categoryMeat')).fluidOutputs(fluid('methane') * 72).duration(40).EUt(5).buildAndRegister()
centrifuge.recipeBuilder().circuitMeta(2).inputs(ore('categoryCookedMeat')).fluidOutputs(fluid('methane') * 144).duration(40).EUt(5).buildAndRegister()
// Фрукты
centrifuge.recipeBuilder().circuitMeta(3).inputs(ore('categoryFruit')).fluidOutputs(fluid('methane') * 48).duration(40).EUt(5).buildAndRegister()
// Овощи
centrifuge.recipeBuilder().circuitMeta(4).inputs(ore('categoryVegetable')).fluidOutputs(fluid('methane') * 62).duration(40).EUt(5).buildAndRegister()
// Крупы
centrifuge.recipeBuilder().circuitMeta(5).inputs(ore('categoryGrain')).fluidOutputs(fluid('methane') * 44).duration(40).EUt(5).buildAndRegister()
// Хлеб
centrifuge.recipeBuilder().circuitMeta(6).inputs(ore('categoryBread')).fluidOutputs(fluid('methane') * 26).duration(40).EUt(5).buildAndRegister()

// Переработка слитков
// Первичная
forge_hammer.recipeBuilder().inputs(ore('ingotPigIron')).outputs(item('tfc:metal/ingot/high_carbon_steel')).duration(100).EUt(2).buildAndRegister()
forge_hammer.recipeBuilder().inputs(ore('ingotHighCarbonSteel')).outputs(metaitem('ingotSteel')).duration(100).EUt(2).buildAndRegister()
forge_hammer.recipeBuilder().inputs(ore('ingotHighCarbonBlueSteel')).outputs(metaitem('ingotBlueSteel')).duration(100).EUt(2).buildAndRegister()
forge_hammer.recipeBuilder().inputs(ore('ingotHighCarbonRedSteel')).outputs(metaitem('ingotRedSteel')).duration(100).EUt(2).buildAndRegister()
forge_hammer.recipeBuilder().inputs(ore('ingotHighCarbonBlackSteel')).outputs(metaitem('ingotBlackSteel')).duration(100).EUt(2).buildAndRegister()
// Вторичная
alloy_smelter.recipeBuilder().inputs(ore('ingotWeakBlueSteel'), ore('ingotBlackSteel')).outputs(item('tfc:metal/ingot/high_carbon_blue_steel')).duration(100).EUt(2).buildAndRegister()
alloy_smelter.recipeBuilder().inputs(ore('ingotWeakRedSteel'), ore('ingotBlackSteel')).outputs(item('tfc:metal/ingot/high_carbon_red_steel')).duration(100).EUt(2).buildAndRegister()
alloy_smelter.recipeBuilder().inputs(ore('ingotWeakSteel'), ore('ingotPigIron')).outputs(item('tfc:metal/ingot/high_carbon_black_steel')).duration(100).EUt(2).buildAndRegister()

// Рецепты для льда
vacuum_freezer.recipeBuilder().fluidInputs(fluid('fresh_water') * 1000).outputs(item('minecraft:ice')).duration(1500).EUt(256).buildAndRegister()
vacuum_freezer.recipeBuilder().fluidInputs(fluid('salt_water') * 1000).outputs(item('tfc:sea_ice')).duration(1500).EUt(256).buildAndRegister()
// vacuum_freezer.recipeBuilder().fluidInputs(fluid('fresh_water') * 2000).outputs(item('minecraft:packed_ice')).duration(1500).EUt(512).buildAndRegister()

// Различные крафты для лассо
assembler.recipeBuilder()
	.inputs(ore('string') * 2, ore('leather'))
	.outputs(item('minecraft:lead'))
	.duration(250).EUt(2).buildAndRegister()

// Песок -> Диоксид кремния
electrolyzer.recipeBuilder()
	.inputs(ore('sandSilica') * 8)
	.outputs(metaitem('dustSiliconDioxide'))
	.duration(150).EUt(26).buildAndRegister()

// Разбор книжных полок
arc_furnace.recipeBuilder()
	.inputs(ore('bookshelf'))
	.outputs(metaitem('dustTinyAsh') * 16)
	.duration(1).EUt(30).buildAndRegister()
macerator.recipeBuilder()
	.inputs(ore('bookshelf'))
	.outputs(metaitem('dustPaper') * 9, metaitem('dustWood') * 6)
	.duration(196).EUt(2).buildAndRegister()

// Рецепты теплой воды
fluid_heater.recipeBuilder()
	.circuitMeta(5)
	.fluidInputs(fluid('fresh_water') * 100)
	.fluidOutputs(fluid('hot_water') * 100)
	.duration(600).EUt(2).buildAndRegister()
fluid_heater.recipeBuilder()
	.circuitMeta(6)
	.fluidInputs(fluid('water') * 100)
	.fluidOutputs(fluid('hot_water') * 100)
	.duration(600).EUt(2).buildAndRegister()

// Рецепты свежей воды
vacuum_freezer.recipeBuilder()
	.fluidInputs(fluid('hot_water') * 100)
	.fluidOutputs(fluid('fresh_water') * 100)
	.duration(1000).EUt(128).buildAndRegister()
centrifuge.recipeBuilder()
	.fluidInputs(fluid('water') * 100)
	.circuitMeta(5)
	.fluidOutputs(fluid('fresh_water') * 100)
	.duration(750).EUt(32).buildAndRegister()

// Saplings -> Logs + Saplings (Greenhouse)

for (int i = 0; i < arrayTFC.tfcSaplings.size(); i++) {
	greenhouse.recipeBuilder()
		.inputs(
            arrayTFC.tfcSaplings[i], 
            metaitem('fertilizer') * 4)
		.circuitMeta(1)
		.fluidInputs(fluid('fresh_water') * 1000)
		.outputs(
            arrayTFC.tfcLogs[i] * 16, 
            arrayTFC.tfcSaplings[i])
		.chancedOutput(arrayTFC.tfcSaplings[i], 5000, 0)
		.duration(2000).EUt(80).buildAndRegister()

	greenhouse.recipeBuilder()
		.inputs(
            arrayTFC.tfcSaplings[i], 
            metaitem('fertilizer') * 4)
		.circuitMeta(2)
		.fluidInputs(fluid('distilled_water') * 1000)
		.outputs(
            arrayTFC.tfcLogs[i] * 16, 
            arrayTFC.tfcSaplings[i])
		.chancedOutput(arrayTFC.tfcSaplings[i].withAmount(2), 5000, 0)
		.duration(1500).EUt(80).buildAndRegister()

}

// Seeds -> AnyPlant (Greenhouse)
for (int i = 0; i < arrayTFC.tfcSeeds.size(); i++) {
	greenhouse.recipeBuilder()
		.notConsumable(arrayTFC.tfcSeeds[i])
		.circuitMeta(1)
		.inputs(metaitem('fertilizer') * 2)
		.fluidInputs(fluid('fresh_water') * 1000)
		.outputs(arrayTFC.tfcPlants[i] * 2)
		.duration(1500).EUt(80).buildAndRegister()

	greenhouse.recipeBuilder()
		.notConsumable(arrayTFC.tfcSeeds[i])
		.circuitMeta(2)
		.inputs(metaitem('fertilizer') * 2)
		.fluidInputs(fluid('distilled_water') * 1000)
		.outputs(arrayTFC.tfcPlants[i] * 2)
		.chancedOutput(arrayTFC.tfcPlants[i].withAmount(2), 7500, 0)
		.duration(1000).EUt(80).buildAndRegister()
}

// Hide Raw Small -> Hide Soaked Small
mixer.recipeBuilder()
	.inputs(item('tfc:hide/raw/small'))
	.fluidInputs(fluid('limewater') * 100)
	.circuitMeta(16)
	.outputs(item('tfc:hide/soaked/small'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Raw Medium -> Hide Soaked Medium
mixer.recipeBuilder()
	.inputs(item('tfc:hide/raw/medium'))
	.fluidInputs(fluid('limewater') * 200)
	.circuitMeta(16)
	.outputs(item('tfc:hide/soaked/medium'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Raw Large -> Hide Soaked Large
mixer.recipeBuilder()
	.inputs(item('tfc:hide/raw/large'))
	.fluidInputs(fluid('limewater') * 300)
	.circuitMeta(16)
	.outputs(item('tfc:hide/soaked/large'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Soaked Small -> Hide Scraped Small
assembler.recipeBuilder()
	.inputs(item('tfc:hide/soaked/small'))
	.circuitMeta(16)
	.outputs(item('tfc:hide/scraped/small'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Soaked Medium -> Hide Scraped Medium
assembler.recipeBuilder()
	.inputs(item('tfc:hide/soaked/medium'))
	.circuitMeta(16)
	.outputs(item('tfc:hide/scraped/medium'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Soaked Large -> Hide Scraped Large
assembler.recipeBuilder()
	.inputs(item('tfc:hide/soaked/large'))
	.circuitMeta(16)
	.outputs(item('tfc:hide/scraped/large'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Scrapped Small -> Hide Prepared Small
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/small'))
	.fluidInputs(fluid('fresh_water') * 100)
	.circuitMeta(16)
	.outputs(item('tfc:hide/prepared/small'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Scrapped Medium -> Hide Prepared Medium
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/medium'))
	.fluidInputs(fluid('fresh_water') * 200)
	.circuitMeta(16)
	.outputs(item('tfc:hide/prepared/medium'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Scrapped Large -> Hide Prepared Large
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/large'))
	.fluidInputs(fluid('fresh_water') * 300)
	.circuitMeta(16)
	.outputs(item('tfc:hide/prepared/large'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Prepared Small -> Leather
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/small'))
	.fluidInputs(fluid('tannin') * 100)
	.circuitMeta(16)
	.outputs(item('minecraft:leather'))
	.duration(150).EUt(2).buildAndRegister()

// Hide Prepared Medium -> Leather
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/medium'))
	.fluidInputs(fluid('tannin') * 200)
	.circuitMeta(16)
	.outputs(item('minecraft:leather') * 2)
	.duration(150).EUt(2).buildAndRegister()

// Hide Prepared Large -> Leather
mixer.recipeBuilder()
	.inputs(item('tfc:hide/scraped/large'))
	.fluidInputs(fluid('tannin') * 300)
	.circuitMeta(16)
	.outputs(item('minecraft:leather') * 3)
	.duration(150).EUt(2).buildAndRegister()

// WoodTannin -> Liquid Tanin
mixer.recipeBuilder()
	.inputs(ore('logWoodTannin'))
	.fluidInputs(fluid('fresh_water') * 1000)
	.circuitMeta(16)
	.fluidOutputs(fluid('tannin') * 16000)
	.duration(150).EUt(2).buildAndRegister()

// BoneMeal -> Primitive Glue
mixer.recipeBuilder()
	.inputs(item('minecraft:dye:15'))
	.fluidInputs(fluid('limewater') * 500)
	.circuitMeta(16)
	.outputs(item('tfc:glue'))
	.duration(150).EUt(2).buildAndRegister()

// Primitive Glue -> GT Glue
centrifuge.recipeBuilder()
	.inputs(item('tfc:glue'))
	.fluidOutputs(fluid('glue') * 10)
	.duration(150).EUt(2).buildAndRegister()

// Jute -> Jute Fiber
mixer.recipeBuilder()
	.inputs(item('tfc:crop/product/jute'))
	.fluidInputs(fluid('fresh_water') * 100)
	.circuitMeta(16)
	.outputs(item('tfc:crop/product/jute_fiber') * 2)
	.duration(150).EUt(2).buildAndRegister()

// Sand -> Mortar
mixer.recipeBuilder()
	.inputs(ore('sand'))
	.fluidInputs(fluid('limewater') * 50)
	.circuitMeta(16)
	.outputs(item('tfc:mortar') * 32)
	.duration(150).EUt(2).buildAndRegister()

// Wood Ash - ') Lye
mixer.recipeBuilder()
	.inputs(item('tfc:wood_ash'))
	.fluidInputs(fluid('hot_water') * 125)
	.circuitMeta(16)
	.fluidOutputs(fluid('lye') * 125)
	.duration(150).EUt(2).buildAndRegister()

// Salt Water -> Brine
mixer.recipeBuilder()
	.fluidInputs(
        fluid('salt_water') * 9000, 
        fluid('vinegar') * 1000)
	.circuitMeta(16)
	.fluidOutputs(fluid('brine') * 10000)
	.duration(150).EUt(2).buildAndRegister()

// Soy Milk -> Vinegar Milk
mixer.recipeBuilder()
	.fluidInputs(
        fluid('soy_milk') * 9000, 
        fluid('vinegar') * 1000)
	.circuitMeta(16)
	.fluidOutputs(fluid('milk_vinegar') * 10000)
	.duration(150).EUt(2).buildAndRegister()

// Flux -> Limewater
mixer.recipeBuilder()
	.inputs(item('tfc:powder/flux'))
	.fluidInputs(fluid('fresh_water') * 500)
	.circuitMeta(16)
	.fluidOutputs(fluid('limewater') * 500)
	.duration(150).EUt(2).buildAndRegister()

// Gypsum -> Alabaster
mixer.recipeBuilder()
	.inputs(metaitem('dustGypsum') * 2)
	.fluidInputs(fluid('limewater') * 100)
	.circuitMeta(16)
	.outputs(item('tfc:alabaster/raw/plain'))
	.duration(150).EUt(2).buildAndRegister()

// Powderkeg
assembler.recipeBuilder()
	.inputs(
		item('minecraft:gunpowder'), 
		ore('barrel'), 
		ore('dyeRed'))
	.circuitMeta(16)
	.outputs(item('tfc:powderkeg'))
	.duration(150).EUt(2).buildAndRegister()

// Kaolinite Dust
macerator.recipeBuilder()
	.inputs(metaitem('dustMica'))
	.outputs(item('tfc:powder/kaolinite') * 6)
	.duration(100).EUt(2).buildAndRegister()

// Flux Dust
macerator.recipeBuilder()
	.inputs(ore('rockFlux'))
	.outputs(item('tfc:powder/flux') * 6)
	.duration(100).EUt(2).buildAndRegister()

// Graphite Dust
macerator.recipeBuilder()
	.inputs(metaitem('dustGraphite'))
	.outputs(item('tfc:powder/graphite') * 6)
	.duration(100).EUt(2).buildAndRegister()

// Alabaster -> Colored Alabaster
for (int i = 0; i < arrayTFC.tfcAlabaster.size(); i++) {
	chemical_bath.recipeBuilder()
		.inputs(item('tfc:alabaster/raw/plain'))
		 .fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayTFC.tfcAlabaster[i])
		.duration(20).EUt(7).buildAndRegister()
}

// Smooth Alabaster -> Colored Smooth Alabaster
for (int i = 0; i < arrayTFC.tfcAlabasterPolished.size(); i++) {
	chemical_bath.recipeBuilder()
		.inputs(item('tfc:alabaster/polished/plain'))
		 .fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayTFC.tfcAlabasterPolished[i])
		.duration(20).EUt(7).buildAndRegister()
}

// Bricks Alabaster -> Colored Bricks Alabaster
for (int i = 0; i < arrayTFC.tfcAlabasterBricks.size(); i++) {
	chemical_bath.recipeBuilder()
		.inputs(item('tfc:alabaster/bricks/plain'))
		 .fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayTFC.tfcAlabasterBricks[i])
		.duration(20).EUt(7).buildAndRegister()
}

// Any Alabaster Raw -> Alabaster Plain
chemical_bath.recipeBuilder()
		.inputs(ore('alabasterRaw'))
		 .fluidInputs(fluid('chlorine') * 20)
		.outputs(item('tfc:alabaster/raw/plain'))
		.duration(20).EUt(7).buildAndRegister()

// Any Alabaster Polished -> Alabaster Polished
chemical_bath.recipeBuilder()
		.inputs(ore('alabasterPolished'))
		 .fluidInputs(fluid('chlorine') * 20)
		.outputs(item('tfc:alabaster/polished/plain'))
		.duration(20).EUt(7).buildAndRegister()

// Any Alabaster Bricks -> Alabaster Bricks
chemical_bath.recipeBuilder()
		.inputs(ore('alabasterBricks'))
		 .fluidInputs(fluid('chlorine') * 20)
		.outputs(item('tfc:alabaster/bricks/plain'))
		.duration(20).EUt(7).buildAndRegister()

// Milk -> Curdled Milk
mixer.recipeBuilder()
	.inputs(item('firmalife:rennet'))
	.fluidInputs(fluid('milk') * 2000)
	.circuitMeta(16)
	.fluidOutputs(fluid('milk_curdled') * 2000)
	.duration(150).EUt(2).buildAndRegister()

// Yak Milk -> Curdled Yak Milk
mixer.recipeBuilder()
	.inputs(item('firmalife:rennet'))
	.fluidInputs(fluid('yak_milk') * 2000)
	.circuitMeta(16)
	.fluidOutputs(fluid('curdled_yak_milk') * 2000)
	.duration(150).EUt(2).buildAndRegister()

// Goat Milk -> Curdled Goat Milk
mixer.recipeBuilder()
	.inputs(item('firmalife:rennet'))
	.fluidInputs(fluid('goat_milk') * 2000)
	.circuitMeta(16)
	.fluidOutputs(fluid('curdled_goat_milk') * 2000)
	.duration(150).EUt(2).buildAndRegister()

// Zebu Milk -> Curdled Milk
mixer.recipeBuilder()
	.inputs(item('firmalife:rennet'))
	.fluidInputs(fluid('zebu_milk') * 2000)
	.circuitMeta(16)
	.fluidOutputs(fluid('milk_curdled') * 2000)
	.duration(150).EUt(2).buildAndRegister()

// Kaolinite -> Kaolinite Clay
mixer.recipeBuilder()
	.inputs(item('tfc:powder/kaolinite'))
	.fluidInputs(fluid('fresh_water') * 100)
	.circuitMeta(16)
	.outputs(item('tfcflorae:ceramics/kaolinite/kaolinite_clay'))
	.duration(150).EUt(2).buildAndRegister()

// Milk Curd -> Gouda Wheel
mixer.recipeBuilder()
	.inputs(item('firmalife:milk_curd') * 3)
	.fluidInputs(fluid('salt_water') * 750)
	.circuitMeta(16)
	.outputs(item('firmalife:gouda_wheel'))
	.duration(150).EUt(2).buildAndRegister()

// Goat Curd -> Feta Wheel
mixer.recipeBuilder()
	.inputs(item('firmalife:goat_curd') * 3)
	.fluidInputs(fluid('salt_water') * 750)
	.circuitMeta(16)
	.outputs(item('firmalife:feta_wheel'))
	.duration(150).EUt(2).buildAndRegister()

// Yak Curd -> Shosha Wheel
mixer.recipeBuilder()
    .circuitMeta(16)
	.inputs(item('firmalife:yak_curd') * 3)
	.fluidInputs(fluid('salt_water') * 750)
	.outputs(item('firmalife:shosha_wheel'))
	.duration(150).EUt(2).buildAndRegister()

// Wiremill recipes for yarn from fibers
for (int i = 0; i < arrayTFC.tfcStrings.size(); i++) {
	wiremill.recipeBuilder()
		.inputs(arrayTFC.tfcFibres[i])
		.outputs(arrayTFC.tfcStrings[i] * 12)
		.duration(20).EUt(7).buildAndRegister()
}