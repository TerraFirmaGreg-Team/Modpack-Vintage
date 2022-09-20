import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveRecipes as IItemStack[] = [
	<projectred-core:resource_item:20>,
    <projectred-core:resource_item:21>,
    <projectred-transmission:wire>,
    <projectred-fabrication:ic_chip>,
    <projectred-fabrication:ic_blueprint>,
    <projectred-fabrication:ic_machine:1>,
    <projectred-core:multimeter>
];

val RecipesToRemoveFromFurnace as IItemStack[] = [
	<projectred-core:resource_item> * 2,
    <projectred-core:resource_item:103>,
    <projectred-core:resource_item:342>,
    <projectred-core:resource_item:320>,
    <projectred-core:resource_item:341>,
    <projectred-core:resource_item:300>,
    <projectred-core:resource_item:104>
];

val Illuminars_Array as IItemStack[] = [
    <projectred-core:resource_item:500>,
    <projectred-core:resource_item:501>,
    <projectred-core:resource_item:502>,
    <projectred-core:resource_item:503>,
    <projectred-core:resource_item:504>,
    <projectred-core:resource_item:505>,
    <projectred-core:resource_item:506>,
    <projectred-core:resource_item:507>,
    <projectred-core:resource_item:508>,
    <projectred-core:resource_item:509>,
    <projectred-core:resource_item:510>,
    <projectred-core:resource_item:511>,
    <projectred-core:resource_item:512>,
    <projectred-core:resource_item:513>,
    <projectred-core:resource_item:514>,
    <projectred-core:resource_item:515>
];

val Deactivated_Lamps_Array as IItemStack[] = [
    <projectred-illumination:lamp>,
    <projectred-illumination:lamp:1>,
    <projectred-illumination:lamp:2>,
    <projectred-illumination:lamp:3>,
    <projectred-illumination:lamp:4>,
    <projectred-illumination:lamp:5>,
    <projectred-illumination:lamp:6>,
    <projectred-illumination:lamp:7>,
    <projectred-illumination:lamp:8>,
    <projectred-illumination:lamp:9>,
    <projectred-illumination:lamp:10>,
    <projectred-illumination:lamp:11>,
    <projectred-illumination:lamp:12>,
    <projectred-illumination:lamp:13>,
    <projectred-illumination:lamp:14>,
    <projectred-illumination:lamp:15>
];

val Activated_Lamps_Array as IItemStack[] = [
    <projectred-illumination:lamp:16>,
    <projectred-illumination:lamp:17>,
    <projectred-illumination:lamp:18>,
    <projectred-illumination:lamp:19>,
    <projectred-illumination:lamp:20>,
    <projectred-illumination:lamp:21>,
    <projectred-illumination:lamp:22>,
    <projectred-illumination:lamp:23>,
    <projectred-illumination:lamp:24>,
    <projectred-illumination:lamp:25>,
    <projectred-illumination:lamp:26>,
    <projectred-illumination:lamp:27>,
    <projectred-illumination:lamp:28>,
    <projectred-illumination:lamp:29>,
    <projectred-illumination:lamp:30>,
    <projectred-illumination:lamp:31>
];

val Button_Lamps_Array as IItemStack[] = [
	<projectred-illumination:light_button>,
    <projectred-illumination:light_button:1>,
    <projectred-illumination:light_button:2>,
    <projectred-illumination:light_button:3>,
    <projectred-illumination:light_button:4>,
    <projectred-illumination:light_button:5>,
    <projectred-illumination:light_button:6>,
    <projectred-illumination:light_button:7>,
    <projectred-illumination:light_button:8>,
    <projectred-illumination:light_button:9>,
    <projectred-illumination:light_button:10>,
    <projectred-illumination:light_button:11>,
    <projectred-illumination:light_button:12>,
    <projectred-illumination:light_button:13>,
    <projectred-illumination:light_button:14>,
    <projectred-illumination:light_button:15>
];

val Feedback_Lamps_Array as IItemStack[] = [
	<projectred-illumination:feedback_light_button>,
    <projectred-illumination:feedback_light_button:1>,
    <projectred-illumination:feedback_light_button:2>,
    <projectred-illumination:feedback_light_button:3>,
    <projectred-illumination:feedback_light_button:4>,
    <projectred-illumination:feedback_light_button:5>,
    <projectred-illumination:feedback_light_button:6>,
    <projectred-illumination:feedback_light_button:7>,
    <projectred-illumination:feedback_light_button:8>,
    <projectred-illumination:feedback_light_button:9>,
    <projectred-illumination:feedback_light_button:10>,
    <projectred-illumination:feedback_light_button:11>,
    <projectred-illumination:feedback_light_button:12>,
    <projectred-illumination:feedback_light_button:13>,
    <projectred-illumination:feedback_light_button:14>,
    <projectred-illumination:feedback_light_button:15>
];

