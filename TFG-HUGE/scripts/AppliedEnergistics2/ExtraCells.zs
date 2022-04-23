import crafttweaker.item.IItemStack;

// Удаление рецептов + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
	# Fluid Storage Cells(deprecated)
  <extracells:storage.fluid>,
	<extracells:storage.fluid:1>,
	<extracells:storage.fluid:2>,
	<extracells:storage.fluid:3>,
	# Fluid Storage Component(deprecated)
	<extracells:storage.component:4>,
	<extracells:storage.component:5>,
	<extracells:storage.component:6>,
	<extracells:storage.component:7>,
	# Deprecated panels
	<extracells:part.base>,
	<extracells:part.base:1>,
	<extracells:part.base:2>,
	<extracells:part.base:3>,
	<extracells:part.base:4>,
	<extracells:part.base:5>,
	<extracells:part.base:6>,
	<extracells:part.base:9>,
	# Fluid Interface
	<extracells:ecbaseblock>,
	# Certus Quartz Tank
	<extracells:certustank>,
	# Fluid Vibration Chamber
	<extracells:vibrantchamberfluid>,
	# Wireless Fluid Terminal
	<extracells:terminal.fluid.wireless>,
	# Wireless Universal Terminal
	<extracells:terminal.universal.wireless>
];
for item in ItemsToRemoveFromJEI{
  mods.jei.JEI.removeAndHide(item);
}


########################################
# Items
########################################
// Fluid Storage Housing
recipes.remove(<extracells:storage.casing:1>);
assembler.recipeBuilder()
	.inputs([
		<ore:plateCertusQuartz> * 2, 
		<ore:gemQuartzite> * 2, 
		<ore:plateStainlessSteel> * 4, 
		<ore:screwStainlessSteel> * 2
	])
	.outputs(<extracells:storage.casing:1>)
	.duration(250).EUt(128).buildAndRegister();
// Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
assembler.recipeBuilder()
	.inputs([
		<appliedenergistics2:material:39> * 2, 
		<ore:gemQuartzite> * 2, 
		<ore:plateTungstenSteel> * 4, 
		<ore:screwTungstenSteel> * 2
	])
	.outputs(<extracells:storage.casing>)
	.duration(250).EUt(128).buildAndRegister();
// Recycle - Advanced Storage Housing
macerator.recipeBuilder()
  .inputs([<extracells:storage.casing>])
  .outputs([<metaitem:dustTungstenSteel>])
  .duration(100)
  .EUt(16)
  .buildAndRegister();
// Recycle - Fluid Housing
macerator.recipeBuilder()
  .inputs([<extracells:storage.casing:1>])
  .outputs([<metaitem:dustStainlessSteel>])
  .duration(100)
  .EUt(16)
  .buildAndRegister();
// 256k Storage Component
recipes.remove(<extracells:storage.component>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4,
    <ore:plateNaquadahAlloy> * 4,
    <ore:dustCertusQuartz> * 16,
    <appliedenergistics2:material:24>
	])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component>])
  .duration(200)
  .EUt(122880)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitZpm> * 4,
    <appliedenergistics2:material:38> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component>])
  .duration(400)
  .EUt(122880)
  .buildAndRegister();
// 1024k Storage Component
recipes.remove(<extracells:storage.component:1>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4,
    <ore:plateAmericium> * 4,
    <ore:dustCertusQuartz> * 16,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:1>])
  .duration(200)
  .EUt(122880)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitZpm> * 4,
    <extracells:storage.component> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:1>])
  .duration(400)
  .EUt(122880)
  .buildAndRegister();
// 4096k Storage Component
recipes.remove(<extracells:storage.component:2>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4,
    <ore:plateDarmstadtium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:2>])
  .duration(200)
  .EUt(491520)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitUv> * 4,
    <extracells:storage.component:1> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:2>])
  .duration(400)
  .EUt(491520)
  .buildAndRegister();
