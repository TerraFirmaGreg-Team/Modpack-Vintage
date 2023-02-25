import crafttweaker.item.IItemStack;


// --- Добавление рецептов

for i in 4 .. 8 {
  // Предметные ячейки
  // Сбор
  packer.recipeBuilder()
    .inputs([
      <aeadditions:storage.casing>,
      storageComponents[i]])
    .outputs([storageCells[i]])
    .property("cleanroom", "cleanroom")
    .duration(10).EUt(7).buildAndRegister();
  // Разбор
  packer.recipeBuilder()
    .inputs([storageCells[i]])
    .outputs([
      <aeadditions:storage.casing>,
      storageComponents[i]])
    .duration(10).EUt(7).buildAndRegister();
}
for i in 4 .. 7 {
  // Жидкостные ячейки
  // Сбор
  packer.recipeBuilder()
    .inputs([
      <aeadditions:storage.casing:1>,
      fluidStorageComponents[i]])
    .outputs([fluidStorageCells[i]])
    .property("cleanroom", "cleanroom")
    .duration(10).EUt(7).buildAndRegister();
  // Разбор
  packer.recipeBuilder()
    .inputs([fluidStorageCells[i]])
    .outputs([
      <aeadditions:storage.casing:1>,
      fluidStorageComponents[i]])
    .duration(10).EUt(7).buildAndRegister();
}
// Fluid Storage Housing
assembler.recipeBuilder()
	.inputs([
    <metaitem:fluid.housing> * 2, 
    <metaitem:gemQuartzite> * 2, 
    <metaitem:plateStainlessSteel> * 4, 
    <metaitem:screwStainlessSteel> * 2])
	.outputs(<aeadditions:storage.casing:1>)
	.duration(20).EUt(480).buildAndRegister();
// Recycle - Fluid Housing
macerator.recipeBuilder()
  .inputs([<aeadditions:storage.casing:1>])
  .outputs([
    <metaitem:dustStainlessSteel> * 2,
    <metaitem:dustTinyStainlessSteel> * 2])
  .duration(100).EUt(16).buildAndRegister();
arc_furnace.recipeBuilder()
  .inputs([<aeadditions:storage.casing:1>])
  .fluidInputs([<liquid:oxygen> * 56])
  .outputs([
    <metaitem:ingotStainlessSteel> * 2,
    <metaitem:nuggetStainlessSteel> * 2])
  .duration(56).EUt(30).buildAndRegister();

// Advanced Storage Housing
assembler.recipeBuilder()
	.inputs([
    <appliedenergistics2:material:39> * 2, 
    <metaitem:gemQuartzite> * 2, 
    <metaitem:plateTungstenSteel> * 4, 
    <metaitem:screwTungstenSteel> * 2])
	.outputs(<aeadditions:storage.casing>)
	.duration(20).EUt(480).buildAndRegister();
// Recycle - Advanced Storage Housing
macerator.recipeBuilder()
  .inputs([<aeadditions:storage.casing>])
  .outputs([
    <metaitem:dustTungstenSteel> * 2,
    <metaitem:dustTinyTungstenSteel> * 2])
  .duration(100).EUt(16).buildAndRegister();
arc_furnace.recipeBuilder()
  .inputs([<aeadditions:storage.casing>])
  .fluidInputs([<liquid:oxygen> * 56])
  .outputs([
    <metaitem:ingotTungstenSteel> * 2,
    <metaitem:nuggetTungstenSteel> * 2])
  .duration(56).EUt(30).buildAndRegister();

// 256k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4, 
    <metaitem:plateNaquadahAlloy> * 4, 
    <metaitem:dustCertusQuartz> * 16, 
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component>])
  .duration(400).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>, 
    <ore:circuitZpm> * 2, 
    <appliedenergistics2:material:38> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component>])
  .duration(200).EUt(122880).buildAndRegister();