val Deactivated_Lantern_Lamps_Array as IItemStack[] = [
	<projectred-illumination:lantern>,
    <projectred-illumination:lantern:1>,
    <projectred-illumination:lantern:2>,
    <projectred-illumination:lantern:3>,
    <projectred-illumination:lantern:4>,
    <projectred-illumination:lantern:5>,
    <projectred-illumination:lantern:6>,
    <projectred-illumination:lantern:7>,
    <projectred-illumination:lantern:8>,
    <projectred-illumination:lantern:9>,
    <projectred-illumination:lantern:10>,
    <projectred-illumination:lantern:11>,
    <projectred-illumination:lantern:12>,
    <projectred-illumination:lantern:13>,
    <projectred-illumination:lantern:14>,
    <projectred-illumination:lantern:15>
];

val Activated_Lantern_Lamps_Array as IItemStack[] = [
	<projectred-illumination:inverted_lantern>,
    <projectred-illumination:inverted_lantern:1>,
    <projectred-illumination:inverted_lantern:2>,
    <projectred-illumination:inverted_lantern:3>,
    <projectred-illumination:inverted_lantern:4>,
    <projectred-illumination:inverted_lantern:5>,
    <projectred-illumination:inverted_lantern:6>,
    <projectred-illumination:inverted_lantern:7>,
    <projectred-illumination:inverted_lantern:8>,
    <projectred-illumination:inverted_lantern:9>,
    <projectred-illumination:inverted_lantern:10>,
    <projectred-illumination:inverted_lantern:11>,
    <projectred-illumination:inverted_lantern:12>,
    <projectred-illumination:inverted_lantern:13>,
    <projectred-illumination:inverted_lantern:14>,
    <projectred-illumination:inverted_lantern:15>
];

val Deactivated_Fixture_Lamps_Array as IItemStack[] = [
	<projectred-illumination:fixture_light>,
    <projectred-illumination:fixture_light:1>,
    <projectred-illumination:fixture_light:2>,
    <projectred-illumination:fixture_light:3>,
    <projectred-illumination:fixture_light:4>,
    <projectred-illumination:fixture_light:5>,
    <projectred-illumination:fixture_light:6>,
    <projectred-illumination:fixture_light:7>,
    <projectred-illumination:fixture_light:8>,
    <projectred-illumination:fixture_light:9>,
    <projectred-illumination:fixture_light:10>,
    <projectred-illumination:fixture_light:11>,
    <projectred-illumination:fixture_light:12>,
    <projectred-illumination:fixture_light:13>,
    <projectred-illumination:fixture_light:14>,
    <projectred-illumination:fixture_light:15>
];

val Activated_Fixture_Lamps_Array as IItemStack[] = [
	<projectred-illumination:inverted_fixture_light>,
    <projectred-illumination:inverted_fixture_light:1>,
    <projectred-illumination:inverted_fixture_light:2>,
    <projectred-illumination:inverted_fixture_light:3>,
    <projectred-illumination:inverted_fixture_light:4>,
    <projectred-illumination:inverted_fixture_light:5>,
    <projectred-illumination:inverted_fixture_light:6>,
    <projectred-illumination:inverted_fixture_light:7>,
    <projectred-illumination:inverted_fixture_light:8>,
    <projectred-illumination:inverted_fixture_light:9>,
    <projectred-illumination:inverted_fixture_light:10>,
    <projectred-illumination:inverted_fixture_light:11>,
    <projectred-illumination:inverted_fixture_light:12>,
    <projectred-illumination:inverted_fixture_light:13>,
    <projectred-illumination:inverted_fixture_light:14>,
    <projectred-illumination:inverted_fixture_light:15>
];

