import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

// Удаление рецептов + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	<appliedenergistics2:material:46>,
	<appliedenergistics2:material:2>,
	<appliedenergistics2:material:49>,
	<appliedenergistics2:material:51>,
	<appliedenergistics2:material:3>,
	<appliedenergistics2:smooth_sky_stone_block>,
	<appliedenergistics2:sky_stone_block>,
	<appliedenergistics2:smooth_sky_stone_slab>,
	<appliedenergistics2:sky_stone_brick_slab>,
	<appliedenergistics2:sky_stone_small_brick_slab>,
	<appliedenergistics2:creative_storage_cell>,
	<appliedenergistics2:encoded_pattern>,
	<appliedenergistics2:material:45>,
	<appliedenergistics2:creative_energy_cell>,
	<appliedenergistics2:sky_stone_slab>,
	<appliedenergistics2:sky_stone_small_brick_stairs>,
	<appliedenergistics2:sky_stone_brick_stairs>,
	<appliedenergistics2:smooth_sky_stone_stairs>,
	<appliedenergistics2:sky_stone_stairs>,
	<appliedenergistics2:sky_stone_small_brick>,
	<appliedenergistics2:sky_stone_brick>,
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Поименное удаление рецептов
val RemoveItemRecipesByName = [
  "appliedenergistics2:decorative/quartz_block_pure",
  "appliedenergistics2:decorative/certuz_quartz_block",
  "appliedenergistics2:decorative/certuz_quartz_block_pure",
] as string[];
for item in RemoveItemRecipesByName{
  recipes.removeByRecipeName(item);
}

########################################
# Items
########################################

// Покраска, обесвечивание кабелей и присвоение oredict
// Glass Cable
var glassCables as IItemStack[] = [
  <appliedenergistics2:part>,
  <appliedenergistics2:part:1>,
  <appliedenergistics2:part:2>,
  <appliedenergistics2:part:3>,
  <appliedenergistics2:part:4>,
  <appliedenergistics2:part:5>,
  <appliedenergistics2:part:6>,
  <appliedenergistics2:part:7>,
  <appliedenergistics2:part:8>,
  <appliedenergistics2:part:9>,
  <appliedenergistics2:part:10>,
  <appliedenergistics2:part:11>,
  <appliedenergistics2:part:12>,
  <appliedenergistics2:part:13>,
  <appliedenergistics2:part:14>,
  <appliedenergistics2:part:15>,
  <appliedenergistics2:part:16>
];
for glassCable in glassCables {
  <ore:ae2.cable.glass>.add(glassCable);
  if (glassCable.displayName has "Fluix") {}
  else {
    <ore:ae2.cable.glass.colors>.add(glassCable);
  }
}
var colored_GlassCables as IItemStack[] = [
  <appliedenergistics2:part>,
  <appliedenergistics2:part:1>,
  <appliedenergistics2:part:2>,
  <appliedenergistics2:part:3>,
  <appliedenergistics2:part:4>,
  <appliedenergistics2:part:5>,
  <appliedenergistics2:part:6>,
  <appliedenergistics2:part:7>,
  <appliedenergistics2:part:8>,
  <appliedenergistics2:part:9>,
  <appliedenergistics2:part:10>,
  <appliedenergistics2:part:11>,
  <appliedenergistics2:part:12>,
  <appliedenergistics2:part:13>,
  <appliedenergistics2:part:14>,
  <appliedenergistics2:part:15>
];
for i, cable in colored_GlassCables {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();

  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:16>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
recipes.remove(<appliedenergistics2:part:16>);
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:140> * 2)
  .inputs(<ore:dustFluix> * 2)
  .outputs(<appliedenergistics2:part:16> * 3)
  .duration(100)
  .EUt(30)
  .buildAndRegister();

// Covered Cable
var coveredCables as IItemStack[] = [
  <appliedenergistics2:part:20>,
  <appliedenergistics2:part:21>,
  <appliedenergistics2:part:22>,
  <appliedenergistics2:part:23>,
  <appliedenergistics2:part:24>,
  <appliedenergistics2:part:25>,
  <appliedenergistics2:part:26>,
  <appliedenergistics2:part:27>,
  <appliedenergistics2:part:28>,
  <appliedenergistics2:part:29>,
  <appliedenergistics2:part:30>,
  <appliedenergistics2:part:31>,
  <appliedenergistics2:part:32>,
  <appliedenergistics2:part:33>,
  <appliedenergistics2:part:34>,
  <appliedenergistics2:part:35>,
  <appliedenergistics2:part:36>
];
for coveredCable in coveredCables {
  <ore:ae2.cable.covered>.add(coveredCable);
  if (coveredCable.displayName has "Fluix") {}
  else {
    <ore:ae2.cable.covered.colors>.add(coveredCable);
  }
}
var colored_CoveredCable as IItemStack[] = [
	<appliedenergistics2:part:20>,
	<appliedenergistics2:part:21>,
	<appliedenergistics2:part:22>,
	<appliedenergistics2:part:23>,
	<appliedenergistics2:part:24>,
	<appliedenergistics2:part:25>,
	<appliedenergistics2:part:26>,
	<appliedenergistics2:part:27>,
	<appliedenergistics2:part:28>,
	<appliedenergistics2:part:29>,
	<appliedenergistics2:part:30>,
	<appliedenergistics2:part:31>,
	<appliedenergistics2:part:32>,
	<appliedenergistics2:part:33>,
	<appliedenergistics2:part:34>,
	<appliedenergistics2:part:35>
];

for i, cable in colored_CoveredCable {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:36>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();

  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:36>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
recipes.remove(<appliedenergistics2:part:36>);
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:16>)
  .circuit(24)
  .fluidInputs([<liquid:rubber> * 144])
  .outputs(<appliedenergistics2:part:36>)
  .duration(150)
  .EUt(8)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:16>)
  .circuit(24)
  .fluidInputs([<liquid:styrene_butadiene_rubber> * 72])
  .outputs(<appliedenergistics2:part:36>)
  .duration(150)
  .EUt(8)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:16>)
  .circuit(24)
  .fluidInputs([<liquid:silicone_rubber> * 36])
  .outputs(<appliedenergistics2:part:36>)
  .duration(150)
  .EUt(8)
  .buildAndRegister();

