import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;

// --- Массивы

val RemoveItemRecipes as IItemStack[] = [
  <appliedenergistics2:quartz_glass>,
  <appliedenergistics2:quartz_vibrant_glass>,
  <appliedenergistics2:quartz_fixture>,
  <appliedenergistics2:wireless_access_point>,
  <appliedenergistics2:security_station>,
  <appliedenergistics2:quantum_ring>,
  <appliedenergistics2:quantum_link>,
  <appliedenergistics2:spatial_pylon>,
  <appliedenergistics2:spatial_io_port>,
  <appliedenergistics2:controller>,
  <appliedenergistics2:drive>,
  <appliedenergistics2:chest>,
  <appliedenergistics2:cell_workbench>,
  <appliedenergistics2:io_port>,
  <appliedenergistics2:condenser>,
  <appliedenergistics2:energy_acceptor>,
  <appliedenergistics2:energy_cell>,
  <appliedenergistics2:dense_energy_cell>,
  <appliedenergistics2:crafting_unit>,
  <appliedenergistics2:crafting_accelerator>,
  <appliedenergistics2:crafting_storage_1k>,
  <appliedenergistics2:crafting_storage_4k>,
  <appliedenergistics2:crafting_storage_16k>,
  <appliedenergistics2:crafting_storage_64k>,
  <appliedenergistics2:crafting_monitor>,
  <appliedenergistics2:molecular_assembler>,
  <appliedenergistics2:light_detector>,
  <appliedenergistics2:entropy_manipulator>,
  <appliedenergistics2:wireless_terminal>,
  <appliedenergistics2:charged_staff>,
  <appliedenergistics2:matter_cannon>,
  <appliedenergistics2:portable_cell>,
  <appliedenergistics2:color_applicator>,
  <appliedenergistics2:biometric_card>,
  <appliedenergistics2:memory_card>,
  <appliedenergistics2:network_tool>,
  <appliedenergistics2:view_cell>,
  <appliedenergistics2:material:9>,
  <appliedenergistics2:material:21>,
  <appliedenergistics2:material:25>,
  <appliedenergistics2:material:26>,
  <appliedenergistics2:material:27>,
  <appliedenergistics2:material:28>,
  <appliedenergistics2:material:29>,
  <appliedenergistics2:material:30>,
  <appliedenergistics2:material:31>,
  <appliedenergistics2:material:32>,
  <appliedenergistics2:material:33>,
  <appliedenergistics2:material:34>,
  <appliedenergistics2:material:35>,
  <appliedenergistics2:material:36>,
  <appliedenergistics2:material:37>,
  <appliedenergistics2:material:38>,
  <appliedenergistics2:material:39>,
  <appliedenergistics2:material:41>,
  <appliedenergistics2:material:42>,
  <appliedenergistics2:material:43>,
  <appliedenergistics2:material:44>,
  <appliedenergistics2:material:52>,
  <appliedenergistics2:material:53>,
  <appliedenergistics2:material:54>,
  <appliedenergistics2:material:55>,
  <appliedenergistics2:material:56>,
  <appliedenergistics2:material:57>,
  <appliedenergistics2:material:58>,
  <appliedenergistics2:storage_cell_1k>,
  <appliedenergistics2:storage_cell_4k>,
  <appliedenergistics2:storage_cell_16k>,
  <appliedenergistics2:storage_cell_64k>,
  <appliedenergistics2:fluid_storage_cell_1k>,
  <appliedenergistics2:fluid_storage_cell_4k>,
  <appliedenergistics2:fluid_storage_cell_16k>,
  <appliedenergistics2:fluid_storage_cell_64k>,
  <appliedenergistics2:spatial_storage_cell_2_cubed>,
  <appliedenergistics2:spatial_storage_cell_16_cubed>,
  <appliedenergistics2:spatial_storage_cell_128_cubed>,
  <appliedenergistics2:part:340>,
  <appliedenergistics2:part:341>,
  <appliedenergistics2:part:180>,
  <appliedenergistics2:part:300>,
  <appliedenergistics2:part:420>,
  <appliedenergistics2:part:360>,
  <appliedenergistics2:part:260>,
  <appliedenergistics2:part:302>,
  <appliedenergistics2:part:261>,
  <appliedenergistics2:part:321>,
  <appliedenergistics2:part:241>,
  <appliedenergistics2:part:281>,
  <appliedenergistics2:part:221>,
  <appliedenergistics2:part:520>,
  <appliedenergistics2:part:320>,
  <appliedenergistics2:part:301>,
  <appliedenergistics2:part:240>,
  <appliedenergistics2:part:480>,
  <appliedenergistics2:part:280>,
  <appliedenergistics2:part:222>,
  <appliedenergistics2:part:220>,
  <appliedenergistics2:part:400>,
  <appliedenergistics2:part:380>,
  <appliedenergistics2:part:80>,
  <appliedenergistics2:part:460>,
  <appliedenergistics2:part:140>,
  <appliedenergistics2:interface>,
  <appliedenergistics2:fluid_interface>,
  <appliedenergistics2:fluix_block>
];

// --- Удаление рецептов
for item in RemoveItemRecipes {
    recipes.remove(item);
}
for item in glassCables{
  recipes.remove(item);
}
for item in coveredCables{
  recipes.remove(item);
}
for item in smartCables{
  recipes.remove(item);
}
for item in denseSmartCables{
  recipes.remove(item);
}
for item in denseCoveredCables{
  recipes.remove(item);
}
// --- Добавление рецептов

// Покраска, обесвечивание кабелей
// Glass Cable
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:stickAluminium> * 2,
        <appliedenergistics2:part:140> * 3,
    ])
    .fluidInputs([<liquid:fluix> * 144])
    .outputs([<appliedenergistics2:part:16> * 6])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:stickAluminium> * 2,
        <appliedenergistics2:part:140> * 3,
        <ore:dustFluix>
    ])
    .outputs([<appliedenergistics2:part:16> * 6])
    .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.glass.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:16>])
    .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.glass>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([glassCables[i]])
        .duration(20).EUt(7).buildAndRegister();
}