val Deactivated_Fallout_Lamps_Array as IItemStack[] = [
	<projectred-illumination:fallout_lamp>,
    <projectred-illumination:fallout_lamp:1>,
    <projectred-illumination:fallout_lamp:2>,
    <projectred-illumination:fallout_lamp:3>,
    <projectred-illumination:fallout_lamp:4>,
    <projectred-illumination:fallout_lamp:5>,
    <projectred-illumination:fallout_lamp:6>,
    <projectred-illumination:fallout_lamp:7>,
    <projectred-illumination:fallout_lamp:8>,
    <projectred-illumination:fallout_lamp:9>,
    <projectred-illumination:fallout_lamp:10>,
    <projectred-illumination:fallout_lamp:11>,
    <projectred-illumination:fallout_lamp:12>,
    <projectred-illumination:fallout_lamp:13>,
    <projectred-illumination:fallout_lamp:14>,
    <projectred-illumination:fallout_lamp:15>
];

val Activated_Fallout_Lamps_Array as IItemStack[] = [
	<projectred-illumination:inverted_fallout_lamp>,
    <projectred-illumination:inverted_fallout_lamp:1>,
    <projectred-illumination:inverted_fallout_lamp:2>,
    <projectred-illumination:inverted_fallout_lamp:3>,
    <projectred-illumination:inverted_fallout_lamp:4>,
    <projectred-illumination:inverted_fallout_lamp:5>,
    <projectred-illumination:inverted_fallout_lamp:6>,
    <projectred-illumination:inverted_fallout_lamp:7>,
    <projectred-illumination:inverted_fallout_lamp:8>,
    <projectred-illumination:inverted_fallout_lamp:9>,
    <projectred-illumination:inverted_fallout_lamp:10>,
    <projectred-illumination:inverted_fallout_lamp:11>,
    <projectred-illumination:inverted_fallout_lamp:12>,
    <projectred-illumination:inverted_fallout_lamp:13>,
    <projectred-illumination:inverted_fallout_lamp:14>,
    <projectred-illumination:inverted_fallout_lamp:15>
];

val Deactivated_Cage_Lamps_Array as IItemStack[] = [
	<projectred-illumination:cage_lamp>,
    <projectred-illumination:cage_lamp:1>,
    <projectred-illumination:cage_lamp:2>,
    <projectred-illumination:cage_lamp:3>,
    <projectred-illumination:cage_lamp:4>,
    <projectred-illumination:cage_lamp:5>,
    <projectred-illumination:cage_lamp:6>,
    <projectred-illumination:cage_lamp:7>,
    <projectred-illumination:cage_lamp:8>,
    <projectred-illumination:cage_lamp:9>,
    <projectred-illumination:cage_lamp:10>,
    <projectred-illumination:cage_lamp:11>,
    <projectred-illumination:cage_lamp:12>,
    <projectred-illumination:cage_lamp:13>,
    <projectred-illumination:cage_lamp:14>,
    <projectred-illumination:cage_lamp:15>
];

val Activated_Cage_Lamps_Array as IItemStack[] = [
	<projectred-illumination:inverted_cage_lamp>,
    <projectred-illumination:inverted_cage_lamp:1>,
    <projectred-illumination:inverted_cage_lamp:2>,
    <projectred-illumination:inverted_cage_lamp:3>,
    <projectred-illumination:inverted_cage_lamp:4>,
    <projectred-illumination:inverted_cage_lamp:5>,
    <projectred-illumination:inverted_cage_lamp:6>,
    <projectred-illumination:inverted_cage_lamp:7>,
    <projectred-illumination:inverted_cage_lamp:8>,
    <projectred-illumination:inverted_cage_lamp:9>,
    <projectred-illumination:inverted_cage_lamp:10>,
    <projectred-illumination:inverted_cage_lamp:11>,
    <projectred-illumination:inverted_cage_lamp:12>,
    <projectred-illumination:inverted_cage_lamp:13>,
    <projectred-illumination:inverted_cage_lamp:14>,
    <projectred-illumination:inverted_cage_lamp:15>
];