// Smart Cable
var smartCables as IItemStack[] = [
  <appliedenergistics2:part:40>,
  <appliedenergistics2:part:41>,
  <appliedenergistics2:part:42>,
  <appliedenergistics2:part:43>,
  <appliedenergistics2:part:44>,
  <appliedenergistics2:part:45>,
  <appliedenergistics2:part:46>,
  <appliedenergistics2:part:47>,
  <appliedenergistics2:part:48>,
  <appliedenergistics2:part:49>,
  <appliedenergistics2:part:50>,
  <appliedenergistics2:part:51>,
  <appliedenergistics2:part:52>,
  <appliedenergistics2:part:53>,
  <appliedenergistics2:part:54>,
  <appliedenergistics2:part:55>,
  <appliedenergistics2:part:56>
];
for smartCable in smartCables {
  <ore:ae2.cable.smart>.add(smartCable);
  if (smartCable.displayName has "Fluix") {}
  else {
    <ore:ae2.cable.smart.colors>.add(smartCable);
  }
}
var colored_SmartCable as IItemStack[] = [
	<appliedenergistics2:part:40>,
	<appliedenergistics2:part:41>,
	<appliedenergistics2:part:42>,
	<appliedenergistics2:part:43>,
	<appliedenergistics2:part:44>,
	<appliedenergistics2:part:45>,
	<appliedenergistics2:part:46>,
	<appliedenergistics2:part:47>,
	<appliedenergistics2:part:48>,
	<appliedenergistics2:part:49>,
	<appliedenergistics2:part:50>,
	<appliedenergistics2:part:51>,
	<appliedenergistics2:part:52>,
	<appliedenergistics2:part:53>,
	<appliedenergistics2:part:54>,
	<appliedenergistics2:part:55>
];
for i, cable in colored_SmartCable {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:56>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:56>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:36>)
  .inputs([<ore:dustRedstone> * 2])
  .circuit(24)
  .fluidInputs([<liquid:glowstone> * 144])
  .outputs(<appliedenergistics2:part:56>)
  .duration(100)
  .EUt(30)
  .buildAndRegister();

// Dense Covered Cable
var denseCoveredCables as IItemStack[] = [
  <appliedenergistics2:part:500>,
  <appliedenergistics2:part:501>,
  <appliedenergistics2:part:502>,
  <appliedenergistics2:part:503>,
  <appliedenergistics2:part:504>,
  <appliedenergistics2:part:505>,
  <appliedenergistics2:part:506>,
  <appliedenergistics2:part:507>,
  <appliedenergistics2:part:508>,
  <appliedenergistics2:part:509>,
  <appliedenergistics2:part:510>,
  <appliedenergistics2:part:511>,
  <appliedenergistics2:part:512>,
  <appliedenergistics2:part:513>,
  <appliedenergistics2:part:514>,
  <appliedenergistics2:part:515>,
  <appliedenergistics2:part:516>
];
for denseCoveredCable in denseCoveredCables {
  <ore:ae2.cable.dense.covered>.add(denseCoveredCable);
  if (denseCoveredCable.displayName has "Fluix") {}
  else {
    <ore:ae2.cable.dense.covered.colors>.add(denseCoveredCable);
  }
}
var colored_DenseCoveredCable as IItemStack[] = [
	<appliedenergistics2:part:500>,
	<appliedenergistics2:part:501>,
	<appliedenergistics2:part:502>,
	<appliedenergistics2:part:503>,
	<appliedenergistics2:part:504>,
	<appliedenergistics2:part:505>,
	<appliedenergistics2:part:506>,
	<appliedenergistics2:part:507>,
	<appliedenergistics2:part:508>,
	<appliedenergistics2:part:509>,
	<appliedenergistics2:part:510>,
	<appliedenergistics2:part:511>,
	<appliedenergistics2:part:512>,
	<appliedenergistics2:part:513>,
	<appliedenergistics2:part:514>,
	<appliedenergistics2:part:515>
];
for i, cable in colored_DenseCoveredCable {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:516>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();

  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:516>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:36> * 4)
  .circuit(24)
  .fluidInputs([<liquid:rubber> * 576])
  .outputs(<appliedenergistics2:part:516>)
  .duration(150)
  .EUt(32)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:36> * 4)
  .circuit(24)
  .fluidInputs([<liquid:styrene_butadiene_rubber> * 288])
  .outputs(<appliedenergistics2:part:516>)
  .duration(150)
  .EUt(32)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:36> * 4)
  .circuit(24)
  .fluidInputs([<liquid:silicone_rubber> * 144])
  .outputs(<appliedenergistics2:part:516>)
  .duration(150)
  .EUt(32)
  .buildAndRegister();

// Dense Smart Cable
var denseSmartCables as IItemStack[] = [
  <appliedenergistics2:part:60>,
  <appliedenergistics2:part:61>,
  <appliedenergistics2:part:62>,
  <appliedenergistics2:part:63>,
  <appliedenergistics2:part:64>,
  <appliedenergistics2:part:65>,
  <appliedenergistics2:part:66>,
  <appliedenergistics2:part:67>,
  <appliedenergistics2:part:68>,
  <appliedenergistics2:part:69>,
  <appliedenergistics2:part:70>,
  <appliedenergistics2:part:71>,
  <appliedenergistics2:part:72>,
  <appliedenergistics2:part:73>,
  <appliedenergistics2:part:74>,
  <appliedenergistics2:part:75>,
  <appliedenergistics2:part:76>
];
for denseSmartCable in denseSmartCables {
  <ore:ae2.cable.dense.smart>.add(denseSmartCable);
  if (denseSmartCable.displayName has "Fluix") {}
  else {
    <ore:ae2.cable.dense.smart.colors>.add(denseSmartCable);
  }
}
var colored_DenseSmartCable as IItemStack[] = [
	<appliedenergistics2:part:60>,
	<appliedenergistics2:part:61>,
	<appliedenergistics2:part:62>,
	<appliedenergistics2:part:63>,
	<appliedenergistics2:part:64>,
	<appliedenergistics2:part:65>,
	<appliedenergistics2:part:66>,
	<appliedenergistics2:part:67>,
	<appliedenergistics2:part:68>,
	<appliedenergistics2:part:69>,
	<appliedenergistics2:part:70>,
	<appliedenergistics2:part:71>,
	<appliedenergistics2:part:72>,
	<appliedenergistics2:part:73>,
	<appliedenergistics2:part:74>,
	<appliedenergistics2:part:75>
];
for i, cable in colored_DenseSmartCable {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:76>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:76>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:516>)
	.inputs([<ore:dustRedstone> * 2])
  .circuit(24)
  .fluidInputs([<liquid:glowstone> * 288])
  .outputs(<appliedenergistics2:part:76>)
  .duration(150)
  .EUt(32)
  .buildAndRegister();

