import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("extracells");

// Скрытие паттернов
val ec as IMod = loadedMods["extracells"];
if (!isNull(ec)) {
    val ecItems as IItemStack[] = ec.items;

    for item in ecItems {
        if(item.displayName has "ME Fluid Pattern") {
            JEI.hide(item);
        }
    }
}

// --- Добавление рецептов

// Fluid Storage Housing
assembler.recipeBuilder()
	.inputs([<ore:plateCertusQuartz> * 2, <ore:gemQuartzite> * 2, <ore:plateStainlessSteel> * 4, <ore:screwStainlessSteel> * 2])
	.outputs(<extracells:storage.casing:1>)
	.duration(20).EUt(480).buildAndRegister();

// Recycle - Fluid Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .outputs([
        <metaitem:dustStainlessSteel> * 2,
        <metaitem:dustTinyStainlessSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotStainlessSteel> * 2,
        <metaitem:nuggetStainlessSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();

// Advanced Storage Housing
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:material:39> * 2, <ore:gemQuartzite> * 2, <ore:plateTungstenSteel> * 4, <ore:screwTungstenSteel> * 2])
	.outputs(<extracells:storage.casing>)
	.duration(20).EUt(480).buildAndRegister();

// Recycle - Advanced Storage Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing>])
    .outputs([
        <metaitem:dustTungstenSteel> * 2,
        <metaitem:dustTinyTungstenSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<extracells:storage.casing>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotTungstenSteel> * 2,
        <metaitem:nuggetTungstenSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();

// 256k Storage Component
assembler.recipeBuilder()
  .inputs([<ore:circuitZpm> * 4, <ore:plateNaquadahAlloy> * 4, <ore:dustCertusQuartz> * 16, <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component>])
  .duration(200).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:24>, <ore:circuitZpm> * 4, <appliedenergistics2:material:38> * 4
  ])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component>])
  .duration(400).EUt(122880).buildAndRegister();

// 1024k Storage Component
assembler.recipeBuilder()
  .inputs([<ore:circuitZpm> * 4, <ore:plateAmericium> * 4, <ore:dustCertusQuartz> * 16, <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:1>])
  .duration(200).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:24>, <ore:circuitZpm> * 4, <extracells:storage.component> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:1>])
  .duration(400).EUt(122880).buildAndRegister();

// 4096k Storage Component
assembler.recipeBuilder()
  .inputs([<ore:circuitUv> * 4, <ore:plateDarmstadtium> * 4, <ore:dustCertusQuartz> * 32, <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:2>])
  .duration(200).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:23>, <ore:circuitUv> * 4, <extracells:storage.component:1> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:2>])
  .duration(400).EUt(491520).buildAndRegister();

// 16384k Storage Component
assembler.recipeBuilder()
  .inputs([<ore:circuitUv> * 4, <ore:plateNeutronium> * 4, <ore:dustCertusQuartz> * 32, <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:3>])
  .duration(200).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:23>, <ore:circuitUv> * 4, <extracells:storage.component:2> * 4])
  .fluidInputs(<liquid:steel> * 144)
  .outputs([<extracells:storage.component:3>])
  .duration(400).EUt(491520).buildAndRegister();

// 256k Fluid Component
assembler.recipeBuilder()
  .inputs([<ore:circuitZpm> * 4, <ore:plateNaquadahAlloy> * 4, <ore:dustNetherQuartz> * 16, <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:8>])
  .duration(200).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:24>, <ore:circuitZpm> * 4, <appliedenergistics2:material:57> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:8>])
  .duration(400).EUt(122880).buildAndRegister();

// 1024k Fluid Component
assembler.recipeBuilder()
  .inputs([<ore:circuitZpm> * 4, <ore:plateAmericium> * 4, <ore:dustNetherQuartz> * 16, <appliedenergistics2:material:24>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:9>])
  .duration(200).EUt(122880).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:24>,<ore:circuitZpm> * 4,<extracells:storage.component:8> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:9>])
  .duration(400).EUt(122880).buildAndRegister();

// 4096k Fluid Component
assembler.recipeBuilder()
  .inputs([<ore:circuitUv> * 4, <ore:plateDarmstadtium> * 4, <ore:dustNetherQuartz> * 32, <appliedenergistics2:material:23>])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:10>])
  .duration(200).EUt(491520).buildAndRegister();
assembler.recipeBuilder()
  .inputs([<appliedenergistics2:material:23>, <ore:circuitUv> * 4, <extracells:storage.component:9> * 4])
  .fluidInputs(<liquid:stainless_steel> * 144)
  .outputs([<extracells:storage.component:10>])
  .duration(400).EUt(491520).buildAndRegister();

// 256k Storage Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:0>, <extracells:storage.component:0>])
  .outputs([<extracells:storage.physical:0>])
  .duration(10).EUt(7).buildAndRegister();

// 1024k Storage Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:0>, <extracells:storage.component:1>])
  .outputs([<extracells:storage.physical:1>])
  .duration(10).EUt(7).buildAndRegister();

// 4096k Storage Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:0>, <extracells:storage.component:2>])
  .outputs([<extracells:storage.physical:2>])
  .duration(10).EUt(7).buildAndRegister();

// 16384k Storage Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:0>, <extracells:storage.component:3>])
  .outputs([<extracells:storage.physical:3>])
  .duration(10).EUt(7).buildAndRegister();

// 256k Fluid Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:1>, <extracells:storage.component:8>])
  .outputs([<extracells:storage.fluid:4>])
  .duration(10).EUt(7).buildAndRegister();

// 1024k Fluid Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:1>, <extracells:storage.component:9>])
  .outputs([<extracells:storage.fluid:5>])
  .duration(10).EUt(7).buildAndRegister();

// 4096k Fluid Cell
packer.recipeBuilder()
  .inputs([<extracells:storage.casing:1>, <extracells:storage.component:10>])
  .outputs([<extracells:storage.fluid:6>])
  .duration(10).EUt(7).buildAndRegister();

// ME Ore Dictionary Storage Bus
// recipes.addShapeless("oredict_storage_bus", <extracells:part.base:12>,
//   [<appliedenergistics2:part:220>, <metaitem:ore_dictionary_filter>]);

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
  .duration(200).EUt(480).buildAndRegister();

// ME Drive Fixture
recipes.addShaped("tfg/extracells/me_drive_fixture", <extracells:part.base:7>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);

// ME Energy Cell Fixture
recipes.addShaped("tfg/extracells/me_energy_cell_fixture", <extracells:part.base:8>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
  [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
  [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]]);

// Obsidian ME Drive
recipes.addShaped("tfg/extracells/obsidian_me_drive", <extracells:hardmedrive>, [
  [<ore:plateObsidian>, <ore:ae2.cable.dense.covered>, <ore:plateObsidian>],
  [<ore:plateObsidian>, <appliedenergistics2:drive>, <ore:plateObsidian>],
  [<ore:plateObsidian>, <minecraft:obsidian>, <ore:plateObsidian>]]);