val Transmission_Wires_Array as IItemStack[] = [
    <projectred-transmission:wire:1>,
    <projectred-transmission:wire:2>,
    <projectred-transmission:wire:3>,
    <projectred-transmission:wire:4>,
    <projectred-transmission:wire:5>,
    <projectred-transmission:wire:6>,
    <projectred-transmission:wire:7>,
    <projectred-transmission:wire:8>,
    <projectred-transmission:wire:9>,
    <projectred-transmission:wire:10>,
    <projectred-transmission:wire:11>,
    <projectred-transmission:wire:12>,
    <projectred-transmission:wire:13>,
    <projectred-transmission:wire:14>,
    <projectred-transmission:wire:15>,
	<projectred-transmission:wire:16>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveRecipes {
    recipes.remove(item);
}

// Удаление рецептов иллюмаров
for item in Illuminars_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных ламп
for item in Deactivated_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных ламп
for item in Activated_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов кнопко-ламп
for item in Button_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов кнопок с фидбеком
for item in Feedback_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фонарей
for item in Deactivated_Lantern_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фонарей
for item in Activated_Lantern_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фикстур ламп
for item in Deactivated_Fixture_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фикстур ламп
for item in Activated_Fixture_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фаллоут ламп
for item in Deactivated_Fallout_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фаллоут ламп
for item in Activated_Fallout_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных кейдж ламп
for item in Deactivated_Cage_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных кейдж ламп
for item in Activated_Cage_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов проводов из редстоуна
for item in Transmission_Wires_Array {
    recipes.remove(item);
}

// Удаление рецептов печки
for item in RecipesToRemoveFromFurnace {
    furnace.remove(item);
}

// --- Добавление рецептов

// Circuit Plate
furnace.addRecipe(<projectred-core:resource_item> * 2, <ore:stone>);

// Illuminar dusts
for i, Illuminars_Array in Illuminars_Array {
    <ore:dustIlluminar>.add(Illuminars_Array);
    mixer.recipeBuilder()
        .inputs(<ore:dustGlowstone>)
        .circuit(24)
        .fluidInputs([colorLiquid[i] * 18])
        .outputs(Illuminars_Array)
        .duration(20).EUt(7).buildAndRegister();
}

// Deactivated Lamps
for i, Deactivated_Lamps_Array in Deactivated_Lamps_Array {
    <ore:lampBlockDeactivated>.add(Deactivated_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<ore:wireGtSingleRedAlloy>, <ore:paneGlass> * 6, <ore:stickSteel> * 12, Illuminars_Array[i] * 2)
        .circuit(12)
        .outputs(Deactivated_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Activated Lamps
for i, Activated_Lamps_Array in Activated_Lamps_Array {
    <ore:lampBlockActivated>.add(Activated_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(Deactivated_Lamps_Array[i], <ore:craftingRedstoneTorch>)
        .circuit(13)
        .outputs(Activated_Lamps_Array)
        .duration(16).EUt(2).buildAndRegister();
}

// Button Lamps
for i, Button_Lamps_Array in Button_Lamps_Array {
    <ore:lampButton>.add(Button_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<ore:buttonStone>, Illuminars_Array[i] * 2)
        .circuit(14)
        .outputs(Button_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Feedback Lamps
for i, Feedback_Lamps_Array in Feedback_Lamps_Array {
    <ore:lampButtonFeedback>.add(Feedback_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<ore:craftingRedstoneTorch>, Button_Lamps_Array[i] * 2)
        .circuit(15)
        .outputs(Feedback_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// All Deactivated Lantern Lamps
for i, Deactivated_Lantern_Lamps_Array in Deactivated_Lantern_Lamps_Array {
    <ore:lampLanternDeactivated>.add(Deactivated_Lantern_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<ore:wireGtSingleRedAlloy>, <ore:paneGlass> * 2, <ore:stickSteel> * 3, <ore:plateIron> * 4, Illuminars_Array[i])
        .circuit(16)
        .outputs(Deactivated_Lantern_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Activated Lantern Lamps
for i, Activated_Lantern_Lamps_Array in Activated_Lantern_Lamps_Array {
    <ore:lampLanternActivated>.add(Activated_Lantern_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(Deactivated_Lantern_Lamps_Array[i], <ore:craftingRedstoneTorch>)
        .circuit(17)
        .outputs(Activated_Lantern_Lamps_Array)
        .duration(16).EUt(2).buildAndRegister();
}

// Deactivated Fixture Lamps
for i, Deactivated_Fixture_Lamps_Array in Deactivated_Fixture_Lamps_Array {
    <ore:lampFixtureDeactivated>.add(Deactivated_Fixture_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<projectred-core:resource_item:1>, <ore:stickSteel> * 6, <ore:plateIron> * 4, <ore:paneGlass> * 5, Illuminars_Array[i] * 2)
        .circuit(18)
        .outputs(Deactivated_Fixture_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Activated Fixture Lamps
for i, Activated_Fixture_Lamps_Array in Activated_Fixture_Lamps_Array {
    <ore:lampsFixtureActivated>.add(Deactivated_Fixture_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(Deactivated_Fixture_Lamps_Array[i], <ore:craftingRedstoneTorch>)
        .circuit(19)
        .outputs(Activated_Fixture_Lamps_Array)
        .duration(16).EUt(2).buildAndRegister();
}

// Deactivated Fallout Lamps
for i, Deactivated_Fallout_Lamps_Array in Deactivated_Fallout_Lamps_Array {
    <ore:lampFalloutDeactivated>.add(Deactivated_Fallout_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<projectred-core:resource_item:1>, <ore:stickSteel> * 6, <ore:plateIron> * 2, <galacticraftcore:grating> * 6, Illuminars_Array[i] * 2)
        .circuit(20)
        .outputs(Deactivated_Fallout_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Activated Fallout Lamps
for i, Activated_Fallout_Lamps_Array in Activated_Fallout_Lamps_Array {
    <ore:lampFalloutActivated>.add(Activated_Fallout_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(Deactivated_Fallout_Lamps_Array[i], <ore:craftingRedstoneTorch>)
        .circuit(21)
        .outputs(Activated_Fallout_Lamps_Array)
        .duration(16).EUt(2).buildAndRegister();
}

// Deactivated Cage Lamps
for i, Deactivated_Cage_Lamps_Array in Deactivated_Cage_Lamps_Array {
    <ore:lampCageDeactivated>.add(Deactivated_Cage_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(<projectred-core:resource_item:1>, <ore:stickSteel> * 2, <galacticraftcore:grating> * 4, Illuminars_Array[i])
        .circuit(22)
        .outputs(Deactivated_Cage_Lamps_Array)
        .duration(180).EUt(32).buildAndRegister();
}

// Activated Cage Lamps
for i, Activated_Cage_Lamps_Array in Activated_Cage_Lamps_Array {
    <ore:lampCageActivated>.add(Activated_Cage_Lamps_Array);
    assembler.recipeBuilder()
        .inputs(Deactivated_Cage_Lamps_Array[i], <ore:craftingRedstoneTorch>)
        .circuit(23)
        .outputs(Activated_Cage_Lamps_Array)
        .duration(16).EUt(2).buildAndRegister();
}

// Silicon Chip
circuit_assembler.recipeBuilder()
    .inputs(<projectred-core:resource_item>, <metaitem:wafer.integrated_logic_circuit>)
    .circuit(4)
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
    .inputs(<ore:wireGtSingleRedAlloy> * 2)
    .circuit(2)
    .fluidInputs([<liquid:redstone> * 144])
    .outputs(<projectred-transmission:wire> * 12)
    .duration(180).EUt(32).buildAndRegister();

// Покраска проводов
for i, Transmission_Wires_Array in Transmission_Wires_Array {
    chemical_bath.recipeBuilder()
        .inputs([<projectred-transmission:wire>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs(Transmission_Wires_Array)
        .duration(100).EUt(16).buildAndRegister();
}

// IC Bluerprint
circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitLv> * 2, <ore:dustLapis> * 4, <ore:wireGtSingleRedAlloy> * 6)
    .circuit(10)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<projectred-fabrication:ic_blueprint>)
    .duration(200).EUt(32).buildAndRegister();

// Null-Logic Routing Chip
circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitUlv> * 4, <ore:wireGtSingleRedAlloy> * 2, <projectred-core:resource_item:4>)
    .circuit(11)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<projectred-core:resource_item:600>)
    .duration(200).EUt(32).buildAndRegister();

// IC Chip
recipes.addShaped(<projectred-fabrication:ic_chip>, 
    [[<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>],
    [<appliedenergistics2:material:16>, <projectred-core:resource_item>, <appliedenergistics2:material:16>],
    [<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>]]);

// IC Printer
recipes.addShaped(<projectred-fabrication:ic_machine:1>, 
    [[<metaitem:robot.arm.lv>, <metaitem:sensor.lv>, <metaitem:robot.arm.lv>],
    [<ore:blockSteel>, <ore:workbench>, <ore:blockSteel>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Multimeter
recipes.addShaped(<projectred-core:multimeter>, 
    [[<ore:wireGtSingleGold>, null, <ore:wireGtSingleRedAlloy>],
    [<ore:wireGtSingleGold>, <metaitem:cover.screen>, <ore:wireGtSingleRedAlloy>],
    [<ore:circuitLv>, <ore:plateIron>, <ore:circuitLv>]]);