// Сетевой инструмент
recipes.removeByRecipeName("appliedenergistics2:tools/network_tool");
recipes.addShaped("network_tool", <appliedenergistics2:network_tool>, [
  [<ore:craftingToolWrench>, <ore:circuitLv>],
  [<appliedenergistics2:material:23>, <ore:itemIlluminatedPanel>]]);
// Беспроводной раздатчик сигнала
recipes.removeByRecipeName("appliedenergistics2:network/wireless_part");
recipes.addShaped("wireless_part", <appliedenergistics2:material:41>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:material:9>, <ore:ae2.cable.glass>],
  [<metaitem:sensor.ev>, <ore:stickTitanium>, <metaitem:sensor.ev>],
  [<ore:plateCertusQuartz>, <ore:circuitEv>, <ore:plateCertusQuartz>]]);
// Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
  .inputs([<ore:stickNetherQuartz> | <ore:stickCertusQuartz>])
  .outputs([<appliedenergistics2:part:140>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
  .inputs([
    <ore:blockGlass> * 4,
    <ore:dustCertusQuartz> * 4
  ])
  .outputs([<appliedenergistics2:quartz_glass> * 4])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
  [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>],
  [<ore:plateGlowstone>, <appliedenergistics2:quartz_glass>, <ore:plateGlowstone>],
  [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>]]);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
  [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>],
  [<ore:dustAluminium>, <minecraft:glowstone>, <ore:dustAluminium>],
  [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>]]);