// 1024k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4, 
    <metaitem:plateAmericium> * 4, 
    <metaitem:dustCertusQuartz> * 16, 
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:1>])
  .duration(400).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>, 
    <ore:circuitZpm> * 2, 
    <aeadditions:storage.component> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:1>])
  .duration(200).EUt(122880).buildAndRegister();
// 4096k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4, 
    <metaitem:plateDarmstadtium> * 4, 
    <metaitem:dustCertusQuartz> * 32, 
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:2>])
  .duration(400).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>, 
    <ore:circuitUv> * 2, 
    <aeadditions:storage.component:1> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:2>])
  .duration(200).EUt(491520).buildAndRegister();
// 16384k Storage Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4, 
    <metaitem:plateNeutronium> * 4, 
    <metaitem:dustCertusQuartz> * 32, 
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:3>])
  .duration(400).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>, 
    <ore:circuitUv> * 2, 
    <aeadditions:storage.component:2> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<aeadditions:storage.component:3>])
  .duration(200).EUt(491520).buildAndRegister();

// 256k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4, 
    <metaitem:plateNaquadahAlloy> * 4, 
    <metaitem:dustNetherQuartz> * 16, 
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:4>])
  .duration(400).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>, 
    <ore:circuitZpm> * 2, 
    <appliedenergistics2:material:57> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:4>])
  .duration(200).EUt(122880).buildAndRegister();
// 1024k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitZpm> * 4, 
    <metaitem:plateAmericium> * 4, 
    <metaitem:dustNetherQuartz> * 16, 
    <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:5>])
  .duration(400).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:24>,
    <ore:circuitZpm> * 2,
    <aeadditions:storage.component:4> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:5>])
  .duration(200).EUt(122880).buildAndRegister();
// 4096k Fluid Component
assembler.recipeBuilder()
  .inputs([
    <ore:circuitUv> * 4, 
    <metaitem:plateDarmstadtium> * 4, 
    <metaitem:dustNetherQuartz> * 32, 
    <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:6>])
  .duration(400).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:23>, 
    <ore:circuitUv> * 2, 
    <aeadditions:storage.component:5> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<aeadditions:storage.component:6>])
  .duration(200).EUt(491520).buildAndRegister();

// ME Ore Dictionary Storage Bus
// recipes.addShapeless("oredict_storage_bus", <aeadditions:part.base:12>,
//   [<appliedenergistics2:part:220>, <metaitem:ore_dictionary_filter>]);

// Жидкостный автозаполнитель
assembler.recipeBuilder()
  .inputs([
    <aeadditions:fluidcrafter>,
    <appliedenergistics2:part:520>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<aeadditions:fluidfiller>])
  .duration(200).EUt(480).buildAndRegister();

// Переносное жидкостное хранилище
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:material:54>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:energy_cell>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<aeadditions:storage.fluid.portable>])
  .duration(200).EUt(480).buildAndRegister();

// Переносное предметное хранилище
assembler.recipeBuilder()
  .inputs([
    <aeadditions:storage.component>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:energy_cell>])
  .fluidInputs([<liquid:plastic> * 144])
  .outputs([<aeadditions:storage.physical:4>])
  .duration(200).EUt(480).buildAndRegister();

// Obsidian ME Drive
recipes.addShaped("tfg/aeadditions/obsidian_me_drive", <aeadditions:hardmedrive>, [
  [<metaitem:plateObsidian>, <ore:ae2.cable.dense.covered>, <metaitem:plateObsidian>],
  [<metaitem:plateObsidian>, <appliedenergistics2:drive>, <metaitem:plateObsidian>],
  [<metaitem:plateObsidian>, <minecraft:obsidian>, <metaitem:plateObsidian>]]);

// ME Drive Fixture
recipes.addShaped("tfg/aeadditions/me_drive_fixture", <aeadditions:part.base>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);

// ME Energy Cell Fixture
recipes.addShaped("tfg/aeadditions/me_energy_cell_fixture", <aeadditions:part.base:1>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);