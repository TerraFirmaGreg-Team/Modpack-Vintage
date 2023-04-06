import preinit.Array.arrayVanila
import preinit.Array.arrayProjectRed

if (isLoaded("projectred-core")) {
// --- Добавление рецептов

// Circuit Plate
// furnace.addRecipe(item('projectred-core:resource_item') * 2, ore('stone'))


for (int i = 0; i < arrayProjectRed.illuminars.size(); i++) {
	// Illuminar dusts
	mixer.recipeBuilder()
		.notConsumable(circuit24)
		.inputs(item('minecraft:glowstone_dust'))
		.fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayProjectRed.illuminars[i])
		.duration(20).EUt(7).buildAndRegister()

	// Deactivated Lamps
	assembler.recipeBuilder()
		.circuitMeta(12)
		.inputs(
			metaitem('wireGtSingleRedAlloy'), 
			ore('paneGlass') * 6, 
			metaitem('stickSteel') * 12, 
			arrayProjectRed.illuminars[i] * 2)
		.outputs(arrayProjectRed.deLamps[i])
		.duration(180).EUt(32).buildAndRegister()

	// Button Lamps
	assembler.recipeBuilder()
		.circuitMeta(14)
		.inputs(
			ore('buttonStone'), 
			arrayProjectRed.illuminars[i] * 2)
		.outputs(arrayProjectRed.buttonLamps[i])
		.duration(180).EUt(32).buildAndRegister()

	// All Deactivated Lantern Lamps
	assembler.recipeBuilder()
		.circuitMeta(16)
		.inputs(
			metaitem('wireGtSingleRedAlloy'), 
			ore('paneGlass') * 2, 
			metaitem('stickSteel') * 3, 
			metaitem('plateIron') * 4, 
			arrayProjectRed.illuminars[i])
		.outputs(arrayProjectRed.deLanternLamps[i])
		.duration(180).EUt(32).buildAndRegister()

	// Deactivated Fixture Lamps
	assembler.recipeBuilder()
		.circuitMeta(18)
		.inputs(
			item('projectred-core:resource_item:1'), 
			metaitem('stickSteel') * 6, 
			metaitem('plateIron') * 4, 
			ore('paneGlass') * 5, 
			arrayProjectRed.illuminars[i] * 2)
		.outputs(arrayProjectRed.deFixtureLamps[i])
		.duration(180).EUt(32).buildAndRegister()
		
	// Deactivated Fallout Lamps
	assembler.recipeBuilder()
		.circuitMeta(20)
		.inputs(
			item('projectred-core:resource_item:1'), 
			metaitem('stickSteel') * 6, 
			metaitem('plateIron') * 2, 
			item('galacticraftcore:grating') * 6, 
			arrayProjectRed.illuminars[i] * 2)
		.outputs(arrayProjectRed.deFalloutLamps[i])
		.duration(180).EUt(32).buildAndRegister()
}

// Activated Lamps
for (int i = 0; i < arrayProjectRed.aLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(13)
		.inputs(
			arrayProjectRed.deLamps[i], 
			item('minecraft:redstone_torch'))
		.outputs(arrayProjectRed.aLamps[i])
		.duration(16).EUt(2).buildAndRegister()
}

// Feedback Lamps
for (int i = 0; i < arrayProjectRed.feedbackLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(15)
		.inputs(
			item('minecraft:redstone_torch'), 
			arrayProjectRed.buttonLamps[i] * 2)
		.outputs(arrayProjectRed.feedbackLamps[i])
		.duration(180).EUt(32).buildAndRegister()
}

// Activated Lantern Lamps
for (int i = 0; i < arrayProjectRed.aLanternLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(17)
		.inputs(
			arrayProjectRed.deLanternLamps[i], 
			item('minecraft:redstone_torch'))
		.outputs(arrayProjectRed.aLanternLamps[i])
		.duration(16).EUt(2).buildAndRegister()
}

// Activated Fixture Lamps
for (int i = 0; i < arrayProjectRed.aFixtureLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(19)
		.inputs(
			arrayProjectRed.deFixtureLamps[i], 
			item('minecraft:redstone_torch'))
		.outputs(arrayProjectRed.aFixtureLamps[i])
		.duration(16).EUt(2).buildAndRegister()
}

// Activated Fallout Lamps
for (int i = 0; i < arrayProjectRed.aFalloutLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(21)
		.inputs(
			arrayProjectRed.deFalloutLamps[i], 
			item('minecraft:redstone_torch'))
		.outputs(arrayProjectRed.aFalloutLamps[i])
		.duration(16).EUt(2).buildAndRegister()
}

