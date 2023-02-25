import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Circuit Plate
furnace.addRecipe(<projectred-core:resource_item> * 2, <ore:stone>);


for i, illuminarsArray in illuminarsArray {
	// Illuminar dusts
	mixer.recipeBuilder()
		.circuit(24)
		.inputs(<minecraft:glowstone_dust>)
		.fluidInputs([colorLiquid[i] * 18])
		.outputs(illuminarsArray)
		.duration(20).EUt(7).buildAndRegister();
	// Deactivated Lamps
	assembler.recipeBuilder()
		.circuit(12)
		.inputs(
			<metaitem:wireGtSingleRedAlloy>, 
			<ore:paneGlass> * 6, 
			<metaitem:stickSteel> * 12, 
			illuminarsArray * 2)
		.outputs(deactivatedLampsArray[i])
		.duration(180).EUt(32).buildAndRegister();
	// Button Lamps
	assembler.recipeBuilder()
		.circuit(14)
		.inputs(
			<ore:buttonStone>, 
			illuminarsArray * 2)
		.outputs(buttonLampsArray[i])
		.duration(180).EUt(32).buildAndRegister();
	// All Deactivated Lantern Lamps
	assembler.recipeBuilder()
		.circuit(16)
		.inputs(
			<metaitem:wireGtSingleRedAlloy>, 
			<ore:paneGlass> * 2, 
			<metaitem:stickSteel> * 3, 
			<metaitem:plateIron> * 4, 
			illuminarsArray)
		.outputs(deactivatedLanternLampsArray[i])
		.duration(180).EUt(32).buildAndRegister();
	// Deactivated Fixture Lamps
	assembler.recipeBuilder()
		.circuit(18)
		.inputs(
			<projectred-core:resource_item:1>, 
			<metaitem:stickSteel> * 6, 
			<metaitem:plateIron> * 4, 
			<ore:paneGlass> * 5, 
			illuminarsArray * 2)
		.outputs(deactivatedFixtureLampsArray[i])
		.duration(180).EUt(32).buildAndRegister();
	// Deactivated Fallout Lamps
	assembler.recipeBuilder()
		.circuit(20)
		.inputs(
			<projectred-core:resource_item:1>, 
			<metaitem:stickSteel> * 6, 
			<metaitem:plateIron> * 2, 
			<galacticraftcore:grating> * 6, 
			illuminarsArray * 2)
		.outputs(deactivatedFalloutLampsArray[i])
		.duration(180).EUt(32).buildAndRegister();
}

// Activated Lamps
for i, activatedLampsArray in activatedLampsArray {
	assembler.recipeBuilder()
		.circuit(13)
		.inputs(
			deactivatedLampsArray[i], 
			<minecraft:redstone_torch>)
		.outputs(activatedLampsArray)
		.duration(16).EUt(2).buildAndRegister();
}

// Feedback Lamps
for i, feedbackLampsArray in feedbackLampsArray {
	assembler.recipeBuilder()
		.circuit(15)
		.inputs(
			<minecraft:redstone_torch>, 
			buttonLampsArray[i] * 2)
		.outputs(feedbackLampsArray)
		.duration(180).EUt(32).buildAndRegister();
}

// Activated Lantern Lamps
for i, activatedLanternLampsArray in activatedLanternLampsArray {
	assembler.recipeBuilder()
		.circuit(17)
		.inputs(
			deactivatedLanternLampsArray[i], 
			<minecraft:redstone_torch>)
		.outputs(activatedLanternLampsArray)
		.duration(16).EUt(2).buildAndRegister();
}

// Activated Fixture Lamps
for i, activatedFixtureLampsArray in activatedFixtureLampsArray {
	assembler.recipeBuilder()
		.circuit(19)
		.inputs(
			deactivatedFixtureLampsArray[i], 
			<minecraft:redstone_torch>)
		.outputs(activatedFixtureLampsArray)
		.duration(16).EUt(2).buildAndRegister();
}

// Activated Fallout Lamps
for i, activatedFalloutLampsArray in activatedFalloutLampsArray {
	assembler.recipeBuilder()
		.circuit(21)
		.inputs(
			deactivatedFalloutLampsArray[i], 
			<minecraft:redstone_torch>)
		.outputs(activatedFalloutLampsArray)
		.duration(16).EUt(2).buildAndRegister();
}

