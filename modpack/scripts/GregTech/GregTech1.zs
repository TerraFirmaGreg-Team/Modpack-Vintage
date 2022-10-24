# GregTech1

import crafttweaker.item.IItemStack;

print("Initializing 'GregTech1'...");


// Крафты с таблицами материалов 
// Крафт оголовий кос из грега в лазерном гравере
for i, GTtoolHeadSense in GTtoolHeadSense {
laser_engraver.recipeBuilder()
    	.inputs([GTtoolHeadPickaxe[i]])
	.notConsumable(<ore:craftingLensGlass>)
    	.outputs(GTtoolHeadSense)
    	.duration(10 * 20)
	.EUt(32)
	.buildAndRegister();
}

// Крафт оголовий кос из грега в верстаке
for i, GTtoolHeadSense in GTtoolHeadSense {
recipes.addShapeless(GTtoolHeadSense, 
	[GTtoolHeadPickaxe[i], <ore:craftingToolFileEmptyTag>]);
}

// Крафт шахтерских молотов из грега в сборщике
for i, GTtoolMiningHammer in GTtoolMiningHammer {
assembler.recipeBuilder()
    	.inputs([GTtoolHeadHammer[i] * 2, <ore:stickWood>])
    	.outputs(GTtoolMiningHammer)
    	.duration(25 * 20)
	.EUt(64)
	.buildAndRegister();
}

// Крафт слитков в плавильне
for i, Greg_metl_ingot in Greg_metl_ingot {
alloy_smelter.recipeBuilder()
    .inputs(Greg_metl_dust[i])
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(Greg_metl_ingot)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
}

// Переработка камня из ТФК в пыль в дробителе
for i, TFC_RockDust in TFC_RockDust {
macerator.recipeBuilder()
    .inputs(TFC_Raws[i])
    .outputs(TFC_RockDust)
    .chancedOutput(TFC_RockDust, 1000, 250)
    .duration(7.5 * 20)
    .EUt(2)
    .buildAndRegister();
// Переработка булыжника из ТФК в пыль в дробителе
macerator.recipeBuilder()
    .inputs(TFC_Cobbles[i])
    .outputs(TFC_RockDust)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();
}

// Переработка слитков и пластин из ТФК в пыль в дробителе
// Переработка слитков 
for i, Greg_DustIngot in Greg_DustIngot {
macerator.recipeBuilder()
    .inputs(TFC_Ingot[i])
    .outputs(Greg_DustIngot)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Переработка двойных слитков
macerator.recipeBuilder()
    .inputs(TFC_DoubleIngot[i])
    .outputs(Greg_DustIngot * 2)
    .duration(8 * 20)
    .EUt(16)
    .buildAndRegister();
// Переработка пластин
macerator.recipeBuilder()
    .inputs(TFC_Sheet[i])
    .outputs(Greg_DustIngot)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Переработка двойных пластин
macerator.recipeBuilder()
    .inputs(TFC_DoubleSheet[i])
    .outputs(Greg_DustIngot * 2)
    .duration(8 * 20)
    .EUt(16)
    .buildAndRegister();
}

// Переработка наковален из ТФК в пыль в дробителе
for i, Greg_DustAnvil in Greg_DustAnvil {
macerator.recipeBuilder()
    .inputs(TFC_Anvil[i])
    .outputs(Greg_DustAnvil * 14)
    .duration(25 * 20)
    .EUt(24)
    .buildAndRegister();
}

// Удаление крафтов получения метана в центрифуге
<recipemap:centrifuge>.findRecipe(5, [<minecraft:fish:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:golden_apple:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:beetroot:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:mushroom_stew:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:fish:3>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:apple:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:1>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:beef:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:rotten_flesh:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:porkchop:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:mutton:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:4>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:melon:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_fish:1>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:honeyed_slice:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:honey_pot:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:fish:1>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_mutton:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:golden_apple:1>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:baked_potato:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_porkchop:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:beetroot_soup:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:chorus_fruit:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:bread:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:rabbit_stew:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:2>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:poisonous_potato:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:5>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:pumpkin_pie:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_chicken:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:golden_carrot:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:fish:2>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:carrot:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:rabbit:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_beef:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:chicken:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:nether_wart:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:spider_eye:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:ambrosia:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:3>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_fish:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:potato:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cooked_rabbit:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<forestry:fruits:6>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:cookie:0>], null).remove();

// Получение воздуха незера
<recipemap:gas_collector>.findRecipe(64, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
gas_collector.recipeBuilder()
    .circuit(2)
    .fluidOutputs([<liquid:nether_air> * 1000])
    .property("dimension", 0)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();
// Получение воздуха энда
<recipemap:gas_collector>.findRecipe(256, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
gas_collector.recipeBuilder()
    .circuit(3)
    .fluidOutputs([<liquid:ender_air> * 1000])
    .property("dimension", 0)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// Удаление старого крафта
// Квантовопроцессорный мейнфрейм * 1
<recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:tin> * 576]).remove();
// Квантовопроцессорный мейнфрейм * 1
<recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.advanced_smd.inductor> * 6, <metaitem:component.advanced_smd.capacitor> * 12, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:soldering_alloy> * 288]).remove();
// Квантовопроцессорный мейнфрейм * 1
<recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.smd.inductor> * 24, <metaitem:component.smd.capacitor> * 48, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:tin> * 576]).remove();
// Квантовопроцессорный мейнфрейм * 1
<recipemap:circuit_assembler>.findRecipe(7680, [<metaitem:frameHssg> * 2, <metaitem:circuit.quantum_computer> * 2, <metaitem:component.smd.inductor> * 24, <metaitem:component.smd.capacitor> * 48, <metaitem:plate.random_access_memory> * 24, <metaitem:wireGtSingleAnnealedCopper> * 48], [<liquid:soldering_alloy> * 288]).remove();

// Новый крафт квантового процессорного мейнфрейма
circuit_assembler.recipeBuilder()
    .inputs(<ore:frameGtHssg> * 2, <gregtech:meta_item_1:638> * 2, <gregtech:meta_item_1:532> * 6, <gregtech:meta_item_1:530> * 12, <gregtech:meta_item_1:592> * 24, <ore:wireGtDoubleAnnealedCopper> * 24)
    .fluidInputs([<liquid:tin> * 576])
    .outputs(<gregtech:meta_item_1:639>)
    .duration(20 * 20)
    .EUt(7680)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:frameGtHssg> * 2, <gregtech:meta_item_1:638> * 2, <gregtech:meta_item_1:532> * 6, <gregtech:meta_item_1:530> * 12, <gregtech:meta_item_1:592> * 24, <ore:wireGtDoubleAnnealedCopper> * 24)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:639>)
    .duration(20 * 20)
    .EUt(7680)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:frameGtHssg> * 2, <gregtech:meta_item_1:638> * 2, <gregtech:meta_item_1:527> * 24, <gregtech:meta_item_1:525> * 48, <gregtech:meta_item_1:592> * 24, <ore:wireGtDoubleAnnealedCopper> * 24)
    .fluidInputs([<liquid:tin> * 576])
    .outputs(<gregtech:meta_item_1:639>)
    .duration(20 * 20)
    .EUt(7680)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:frameGtHssg> * 2, <gregtech:meta_item_1:638> * 2, <gregtech:meta_item_1:527> * 24, <gregtech:meta_item_1:525> * 48, <gregtech:meta_item_1:592> * 24, <ore:wireGtDoubleAnnealedCopper> * 24)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<gregtech:meta_item_1:639>)
    .duration(20 * 20)
    .EUt(7680)
    .buildAndRegister();


print("Initialized 'GregTech1'");