// Pure Fluix Crystal
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
mixer.recipeBuilder()
  .inputs([<ore:dustFluix>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:1200> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:distilled_water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
 	.inputs(<appliedenergistics2:crystal_seed:1200> * 1)
 	.fluidInputs([<liquid:water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
// Pure Certus Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed>);
mixer.recipeBuilder()
  .inputs([<ore:dustCertusQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
// Pure Nether Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed:600>);
mixer.recipeBuilder()
  .inputs([<ore:dustNetherQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:600> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
// Флакс кристалл из пыли с водой
autoclave.recipeBuilder()
 	.inputs(<ore:dustFluix> * 1)
 	.fluidInputs(<liquid:water> * 144)
 	.chancedOutput(<appliedenergistics2:material:7> * 1, 7000, 500)
	.duration(2000)
	.EUt(480)
	.buildAndRegister();
// Флакс кристалл из пыли с дистиллированной водой
autoclave.recipeBuilder()
 	.inputs(<ore:dustFluix> * 1)
 	.fluidInputs(<liquid:distilled_water> * 144)
 	.chancedOutput(<appliedenergistics2:material:7> * 1, 7500, 500)
	.duration(1000)
	.EUt(480)
	.buildAndRegister();
// Флакс кристалл 1
mixer.recipeBuilder()
 	.inputs(<minecraft:quartz>, <minecraft:redstone> * 4, <appliedenergistics2:material:1>)
	.outputs(<appliedenergistics2:material:7>)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
// Флакс кристалл 2
mixer.recipeBuilder()
	.inputs(<minecraft:quartz>, <ore:gemExquisiteRuby>, <appliedenergistics2:material:1>)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
// Флакс кристалл 3
mixer.recipeBuilder()
 	.inputs(<ore:gemExquisiteNetherQuartz> * 1, <minecraft:redstone> * 4, <appliedenergistics2:material:1> * 1)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
// Флакс кристалл 4
mixer.recipeBuilder()
	.inputs(<ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteRuby>, <appliedenergistics2:material:1>)
 	.outputs(<appliedenergistics2:material:7> * 12)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
// Recycle - Storage Housing
macerator.recipeBuilder()
  .inputs([<appliedenergistics2:material:39>])
  .outputs([<metaitem:dustSteel>])
  .duration(20)
  .EUt(16)
  .buildAndRegister();
// Inscriber Silicon Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable(<ore:craftingLensWhite>)
	.outputs(<appliedenergistics2:material:19>)
	.duration(12000)
	.EUt(116)
	.buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensWhite>)
	.outputs(<appliedenergistics2:material:19>)
	.duration(8000)
	.EUt(116)
	.buildAndRegister();
// Inscriber Logic Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable(<ore:craftingLensGreen>)
	.outputs(<appliedenergistics2:material:15>)
	.duration(12000)
	.EUt(116)
	.buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensGreen>)
	.outputs(<appliedenergistics2:material:15>)
	.duration(8000)
	.EUt(118)
	.buildAndRegister();
// Inscriber Engineering Press
laser_engraver.recipeBuilder()
	.inputs(<ore:plateIron>)
	.notConsumable(<ore:craftingLensYellow>)
	.outputs(<appliedenergistics2:material:14>)
	.duration(12000)
	.EUt(120)
	.buildAndRegister();
laser_engraver.recipeBuilder()
	.inputs(<ore:plateWroughtIron>)
	.notConsumable(<ore:craftingLensYellow>)
	.outputs(<appliedenergistics2:material:14>)
	.duration(8000)
	.EUt(120)
	.buildAndRegister();
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
	.duration(8000)
	.EUt(122)
	.buildAndRegister();
// Printed Silicon
forming_press.recipeBuilder()
  .inputs([<ore:plateSilicon>])
  .notConsumable(<appliedenergistics2:material:19>)
  .outputs([<appliedenergistics2:material:20>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Printed Logic Circuit
forming_press.recipeBuilder()
  .inputs([<ore:plateGold>])
  .notConsumable(<appliedenergistics2:material:15>)
  .outputs([<appliedenergistics2:material:18>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Printed Engineering Circuit
forming_press.recipeBuilder()
  .inputs([<ore:plateDiamond>])
  .notConsumable(<appliedenergistics2:material:14>)
  .outputs([<appliedenergistics2:material:17>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Printed Calulation Circuit
forming_press.recipeBuilder()
  .inputs([<ore:plateCertusQuartz>])
  .notConsumable(<appliedenergistics2:material:13>)
  .outputs([<appliedenergistics2:material:16>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
forming_press.recipeBuilder()
 	.inputs(<appliedenergistics2:material:10> * 1)
 	.notConsumable(<appliedenergistics2:material:13> * 1)
 	.outputs(<appliedenergistics2:material:16> * 1)
	.duration(20)
  .EUt(480)
  .buildAndRegister();
// Logic Processor
circuit_assembler.recipeBuilder()
  .inputs(<appliedenergistics2:material:20>)
  .inputs(<appliedenergistics2:material:18>)
  .inputs(<ore:circuitLv>)
  .inputs(<ore:componentResistor>)
  .inputs(<ore:wireFineTin> * 2)
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:22> * 2)
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Engineering Processor
circuit_assembler.recipeBuilder()
  .inputs(<appliedenergistics2:material:20>)
  .inputs(<appliedenergistics2:material:17>)
  .inputs(<ore:circuitLv>)
  .inputs(<ore:componentResistor>)
  .inputs(<ore:wireFineTin> * 2)
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:24> * 2)
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Calulation Processor
circuit_assembler.recipeBuilder()
  .inputs(<appliedenergistics2:material:20>)
  .inputs(<appliedenergistics2:material:16>)
  .inputs(<ore:circuitLv>)
  .inputs(<ore:componentResistor>)
  .inputs(<ore:wireFineTin> * 2)
	.fluidInputs([<liquid:redstone> * 144])
  .outputs(<appliedenergistics2:material:23> * 2)
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Charged Certus Quartz
electrolyzer.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> | <ore:gemCertusQuartz>)
	.outputs(<appliedenergistics2:material:1>)
	.duration(520)
	.EUt(82)
	.buildAndRegister();
// Blank Pattern
recipes.removeByRecipeName("appliedenergistics2:network/crafting/patterns_blank");
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePlastic> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52>)
  .duration(200)
  .EUt(120)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolyvinylChloride> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 4)
  .duration(200)
  .EUt(120)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolytetrafluoroethylene> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 16)
  .duration(200)
  .EUt(480)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .inputs(<ore:platePolybenzimidazole> * 2)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<ore:circuitMv>)
  .outputs(<appliedenergistics2:material:52> * 64)
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// Illuminated Panel
recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
recipes.addShapeless(<appliedenergistics2:part:180>, [<appliedenergistics2:part:200>]);
recipes.addShaped(<appliedenergistics2:part:180>, [
	[null, <ore:plateGlowstone>, null],
	[<ore:plateAluminium>, <ore:plateRedAlloy>, <ore:dustRedstone>],
	[null, <ore:plateGlowstone>, null]]);
// Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.addShapeless(<appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
recipes.addShapeless(<appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);
recipes.removeShaped(<appliedenergistics2:part:80>, [
  [null, <minecraft:redstone>, null],
  [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
  [null, <minecraft:redstone>, null]]);
recipes.addShaped(<appliedenergistics2:part:80>, [
  [null, <ore:plateRedAlloy>, null],
  [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
  [null, <ore:plateRedAlloy>, null]]);
// Capacity Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardcapacity");
recipes.addShaped(<appliedenergistics2:material:27>, [
  [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
  [<appliedenergistics2:material:35>, <ore:gemCertusQuartz>, null],
  [null, null, null]]);
// Crafting Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardcrafting");
recipes.addShaped(<appliedenergistics2:material:53>, [
  [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
  [<appliedenergistics2:material:35>, <ore:workbench>, null],
  [null, null, null]]);
// Redstone Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardredstone");
recipes.addShaped(<appliedenergistics2:material:26>, [
  [<appliedenergistics2:material:25>, <ore:craftingRedstoneTorch>, null],
  [<ore:craftingRedstoneTorch>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);
// Fuzzy Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardfuzzy");
recipes.addShaped(<appliedenergistics2:material:29>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
	[<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);
// Inverter Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardinverter");
recipes.addShaped(<appliedenergistics2:material:31>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:part:100>, null],
  [<appliedenergistics2:part:100>, <appliedenergistics2:material:23>, null],
  [null, null, null]]);
// Acceleration Card
recipes.removeByRecipeName("appliedenergistics2:materials/cardspeed");
recipes.addShaped(<appliedenergistics2:material:30>, [
  [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
  [<appliedenergistics2:material:22>, <ore:crystalFluix> | <ore:crystalPureFluix>, null],
  [null, null, null]]);
// Quartz Fixture
recipes.remove(<appliedenergistics2:quartz_fixture>);
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, 
	[<ore:gemCertusQuartz> | <ore:crystalCertusQuartz>, <ore:stickAluminium>]);
// Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
recipes.addShapeless(<appliedenergistics2:light_detector>, 
	[<appliedenergistics2:material:1>, <ore:stickIron>]);
// Cable Anchor
recipes.removeByRecipeName("appliedenergistics2:network/parts/cable_anchor");
extruder.recipeBuilder()
  .inputs(<ore:plateSteel>)
  .notConsumable(<metaitem:shape.extruder.bolt>)
  .outputs(<appliedenergistics2:part:120> * 8)
  .duration(20)
  .EUt(16)
  .buildAndRegister();
// Annihilation Core
recipes.removeByRecipeName("appliedenergistics2:materials/annihilationcore");
recipes.addShaped(<appliedenergistics2:material:44>, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:gemCertusQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
recipes.addShaped(<appliedenergistics2:material:44> * 2, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
		<ore:stickAluminium> * 2,
		<appliedenergistics2:material:24> * 2,
		<ore:gemCertusQuartz> | <ore:crystalPureCertusQuartz>
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:material:44> * 4])
  .duration(20)
  .EUt(7680)
  .buildAndRegister();
// Formation Core
recipes.removeByRecipeName("appliedenergistics2:materials/formationcore");
recipes.addShaped(<appliedenergistics2:material:43>, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:gemNetherQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
recipes.addShaped(<appliedenergistics2:material:43> * 2, [
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
  [<appliedenergistics2:material:24>, <ore:crystalPureNetherQuartz>, <appliedenergistics2:material:24>],
  [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]]);
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:stickAluminium> * 2,
    <appliedenergistics2:material:24> * 2,
    <ore:gemNetherQuartz> | <ore:crystalPureNetherQuartz>
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:material:43> * 4])
  .duration(20)
  .EUt(7680)
  .buildAndRegister();
// Wireless Terminal
recipes.removeByRecipeName("appliedenergistics2:network/wireless_terminal");
recipes.addShaped("wireless_terminal", <appliedenergistics2:wireless_terminal>, [
  [<ore:craftingToolWrench>, <appliedenergistics2:material:41>, <ore:craftingToolScrewdriver>],
  [<ore:circuitHv>, <appliedenergistics2:part:380>, <ore:circuitHv>],
  [<ore:ae2.cable.glass>, <metaitem:lapotron_crystal>, <ore:ae2.cable.glass>]]);
// Basic Card
recipes.removeByRecipeName("appliedenergistics2:materials/basiccard");
recipes.addShaped("basiccard", <appliedenergistics2:material:25> * 2, [
  [<ore:wireFineRedAlloy>, <ore:plateAluminium>, null],
  [<appliedenergistics2:material:23>, <ore:circuitMv>, <ore:plateAluminium>],
  [<ore:wireFineGold>, <ore:plateAluminium>, null]]);
// Advanced Card
recipes.removeByRecipeName("appliedenergistics2:materials/advancedcard");
recipes.addShaped("advancedcard", <appliedenergistics2:material:28> * 2, [
  [<ore:wireFineRedAlloy>, <ore:plateStainlessSteel>, null],
  [<appliedenergistics2:material:23>, <ore:circuitHv>, <ore:plateStainlessSteel>],
  [<ore:wireFineSilver>, <ore:plateStainlessSteel>, null]]);
// Wireless Booster
recipes.removeByRecipeName("appliedenergistics2:network/wireless_booster");
recipes.addShaped("wireless_booster", <appliedenergistics2:material:42>, [
  [<metaitem:emitter.lv>, <ore:ae2.cable.glass>],
  [<ore:plateSteel>, <ore:plateSteel>]]);
// Fluix Pearl
recipes.removeByRecipeName("appliedenergistics2:misc/fluixpearl");
chemical_reactor.recipeBuilder()
  .inputs(<ore:dustFluix>)
  .inputs(<minecraft:ender_eye>)
  .outputs(<appliedenergistics2:material:9>)
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
  [<ore:plateSteel>, <ore:plateSteel>, <appliedenergistics2:material:43>],
  [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
  [<ore:plateSteel>, null, null]]);
// Memory Card
recipes.removeByRecipeName("appliedenergistics2:tools/network_memory_card");
recipes.addShaped("network_memory_card", <appliedenergistics2:memory_card>, [
  [<appliedenergistics2:material:23>, <ore:circuitLv>],
  [<ore:wireFineGold>, <ore:plateIron>]]);
// Заряженная палка
recipes.addShaped(<appliedenergistics2:charged_staff>, [
	[<appliedenergistics2:material:1>, <appliedenergistics2:material:1>, null],
	[<appliedenergistics2:material:1>, <ore:stickNeodymiumMagnetic>, null],
	[null, null, <ore:plateThaumium>]]);
// Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
  [null, <appliedenergistics2:material:22>, <ore:crystalFluix>],
  [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
  [<metaitem:stickSteel>, null, null]]);
// Color Applicator
recipes.remove(<appliedenergistics2:color_applicator>);
recipes.addShaped(<appliedenergistics2:color_applicator>, [
  [<ore:wireGtSingleAluminium>, <appliedenergistics2:material:43>, <ore:wireGtSingleAluminium>],
  [<appliedenergistics2:material:36>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:36>],
  [null, <ore:stickSteel>, null]]);
// Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShaped(<appliedenergistics2:biometric_card>, [
  [<appliedenergistics2:material:22>, <ore:plateIron>, <ore:plateIron>],
  [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
  [null, null, null]]);
// View Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/view_cell");
recipes.removeByRecipeName("appliedenergistics2:network/cells/view_cell_storage");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:material:39>)
  .inputs(<ore:crystalCertusQuartz>)
  .outputs(<appliedenergistics2:view_cell>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// ME Storage Housing
recipes.removeByRecipeName("appliedenergistics2:network/cells/empty_storage_cell");
recipes.addShaped("empty_storage_cell", <appliedenergistics2:material:39>, [
  [<appliedenergistics2:quartz_glass>, <ore:plateSteel>, <appliedenergistics2:quartz_glass>],
  [<ore:wireFineRedAlloy>, <ore:circuitLv>, <ore:wireFineRedAlloy>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// 1k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k_storage");
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:35>
  ])
  .outputs([<appliedenergistics2:storage_cell_1k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 4k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k_storage");
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:36>
  ])
  .outputs([<appliedenergistics2:storage_cell_4k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 16k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k_storage");
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:37>
  ])
  .outputs([<appliedenergistics2:storage_cell_16k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 64k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k_storage");
packer.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:39>,
    <appliedenergistics2:material:38>
  ])
  .outputs([<appliedenergistics2:storage_cell_64k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 1k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <appliedenergistics2:material:54>
  ])
  .outputs([<appliedenergistics2:fluid_storage_cell_1k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 4k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <appliedenergistics2:material:55>
  ])
  .outputs([<appliedenergistics2:fluid_storage_cell_4k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 16k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <appliedenergistics2:material:56>
  ])
  .outputs([<appliedenergistics2:fluid_storage_cell_16k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 64k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <appliedenergistics2:material:57>
  ])
  .outputs([<appliedenergistics2:fluid_storage_cell_64k>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 2³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_2_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_2_cubed_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <appliedenergistics2:material:32>
  ])
  .outputs([<appliedenergistics2:spatial_storage_cell_2_cubed>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 16³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_16_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_16_cubed_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <appliedenergistics2:material:33>
  ])
  .outputs([<appliedenergistics2:spatial_storage_cell_16_cubed>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 128³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_128_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_128_cubed_storage");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <appliedenergistics2:material:34>
  ])
  .outputs([<appliedenergistics2:spatial_storage_cell_128_cubed>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
  .inputs([
    <ore:batteryUlv> * 4,
    <ore:plateWroughtIron> * 4,
    <ore:dustCertusQuartz> * 4,
    <appliedenergistics2:material:22>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:35>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustCertusQuartz> * 4,
    <appliedenergistics2:material:22>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:36>])
  .duration(200)
  .EUt(1920)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:22>,
    <ore:circuitEv> * 4,
    <appliedenergistics2:material:35> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:36>])
  .duration(400)
  .EUt(1920)
  .buildAndRegister();
// 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustCertusQuartz> * 8,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:37>])
  .duration(200)
  .EUt(7680)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitIv> * 4,
    <appliedenergistics2:material:36> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:37>])
  .duration(400)
  .EUt(7680)
  .buildAndRegister();
// 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustCertusQuartz> * 8,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:38>])
  .duration(200)
  .EUt(30720)
  .buildAndRegister();
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:37> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<appliedenergistics2:material:38>])
  .duration(400)
  .EUt(30720)
  .buildAndRegister();
// 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
  .inputs([
    <ore:batteryUlv> * 4,
    <ore:plateWroughtIron> * 4,
    <ore:dustNetherQuartz> * 4,
    <appliedenergistics2:material:22>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:54>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustNetherQuartz> * 4,
    <appliedenergistics2:material:22>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:55>])
  .duration(200)
  .EUt(1920)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:22>,
    <ore:circuitEv> * 4,
    <appliedenergistics2:material:54> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:55>])
  .duration(400)
  .EUt(1920)
  .buildAndRegister();
// 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustNetherQuartz> * 8,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:56>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitIv> * 4,
    <appliedenergistics2:material:55> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:56>])
  .duration(400)
  .EUt(7680)
  .buildAndRegister();
// 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustNetherQuartz> * 8,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:57>])
  .duration(200)
  .EUt(30720)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:56> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<appliedenergistics2:material:57>])
  .duration(400)
  .EUt(30720)
  .buildAndRegister();