// Covered Cable
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:36>])
    .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.covered>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([coveredCables[i]])
        .duration(20).EUt(7).buildAndRegister();
}

// Smart Cable
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:36>
    ])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:56>])
    .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.smart>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([smartCables[i]])
        .duration(20).EUt(7).buildAndRegister();
}

// Dense Smart Cable
assembler.recipeBuilder()
    .circuit(4)
    .inputs([<appliedenergistics2:part:56> * 4])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:516>
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:36> * 4
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:76>])
    .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.dense.smart>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([denseSmartCables[i]])
        .duration(20).EUt(7).buildAndRegister();
}

// Dense Covered Cable
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:36> * 4])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20).EUt(480).buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:516>])
    .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
      .inputs([<ore:ae2.cable.dense.covered>])
      .fluidInputs([colorLiquid[i] * 18])
      .outputs([denseCoveredCables[i]])
      .duration(20).EUt(7).buildAndRegister();
}

// Сетевой инструмент
recipes.addShaped("tfg/ae2/network_tool", <appliedenergistics2:network_tool>, [
  [<ore:gtce.tool.wrenches>, <ore:circuitLv>],
  [<appliedenergistics2:material:23>, <ore:itemIlluminatedPanel>]]);

// Wireless Access Point
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [
    [null, <appliedenergistics2:material:41>, null],
    [null, <appliedenergistics2:material:23>, null],
    [null, <ore:ae2.cable.glass>, null]
]);

// Беспроводной раздатчик сигнала
recipes.addShaped("tfg/ae2/wireless_part", <appliedenergistics2:material:41>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:material:9>, <ore:ae2.cable.glass>],
  [<metaitem:sensor.ev>, <ore:stickTitanium>, <metaitem:sensor.ev>],
  [<ore:plateCertusQuartz>, <ore:circuitEv>, <ore:plateCertusQuartz>]]);

// Quartz Fiber
wiremill.recipeBuilder()
  .inputs([<ore:stickNetherQuartz> | <ore:stickCertusQuartz>])
  .outputs([<appliedenergistics2:part:140>])
  .duration(20).EUt(480).buildAndRegister();

// Quartz Glass
alloy_smelter.recipeBuilder()
  .inputs([
    <ore:blockGlass> * 4,
    <ore:dustCertusQuartz> * 5
  ])
  .outputs([<appliedenergistics2:quartz_glass> * 4])
  .duration(20).EUt(480).buildAndRegister();

// Vibrant Quartz Glass
alloy_smelter.recipeBuilder()
    .inputs([
        <appliedenergistics2:quartz_glass>,
        <minecraft:glowstone_dust> * 8
    ])
    .outputs([<appliedenergistics2:quartz_vibrant_glass>])
    .duration(20).EUt(480).buildAndRegister();
alloy_smelter.recipeBuilder()
    .inputs([
        <minecraft:glowstone>,
        <ore:dustAluminium> * 8
    ])
    .outputs([<appliedenergistics2:quartz_vibrant_glass>])
    .duration(20).EUt(480).buildAndRegister();

// Pure Fluix Crystal
mixer.recipeBuilder()
  .inputs([<ore:dustFluix>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:1200> * 2])
  .duration(20).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:distilled_water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 8600, 700)
  .duration(50).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
 	.inputs(<appliedenergistics2:crystal_seed:1200> * 1)
 	.fluidInputs([<liquid:water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 7500, 500)
  .duration(50).EUt(480).buildAndRegister();

// Pure Certus Quartz Crystal
mixer.recipeBuilder()
  .inputs([<ore:dustCertusQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed> * 2])
  .duration(20).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 8600, 700)
  .duration(50).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 7500, 500)
  .duration(50).EUt(480).buildAndRegister();

// Pure Nether Quartz Crystal
mixer.recipeBuilder()
  .inputs([<ore:dustNetherQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:600> * 2])
  .duration(20).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 8600, 700)
  .duration(50).EUt(480).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 7500, 500)
  .duration(50).EUt(480).buildAndRegister();

// Флакс кристалл 1
mixer.recipeBuilder()
 	.inputs(<minecraft:quartz>, <minecraft:redstone> * 4, <ore:gemChargedCertusQuartz>)
	.outputs(<appliedenergistics2:material:7>)
	.duration(40).EUt(18).buildAndRegister();

// Флакс кристалл 2
mixer.recipeBuilder()
	.inputs(<minecraft:quartz>, <ore:gemExquisiteRuby>, <ore:gemChargedCertusQuartz>)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40).EUt(18).buildAndRegister();

// Флакс кристалл 3
mixer.recipeBuilder()
 	.inputs(<ore:gemExquisiteNetherQuartz> * 1, <minecraft:redstone> * 4, <ore:gemChargedCertusQuartz> * 1)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40).EUt(18).buildAndRegister();

// Флакс кристалл 4
mixer.recipeBuilder()
	.inputs(<ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteRuby>, <ore:gemChargedCertusQuartz>)
 	.outputs(<appliedenergistics2:material:7> * 12)
	.duration(40).EUt(18).buildAndRegister();

// Recycle - Storage Housing
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>])
    .outputs([
        <metaitem:dustSteel> * 2,
        <metaitem:dustTinySteel> * 2
    ])
    .duration(100).EUt(16).buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotSteel> * 2,
        <metaitem:nuggetSteel> * 2
    ])
    .duration(56).EUt(30).buildAndRegister();

// Inscriber Silicon Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable(<ore:craftingLensWhite>)
	.outputs(<appliedenergistics2:material:19>)
	.duration(12000).EUt(116).buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensWhite>)
	.outputs(<appliedenergistics2:material:19>)
	.duration(8000).EUt(116).buildAndRegister();