// 16384k Storage Component
recipes.remove(<extracells:storage.component:3>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4,
    <ore:plateNeutronium> * 4,
    <ore:dustCertusQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:3>])
  .duration(200)
  .EUt(491520)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitUv> * 4,
    <extracells:storage.component:2> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:3>])
  .duration(400)
  .EUt(491520)
  .buildAndRegister();
// 256k Fluid Component
recipes.remove(<extracells:storage.component:8>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4,
    <ore:plateNaquadahAlloy> * 4,
    <ore:dustNetherQuartz> * 16,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:8>])
  .duration(200)
  .EUt(122880)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitZpm> * 4,
    <appliedenergistics2:material:57> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:8>])
  .duration(400)
  .EUt(122880)
  .buildAndRegister();
// 1024k Fluid Component
recipes.remove(<extracells:storage.component:9>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4,
    <ore:plateAmericium> * 4,
    <ore:dustNetherQuartz> * 16,
    <appliedenergistics2:material:24>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:9>])
  .duration(200)
  .EUt(122880)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitZpm> * 4,
    <extracells:storage.component:8> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:9>])
  .duration(400)
  .EUt(122880)
  .buildAndRegister();
// 4096k Fluid Component
recipes.remove(<extracells:storage.component:10>);
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4,
    <ore:plateDarmstadtium> * 4,
    <ore:dustNetherQuartz> * 32,
    <appliedenergistics2:material:23>
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:10>])
  .duration(200)
  .EUt(491520)
  .buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>,
    <ore:circuitUv> * 4,
    <extracells:storage.component:9> * 4
  ])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:10>])
  .duration(400)
  .EUt(491520)
  .buildAndRegister();
// 256k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/256k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <extracells:storage.component:0>
  ])
  .outputs([<extracells:storage.physical:0>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 1024k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/1024k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <extracells:storage.component:1>
  ])
  .outputs([<extracells:storage.physical:1>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 4096k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/4096k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <extracells:storage.component:2>
  ])
  .outputs([<extracells:storage.physical:2>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 16384k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/16384k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:0>,
    <extracells:storage.component:3>
  ])
  .outputs([<extracells:storage.physical:3>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 256k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/256k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <extracells:storage.component:8>
  ])
  .outputs([<extracells:storage.fluid:4>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 1024k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/1024k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <extracells:storage.component:9>
  ])
  .outputs([<extracells:storage.fluid:5>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// 4096k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/4096k");
packer.recipeBuilder()
  .inputs([
    <extracells:storage.casing:1>,
    <extracells:storage.component:10>
  ])
  .outputs([<extracells:storage.fluid:6>])
  .duration(10)
  .EUt(7)
  .buildAndRegister();
// ME Ore Dictionary Storage Bus
recipes.remove(<extracells:part.base:12>);
// recipes.addShapeless("oredict_storage_bus", <extracells:part.base:12>,
//   [<appliedenergistics2:part:220>, <metaitem:ore_dictionary_filter>]);


########################################
# Blocks
########################################
// ME Fluid Assembler
recipes.remove(<extracells:fluidcrafter>);
assembler.recipeBuilder()
  .inputs([
    <ore:paneGlassColorless> * 2,
    <ore:circuitHv> * 2,
    <metaitem:conveyor.module.hv> * 2,
    <metaitem:fluid.regulator.hv> * 2,
    <ore:plateSteel> * 4
  ])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<extracells:fluidcrafter>])
  .duration(200)
  .EUt(480)
  .buildAndRegister();
// ME Drive Fixture
recipes.remove(<extracells:part.base:7>);
recipes.addShaped(<extracells:part.base:7>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);
// ME Energy Cell Fixture
recipes.remove(<extracells:part.base:8>);
recipes.addShaped(<extracells:part.base:8>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);
// Obsidian ME Drive
recipes.remove(<extracells:hardmedrive>);
recipes.addShaped(<extracells:hardmedrive>, [
  [<ore:plateObsidian>, <ore:ae2.cable.dense.covered>, <ore:plateObsidian>],
  [<ore:plateObsidian>, <appliedenergistics2:drive>, <ore:plateObsidian>],
  [<ore:plateObsidian>, <minecraft:obsidian>, <ore:plateObsidian>]]);