// 2³ Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitEv> * 4,
    <ore:plateTitanium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:hsla_steel> * 144)
  .outputs([<appliedenergistics2:material:32>])
  .duration(200)
  .EUt(1920)
  .buildAndRegister();
// 16³ Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitIv> * 4,
    <ore:plateTungstenSteel> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:33>])
  .duration(200)
  .EUt(7680)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:32> * 4
  ])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:33>])
  .duration(400)
  .EUt(7680)
  .buildAndRegister();
// 128³ Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitLuv> * 4,
    <ore:plateRhodiumPlatedPalladium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:34>])
  .duration(200)
  .EUt(30720)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitLuv> * 4,
    <appliedenergistics2:material:33> * 4
  ])
  .fluidInputs(<liquid:tungsten_steel> * 144)
  .outputs([<appliedenergistics2:material:34>])
  .duration(400)
  .EUt(30720)
  .buildAndRegister();
//Крафт пыли флакса
macerator.recipeBuilder()
	.inputs([<ore:crystalFluix> * 1])
	.outputs(<appliedenergistics2:material:8> * 1)
	.duration(65)
	.EUt(12)
	.buildAndRegister();
########################################
# Blocks
########################################
// Fluix Block
recipes.remove(<appliedenergistics2:fluix_block>);
compressor.recipeBuilder()
  .inputs([<ore:crystalFluix> * 4])
  .outputs([<appliedenergistics2:fluix_block>])
  .duration(300)
  .EUt(480)
  .buildAndRegister();