// Inscriber Logic Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable(<ore:craftingLensGreen>)
	.outputs(<appliedenergistics2:material:15>)
	.duration(12000).EUt(116).buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensGreen>)
	.outputs(<appliedenergistics2:material:15>)
	.duration(8000).EUt(118).buildAndRegister();

// Inscriber Engineering Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable([<ore:lensFluix>])
	.outputs(<appliedenergistics2:material:14>)
	.duration(12000).EUt(120).buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable([<ore:lensFluix>])
	.outputs(<appliedenergistics2:material:14>)
	.duration(8000).EUt(120).buildAndRegister();

// Inscriber Calulation Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
 	.notConsumable(<ore:craftingLensBlue> * 1)
 	.outputs(<appliedenergistics2:material:13> * 1)
	.duration(12000).EUt(122).buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensBlue>)
	.outputs(<appliedenergistics2:material:13>)
	.duration(8000).EUt(122).buildAndRegister();

// Printed Silicon
forming_press.recipeBuilder()
  .inputs([<ore:plateSilicon>])
  .notConsumable(<appliedenergistics2:material:19>)
  .outputs([<appliedenergistics2:material:20>])
  .duration(20).EUt(480).buildAndRegister();

// Printed Logic Circuit
forming_press.recipeBuilder()
  .inputs([<ore:plateGold>])
  .notConsumable(<appliedenergistics2:material:15>)
  .outputs([<appliedenergistics2:material:18>])
  .duration(20).EUt(480).buildAndRegister();

// Printed Engineering Circuit
forming_press.recipeBuilder()
  .inputs([<metaitem:plateDiamond>])
  .notConsumable(<appliedenergistics2:material:14>)
  .outputs([<appliedenergistics2:material:17>])
  .duration(20).EUt(480).buildAndRegister();

// Printed Calulation Circuit
forming_press.recipeBuilder()
  .inputs([<ore:plateCertusQuartz>])
  .notConsumable(<appliedenergistics2:material:13>)
  .outputs([<appliedenergistics2:material:16>])
  .duration(20).EUt(480).buildAndRegister();

// Logic Processor
circuit_assembler.recipeBuilder()
  .inputs([
      <appliedenergistics2:material:20>,
      <appliedenergistics2:material:18>,
      <ore:circuitLv>,
      <ore:componentResistor>,
      <ore:wireFineTin> * 2])
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:22> * 2)
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(480).buildAndRegister();

// Engineering Processor
circuit_assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:20>,
    <appliedenergistics2:material:17>,
    <ore:circuitLv>,
    <ore:componentResistor>,
    <ore:wireFineTin> * 2])
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:24> * 2)
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(480).buildAndRegister();

// Calulation Processor
circuit_assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:20>,
    <appliedenergistics2:material:16>,
    <ore:circuitLv>,
    <ore:componentResistor>,
    <ore:wireFineTin> * 2])
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:23> * 2)
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(480).buildAndRegister();

// Charged Certus Quartz
electrolyzer.recipeBuilder()
	.inputs(<ore:gemCertusQuartz>)
	.outputs(<appliedenergistics2:material:1>)
	.duration(520).EUt(82).buildAndRegister();

// Blank Pattern
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePlastic> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52>)
  .duration(200).EUt(120).buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolyvinylChloride> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 4)
  .duration(200).EUt(120).buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolytetrafluoroethylene> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 16)
  .duration(200).EUt(480).buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolybenzimidazole> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 64)
  .duration(200).EUt(480).buildAndRegister();

// Illuminated Panel
recipes.addShaped("tfg/ae2/illuminated_panel", <appliedenergistics2:part:180>, [
	[null, <ore:plateGlowstone>, null],
	[<ore:plateAluminium>, <ore:plateRedAlloy>, <ore:dustRedstone>],
	[null, <ore:plateGlowstone>, null]]);