// Deactivated Cage Lamps
for (int i = 0; i < arrayProjectRed.deCageLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(22)
		.inputs(
			item('projectred-core:resource_item:1'), 
			metaitem('stickSteel') * 2,
			item('galacticraftcore:grating') * 4,
			arrayProjectRed.illuminars[i])
		.outputs(arrayProjectRed.deCageLamps[i])
		.duration(180).EUt(32).buildAndRegister()
}

// Activated Cage Lamps
for (int i = 0; i < arrayProjectRed.aCageLamps.size(); i++) {
	assembler.recipeBuilder()
		.circuitMeta(23)
		.inputs(
			arrayProjectRed.deCageLamps[i], 
			item('minecraft:redstone_torch'))
		.outputs(arrayProjectRed.aCageLamps[i])
		.duration(16).EUt(2).buildAndRegister()
}

// Silicon Chip
circuit_assembler.recipeBuilder()
	.inputs(
		item('projectred-core:resource_item'), 
		metaitem('wafer.integrated_logic_circuit'))
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(item('projectred-core:resource_item', 20))
	.duration(400).EUt(32).buildAndRegister()

// Energized Silicon Chip
polarizer.recipeBuilder()
	.inputs(item('projectred-core:resource_item', 20))
	.outputs(item('projectred-core:resource_item', 21))
	.duration(200).EUt(32).buildAndRegister()

// Red Alloy Wire
assembler.recipeBuilder()
	.circuitMeta(2)
	.inputs(metaitem('wireGtSingleRedAlloy') * 2)
	.fluidInputs(fluid('redstone') * 144)
	.outputs(item('projectred-transmission:wire') * 12)
	.duration(180).EUt(32).buildAndRegister()

for (int i = 0; i < arrayProjectRed.transmissionWires.size(); i++) {
	chemical_bath.recipeBuilder()
		.inputs(item('projectred-transmission:wire'))
		.fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayProjectRed.transmissionWires[i])
		.duration(100).EUt(16).buildAndRegister()
}

// Bundled Cable
assembler.recipeBuilder()
	.circuitMeta(3)
	.inputs(item('projectred-transmission:wire') * 5)
	.inputs(ore('string') * 4)
	.outputs(item('projectred-transmission:wire', 17) * 12)
	.duration(180).EUt(32).buildAndRegister()
for (int i = 0; i < arrayProjectRed.bundledCable.size(); i++) {
	chemical_bath.recipeBuilder()
		.inputs(item('projectred-transmission:wire', 17))
		.fluidInputs(arrayVanila.colorLiquid[i] * 18)
		.outputs(arrayProjectRed.bundledCable[i])
		.duration(100).EUt(16).buildAndRegister()
}

// IC Bluerprint
circuit_assembler.recipeBuilder()
	.inputs(
		ore('circuitLv') * 2, 
		metaitem('dustLapis') * 4, 
		metaitem('wireGtSingleRedAlloy') * 6)
	.fluidInputs(fluid('soldering_alloy') * 144)
	.outputs(item('projectred-fabrication:ic_blueprint'))
	.duration(200).EUt(32).buildAndRegister()

// Null-Logic Routing Chip
circuit_assembler.recipeBuilder()
	.inputs(
		ore('circuitUlv') * 4, 
		metaitem('wireGtSingleRedAlloy') * 2, 
		item('projectred-core:resource_item:4'))
	.fluidInputs(fluid('soldering_alloy') * 144)
	.outputs(item('projectred-core:resource_item', 600))
	.duration(200).EUt(32).buildAndRegister()

// IC Chip
crafting.addShaped(item('projectred-fabrication:ic_chip'), 
	[[metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold')],
	[item('appliedenergistics2:material', 16), item('projectred-core:resource_item'), item('appliedenergistics2:material', 16)],
	[metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold'), metaitem('cableGtSingleGold')]])

// IC Printer
crafting.addShaped(item('projectred-fabrication:ic_machine:1'), 
	[[metaitem('robot.arm.lv'), metaitem('sensor.lv'), metaitem('robot.arm.lv')],
	[metaitem('blockSteel'), ore('workbench'), metaitem('blockSteel')],
	[ore('plankWood'), ore('plankWood'), ore('plankWood')]])

// Multimeter
crafting.addShaped(item('projectred-core:multimeter'), 
	[[metaitem('wireGtSingleGold'), null, metaitem('wireGtSingleRedAlloy')],
	[metaitem('wireGtSingleGold'), metaitem('cover.screen'), metaitem('wireGtSingleRedAlloy')],
	[ore('circuitLv'), metaitem('plateIron'), ore('circuitLv')]])

}