compressor.recipeBuilder()
  .inputs([<ore:crystalPureFluix> * 8])
  .outputs([<appliedenergistics2:fluix_block>])
  .duration(300)
  .EUt(480)
  .buildAndRegister();
// Quartz block
recipes.removeByRecipeName("appliedenergistics2:deconstruction/certus_quartz_block");
recipes.removeByRecipeName("appliedenergistics2:deconstruction/certus_quartz_block_pure");
recipes.removeByRecipeName("appliedenergistics2:deconstruction/certus_quartz_pillar");
recipes.removeByRecipeName("appliedenergistics2:deconstruction/chiseled_quartz_block");
compressor.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> * 4)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz> * 16)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
// Crafting Co-Processing Unit
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_accelerator");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:24>)
  .outputs(<appliedenergistics2:crafting_accelerator>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// 1k Crafting Storage
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_1k");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:35>)
  .outputs(<appliedenergistics2:crafting_storage_1k>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// 4k Crafting Storage
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_4k");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:36>)
  .outputs(<appliedenergistics2:crafting_storage_4k>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// 16k Crafting Storage
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_16k");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:37>)
  .outputs(<appliedenergistics2:crafting_storage_16k>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// 64k Crafting Storage
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_64k");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:material:38>)
  .outputs(<appliedenergistics2:crafting_storage_64k>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// Crafting Monitor
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_monitor");
canner.recipeBuilder()
  .inputs(<appliedenergistics2:crafting_unit>)
  .inputs(<appliedenergistics2:part:400>)
  .outputs(<appliedenergistics2:crafting_monitor>)
  .duration(100)
  .EUt(4)
  .buildAndRegister();
// Crafting Unit
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_unit");
recipes.addShaped("cpu_crafting_unit", <appliedenergistics2:crafting_unit>, [
  [<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
  [<ore:ae2.cable.glass>, <ore:circuitMv>, <ore:ae2.cable.glass>],
  [<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>]]);
// Molecular Assembler
recipes.removeByRecipeName("appliedenergistics2:network/crafting/molecular_assembler");
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.hv> * 2,
    <metaitem:robot.arm.hv> * 2,
    <ore:plateStainlessSteel> * 4
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.ev> * 2,
    <metaitem:robot.arm.ev> * 2,
    <ore:plateTitanium> * 4
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler> * 4])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:quartz_glass> * 2,
    <ore:circuitHv> * 2,
		<appliedenergistics2:material:44>,
		<appliedenergistics2:material:43>,
    <metaitem:conveyor.module.iv> * 2,
    <metaitem:robot.arm.iv> * 2,
    <ore:plateTungstenSteel> * 4
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:molecular_assembler> * 16])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// ME Import Bus
recipes.removeByRecipeName("appliedenergistics2:network/parts/import_bus");
recipes.addShaped("import_bus", <appliedenergistics2:part:240>, [
  [<appliedenergistics2:material:44>, <metaitem:robot.arm.lv>, <appliedenergistics2:part:16>]]);
// ME Export Bus
recipes.removeByRecipeName("appliedenergistics2:network/parts/export_bus");
recipes.addShaped("export_bus", <appliedenergistics2:part:260>, [
  [<appliedenergistics2:material:43>, <metaitem:robot.arm.lv>, <appliedenergistics2:part:16>]]);
// ME Fluid Storage Bus
recipes.removeByRecipeName("appliedenergistics2:network/parts/storage_bus_fluid");
recipes.addShaped("storage_bus_fluid", <appliedenergistics2:part:221>, [
  [<appliedenergistics2:fluid_interface>, <metaitem:electric.piston.lv>, <ore:ae2.cable.glass>]]);
// ME Fluid Import Bus
recipes.removeByRecipeName("appliedenergistics2:network/parts/import_bus_fluid");
recipes.addShaped("import_bus_fluid", <appliedenergistics2:part:241>, [
  [<appliedenergistics2:material:44>, <metaitem:electric.pump.lv>, <ore:ae2.cable.glass>]]);
// ME Fluid Export Bus
recipes.removeByRecipeName("appliedenergistics2:network/parts/export_bus_fluid");
recipes.addShaped("export_bus_fluid", <appliedenergistics2:part:261>, [
  [<appliedenergistics2:material:43>, <metaitem:electric.pump.lv>, <ore:ae2.cable.glass>]]);
// Fluid Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShapeless(<appliedenergistics2:part:441>, [<appliedenergistics2:fluid_interface>]);
recipes.addShaped("fluid_interfaces_interface", <appliedenergistics2:fluid_interface>, [
  [<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>],
  [<appliedenergistics2:material:43>, <metaitem:electric.pump.lv>, <appliedenergistics2:material:44>],
  [<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>]]);
recipes.addShaped("fluid_interfaces_interface_mv", <appliedenergistics2:fluid_interface> * 2, [
  [<ore:plateAluminium>, <ore:blockGlass>, <ore:plateAluminium>],
  [<appliedenergistics2:material:43>, <metaitem:electric.pump.mv>, <appliedenergistics2:material:44>],
  [<ore:plateAluminium>, <ore:blockGlass>, <ore:plateAluminium>]]);
recipes.addShaped("fluid_interfaces_interface_hv", <appliedenergistics2:fluid_interface> * 4, [
  [<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>],
  [<appliedenergistics2:material:43>, <metaitem:electric.pump.hv>, <appliedenergistics2:material:44>],
  [<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>]]);
recipes.addShaped("fluid_interfaces_interface_ev", <appliedenergistics2:fluid_interface> * 8, [
  [<ore:plateTitanium>, <ore:blockGlass>, <ore:plateTitanium>],
  [<appliedenergistics2:material:43>, <metaitem:electric.pump.ev>, <appliedenergistics2:material:44>],
  [<ore:plateTitanium>, <ore:blockGlass>, <ore:plateTitanium>]]);
// Датчик жидкостного уровня
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:part:280>, <minecraft:water_bucket>]);
// P2P Tunnel
recipes.removeByRecipeName("appliedenergistics2:network/parts/tunnels_me");
recipes.addShaped("tunnels_me", <appliedenergistics2:part:460> * 2, [
  [null, <ore:plateTungstenSteel>, null],
  [<ore:plateTungstenSteel>, <appliedenergistics2:material:24>, <ore:plateTungstenSteel>],
  [<ore:plateTungstenSteel>, <ore:ae2.cable.glass>, <ore:plateTungstenSteel>]]);