// Toggle Bus
recipes.addShaped("tfg/ae2/toggle_bus", <appliedenergistics2:part:80>, [
  [null, <ore:plateRedAlloy>, null],
  [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
  [null, <ore:plateRedAlloy>, null]]);

// Capacity Card
recipes.addShaped("tfg/ae2/capacity_card", <appliedenergistics2:material:27>, [
  [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
  [<appliedenergistics2:material:35>, <ore:gemCertusQuartz>, null],
  [null, null, null]]);

// Crafting Card
recipes.addShaped("tfg/ae2/crafting_card", <appliedenergistics2:material:53>, [
  [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
  [<appliedenergistics2:material:35>, <ore:workbench>, null],
  [null, null, null]]);

// Redstone Card
recipes.addShaped("tfg/ae2/redstone_card", <appliedenergistics2:material:26>, [
  [<appliedenergistics2:material:25>, <ore:craftingRedstoneTorch>, null],
  [<ore:craftingRedstoneTorch>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);

// Fuzzy Card
recipes.addShaped("tfg/ae2/fuzzy_card", <appliedenergistics2:material:29>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);

// Inverter Card
recipes.addShaped("tfg/ae2/inverter_card", <appliedenergistics2:material:31>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:part:100>, null],
  [<appliedenergistics2:part:100>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);

// Acceleration Card
recipes.addShaped("tfg/ae2/acceleration_card", <appliedenergistics2:material:30>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
  [<appliedenergistics2:material:22>, <ore:gemFluix> | <ore:crystalPureFluix>, null],
  [null, null, null]]);

// Quartz Fixture
recipes.addShapeless("tfg/ae2/quartz_fixture", <appliedenergistics2:quartz_fixture>, 
	[<ore:gemChargedCertusQuartz>, <ore:stickAluminium>]);

// Light Detecting Fixture
recipes.addShapeless("tfg/ae2/light_detector", <appliedenergistics2:light_detector>, 
	[<ore:gemCertusQuartz>, <ore:stickIron>]);

// Cable Anchor
extruder.recipeBuilder()
  .inputs(<ore:plateSteel>)
  .notConsumable(<metaitem:shape.extruder.bolt>)
  .outputs(<appliedenergistics2:part:120> * 8)
  .duration(20).EUt(16).buildAndRegister();

// Annihilation Core
recipes.addShaped("tfg/ae2/annihilation_core_alt", <appliedenergistics2:material:44> * 2, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
		<ore:stickAluminium> * 2,
		<appliedenergistics2:material:24> * 2,
		<ore:crystalPureCertusQuartz>
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:material:44> * 4])
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(7680).buildAndRegister();

// Formation Core
recipes.addShaped("tfg/ae2/formation_core_alt", <appliedenergistics2:material:43> * 2, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:crystalPureNetherQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:stickAluminium> * 2,
    <appliedenergistics2:material:24> * 2,
    <ore:crystalPureNetherQuartz>
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:material:43> * 4])
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(7680).buildAndRegister();

// Wireless Terminal
recipes.addShaped("tfg/ae2/wireless_terminal", <appliedenergistics2:wireless_terminal>, [
  [<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>],
  [<appliedenergistics2:material:24>, <ore:circuitHv>, <appliedenergistics2:material:24>],
  [<ore:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <ore:plateNetherQuartz>]]);

// Basic Card
recipes.addShaped("tfg/ae2/basic_card", <appliedenergistics2:material:25> * 2, [
  [<ore:wireFineRedAlloy>, <ore:plateAluminium>, null],
  [<appliedenergistics2:material:23>, <ore:circuitMv>, <ore:plateAluminium>],
  [<ore:wireFineGold>, <ore:plateAluminium>, null]]);

// Advanced Card
recipes.addShaped("tfg/ae2/advanced_card", <appliedenergistics2:material:28> * 2, [
  [<ore:wireFineRedAlloy>, <ore:plateStainlessSteel>, null],
  [<appliedenergistics2:material:23>, <ore:circuitHv>, <ore:plateStainlessSteel>],
  [<ore:wireFineSilver>, <ore:plateStainlessSteel>, null]]);

// Pattern Expansion Card
recipes.addShapeless("tfg/ae2/pattern_expansion_card", <appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:ae2.interface.item>, 
    <ore:ae2.interface.fluid>, <appliedenergistics2:material:23>]);

// Wireless Booster
recipes.addShaped("tfg/ae2/wireless_booster", <appliedenergistics2:material:42>, [
    [<ore:dustFluix>, <ore:gemCertusQuartz>, <ore:plateEnderPearl>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [null, null, null]]);

// Fluix Pearl
chemical_reactor.recipeBuilder()
  .inputs(<ore:crystalPureFluix> * 4)
  .inputs(<minecraft:ender_eye>)
  .fluidInputs([<liquid:fluix> * 400])
  .outputs(<appliedenergistics2:material:9>)
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(480).buildAndRegister();

// Matter Cannon
recipes.addShaped("tfg/ae2/matter_cannon", <appliedenergistics2:matter_cannon>, [
  [<ore:plateSteel>, <ore:plateSteel>, <appliedenergistics2:material:43>],
  [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
  [<ore:plateSteel>, null, null]]);

// Memory Card
recipes.addShaped("tfg/ae2/network_memory_card", <appliedenergistics2:memory_card>, [
  [<appliedenergistics2:material:23>, <ore:plateIron>, <ore:plateIron>],
  [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
  [null, null, null]]);

// Entropy Manipulator
recipes.addShaped("tfg/ae2/entropy_manipulator",<appliedenergistics2:entropy_manipulator>, [
  [null, <appliedenergistics2:material:22>, <ore:gemFluix>],
  [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
  [<ore:stickSteel>, null, null]]);

// Color Applicator
recipes.addShaped("tfg/ae2/color_applicator", <appliedenergistics2:color_applicator>, [
  [<ore:wireGtSingleAluminium>, <appliedenergistics2:material:43>, <ore:wireGtSingleAluminium>],
  [<appliedenergistics2:material:36>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:36>],
  [null, <ore:stickSteel>, null]]);

// Biometric Card
recipes.addShaped("tfg/ae2/biometric_card", <appliedenergistics2:biometric_card>, [
  [<appliedenergistics2:material:24>, <ore:plateIron>, <ore:plateIron>],
  [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
  [null, null, null]]);

// View Cell
canner.recipeBuilder()
  .inputs(<appliedenergistics2:material:39>)
  .inputs(<ore:gemCertusQuartz>)
  .outputs(<appliedenergistics2:view_cell>)
  .duration(100).EUt(4).buildAndRegister();

// ME Storage Housing
recipes.addShaped("tfg/ae2/me_storage_housing", <appliedenergistics2:material:39>, [
  [<appliedenergistics2:quartz_glass>, <ore:plateSteel>, <appliedenergistics2:quartz_glass>],
  [<ore:wireFineRedAlloy>, <ore:circuitLv>, <ore:wireFineRedAlloy>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// 1k Storage Cell
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:35>
  ])
  .outputs([<appliedenergistics2:storage_cell_1k>])
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:storage_cell_1k>])
    .outputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:35>])
    .duration(10).EUt(7).buildAndRegister();

// 4k Storage Cell
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:36>
  ])
  .outputs([<appliedenergistics2:storage_cell_4k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:storage_cell_4k>])
    .outputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:36>])
    .duration(10).EUt(7).buildAndRegister();

// 16k Storage Cell
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:37>])
  .outputs([<appliedenergistics2:storage_cell_16k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:storage_cell_16k>])
    .outputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:37>])
    .duration(10).EUt(7).buildAndRegister();

// 64k Storage Cell
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:38>])
  .outputs([<appliedenergistics2:storage_cell_64k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:storage_cell_64k>])
    .outputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:38>])
    .duration(10).EUt(7).buildAndRegister();

// 1k Fluid Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:1>,
    <appliedenergistics2:material:54>])
  .outputs([<appliedenergistics2:fluid_storage_cell_1k>])
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:fluid_storage_cell_1k>])
    .outputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:54>])
    .duration(10).EUt(7).buildAndRegister();