// Deactivated Cage Lamps
for i, deactivatedCageLampsArray in deactivatedCageLampsArray {
	assembler.recipeBuilder()
		.circuit(22)
		.inputs(
			<projectred-core:resource_item:1>, 
			<metaitem:stickSteel> * 2, 
			<galacticraftcore:grating> * 4, 
			illuminarsArray[i])
		.outputs(deactivatedCageLampsArray)
		.duration(180).EUt(32).buildAndRegister();
}

// Activated Cage Lamps
for i, activatedCageLampsArray in activatedCageLampsArray {
	assembler.recipeBuilder()
		.circuit(23)
		.inputs(
			deactivatedCageLampsArray[i], 
			<minecraft:redstone_torch>)
		.outputs(activatedCageLampsArray)
		.duration(16).EUt(2).buildAndRegister();
}

// Silicon Chip
circuit_assembler.recipeBuilder()
	.circuit(4)
	.inputs(
		<projectred-core:resource_item>, 
		<metaitem:wafer.integrated_logic_circuit>)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<projectred-core:resource_item:20>)
	.duration(400).EUt(32).buildAndRegister();

// Energized Silicon Chip
polarizer.recipeBuilder()
	.inputs(<projectred-core:resource_item:20>)
	.outputs(<projectred-core:resource_item:21>)
	.duration(200).EUt(32).buildAndRegister();

// Red Alloy Wire
assembler.recipeBuilder()
	.circuit(2)
	.inputs(<metaitem:wireGtSingleRedAlloy> * 2)
	.fluidInputs([<liquid:redstone> * 144])
	.outputs(<projectred-transmission:wire> * 12)
	.duration(180).EUt(32).buildAndRegister();
for i, transmissionWiresArray in transmissionWiresArray {
	chemical_bath.recipeBuilder()
		.inputs([<projectred-transmission:wire>])
		.fluidInputs([colorLiquid[i] * 18])
		.outputs(transmissionWiresArray)
		.duration(100).EUt(16).buildAndRegister();
}

// Bundled Cable
assembler.recipeBuilder()
	.circuit(3)
	.inputs(<projectred-transmission:wire> * 5)
	.inputs(<ore:string> * 4)
	.outputs(<projectred-transmission:wire:17> * 12)
	.duration(180).EUt(32).buildAndRegister();
for i, bundledCableArray in bundledCableArray {
	chemical_bath.recipeBuilder()
		.inputs(<projectred-transmission:wire:17>)
		.fluidInputs([colorLiquid[i] * 18])
		.outputs(bundledCableArray)
		.duration(100).EUt(16).buildAndRegister();
}

// IC Bluerprint
circuit_assembler.recipeBuilder()
	.circuit(10)
	.inputs(
		<ore:circuitLv> * 2, 
		<metaitem:dustLapis> * 4, 
		<metaitem:wireGtSingleRedAlloy> * 6)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<projectred-fabrication:ic_blueprint>)
	.duration(200).EUt(32).buildAndRegister();

// Null-Logic Routing Chip
circuit_assembler.recipeBuilder()
	.circuit(11)
	.inputs(
		<ore:circuitUlv> * 4, 
		<metaitem:wireGtSingleRedAlloy> * 2, 
		<projectred-core:resource_item:4>)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<projectred-core:resource_item:600>)
	.duration(200).EUt(32).buildAndRegister();

// IC Chip
recipes.addShaped(<projectred-fabrication:ic_chip>, 
	[[<metaitem:cableGtSingleGold>, <metaitem:cableGtSingleGold>, <metaitem:cableGtSingleGold>],
	[<appliedenergistics2:material:16>, <projectred-core:resource_item>, <appliedenergistics2:material:16>],
	[<metaitem:cableGtSingleGold>, <metaitem:cableGtSingleGold>, <metaitem:cableGtSingleGold>]]);

// IC Printer
recipes.addShaped(<projectred-fabrication:ic_machine:1>, 
	[[<metaitem:robot.arm.lv>, <metaitem:sensor.lv>, <metaitem:robot.arm.lv>],
	[<metaitem:blockSteel>, <ore:workbench>, <metaitem:blockSteel>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Multimeter
recipes.addShaped(<projectred-core:multimeter>, 
	[[<metaitem:wireGtSingleGold>, null, <metaitem:wireGtSingleRedAlloy>],
	[<metaitem:wireGtSingleGold>, <metaitem:cover.screen>, <metaitem:wireGtSingleRedAlloy>],
	[<ore:circuitLv>, <metaitem:plateIron>, <ore:circuitLv>]]);