// P2P Tunnel Fluid
recipes.addShapeless(<appliedenergistics2:part:463>, [<appliedenergistics2:part:460>, <minecraft:water_bucket>]);
// P2P Tunnel Redstone
recipes.addShapeless(<appliedenergistics2:part:461>, [<appliedenergistics2:part:460>, <minecraft:redstone_torch>]);
// P2P Tunnel Light
recipes.addShapeless(<appliedenergistics2:part:467>, [<appliedenergistics2:part:460>, <ore:glowstone>]);
// P2P Tunnel Item
recipes.addShapeless(<appliedenergistics2:part:462>, [<appliedenergistics2:part:460>, <ore:pipeLargeItemCobalt>]);
// P2P Tunnel FE
recipes.addShapeless(<appliedenergistics2:part:469>, [<appliedenergistics2:part:460>, <ore:cableGtQuadrupleCobalt>]);
// P2P Tunnel EU
recipes.addShapeless(<appliedenergistics2:part:470>, [<appliedenergistics2:part:460>, <ore:cableGtDoubleCobalt>]);
// ME Controller
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24> * 2,
    <ore:circuitHv> * 2,
    <ore:plateTitanium> * 4,
    <appliedenergistics2:fluix_block>
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<appliedenergistics2:controller>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// Energy Cell
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_cell");
recipes.addShaped("energy_energy_cell", <appliedenergistics2:energy_cell>, [
  [<ore:screwCertusQuartz>, <ore:plateCertusQuartz>, <ore:screwCertusQuartz>],
  [<metaitem:voltage_coil.lv>, <appliedenergistics2:quartz_vibrant_glass>, <metaitem:voltage_coil.lv>],
  [<ore:screwCertusQuartz>, <ore:plateCertusQuartz>, <ore:screwCertusQuartz>]]);
// Dense Energy Cell
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_dense_energy_cell");
compressor.recipeBuilder()
  .inputs(<appliedenergistics2:energy_cell> * 8)
  .outputs(<appliedenergistics2:dense_energy_cell>)
  .duration(100)
  .EUt(30)
  .buildAndRegister();
// ME Chest
recipes.removeByRecipeName("appliedenergistics2:network/blocks/storage_chest");
recipes.addShaped(<appliedenergistics2:chest>, [
	[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>],
	[<ore:ae2.cable.glass>, <metaitem:super_chest.mv>, <ore:ae2.cable.glass>],
	[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>]]);
// ME Drive
recipes.removeByRecipeName("appliedenergistics2:network/blocks/storage_drive");
recipes.addShaped("storage_drive", <appliedenergistics2:drive>, [
  [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>],
  [<ore:ae2.cable.glass>, <ore:circuitLv>, <ore:ae2.cable.glass>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);
// Quantum Ring
recipes.removeByRecipeName("appliedenergistics2:network/blocks/quantum_ring");
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
	.duration(900)
	.EUt(8300)
	.buildAndRegister();
// Quantum Link Chamber
recipes.removeByRecipeName("appliedenergistics2:network/blocks/quantum_link");
assembly_line.recipeBuilder()
  .inputs(<appliedenergistics2:material:9> * 8)
  .inputs(<appliedenergistics2:quartz_vibrant_glass> * 6)
	.inputs(<appliedenergistics2:material:24> * 8)
  .inputs(<metaitem:sensor.iv> * 14)
	.inputs(<appliedenergistics2:dense_energy_cell>)
	.circuit(12)
  .fluidInputs([<liquid:titanium> * 1088])
	.outputs(<appliedenergistics2:quantum_link>)
	.duration(700)
	.EUt(8300)
	.buildAndRegister();
// Spatial Pylon
recipes.removeByRecipeName("appliedenergistics2:network/blocks/spatial_pylon");
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
  [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>],
  [<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>],
  [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>]]);
// IO Port
recipes.removeByRecipeName("appliedenergistics2:network/blocks/io_port");
recipes.addShaped(<appliedenergistics2:io_port>, [
  [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:drive>, <ore:ae2.cable.glass>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);
// Spatial IO Port
recipes.removeByRecipeName("appliedenergistics2:network/blocks/spatial_io_port");
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
  [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:io_port>, <ore:ae2.cable.glass>],
  [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);
// Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped("interfaces_interface", <appliedenergistics2:interface>, [
  [<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>],
  [<appliedenergistics2:material:44>, <metaitem:conveyor.module.lv>, <appliedenergistics2:material:43>],
  [<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>]]);