// 4k Fluid Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:1>,
    <appliedenergistics2:material:55>])
  .outputs([<appliedenergistics2:fluid_storage_cell_4k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:fluid_storage_cell_4k>])
    .outputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:55>])
    .duration(10).EUt(7).buildAndRegister();

// 16k Fluid Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:1>,
    <appliedenergistics2:material:56>])
  .outputs([<appliedenergistics2:fluid_storage_cell_16k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:fluid_storage_cell_16k>])
    .outputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:56>])
    .duration(10).EUt(7).buildAndRegister();

// 64k Fluid Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:1>,
    <appliedenergistics2:material:57>])
  .outputs([<appliedenergistics2:fluid_storage_cell_64k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:fluid_storage_cell_64k>])
    .outputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:57>])
    .duration(10).EUt(7).buildAndRegister();

// 2³ Spatial Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:0>,
    <appliedenergistics2:material:32>])
  .outputs([<appliedenergistics2:spatial_storage_cell_2_cubed>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:spatial_storage_cell_2_cubed>])
    .outputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:32>])
    .duration(10).EUt(7).buildAndRegister();

// 16³ Spatial Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:0>,
    <appliedenergistics2:material:33>])
  .outputs([<appliedenergistics2:spatial_storage_cell_16_cubed>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:spatial_storage_cell_16_cubed>])
    .outputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:33>])
    .duration(10).EUt(7).buildAndRegister();

// 128³ Spatial Cell
packer.recipeBuilder()
  .inputs([
    <aeadditions:storage.casing:0>,
    <appliedenergistics2:material:34>
  ])
  .outputs([<appliedenergistics2:spatial_storage_cell_128_cubed>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:spatial_storage_cell_128_cubed>])
    .outputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:34>])
    .duration(10).EUt(7).buildAndRegister();
// 1k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:batteryUlv> * 4,
    <ore:plateWroughtIron> * 4,
    <ore:dustCertusQuartz> * 4,
    <appliedenergistics2:material:22>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:35>])
  .duration(200).EUt(480).buildAndRegister();

// 4k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustCertusQuartz> * 4,
    <appliedenergistics2:material:22>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:36>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1920).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:22>,
    <ore:circuitEv> * 4,
    <appliedenergistics2:material:35> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:36>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(1920).buildAndRegister();

// 16k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustCertusQuartz> * 8,
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:37>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(7680).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitIv> * 4,
    <appliedenergistics2:material:36> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:37>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(7680).buildAndRegister();

// 64k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustCertusQuartz> * 8,
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:38>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(30720).buildAndRegister();
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:37> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:38>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(30720).buildAndRegister();

// 1k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:batteryUlv> * 4,
    <ore:plateWroughtIron> * 4,
    <ore:dustNetherQuartz> * 4,
    <appliedenergistics2:material:22>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:54>])
  .duration(200).EUt(480).buildAndRegister();

// 4k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustNetherQuartz> * 4,
    <appliedenergistics2:material:22>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:55>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1920).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:22>,
    <ore:circuitEv> * 4,
    <appliedenergistics2:material:54> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:55>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(1920).buildAndRegister();

// 16k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustNetherQuartz> * 8,
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:56>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(480).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitIv> * 4,
    <appliedenergistics2:material:55> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:56>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(7680).buildAndRegister();

// 64k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustNetherQuartz> * 8,
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:57>])
  .duration(200).EUt(30720).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:56> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:57>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(30720).buildAndRegister();

// 2³ Spatial Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:hsla_steel> * 144)
  .outputs([<appliedenergistics2:material:32>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1920).buildAndRegister();

// 16³ Spatial Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:33>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(7680).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:32> * 4])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:33>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(7680).buildAndRegister();

// 128³ Spatial Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:34>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(30720).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:33> * 4])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:34>])
  .property("cleanroom", "cleanroom")
  .duration(400).EUt(30720).buildAndRegister();


// Crafting Co-Processing Unit
packer.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:24>)
  .outputs(<appliedenergistics2:crafting_accelerator>)
  .duration(100).EUt(4).buildAndRegister();

// Монитор хранения
assembler.recipeBuilder()
  .inputs([
    <ore:itemIlluminatedPanel>,
    <appliedenergistics2:part:280>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:400>])
  .duration(200).EUt(480).buildAndRegister();

// Монитор преобразования
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:44> * 2,
    <appliedenergistics2:material:43> * 2,
    <appliedenergistics2:part:400>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:420>])
  .duration(200).EUt(480).buildAndRegister();

// Плоскость истребления ID
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:part:300>,
    <ore:pearlFluix>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:301>])
  .duration(200).EUt(480).buildAndRegister();

// Излучатель уровня
recipes.addShaped(<appliedenergistics2:part:280>, [
  [null, <ore:plateSteel>, null],
  [<ore:ae2.cable.glass>, <minecraft:redstone_torch>, <ore:ae2.cable.glass>],
  [null, <ore:plateSteel>, null]]);
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <minecraft:redstone_torch>,
    <ore:ae2.cable.glass>,
    <ore:plateSteel>])
  .outputs([<appliedenergistics2:part:280>])
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(7680).buildAndRegister();

// Шина хранения по словарю руд
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <ore:ae2.interface.item>,
    <ore:craftingBook>,
    <metaitem:electric.piston.mv> * 2])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:222>])
  .duration(200).EUt(480).buildAndRegister();

// Шина хранения
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:ae2.interface.item>,
    <metaitem:electric.piston.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:220>])
  .duration(200).EUt(480).buildAndRegister();

// Жидкостная шина хранения
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:ae2.interface.fluid>,
    <metaitem:electric.pump.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:221>])
  .duration(200).EUt(480).buildAndRegister();

// Шина импорта
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <ore:plateIronAny>,
    <appliedenergistics2:material:44>,
    <metaitem:robot.arm.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:240>])
  .duration(200).EUt(480).buildAndRegister();

// Жидкостная шина импорта
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <ore:plateIronAny>,
    <appliedenergistics2:material:44>,
    <metaitem:electric.pump.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:241>])
  .duration(200).EUt(480).buildAndRegister();

// Шина экспорта
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <ore:plateIronAny>,
    <appliedenergistics2:material:43>,
    <metaitem:robot.arm.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:260>])
  .duration(200).EUt(480).buildAndRegister();

// Жидкостная шина экспорта
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <ore:plateIronAny>,
    <appliedenergistics2:material:43>,
    <metaitem:electric.pump.mv> * 2,
    <ore:ae2.cable.glass>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:part:261>])
  .duration(200).EUt(480).buildAndRegister();

// Crafting Monitor
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:part:400>])
  .outputs([<appliedenergistics2:crafting_monitor>])
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
  .inputs([<appliedenergistics2:crafting_monitor>])
  .outputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:part:400>])
  .duration(10).EUt(7).buildAndRegister();

// Crafting Storage 1k
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:35>])
  .outputs([<appliedenergistics2:crafting_storage_1k>])
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
  .inputs([<appliedenergistics2:crafting_storage_1k>])
  .outputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:35>])
  .duration(10).EUt(7).buildAndRegister();

// Crafting Storage 4k
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:36>])
  .outputs([<appliedenergistics2:crafting_storage_4k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
  .inputs([<appliedenergistics2:crafting_storage_4k>])
  .outputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:36>])
  .duration(10).EUt(7).buildAndRegister();

// Crafting Storage 16k
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:37>])
  .outputs([<appliedenergistics2:crafting_storage_16k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
  .inputs([<appliedenergistics2:crafting_storage_16k>])
  .outputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:37>])
  .duration(10).EUt(7).buildAndRegister();

// Crafting Storage 64k
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:38>])
  .outputs([<appliedenergistics2:crafting_storage_64k>])
  .property("cleanroom", "cleanroom")
  .duration(10).EUt(7).buildAndRegister();
packer.recipeBuilder()
  .inputs([<appliedenergistics2:crafting_storage_64k>])
  .outputs([
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:38>])
  .duration(10).EUt(7).buildAndRegister();

// CPU Crafting Unit
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:24>,
    <appliedenergistics2:material:23>,
    <ore:circuitHv>,
    <ore:plateSteel> * 2])
  .outputs([<appliedenergistics2:crafting_unit>])
  .duration(20).EUt(680).buildAndRegister();

// Molecular Assembler
// HV
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.hv> * 2,
    <metaitem:robot.arm.hv> * 2,
    <ore:plateStainlessSteel> * 4])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(480).buildAndRegister();
// EV
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.ev> * 2,
    <metaitem:robot.arm.ev> * 2,
    <ore:plateTitanium> * 4])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler> * 2])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1980).buildAndRegister();
// IV
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.iv> * 2,
    <metaitem:robot.arm.iv> * 2,
    <ore:plateTungstenSteel> * 4])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler> * 8])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(7480).buildAndRegister();

// Charged Stuff
recipes.addShaped("tfg/ae2/charged_staff", <appliedenergistics2:charged_staff>, [
  [null, <ore:gtce.tool.hard.hammers>, <ore:gemChargedCertusQuartz>],
  [null, <ore:stickIronAny>, <ore:gtce.tool.files>],
  [<ore:stickIronAny>, null, null]]);

// Датчик жидкостного уровня
recipes.addShaped(<appliedenergistics2:part:281>, [
  [null, <ore:plateStainlessSteel>, null],
  [<ore:ae2.cable.glass>, <minecraft:redstone_torch>, <ore:ae2.cable.glass>],
  [null, <ore:plateStainlessSteel>, null]]);
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <minecraft:redstone_torch>,
    <ore:ae2.cable.glass>,
    <ore:plateStainlessSteel>])
  .outputs([<appliedenergistics2:part:281>])
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(7680).buildAndRegister();

// Очистка шаблона
recipes.addShapeless(<appliedenergistics2:material:52>, [<appliedenergistics2:encoded_pattern>]);

// P2P Tunnel
recipes.addShaped("tfg/ae2/tunnels_p2p", <appliedenergistics2:part:460> * 2, [
  [<appliedenergistics2:material:24>, <ore:plateAluminium>, <appliedenergistics2:material:24>],
  [<ore:plateAluminium>, <appliedenergistics2:part:180>, <ore:plateAluminium>],
  [<ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>]]);

// P2P Tunnel Fluid
recipes.addShapeless("tfg/ae2/tunnels_p2p_fluid", <appliedenergistics2:part:463>, [<appliedenergistics2:part:460>, <minecraft:water_bucket>]);

// P2P Tunnel Redstone
recipes.addShapeless("tfg/ae2/tunnels_p2p_redstone", <appliedenergistics2:part:461>, [<appliedenergistics2:part:460>, <minecraft:redstone_torch>]);

// P2P Tunnel Light
recipes.addShapeless("tfg/ae2/tunnels_p2p_light", <appliedenergistics2:part:467>, [<appliedenergistics2:part:460>, <ore:glowstone>]);

// P2P Tunnel Item
recipes.addShapeless("tfg/ae2/tunnels_p2p_item", <appliedenergistics2:part:462>, [<appliedenergistics2:part:460>, <ore:pipeLargeItemCobalt>]);

// P2P Tunnel FE
recipes.addShapeless("tfg/ae2/tunnels_p2p_fe", <appliedenergistics2:part:469>, [<appliedenergistics2:part:460>, <ore:cableGtQuadrupleCobalt>]);

// P2P Tunnel EU
recipes.addShapeless("tfg/ae2/tunnels_p2p_eu", <appliedenergistics2:part:470>, [<appliedenergistics2:part:460>, <ore:cableGtDoubleCobalt>]);