recipes.addShaped("interfaces_interface_mv", <appliedenergistics2:interface> * 2, [
  [<ore:plateAluminium>, <ore:blockGlass>, <ore:plateAluminium>],
  [<appliedenergistics2:material:44>, <metaitem:conveyor.module.mv>, <appliedenergistics2:material:43>],
  [<ore:plateAluminium>, <ore:blockGlass>, <ore:plateAluminium>]]);
recipes.addShaped("interfaces_interface_hv", <appliedenergistics2:interface> * 4, [
  [<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>],
  [<appliedenergistics2:material:44>, <metaitem:conveyor.module.hv>, <appliedenergistics2:material:43>],
  [<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>]]);
recipes.addShaped("interfaces_interface_ev", <appliedenergistics2:interface> * 8, [
  [<ore:plateTitanium>, <ore:blockGlass>, <ore:plateTitanium>],
  [<appliedenergistics2:material:44>, <metaitem:conveyor.module.ev>, <appliedenergistics2:material:43>],
  [<ore:plateTitanium>, <ore:blockGlass>, <ore:plateTitanium>]]);
// Cell Workbench
recipes.removeByRecipeName("appliedenergistics2:network/blocks/cell_workbench");
recipes.addShaped("cell_workbench", <appliedenergistics2:cell_workbench>, [
  [<metaitem:item_filter>, <appliedenergistics2:material:23>, <metaitem:fluid_filter>],
  [<ore:plateSteel>, <ore:chestWood>, <ore:plateSteel>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// Matter Condenser
recipes.removeByRecipeName("appliedenergistics2:network/blocks/io_condenser");
recipes.addShaped("io_condenser", <appliedenergistics2:condenser>, [
  [<ore:plateStainlessSteel>, <metaitem:electric.piston.hv>, <ore:plateStainlessSteel>],
  [<metaitem:electric.piston.hv>, <ore:circuitHv>, <metaitem:electric.piston.hv>],
  [<ore:plateStainlessSteel>, <metaitem:electric.piston.hv>, <ore:plateStainlessSteel>]]);
// Energy Acceptor
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_acceptor");
recipes.addShaped("energy_energy_acceptor", <appliedenergistics2:energy_acceptor>, [
  [<ore:plateSteel>, <ore:plateStainlessSteel>, <ore:plateSteel>],
  [<ore:plateStainlessSteel>, <metaitem:voltage_coil.lv>, <ore:plateStainlessSteel>],
  [<ore:plateSteel>, <ore:plateStainlessSteel>, <ore:plateSteel>]]);
// Security Terminal
recipes.removeByRecipeName("appliedenergistics2:network/blocks/security_station");
recipes.addShaped(<appliedenergistics2:security_station>, [
  [<ore:plateSteel>, <ore:chestWood>, <ore:plateSteel>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:material:35>, <ore:ae2.cable.glass>],
  [<ore:plateSteel>, <appliedenergistics2:material:22>, <ore:plateSteel>]]);
// ME Fluid Formation Plane
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_formation_fluid");
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_formation_fluid_alt");
recipes.addShaped("planes_formation_fluid", <appliedenergistics2:part:321>, [
  [<metaitem:electric.pump.lv>, <appliedenergistics2:material:43>, <ore:crystalFluix>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// ME Fluid Annihilation Plane
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_annihilation_fluid");
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_annihilation_fluid_alt");
recipes.addShaped("planes_annihilation_fluid", <appliedenergistics2:part:302>, [
  [<metaitem:electric.pump.lv>, <appliedenergistics2:material:44>, <ore:crystalFluix>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// ME Annihilation Plane
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_annihilation_alt");
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_annihilation_alt2");
recipes.addShaped("planes_annihilation", <appliedenergistics2:part:300>, [
  [<metaitem:electric.piston.lv>, <appliedenergistics2:material:44>, <ore:crystalFluix>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// ME Formation Plane
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_formation");
recipes.removeByRecipeName("appliedenergistics2:network/parts/planes_formation_alt");
recipes.addShaped("planes_formation", <appliedenergistics2:part:320>, [
  [<metaitem:electric.piston.lv>, <appliedenergistics2:material:43>, <ore:crystalFluix>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// ME Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals");
recipes.addShaped("terminals", <appliedenergistics2:part:380>, [
  [<ore:boltNetherQuartz>, <ore:circuitLv>, <ore:boltNetherQuartz>],
  [<ore:craftingToolWireCutter>, <ore:itemIlluminatedPanel>, <ore:craftingToolScrewdriver>],
  [<ore:circuitLv>, <ore:plateDoubleSteel>, <ore:circuitLv>]]);
recipes.addShaped("terminals_simple", <appliedenergistics2:part:380>, [
  [<ore:itemIlluminatedPanel>, <appliedenergistics2:material:23>],
  [<appliedenergistics2:material:22>, <ore:craftingToolScrewdriver>]]);
// ME Crafting Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals_crafting");
recipes.addShaped("terminals_crafting", <appliedenergistics2:part:360>, [
  [<appliedenergistics2:part:380>, <metaitem:cover.crafting>],
  [<appliedenergistics2:material:23>, <ore:craftingToolScrewdriver>]]);
// ME Interface Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals_interface");
recipes.addShaped("terminals_interface", <appliedenergistics2:part:480>, [
  [<appliedenergistics2:part:380>, <appliedenergistics2:part:440>],
  [<appliedenergistics2:material:24>, <ore:craftingToolScrewdriver>]]);
// ME Pattern Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals_pattern");
recipes.addShaped("terminals_pattern", <appliedenergistics2:part:340>, [
  [<appliedenergistics2:part:380>, <appliedenergistics2:material:52>],
  [<appliedenergistics2:material:24>, <ore:craftingToolScrewdriver>]]);
// ME Extanded Pattern Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminal_expanded_processing");
recipes.addShaped("terminals_extended_pattern", <appliedenergistics2:part:341>, [
  [<appliedenergistics2:part:340>, <metaitem:sensor.luv>],
  [<metaitem:emitter.luv>, <ore:craftingToolScrewdriver>]]);
// ME Fluid Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals_fluid");
recipes.addShaped("terminals_fluid", <appliedenergistics2:part:520>, [
  [<appliedenergistics2:part:380>, <ore:pipeSmallFluidPlastic>],
  [<appliedenergistics2:material:22>, <ore:craftingToolScrewdriver>]]);