// ME Контроллер
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24> * 2,
    <ore:circuitHv> * 2,
    <ore:plateTitanium> * 4,
    <appliedenergistics2:fluix_block>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:controller>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(480).buildAndRegister();

// Energy Cell
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:plateCertusQuartz> * 6,
    <ore:batteryHv>,
    <ore:circuitHv>,
    <ore:ae2.cable.covered>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:energy_cell>])
  .duration(200).EUt(500).buildAndRegister();

// Dense Energy Cell
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <appliedenergistics2:energy_cell> * 8,
    <metaitem:battery_buffer.ev.16>,
    <appliedenergistics2:material:43> * 3,
    <ore:circuitEv>,
    <ore:ae2.cable.dense.covered>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:dense_energy_cell>])
  .property("cleanroom", "cleanroom")
  .duration(20).EUt(7680).buildAndRegister();

// ME Chest
recipes.addShaped("tfg/ae2/storage_chest", <appliedenergistics2:chest>, [
	[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>],
	[<ore:ae2.cable.glass>, <ore:chestWood>, <ore:ae2.cable.glass>],
	[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>]]);

// ME Drive
recipes.addShaped("tfg/ae2/storage_drive", <appliedenergistics2:drive>, [
  [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>],
  [<ore:ae2.cable.glass>, <ore:circuitLv>, <ore:ae2.cable.glass>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);

// Quantum Ring
assembly_line.recipeBuilder()
  .inputs(<ore:batteryHv> * 3)
  .inputs(<ore:circuitIv> * 12)
	.inputs(<metaitem:emitter.iv> * 16)
	.inputs(<appliedenergistics2:material:24> * 8)
  .inputs(<metaitem:sensor.iv> * 14)
	.inputs(<appliedenergistics2:dense_energy_cell>)
	.inputs(<appliedenergistics2:material:22>)
	.circuit(12)
  .fluidInputs([<liquid:titanium> * 1144])
	.outputs(<appliedenergistics2:quantum_ring>)
  .property("cleanroom", "cleanroom")
	.duration(900).EUt(8300).buildAndRegister();

// Quantum Link Chamber
assembly_line.recipeBuilder()
  .inputs(<appliedenergistics2:material:9> * 8)
  .inputs(<appliedenergistics2:quartz_vibrant_glass> * 6)
	.inputs(<appliedenergistics2:material:24> * 8)
  .inputs(<metaitem:sensor.iv> * 14)
	.inputs(<appliedenergistics2:dense_energy_cell>)
	.circuit(12)
  .fluidInputs([<liquid:titanium> * 1088])
	.outputs(<appliedenergistics2:quantum_link>)
  .property("cleanroom", "cleanroom")
	.duration(700).EUt(8300).buildAndRegister();

// Spatial Pylon
recipes.addShaped("tfg/ae2/spatial_pylon", <appliedenergistics2:spatial_pylon>, [
  [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>],
  [<ore:dustFluix>, <ore:gemFluix>, <ore:dustFluix>],
  [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>]]);

// IO Port
recipes.addShaped("tfg/ae2/io_port", <appliedenergistics2:io_port>, [
  [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
  [<appliedenergistics2:drive>, <ore:ae2.cable.glass>, <appliedenergistics2:drive>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);

// Spatial IO Port
recipes.addShaped("tfg/ae2/spatial_io_port",<appliedenergistics2:spatial_io_port>, [
  [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:io_port>, <ore:ae2.cable.glass>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);

// Интерфейс
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
// MV
assembler.recipeBuilder()
  .inputs([
    <metaitem:conveyor.module.mv>,
    <ore:plateGlass> * 8,
    <ore:plateSteel> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:interface>])
  .duration(200).EUt(120).buildAndRegister();
// HV
assembler.recipeBuilder()
  .inputs([
    <metaitem:conveyor.module.hv>,
    <ore:plateGlass> * 8,
    <ore:plateAluminium> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:interface> * 2])
  .duration(200).EUt(480).buildAndRegister();
// EV
assembler.recipeBuilder()
  .inputs([
    <metaitem:conveyor.module.ev>,
    <ore:plateGlass> * 8,
    <ore:plateStainlessSteel> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:interface> * 4])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1980).buildAndRegister();
// IV
assembler.recipeBuilder()
  .inputs([
    <metaitem:conveyor.module.iv>,
    <ore:plateGlass> * 8,
    <ore:plateTitanium> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:interface> * 8])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(7480).buildAndRegister();

// Жидкостный интерфейс
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);
// MV
assembler.recipeBuilder()
  .inputs([
    <metaitem:electric.pump.mv>,
    <ore:plateGlass> * 8,
    <ore:plateSteel> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:fluid_interface>])
  .duration(200).EUt(120).buildAndRegister();
// HV
assembler.recipeBuilder()
  .inputs([
    <metaitem:electric.pump.hv>,
    <ore:plateGlass> * 8,
    <ore:plateAluminium> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:fluid_interface> * 2])
  .duration(200).EUt(480).buildAndRegister();
// EV
assembler.recipeBuilder()
  .inputs([
    <metaitem:electric.pump.ev>,
    <ore:plateGlass> * 8,
    <ore:plateStainlessSteel> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:fluid_interface> * 4])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(1980).buildAndRegister();
// IV
assembler.recipeBuilder()
  .inputs([
    <metaitem:electric.pump.iv>,
    <ore:plateGlass> * 8,
    <ore:plateTitanium> * 4,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:fluid_interface> * 8])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(7480).buildAndRegister();

// Cell Workbench
recipes.addShaped("tfg/ae2/cell_workbench", <appliedenergistics2:cell_workbench>, [
  [<metaitem:item_filter>, <metaitem:cover.screen>, <metaitem:fluid_filter>],
  [<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
  [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

// Matter Condenser
recipes.addShaped("tfg/ae2/matter_condenser", <appliedenergistics2:condenser>, [
  [<ore:plateStainlessSteel>, <metaitem:electric.piston.hv>, <ore:plateStainlessSteel>],
  [<metaitem:electric.piston.hv>, <ore:circuitHv>, <metaitem:electric.piston.hv>],
  [<ore:plateStainlessSteel>, <metaitem:electric.piston.hv>, <ore:plateStainlessSteel>]]);

// Energy Acceptor
recipes.addShaped("tfg/ae2/energy_acceptor", <appliedenergistics2:energy_acceptor>, [
  [<ore:plateSteel>, <ore:plateStainlessSteel>, <ore:plateSteel>],
  [<ore:plateStainlessSteel>, <metaitem:voltage_coil.lv>, <ore:plateStainlessSteel>],
  [<ore:plateSteel>, <ore:plateStainlessSteel>, <ore:plateSteel>]]);

// Security Terminal
recipes.addShaped(<appliedenergistics2:security_station>, [
  [<ore:plateSteel>, <appliedenergistics2:chest>, <ore:plateSteel>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:material:37>, <ore:ae2.cable.glass>],
  [<ore:plateSteel>, <appliedenergistics2:material:22>, <ore:plateSteel>]]);

// ME Fluid Formation Plane
recipes.addShaped("tfg/ae2/planes_formation_fluid", <appliedenergistics2:part:321>, [
    [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
    [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
    [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>]]);

// ME Fluid Annihilation Plane
recipes.addShaped("tfg/ae2/planes_annihilation_fluid", <appliedenergistics2:part:302>, [
  [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
  [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
  [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>]]);

// ME Annihilation Plane
recipes.addShaped("tfg/ae2/planes_annihilation", <appliedenergistics2:part:300>, [
  [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
  [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>],
  [null, null, null]]);

// ME Formation Plane
recipes.addShaped("tfg/ae2/planes_formation", <appliedenergistics2:part:320>, [
  [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
  [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
  [null, null, null]]);

// ME Terminal
recipes.addShaped("tfg/ae2/terminals", <appliedenergistics2:part:380>, [
  [<ore:stickSteel>, <ore:gtce.tool.screwdrivers>, <ore:stickSteel>],
  [<ore:itemIlluminatedPanel>, <ore:circuitHv>, <ore:plateSteel>],
  [<ore:stickSteel>,  <ore:screwSteel>, <ore:stickSteel>]]);

// ME Fluid Terminal
recipes.addShaped("tfg/ae2/terminals_fluid", <appliedenergistics2:part:520>, [
  [<ore:stickStainlessSteel>, <ore:gtce.tool.screwdrivers>, <ore:stickStainlessSteel>],
  [<ore:itemIlluminatedPanel>, <ore:circuitHv>, <ore:plateStainlessSteel>],
  [<ore:stickStainlessSteel>,  <ore:screwStainlessSteel>, <ore:stickStainlessSteel>]]);

// ME Crafting Terminal
recipes.addShaped("tfg/ae2/terminals_crafting", <appliedenergistics2:part:360>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<ore:screwSteel>, <ore:workbench>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>]]);

// ME Interface Terminal
recipes.addShaped("tfg/ae2/terminals_interface", <appliedenergistics2:part:480>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<ore:screwSteel>, <ore:ae2.interface.item>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>]]);

// ME Pattern Terminal
recipes.addShaped("tfg/ae2/terminals_pattern", <appliedenergistics2:part:340>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<ore:screwSteel>, <appliedenergistics2:material:52>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>]]);

// ME Extanded Pattern Terminal
recipes.addShaped("tfg/ae2/terminals_extended_pattern", <appliedenergistics2:part:341>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:340>, <ore:gtce.tool.soft.hammers>],
    [<ore:plateTitanium>, <appliedenergistics2:material:52>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);

// Переносное предметное хранилище
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:35>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:energy_cell>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:portable_cell>])
  .property("cleanroom", "cleanroom")
  .duration(200).EUt(480).buildAndRegister();
// Флакс блок
compressor.recipeBuilder()
    .inputs([<ore:crystalFluix> * 4])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300).EUt(480).buildAndRegister();
compressor.recipeBuilder()
    .inputs([<ore:crystalPureFluix> * 8])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300).EUt(480).buildAndRegister();
// Флакс линза
lathe.recipeBuilder()
    .inputs([<metaitem:plateFluix>])
    .outputs([
        <metaitem:lensFluix>,
        <metaitem:dustSmallFluix>])
    .duration(1200).EUt(120).buildAndRegister();
// Флакс жидкость
mixer.recipeBuilder()
    .inputs([
        <minecraft:redstone>,
        <metaitem:dustNetherQuartz>])
    .fluidInputs([<liquid:charged_certus_quartz> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20).EUt(480).buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <minecraft:redstone>,
        <metaitem:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:nether_quartz> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20).EUt(480).buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustNetherQuartz>,
        <metaitem:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:redstone> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20).EUt(480).buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalPureFluix>])
    .fluidOutputs([<liquid:fluix> * 72])
    .duration(20).EUt(30).buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalFluix>])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20).EUt(7).buildAndRegister();
extractor.recipeBuilder()
    .inputs([<appliedenergistics2:fluix_block>])
    .fluidOutputs([<liquid:fluix> * 576])
    .duration(80).EUt(30).buildAndRegister();

// Certus Quartz (Override)
extractor.findRecipe(30, [<metaitem:blockCertusQuartz>], null).remove();
extractor.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .fluidOutputs([<liquid:certus_quartz> * 576])
    .duration(80)
    .EUt(30)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz>])
    .fluidOutputs([<liquid:certus_quartz> * 72])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

// Charged Certus Quartz Crystal
electrolyzer.recipeBuilder()
    .fluidInputs([<liquid:certus_quartz> * 144])
    .fluidOutputs([<liquid:charged_certus_quartz> * 144])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<appliedenergistics2:material:1>])
    .fluidOutputs([<liquid:charged_certus_quartz> * 144])
    .duration(20)
    .EUt(7)
    .buildAndRegister();