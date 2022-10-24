# Immersive Engineering

import mods.immersiveengineering.DieselHandler;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.AlloySmelter;
import crafttweaker.item.IItemStack;

print("Initializing 'Immersive Engineering'...");


// Удаление рецептов из NEI без подписи снизу
var items = [<immersiveengineering:material:1>, <immersiveengineering:material:2>, <immersiveengineering:material:3>, <immersiveengineering:metal:33>, <immersiveengineering:metal:30>, <immersiveengineering:metal:34>, <immersiveengineering:metal:37>, <immersiveengineering:metal:38>, <immersiveengineering:metal:39>, <immersiveengineering:metal:40>, <immersiveengineering:metal:31>, <immersiveengineering:metal:35>, <immersiveengineering:metal:32>, <immersiveengineering:metal:36>, <immersiveengineering:metal:15>, <immersiveengineering:metal:6>, <immersiveengineering:metal:26>, <immersiveengineering:storage:6>, <immersiveengineering:storage_slab:6>, <immersiveengineering:storage:7>, <immersiveengineering:storage:5>, <immersiveengineering:storage:4>, <immersiveengineering:storage:3>, <immersiveengineering:storage:2>, <immersiveengineering:storage:1>, <immersiveengineering:storage>, <immersiveengineering:wooden_device0:4>, <immersiveengineering:stone_decoration:3>, <immersiveengineering:storage_slab:7>, <immersiveengineering:storage_slab:5>, <immersiveengineering:storage_slab:4>, <immersiveengineering:storage_slab:3>, <immersiveengineering:storage_slab:2>, <immersiveengineering:storage_slab:1>, <immersiveengineering:storage_slab>, <immersiveengineering:sheetmetal:6>, <immersiveengineering:sheetmetal_slab:6>, <immersiveengineering:material:17>, <immersiveengineering:material:6>, <immersiveengineering:material:25>, <immersiveengineering:material:24>, <immersiveengineering:metal:5>, <immersiveengineering:metal:4>, <immersiveengineering:metal:3>, <immersiveengineering:metal:2>, <immersiveengineering:metal:1>, <immersiveengineering:metal:8>, <immersiveengineering:metal:7>, <immersiveengineering:metal>, <immersiveengineering:metal:18>, <immersiveengineering:metal:17>, <immersiveengineering:metal:16>, <immersiveengineering:metal:14>, <immersiveengineering:metal:13>, <immersiveengineering:metal:12>, <immersiveengineering:metal:11>, <immersiveengineering:metal:10>, <immersiveengineering:metal:9>, <immersiveengineering:metal:19>, <immersiveengineering:metal:29>, <immersiveengineering:metal:28>, <immersiveengineering:metal:27>, <immersiveengineering:metal:25>, <immersiveengineering:metal:24>, <immersiveengineering:metal:23>, <immersiveengineering:metal:22>, <immersiveengineering:metal:21>, <immersiveengineering:metal:20>, <immersiveengineering:steel_armor_head>, <immersiveengineering:steel_armor_chest>, <immersiveengineering:steel_armor_legs>, <immersiveengineering:steel_armor_feet>, <immersiveengineering:wooden_device0>, <immersiveengineering:wooden_device0:5>, <immersiveengineering:material:20>, <immersiveengineering:material:21>, <immersiveengineering:material:22>, <immersiveengineering:pickaxe_steel>, <immersiveengineering:shovel_steel>, <immersiveengineering:axe_steel>, <immersiveengineering:hoe_steel>, <immersiveengineering:sword_steel>, <immersiveengineering:toolbox>, <immersiveengineering:material:23>, <immersiveengineering:metal_device1:13>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

//Удаление рецептов
global ItemsToRemoveIE as IItemStack[] = [
	<immersiveengineering:wooden_device0:3>,
	<immersiveengineering:wooden_device0:7>,
	<immersiveengineering:wooden_device0:6>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:metal_decoration0:4>,
	<immersiveengineering:metal_decoration0:5>,
	<immersiveengineering:metal_device1:2>,
	<immersiveengineering:metal_decoration0:7>,
	<immersiveengineering:metal_decoration2:4>,
	<immersiveengineering:metal_device0>,
	<immersiveengineering:connector>,
	<immersiveengineering:connector:1>,
	<immersiveengineering:connector:2>,
	<immersiveengineering:connector:3>,
	<immersiveengineering:connector:4>,
	<immersiveengineering:connector:5>,
	<immersiveengineering:connector:12>,
	<immersiveengineering:metal_device0:1>,
	<immersiveengineering:metal_device0:2>,
	<immersiveengineering:material:8>,
	<immersiveengineering:material:9>,
	<immersiveengineering:tool:2>,
	<immersiveengineering:graphite_electrode>,
	<immersiveengineering:fluorescent_tube>,
	<immersiveengineering:stone_decoration:8>,
	<immersiveengineering:connector:6>,
	<immersiveengineering:metal_device1:4>,
	<immersiveengineering:wooden_device0:2>,
	<immersiveengineering:wooden_device1:1>,
	<immersiveengineering:wooden_device1>,
	<immersiveengineering:cloth_device>,
	<immersiveengineering:cloth_device:1>,
	<immersiveengineering:cloth_device:2>,
	<immersiveengineering:sheetmetal>,
	<immersiveengineering:sheetmetal:1>,
	<immersiveengineering:sheetmetal:2>,
	<immersiveengineering:sheetmetal:3>,
	<immersiveengineering:sheetmetal:4>,
	<immersiveengineering:sheetmetal:5>,
	<immersiveengineering:sheetmetal:7>,
	<immersiveengineering:sheetmetal:8>,
	<immersiveengineering:sheetmetal:9>,
	<immersiveengineering:sheetmetal:10>,
	<immersiveengineering:metal_decoration0>,
	<immersiveengineering:metal_decoration0:1>,
	<immersiveengineering:metal_decoration0:2>,
	<immersiveengineering:metal_decoration1:1>,
	<immersiveengineering:metal_decoration1:4>,
	<immersiveengineering:metal_decoration1:5>,
	<immersiveengineering:connector:7>,
	<immersiveengineering:connector:8>,
	<immersiveengineering:connector:9>,
	<immersiveengineering:connector:10>,
	<immersiveengineering:connector:11>,
	<immersiveengineering:metal_device0:5>,
	<immersiveengineering:metal_device1:1>,
	<immersiveengineering:metal_device1:3>,
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
	<immersiveengineering:metal_device1:6>,
	<immersiveengineering:metal_device1:8>,
	<immersiveengineering:metal_device1:9>,
	<immersiveengineering:metal_device1:5>,
	<immersiveengineering:metal_decoration2:5>,
	<immersiveengineering:material:13>,
	<immersiveengineering:wirecoil>,
	<immersiveengineering:wirecoil:1>,
	<immersiveengineering:wirecoil:2>,
	<immersiveengineering:wirecoil:3>,
	<immersiveengineering:wirecoil:4>,
	<immersiveengineering:wirecoil:5>,
	<immersiveengineering:wirecoil:6>,
	<immersiveengineering:wirecoil:7>,
	<immersiveengineering:faraday_suit_feet>,
	<immersiveengineering:faraday_suit_legs>,	
	<immersiveengineering:faraday_suit_chest>,
	<immersiveengineering:faraday_suit_head>,
	<immersiveengineering:connector:13>,
	<immersiveengineering:material:19>,
	<immersiveengineering:metal_decoration0:6>,
	<immersiveengineering:stone_decoration:2>,
	<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
	<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}),
	<immersiveengineering:blueprint>.withTag({blueprint: "molds"})
] as IItemStack[];
for item in ItemsToRemoveIE{
    recipes.remove(item);
}

// Удаление рецептов крафтов некоторых форм из верстака по названию
recipes.removeByRecipeName("immersiveengineering:material/string");

// Удаление рецептов из плавильни
AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<gregtech:meta_ingot:287>);
AlloySmelter.removeRecipe(<gregtech:meta_ingot:260>);
AlloySmelter.removeRecipe(<gregtech:meta_ingot:259>);
AlloySmelter.removeRecipe(<gregtech:meta_ingot:2517>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.removeRecipe(<forestry:ingot_bronze>);
AlloySmelter.removeRecipe(<tfc:metal/ingot/brass>);

// Удаление рецептов из верстака инженера
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.removeRecipe(<immersiveengineering:material:26>);

// Удаление рецептов из доменной печи
BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

// Удаление топлива доменной печи
BlastFurnace.removeFuel(<immersiveengineering:stone_decoration:3>);
BlastFurnace.removeFuel(<immersiveengineering:material:6>);

// Удаление рецептов из коксовой печи
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
CokeOven.removeRecipe(<minecraft:coal:1>);

// Удаление рецептов из ферментера
Fermenter.removeFluidRecipe(<liquid:ethanol>);

// Удаление рецептов из маслобойни
Squeezer.removeFluidRecipe(<liquid:plantoil>);
Squeezer.removeFluidRecipe(<liquid:for.honey>);

// Удаление рецептов из очистительного завода
Refinery.removeRecipe(<liquid:biodiesel>);

// Удаление рецептов из смесителя
Mixer.removeRecipe(<liquid:napalm>);

// Удаление рецептов из металлического пресса
MetalPress.removeRecipe(<minecraft:bone_block>);
MetalPress.removeRecipe(<immersiveengineering:metal:36>);
MetalPress.removeRecipe(<immersiveengineering:material:20>);
MetalPress.removeRecipe(<immersiveengineering:material:21>);
MetalPress.removeRecipe(<immersiveengineering:material:22>);
MetalPress.removeRecipe(<immersiveengineering:material:23>);
MetalPress.removeRecipe(<immersiveengineering:metal:40>);
MetalPress.removeRecipe(<immersiveengineering:metal:39>);
MetalPress.removeRecipe(<immersiveengineering:metal:38>);
MetalPress.removeRecipe(<immersiveengineering:metal:37>);
MetalPress.removeRecipe(<immersiveengineering:metal:35>);
MetalPress.removeRecipe(<immersiveengineering:metal:32>);
MetalPress.removeRecipe(<immersiveengineering:metal:30>);
MetalPress.removeRecipe(<immersiveengineering:metal:34>);
MetalPress.removeRecipe(<immersiveengineering:metal:33>);
MetalPress.removeRecipe(<immersiveengineering:metal:31>);
MetalPress.removeRecipe(<tfctech:metal/pig_iron_wire>);
MetalPress.removeRecipe(<tfctech:metal/red_steel_wire>);
MetalPress.removeRecipe(<tfctech:metal/rose_gold_wire>);
MetalPress.removeRecipe(<tfctech:metal/zinc_wire>);
MetalPress.removeRecipe(<tfctech:metal/gold_wire>);
MetalPress.removeRecipe(<tfctech:metal/platinum_wire>);
MetalPress.removeRecipe(<tfctech:metal/silver_wire>);
MetalPress.removeRecipe(<tfctech:metal/blue_steel_wire>);
MetalPress.removeRecipe(<tfctech:metal/bronze_wire>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_wire>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_bronze_wire>);
MetalPress.removeRecipe(<tfctech:metal/sterling_silver_wire>);
MetalPress.removeRecipe(<tfctech:metal/lead_wire>);
MetalPress.removeRecipe(<tfctech:metal/brass_wire>);
MetalPress.removeRecipe(<tfctech:metal/black_steel_wire>);
MetalPress.removeRecipe(<tfctech:metal/black_bronze_wire>);
MetalPress.removeRecipe(<tfctech:metal/wrought_iron_wire>);
MetalPress.removeRecipe(<tfctech:metal/tin_wire>);
MetalPress.removeRecipe(<tfctech:metal/nickel_wire>);
MetalPress.removeRecipe(<tfctech:metal/zinc_gear>);
MetalPress.removeRecipe(<tfctech:metal/rose_gold_gear>);
MetalPress.removeRecipe(<tfctech:metal/black_bronze_gear>);
MetalPress.removeRecipe(<tfctech:metal/wrought_iron_gear>);
MetalPress.removeRecipe(<tfctech:metal/black_steel_gear>);
MetalPress.removeRecipe(<tfctech:metal/gold_gear>);
MetalPress.removeRecipe(<tfctech:metal/platinum_gear>);
MetalPress.removeRecipe(<tfctech:metal/silver_gear>);
MetalPress.removeRecipe(<tfctech:metal/nickel_gear>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_bronze_gear>);
MetalPress.removeRecipe(<tfctech:metal/sterling_silver_gear>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_gear>);
MetalPress.removeRecipe(<tfctech:metal/lead_gear>);
MetalPress.removeRecipe(<tfctech:metal/brass_gear>);
MetalPress.removeRecipe(<tfctech:metal/blue_steel_gear>);
MetalPress.removeRecipe(<tfctech:metal/steel_gear>);
MetalPress.removeRecipe(<tfctech:metal/red_steel_gear>);
MetalPress.removeRecipe(<tfctech:metal/pig_iron_gear>);
MetalPress.removeRecipe(<tfctech:metal/brass_rod>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_rod>);
MetalPress.removeRecipe(<tfctech:metal/tin_rod>);
MetalPress.removeRecipe(<tfctech:metal/black_steel_rod>);
MetalPress.removeRecipe(<tfctech:metal/gold_rod>);
MetalPress.removeRecipe(<tfctech:metal/wrought_iron_rod>);
MetalPress.removeRecipe(<tfctech:metal/platinum_rod>);
MetalPress.removeRecipe(<tfctech:metal/blue_steel_rod>);
MetalPress.removeRecipe(<tfctech:metal/black_bronze_rod>);
MetalPress.removeRecipe(<tfctech:metal/copper_rod>);
MetalPress.removeRecipe(<tfctech:metal/bismuth_bronze_rod>);
MetalPress.removeRecipe(<tfctech:metal/silver_rod>);
MetalPress.removeRecipe(<tfctech:metal/pig_iron_rod>);
MetalPress.removeRecipe(<tfctech:metal/nickel_rod>);
MetalPress.removeRecipe(<tfctech:metal/sterling_silver_rod>);
MetalPress.removeRecipe(<tfctech:metal/rose_gold_rod>);
MetalPress.removeRecipe(<tfctech:metal/bronze_rod>);
MetalPress.removeRecipe(<tfctech:metal/red_steel_rod>);
MetalPress.removeRecipe(<forestry:gear_bronze>);
MetalPress.removeRecipe(<forestry:gear_copper>);
MetalPress.removeRecipe(<forestry:gear_tin>);
MetalPress.removeRecipe(<immersiveengineering:material:1>);
MetalPress.removeRecipe(<immersiveengineering:material:2>);
MetalPress.removeRecipe(<immersiveengineering:material:3>);
MetalPress.removeRecipe(<tfctech:metal/zinc_rod>);
MetalPress.removeRecipe(<tfctech:metal/lead_rod>);

// Удаление рецептов из дуговой печи
ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:6>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
ArcFurnace.removeRecipe(<forestry:ingot_bronze>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/brass>);
ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
ArcFurnace.removeRecipe(<immersiveengineering:metal>);
ArcFurnace.removeRecipe(<forestry:ingot_tin>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/pig_iron>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/red_steel>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/zinc>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/black_bronze>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/black_steel>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/platinum>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/bismuth>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/wrought_iron>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/bismuth_bronze>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/sterling_silver>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/blue_steel>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
ArcFurnace.removeRecipe(<immersiveengineering:material:19>);
ArcFurnace.removeRecipe(<tfc:metal/ingot/rose_gold>);

// Удаление рецептов из дробителя
Crusher.removeRecipe(<minecraft:gravel>);
Crusher.removeRecipe(<minecraft:sand>);
Crusher.removeRecipe(<minecraft:blaze_powder>);
Crusher.removeRecipe(<immersiveengineering:material:17>);
Crusher.removeRecipe(<immersiveengineering:metal:9>);
Crusher.removeRecipe(<immersiveengineering:metal:10>);
Crusher.removeRecipe(<immersiveengineering:metal:11>);
Crusher.removeRecipe(<immersiveengineering:metal:12>);
Crusher.removeRecipe(<immersiveengineering:metal:13>);
Crusher.removeRecipe(<immersiveengineering:metal:14>);
Crusher.removeRecipe(<immersiveengineering:metal:15>);
Crusher.removeRecipe(<immersiveengineering:metal:16>);
Crusher.removeRecipe(<immersiveengineering:metal:17>);
Crusher.removeRecipe(<immersiveengineering:metal:19>);
Crusher.removeRecipe(<immersiveengineering:material:24>);
Crusher.removeRecipe(<immersiveengineering:material:25>);
Crusher.removeRecipe(<minecraft:dye:4>);
Crusher.removeRecipe(<minecraft:quartz>);
Crusher.removeRecipe(<minecraft:diamond>);
Crusher.removeRecipe(<minecraft:redstone>);
Crusher.removeRecipe(<minecraft:emerald>);
Crusher.removeRecipe(<appliedenergistics2:material:3>);
Crusher.removeRecipe(<tfc:powder/kaolinite>);
Crusher.removeRecipe(<tfc:powder/graphite>);
Crusher.removeRecipe(<tfc:powder/lapis_lazuli>);
Crusher.removeRecipe(<forestry:apatite>);
Crusher.removeRecipe(<tfc:metal/dust/bismuth>);
Crusher.removeRecipe(<tfc:metal/dust/bismuth_bronze>);
Crusher.removeRecipe(<tfc:metal/dust/black_bronze>);
Crusher.removeRecipe(<tfc:metal/dust/brass>);
Crusher.removeRecipe(<tfc:metal/dust/bronze>);
Crusher.removeRecipe(<tfc:metal/dust/rose_gold>);
Crusher.removeRecipe(<tfc:metal/dust/tin>);
Crusher.removeRecipe(<tfc:metal/dust/sterling_silver>);
Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
Crusher.removeRecipe(<tfc:metal/dust/pig_iron>);
Crusher.removeRecipe(<tfc:metal/dust/platinum>);
Crusher.removeRecipe(<tfc:metal/dust/black_steel>);
Crusher.removeRecipe(<tfc:metal/dust/zinc>);
Crusher.removeRecipe(<tfc:metal/dust/blue_steel>);
Crusher.removeRecipe(<tfc:metal/dust/red_steel>);
Crusher.removeRecipe(<immersiveengineering:metal:18>);
Crusher.removeRecipe(<minecraft:coal>);

// Рецепты в плавильне
AlloySmelter.addRecipe(<metaitem:ingotRedAlloy>, <ore:dustCopper>, <minecraft:redstone> * 4, 1200);
AlloySmelter.addRecipe(<metaitem:ingotRedAlloy>, <ore:ingotCopper>, <minecraft:redstone> * 4, 1200);
AlloySmelter.addRecipe(<metaitem:ingotElectrum> * 2, <ore:dustGold>, <ore:dustSilver>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotElectrum> * 2, <ore:ingotGold>, <ore:ingotSilver>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotInvar> * 3, <ore:dustWroughtIron> * 2, <ore:dustNickel>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotInvar> * 3, <ore:ingotWroughtIron> * 2, <ore:ingotNickel>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotBronze> * 4, <ore:dustCopper> * 3, <ore:dustTin>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotBronze> * 4, <ore:ingotCopper> * 3, <ore:ingotTin>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotBrass> * 4, <ore:dustCopper> * 3, <ore:dustZinc>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotBrass> * 4, <ore:ingotCopper> * 3, <ore:ingotZinc>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotTinAlloy> * 2, <ore:dustWroughtIron>, <ore:dustTin>, 1800);
AlloySmelter.addRecipe(<metaitem:ingotTinAlloy> * 2, <ore:ingotWroughtIron>, <ore:ingotTin>, 1800);
AlloySmelter.addRecipe(<metaitem:dustRubber>, <ore:dustRawRubber> * 3, <ore:dustSulfur>, 600);
AlloySmelter.addRecipe(<metaitem:dustRubber>, <ore:dustRawRubber>, <tfctech:latex/vulcanizing_agents>, 400);
AlloySmelter.addRecipe(<tfc:metal/ingot/pig_iron>, <tfc:metal/ingot/wrought_iron>, <ore:dustFlux> * 2, 1800);
AlloySmelter.addRecipe(<tfc:metal/ingot/high_carbon_black_steel> * 2, <tfc:metal/ingot/weak_steel>, <tfc:metal/ingot/pig_iron>, 3600);
AlloySmelter.addRecipe(<tfc:metal/ingot/high_carbon_blue_steel> * 2, <tfc:metal/ingot/weak_blue_steel>, <tfc:metal/ingot/black_steel>, 4800);
AlloySmelter.addRecipe(<tfc:metal/ingot/high_carbon_red_steel> * 2, <tfc:metal/ingot/weak_red_steel>, <tfc:metal/ingot/black_steel>, 4800);

// Рецепты в доменной печи
// Получение слитка ВОП-графита
BlastFurnace.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>, 6000);
BlastFurnace.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/wrought_iron>, 3600);
BlastFurnace.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <metaitem:ingotWroughtIron>, 3600);
BlastFurnace.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>, 1200);
BlastFurnace.addRecipe(<tfc:metal/ingot/black_steel>, <tfc:metal/ingot/high_carbon_black_steel>, 1800);
BlastFurnace.addRecipe(<tfc:metal/ingot/blue_steel>, <tfc:metal/ingot/high_carbon_blue_steel>, 2400);
BlastFurnace.addRecipe(<tfc:metal/ingot/red_steel>, <tfc:metal/ingot/high_carbon_red_steel>, 2400);

// Регистрация топлива для доменной печи
BlastFurnace.addFuel(<ore:gemLignite>, 360);
BlastFurnace.addFuel(<tfc:ore/bituminous_coal>, 420);
BlastFurnace.addFuel(<minecraft:coal>, 420);
BlastFurnace.addFuel(<ore:blockCoal>, 4200);
BlastFurnace.addFuel(<ore:gemCoke>, 840);
BlastFurnace.addFuel(<ore:blockCoke>, 8400);

// Рецепты в дуговой печи
// Получение слитка ВОП-графита
ArcFurnace.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>, null, 400, 2048);
ArcFurnace.addRecipe(<metaitem:ingotSteel>, <ore:ingotWroughtIron>, null, 400, 2048);
// Рецепты с таблицами матриалов (выплавка металлов в дуговой печи)
for i, Greg_metl_ingot in Greg_metl_ingot {
ArcFurnace.addRecipe(Greg_metl_ingot, Greg_metl_dust[i], null, 300, 512);
}

// Рецепты в коксовой печи
CokeOven.addRecipe(<minecraft:coal:1>, 150, <ore:logWood>, 1800);
CokeOven.addRecipe(<metaitem:gemCoke>, 350, <tfc:ore/bituminous_coal>, 1800);
CokeOven.addRecipe(<metaitem:gemCoke>, 350, <minecraft:coal>, 1800);
CokeOven.addRecipe(<metaitem:blockCoke>, 3500, <ore:blockCoal>, 16200);

// Рецепты в маслобойне
Squeezer.addRecipe(null, <liquid:seed.oil> * 15, <tfc:food/wheat_grain>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 10, <tfc:food/rye_grain>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 10, <tfc:food/oat_grain>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 10, <tfc:food/barley_grain>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 20, <tfc:food/maize_grain>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 25, <tfc:food/olive_paste>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 7, <minecraft:melon_seeds>, 512);
Squeezer.addRecipe(null, <liquid:seed.oil> * 7, <minecraft:pumpkin_seeds>, 512);

// Рецепты в ферментере
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/green_apple>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/red_apple>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/lemon>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/orange>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/banana>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/peach>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/plum>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/beet>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/cabbage>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/carrot>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/garlic>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/green_bean>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/green_bell_pepper>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/onion>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/potato>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/red_bell_pepper>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/seaweed>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/soybean>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/squash>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/tomato>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/yellow_bell_pepper>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/barley>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/maize>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/oat>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/rice>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/rye>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 150, <tfc:food/wheat>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/blackberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/blueberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/bunch_berry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/cherry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/cloud_berry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/cranberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/elderberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/gooseberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/olive>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/raspberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/snow_berry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/strawberry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <tfc:food/wintergreen_berry>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <ca:tea_leaves>, 512);
Fermenter.addRecipe(null, <liquid:biomass> * 100, <ca:coffee_cherries>, 512);

// Рецепты в очистительном заводе
Refinery.addRecipe(<liquid:ethanol> * 60, <liquid:biomass> * 50, <liquid:biomass> * 50, 512);
Refinery.addRecipe(<liquid:biodiesel> * 20, <liquid:ethanol> * 10, <liquid:seed.oil> * 10, 512);
Refinery.addRecipe(<liquid:diesel> * 20, <liquid:oil> * 20, <liquid:oil> * 20, 512);
Refinery.addRecipe(<liquid:gasoline> * 20, <liquid:oil> * 20, <liquid:ethanol> * 10, 512);
Refinery.addRecipe(<liquid:lubricant> * 20, <liquid:creosote> * 20, <liquid:creosote> * 20, 512);

// Рецепты в смесителе
Mixer.addRecipe(<liquid:water> * 1000, <liquid:fresh_water> * 1000, null, 512);
Mixer.addRecipe(<liquid:napalm> * 1000, <liquid:gasoline> * 1000, [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], 2048);

// Рецепты в металлическом прессе
// Провода
MetalPress.addRecipe(<tfctech:metal/copper_wire:1> * 2, <ore:ingotCopper>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/gold_wire:1> * 2, <ore:ingotGold>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/lead_wire:1> * 2, <ore:ingotLead>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/nickel_wire:1> * 2, <ore:ingotNickel>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/silver_wire:1> * 2, <ore:ingotSilver>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/tin_wire:1> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/steel_wire:1> * 2, <ore:ingotSteel>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/platinum_wire:1> * 2, <ore:ingotPlatinum>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<tfctech:metal/black_steel_wire:1> * 2, <ore:ingotBlackSteel>, <immersiveengineering:mold:4>, 128);
MetalPress.addRecipe(<metaitem:wireGtSingleRedAlloy> * 2, <ore:ingotRedAlloy>, <gregtech:meta_item_1:37>, 128);
// Шестерни
MetalPress.addRecipe(<metaitem:gearTin>, <ore:ingotTin> * 4, <immersiveengineering:mold:1>, 512);
MetalPress.addRecipe(<metaitem:gearInvar>, <ore:ingotInvar> * 4, <immersiveengineering:mold:1>, 512);
MetalPress.addRecipe(<metaitem:gearSteel>, <ore:ingotSteel> * 4, <immersiveengineering:mold:1>, 512);
MetalPress.addRecipe(<metaitem:gearBlackSteel>, <ore:ingotBlackSteel> * 4, <immersiveengineering:mold:1>, 512);
MetalPress.addRecipe(<metaitem:gearPotin>, <ore:ingotPotin> * 4, <immersiveengineering:mold:1>, 512);
MetalPress.addRecipe(<metaitem:gearBronze>, <ore:ingotBronze> * 4, <immersiveengineering:mold:1>, 512);
// Пластины
MetalPress.addRecipe(<metaitem:plateBismuth>, <ore:ingotBismuth>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBismuthBronze>, <ore:ingotBismuthBronze>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBronze>, <ore:ingotBronze>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBlackBronze>, <ore:ingotBlackBronze>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBrass>, <ore:ingotBrass>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateCopper>, <ore:ingotCopper>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateGold>, <ore:ingotGold>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateLead>, <ore:ingotLead>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateNickel>, <ore:ingotNickel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateRoseGold>, <ore:ingotRoseGold>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateSilver>, <ore:ingotSilver>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateTin>, <ore:ingotTin>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateZinc>, <ore:ingotZinc>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateSterlingSilver>, <ore:ingotSterlingSilver>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateWroughtIron>, <ore:ingotWroughtIron>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateIron>, <minecraft:iron_ingot>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateSteel>, <ore:ingotSteel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBlackSteel>, <ore:ingotBlackSteel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateRedSteel>, <ore:ingotRedSteel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateBlueSteel>, <ore:ingotBlueSteel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<tfc:metal/sheet/pig_iron>, <tfc:metal/ingot/pig_iron>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateElectrum>, <ore:ingotElectrum>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateTinAlloy>, <ore:ingotTinAlloy>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDamascusSteel>, <ore:ingotDamascusSteel>, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateRedAlloy>, <ore:ingotRedAlloy>, <immersiveengineering:mold>, 128);
// Двойные пластины
MetalPress.addRecipe(<metaitem:plateDoubleBismuth>, <ore:plateBismuth> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBismuthBronze>, <ore:plateBismuthBronze> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBronze>, <ore:plateBronze> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBlackBronze>, <ore:plateBlackBronze> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBrass>, <ore:plateBrass> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleCopper>, <ore:plateCopper> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleGold>, <ore:plateGold> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleLead>, <ore:plateLead> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleNickel>, <ore:plateNickel> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleRoseGold>, <ore:plateRoseGold> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleSilver>, <ore:plateSilver> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleTin>, <ore:plateTin> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleZinc>, <ore:plateZinc> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleSterlingSilver>, <ore:plateSterlingSilver> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleWroughtIron>, <ore:plateWroughtIron> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleIron>, <ore:plateIron> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleSteel>, <ore:plateSteel> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBlackSteel>, <ore:plateBlackSteel> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleRedSteel>, <ore:plateRedSteel> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleBlueSteel>, <ore:plateBlueSteel> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleElectrum>, <ore:plateElectrum> * 2, <immersiveengineering:mold>, 128);
MetalPress.addRecipe(<metaitem:plateDoubleTinAlloy>, <ore:plateTinAlloy> * 2, <immersiveengineering:mold>, 128);
// Пруты
MetalPress.addRecipe(<metaitem:stickCopper> * 2, <ore:ingotCopper>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickWroughtIron> * 2, <ore:ingotWroughtIron>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickGold> * 2, <ore:ingotGold>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickSteel> * 2, <ore:ingotSteel>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBlackSteel> * 2, <ore:ingotBlackSteel>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickElectrum> * 2, <ore:ingotElectrum>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBronze> * 2, <ore:ingotBronze>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBlackBronze> * 2, <ore:ingotBlackBronze>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBismuthBronze> * 2, <ore:ingotBismuthBronze>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBrass> * 2, <ore:ingotBrass>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickIron> * 2, <minecraft:iron_ingot>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickDamascusSteel> * 2, <ore:ingotDamascusSteel>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickRedSteel> * 2, <ore:ingotRedSteel>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickBlueSteel> * 2, <ore:ingotBlueSteel>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickTin> * 2, <ore:ingotTin>, <immersiveengineering:mold:2>, 128);
MetalPress.addRecipe(<metaitem:stickLead> * 2, <ore:ingotLead>, <immersiveengineering:mold:2>, 128);

// Рецепты в сборщике
// Сортировщик предметов
assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood> * 4, <minecraft:comparator> * 2, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 2, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}))
    .outputs(<immersiveengineering:wooden_device0:3>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:wooden_device0:3>, 
	[[<ore:plankTreatedWood>, <minecraft:comparator>, <ore:plankTreatedWood>], 
	[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}), <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})], 
	[<ore:plankTreatedWood>, <minecraft:comparator>, <ore:plankTreatedWood>]]);

// Сортировщик жидкостей
assembler.recipeBuilder()
    .inputs(<ore:plankTreatedWood> * 4, <immersiveengineering:material:8> * 2, <minecraft:comparator> * 2, <immersiveengineering:metal_device1:6>)
    .outputs(<immersiveengineering:wooden_device0:7>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:wooden_device0:7>, 
	[[<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>], 
	[<minecraft:comparator>, <immersiveengineering:metal_device1:6>, <minecraft:comparator>], 
	[<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]]);

// Поворотный стол
assembler.recipeBuilder()
    .inputs(<immersiveengineering:material:8> * 2, <ore:plankTreatedWood> * 2, <minecraft:redstone> * 2, <immersiveengineering:wirecoil>, <minecraft:repeater>, <immersiveengineering:metal_decoration0>)
    .outputs(<immersiveengineering:wooden_device0:6>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:wooden_device0:6>, 
	[[<minecraft:redstone>, <immersiveengineering:wirecoil>, <minecraft:redstone>], 
	[<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0>, <ore:plankTreatedWood>], 
	[<immersiveengineering:material:8>, <minecraft:repeater>, <immersiveengineering:material:8>]]);

// Краснокаменный инженерный блок
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 4, <immersiveengineering:material:8> * 2, <immersiveengineering:wirecoil> * 2, <minecraft:redstone_block>)
    .outputs(<immersiveengineering:metal_decoration0:3>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, 
	[[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], 
	[<immersiveengineering:wirecoil>, <minecraft:redstone_block>, <immersiveengineering:wirecoil>], 
	[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>]]);

// Легкий инженерный блок
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 4, <ore:plateCopper> * 2, <immersiveengineering:material:8> * 2, <ore:scaffoldingSteel>)
    .outputs(<immersiveengineering:metal_decoration0:4>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:metal_decoration0:4>, 
	[[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], 
	[<ore:plateCopper>, <ore:scaffoldingSteel>, <ore:plateCopper>], 
	[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>]]);

// Тяжелый инженерный блок
assembler.recipeBuilder()
    .inputs(<ore:plateBlackSteel> * 4, <ore:plateGold> * 2, <immersiveengineering:material:9> * 2, <immersiveengineering:metal_decoration0:4>)
    .outputs(<immersiveengineering:metal_decoration0:5>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, 
	[[<ore:plateBlackSteel>, <immersiveengineering:material:9>, <ore:plateBlackSteel>], 
	[<ore:plateGold>, <immersiveengineering:metal_decoration0:4>, <ore:plateGold>], 
	[<ore:plateBlackSteel>, <immersiveengineering:material:9>, <ore:plateBlackSteel>]]);

// Блок радиатора
assembler.recipeBuilder()
    .inputs(<ore:foilSteel> * 4, <ore:plateCopper> * 2, <minecraft:iron_bars> * 2, <minecraft:water_bucket> | <forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000}))
    .outputs(<immersiveengineering:metal_decoration0:7>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<immersiveengineering:metal_decoration0:7>, 
	[[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>], 
	[<minecraft:iron_bars>, <minecraft:water_bucket> | <forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000}), <minecraft:iron_bars>], 
	[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>]]);

// Фонарь
assembler.recipeBuilder()
    .inputs(<ore:stickSteel> * 4, <ore:plateSteel> * 2, <minecraft:glowstone>)
    .outputs(<immersiveengineering:metal_decoration2:4>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();
Blueprint.addRecipe("Device", <immersiveengineering:metal_decoration2:4>, [<minecraft:glowstone>, <ore:plateSteel> * 2, <ore:stickSteel> * 4]);

// Монтажная плата
assembler.recipeBuilder()
    .inputs(<ore:electronTube> * 2, <ore:wireGtSingleCopper> * 2, <ore:plateInvar>, <immersiveengineering:stone_decoration:8>)
    .outputs(<immersiveengineering:material:27>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [<immersiveengineering:stone_decoration:8>, <ore:plateInvar>, <ore:electronTube>, <ore:electronTube>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>]);

// Низковольтный коннектор
assembler.recipeBuilder()
    .inputs(<ore:stickCopper> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector>, [<ore:stickCopper> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Низковольтное реле
assembler.recipeBuilder()
    .inputs(<immersiveengineering:stone_decoration:8> * 2, <ore:stickCopper> * 2, <ore:stickWroughtIron>, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:1>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:1>, [<ore:stickCopper> * 2, <ore:stickWroughtIron>, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Средневольтный коннектор
assembler.recipeBuilder()
    .inputs(<ore:stickGold> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:2>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:2>, [<ore:stickGold> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Средневольтное реле
assembler.recipeBuilder()
    .inputs(<immersiveengineering:stone_decoration:8> * 2, <ore:stickGold> * 2, <ore:stickWroughtIron>, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:3>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:3>, [<ore:stickGold> * 2, <ore:stickWroughtIron>, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Высоковольтный коннектор
assembler.recipeBuilder()
    .inputs(<ore:stickSteel> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:4>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:4>, [<ore:stickSteel> * 3, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Высоковольтное реле
assembler.recipeBuilder()
    .inputs(<immersiveengineering:stone_decoration:8> * 2, <ore:stickSteel> * 2, <ore:stickWroughtIron>, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:5>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:5>, [<ore:stickSteel> * 2, <ore:stickWroughtIron>, <immersiveengineering:stone_decoration:8> * 2, <minecraft:hardened_clay>]);

// Краснокаменный коннектор
assembler.recipeBuilder()
    .inputs(<ore:stickElectrum> * 3, <ore:wireFineRedAlloy> * 2, <minecraft:hardened_clay>)
    .outputs(<immersiveengineering:connector:12>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:12>, [<ore:stickElectrum> * 3, <minecraft:redstone> * 2, <minecraft:hardened_clay>]);

// Доски из обработанного дерева
assembler.recipeBuilder()
    .inputs(<ore:plankWood>)
    .fluidInputs([<liquid:creosote> * 100])
    .outputs(<immersiveengineering:treated_wood>)
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Железный механический компонент
assembler.recipeBuilder()
    .inputs(<ore:ringIron> * 3, <ore:plateIron> * 2)
    .outputs(<immersiveengineering:material:8>)
    .duration(3 * 20)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:ringWroughtIron> * 3, <ore:plateWroughtIron> * 2)
    .outputs(<immersiveengineering:material:8>)
    .duration(3 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:plateIron>, <ore:plateIron>, <ore:ringIron>, <ore:ringIron>, <ore:ringIron>]);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:ringWroughtIron>, <ore:ringWroughtIron>, <ore:ringWroughtIron>]);

// Стальной механический компонент
assembler.recipeBuilder()
    .inputs(<ore:ringSteel> * 3, <ore:plateSteel> * 2)
    .outputs(<immersiveengineering:material:9>)
    .duration(3 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<ore:plateSteel>, <ore:plateSteel>, <ore:ringSteel>, <ore:ringSteel>, <ore:ringSteel>]);

// Флуоресцентная лампа
assembler.recipeBuilder()
    .inputs(<minecraft:glowstone_dust> * 8, <immersiveengineering:graphite_electrode>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<immersiveengineering:fluorescent_tube>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Строительный коннектор
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 3, <ore:ringSteel> * 2, <ore:stickSteel>)
    .outputs(<immersiveengineering:connector:6>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:connector:6>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:ringSteel>, <ore:ringSteel>, <ore:stickSteel>]);

// Электрический фонарь
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 2, <minecraft:glass>, <immersiveengineering:material:26>, <ore:wireGtSingleCopper>, <minecraft:redstone>, <immersiveengineering:material:9>)
    .outputs(<immersiveengineering:metal_device1:4>)
    .duration(15 * 20)
    .EUt(32)
    .buildAndRegister();
Blueprint.addRecipe("Device", <immersiveengineering:metal_device1:4>, [<minecraft:glass>, <immersiveengineering:material:26>, <ore:wireGtSingleCopper>, <minecraft:redstone>, <ore:plateSteel> * 2, <immersiveengineering:material:9>]);

// Рецепты хим. реактора 
// Стеклоизоляция
assembler.recipeBuilder()
    .inputs(<ore:dustRubber> * 2, <immersivepetroleum:material> * 2, <ore:dyeGreen> * 2, <ore:blockGlass>, <tfc:fire_clay_block>)
    .outputs(<immersiveengineering:stone_decoration:8>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
Blueprint.addRecipe("Connectors", <immersiveengineering:stone_decoration:8>, [<ore:blockGlass>, <tfc:fire_clay_block>, <ore:dyeGreen> * 2, <immersivepetroleum:material> * 2, <ore:dustRubber> * 2]);

// Рецепты доменной печи
// Графитовый электрод
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustGraphite> * 16, <ore:dustCarbon> * 8, <ore:stickDiamond>)
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<immersiveengineering:graphite_electrode>)
    .property("temperature", 3000)
    .duration(30 * 20)
    .EUt(128)
    .buildAndRegister();

// Рецепты в верстаке
// Верстак инженера
recipes.addShaped(<immersiveengineering:wooden_device0:2>, 
	[[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], 
	[<ore:chestWood>, <ore:workbench>, <immersiveengineering:wooden_decoration>]]);

// Ветряная мельница
recipes.addShaped(<immersiveengineering:wooden_device1:1>, 
	[[ <immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>], 
	[<immersiveengineering:material:11>, <ore:ringSteel>, <immersiveengineering:material:11>], 
	[<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>]]);

// Водяное колесо
recipes.addShaped(<immersiveengineering:wooden_device1>, 
	[[null, <immersiveengineering:material:10>, null], 
	[<immersiveengineering:material:10>, <ore:ringSteel>, <immersiveengineering:material:10>], 
	[null, <immersiveengineering:material:10>, null]]);

// Спасательная подушка
recipes.addShaped(<immersiveengineering:cloth_device>, 
	[[<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>], 
	[<immersiveengineering:material:5>, null, <immersiveengineering:material:5>], 
	[<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>]]);

// Воздушаный шар
recipes.addShaped(<immersiveengineering:cloth_device:1>, 
	[[<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>], 
	[<immersiveengineering:material:5>, <minecraft:torch>, <immersiveengineering:material:5>], 
	[<minecraft:string>, <immersiveengineering:treated_wood_slab>, <minecraft:string>]]);

// Занавес
recipes.addShaped(<immersiveengineering:cloth_device:2>, 
	[[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], 
	[<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>], 
	[<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>]]);

// Плита из обработанного дерева
recipes.addShaped(<immersiveengineering:treated_wood_slab> * 6, 
	[[<gregtech:planks:1>, <gregtech:planks:1>, <gregtech:planks:1>]]);

// Листовой металл 
recipes.addShaped(<immersiveengineering:sheetmetal>, 
	[[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:1>, 
	[[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:2>, 
	[[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>], 
	[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>], 
	[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:3>, 
	[[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:4>, 
	[[<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>], 
	[<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>], 
	[<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:5>, 
	[[<ore:plateUranium>, <ore:plateUranium>, <ore:plateUranium>], 
	[<ore:plateUranium>, <ore:plateUranium>, <ore:plateUranium>], 
	[<ore:plateUranium>, <ore:plateUranium>, <ore:plateUranium>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:7>, 
	[[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], 
	[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], 
	[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:8>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:9>, 
	[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:9>, 
	[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

// Листовой металл
recipes.addShaped(<immersiveengineering:sheetmetal:10>, 
	[[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

// Блок низковольтного провода
recipes.addShaped(<immersiveengineering:metal_decoration0>, 
	[[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>], 
	[<immersiveengineering:wirecoil>, <ore:stickLongWroughtIron>, <immersiveengineering:wirecoil>], 
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

// Блок средневольтного провода
recipes.addShaped(<immersiveengineering:metal_decoration0:1>, 
	[[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>], 
	[<immersiveengineering:wirecoil:1>, <ore:stickLongSteel>, <immersiveengineering:wirecoil:1>], 
	[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);

// Блок высоковольтного провода
recipes.addShaped(<immersiveengineering:metal_decoration0:2>, 
	[[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>], 
	[<immersiveengineering:wirecoil:2>, <ore:stickLongBlackSteel>, <immersiveengineering:wirecoil:2>], 
	[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]]);

// Стальные леса
recipes.addShaped(<immersiveengineering:metal_decoration1:1>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[null, <ore:stickSteel>, null], 
	[<ore:stickSteel>, null, <ore:stickSteel>]]);

// Алюминиевый забор
recipes.addShaped(<immersiveengineering:metal_decoration1:4>, 
	[[null, null, null], 
	[<ore:ingotAluminium>, <ore:stickAluminium>, <ore:ingotAluminium>], 
	[<ore:ingotAluminium>, <ore:stickAluminium>, <ore:ingotAluminium>]]);

// Алюминиевые леса
recipes.addShaped(<immersiveengineering:metal_decoration1:5>, 
	[[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
	[null, <ore:stickAluminium>, null], 
	[<ore:stickAluminium>, null, <ore:stickAluminium>]]);

// Трансформатор
recipes.addShaped(<immersiveengineering:connector:7>, 
	[[<immersiveengineering:connector>, <ore:plateSteel>, <immersiveengineering:connector:2>], 
	[<ore:plateSteel>, <immersiveengineering:metal_decoration0:1>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Высоковольтный трансформатор
recipes.addShaped(<immersiveengineering:connector:8>, 
	[[<immersiveengineering:connector:2>, <ore:plateSteel>, <immersiveengineering:connector:4>], 
	[<ore:plateSteel>, <immersiveengineering:metal_decoration0:2>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Рубильник
recipes.addShaped(<immersiveengineering:connector:9>, 
	[[null, null, null], 
	[<ore:plateCopper>, <minecraft:lever>, <ore:plateCopper>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Краснокаменный рубильник
recipes.addShaped(<immersiveengineering:connector:10>, 
	[[<immersiveengineering:connector:4>, null, <immersiveengineering:connector:4>], 
	[<ore:plateSteel>, <minecraft:repeater>, <ore:plateSteel>], 
	[<ore:plateSteel>, <minecraft:redstone>, <ore:plateSteel>]]);

// Трансформатор тока
recipes.addShaped(<immersiveengineering:connector:11>, 
	[[<ore:plateSteel>, <immersiveengineering:tool:2>, <ore:plateSteel>], 
	[<minecraft:hardened_clay>, <immersiveengineering:metal_decoration0>, <minecraft:hardened_clay>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Обмен лампы из грега на лампу из иммерсива
recipes.addShapeless(<immersiveengineering:material:26>, 
	[<gregtech:meta_item_1:516>]);
Blueprint.addRecipe("components", <immersiveengineering:material:26>, [<minecraft:glass>, <ore:plateTin>, <ore:wireGtSingleCopper>, <minecraft:redstone>]);

// Насос
recipes.addShaped(<immersiveengineering:metal_device0:5>, 
	[[null, <ore:plateWroughtIron>, null], 
	[<ore:plateWroughtIron>, <immersiveengineering:metal_device1:6>, <ore:plateWroughtIron>], 
	[<immersiveengineering:metal_device1:6>, <immersiveengineering:material:9>, <immersiveengineering:metal_device1:6>]]);

// Слив
recipes.remove(<immersiveengineering:metal_device0:6>);
recipes.addShaped(<immersiveengineering:metal_device0:6>, 
	[[<ore:plateWroughtIron>, <minecraft:iron_bars>, <ore:plateWroughtIron>], 
	[<minecraft:iron_bars>, null, <minecraft:iron_bars>], 
	[<ore:plateWroughtIron>, <minecraft:iron_bars>, <ore:plateWroughtIron>]]);

// Воздухонагреватель доменной печи
recipes.remove(<immersiveengineering:metal_device1>);
recipes.addShaped(<immersiveengineering:metal_device1>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, null, <ore:plateSteel>], 
	[<ore:plateSteel>, <immersiveengineering:metal_device1:1>, <ore:plateSteel>]]);

// Металлическая бочка
recipes.remove(<immersiveengineering:metal_device0:4>);
recipes.addShaped(<immersiveengineering:metal_device0:4>, 
	[[<ore:plateWroughtIron>, <tfc:metal/trapdoor/wrought_iron>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, null, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

// Внешний нагреватель
recipes.addShaped(<immersiveengineering:metal_device1:1>, 
	[[<ore:plateCopper>, <ore:plateSteel>, <ore:plateCopper>], 
	[<ore:plateSteel>, <immersiveengineering:metal_decoration0>, <ore:plateSteel>], 
	[<ore:plateCopper>, <ore:plateSteel>, <ore:plateCopper>]]);

// Термоэлектрогенератор
recipes.addShaped(<immersiveengineering:metal_device1:3>, 
	[[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>], 
	[<ore:plateSteel>, <immersiveengineering:metal_decoration0>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSilver>, <ore:plateSteel>]]);

// Конвейер
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), 
	[[<minecraft:leather> | <ore:plateRubber>, <minecraft:leather> | <ore:plateRubber>, <minecraft:leather> | <ore:plateRubber>], 
	[<immersiveengineering:material:8>, <immersiveengineering:material:8>, <immersiveengineering:material:8>], 
	[<ore:plateBlackSteel>, <minecraft:repeater>, <ore:plateBlackSteel>]]);

// Разделяющий конвейер
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}), 
	[[<ore:stickBlackSteel>, <ore:plateBlackSteel>, <ore:stickBlackSteel>], 
	[<minecraft:leather> | <ore:plateRubber>, <ore:plateBlackSteel>, <minecraft:leather> | <ore:plateRubber>], 
	[<ore:stickBlackSteel>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:stickBlackSteel>]]);

// Сбрасывающий конвейер
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}), 
	[[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})], 
	[<ore:trapdoormetal>]]);

// Вертикальный конвейер
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}), 
	[[<immersiveengineering:material:8>, <ore:plateBlackSteel>], 
	[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})], 
	[<immersiveengineering:material:8>, <ore:plateBlackSteel>]]);

// Труба для жидкостей
recipes.addShaped(<immersiveengineering:metal_device1:6>, 
	[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:pipeTinyFluidBronze>, <ore:pipeTinyFluidBronze>, <ore:pipeTinyFluidBronze>], 
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:metal_device1:6>, 
	[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:pipeTinyFluidBronze>, <ore:pipeTinyFluidBronze>, <ore:pipeTinyFluidBronze>], 
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

// Катушка Тесла
recipes.addShaped(<immersiveengineering:metal_device1:8>, 
	[[null, <immersiveengineering:sheetmetal_slab:3>, null], 
	[null, <immersiveengineering:metal_decoration0>, null], 
	[<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_device0:2>]]);

// Прожектор
recipes.addShaped(<immersiveengineering:metal_device1:9>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<minecraft:glass_pane>, <immersiveengineering:metal_device1:4>, <immersiveengineering:metal_decoration0>], 
	[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>]]);

// Зарядная станция
recipes.addShaped(<immersiveengineering:metal_device1:5>, 
	[[<ore:plateSteel>, <immersiveengineering:connector:2>, <ore:plateSteel>], 
	[<ore:plateSteel>, <appliedenergistics2:quartz_glass>, <ore:plateSteel>], 
	[<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0>, <immersiveengineering:treated_wood>]]);

// Колючая проволка
recipes.addShaped(<immersiveengineering:metal_decoration2:5>, 
	[[<ore:plankTreatedWood>, <ore:plateSteel>, <ore:plankTreatedWood>], 
	[<ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>], 
	[<ore:plankTreatedWood>, <ore:plateSteel>, <ore:plankTreatedWood>]]);

// Деревянная рукоятка
recipes.addShaped(<immersiveengineering:material:13>, 
	[[<immersiveengineering:material>, <immersiveengineering:material>, null], 
	[<ore:boltBrass>, <immersiveengineering:material>, null], 
	[<immersiveengineering:material>, <immersiveengineering:material>, null]]);

// Моток низковольтного провода
recipes.addShaped(<immersiveengineering:wirecoil>, 
	[[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>], 
	[<ore:wireGtSingleCopper>, <ore:stickWood>, <ore:wireGtSingleCopper>], 
	[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>]]);

// Моток средневольтного провода
recipes.addShaped(<immersiveengineering:wirecoil:1>, 
	[[<ore:wireGtSingleGold>, <ore:wireGtSingleGold>, <ore:wireGtSingleGold>], 
	[<ore:wireGtSingleGold>, <ore:stickWood>, <ore:wireGtSingleGold>], 
	[<ore:wireGtSingleGold>, <ore:wireGtSingleGold>, <ore:wireGtSingleGold>]]);

// Моток высоковольтного провода
recipes.addShaped(<immersiveengineering:wirecoil:2>, 
	[[<ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>], 
	[<ore:wireGtSingleSteel>, <ore:stickWood>, <ore:wireGtSingleSteel>], 
	[<ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>, <ore:wireGtSingleSteel>]]);

// Моток стального троса
recipes.addShaped(<immersiveengineering:wirecoil:4>, 
	[[<ore:wireGtSingleBlackSteel>, <ore:wireGtSingleBlackSteel>, <ore:wireGtSingleBlackSteel>], 
	[<ore:wireGtSingleBlackSteel>, <ore:stickWood>, <ore:wireGtSingleBlackSteel>], 
	[<ore:wireGtSingleBlackSteel>, <ore:wireGtSingleBlackSteel>, <ore:wireGtSingleBlackSteel>]]);

// Моток краснокаменного провода
recipes.addShaped(<immersiveengineering:wirecoil:5>, 
	[[<ore:wireGtSingleRedAlloy>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleRedAlloy>], 
	[<ore:wireGtSingleRedAlloy>, <ore:stickWood>, <ore:wireGtSingleRedAlloy>], 
	[<ore:wireGtSingleRedAlloy>, <ore:wireGtSingleRedAlloy>, <ore:wireGtSingleRedAlloy>]]);

// Моток низковольтного провода сизоляцией
recipes.addShaped(<immersiveengineering:wirecoil:6>, 
	[[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>], 
	[<ore:cableGtSingleCopper>, <ore:stickWood>, <ore:cableGtSingleCopper>], 
	[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>]]);

// Моток средневольтного провода сизоляцией
recipes.addShaped(<immersiveengineering:wirecoil:7>, 
	[[<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>], 
	[<ore:cableGtSingleGold>, <ore:stickWood>, <ore:cableGtSingleGold>], 
	[<ore:cableGtSingleGold>, <ore:cableGtSingleGold>, <ore:cableGtSingleGold>]]);

// Сапоги Фарадея
recipes.addShaped(<immersiveengineering:faraday_suit_feet>, 
	[[null, null, null], 
	[<ore:wireFineAluminium>, null, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, <minecraft:chainmail_boots>, <ore:wireFineAluminium>]]);

// Поножи Фарадея
recipes.addShaped(<immersiveengineering:faraday_suit_legs>, 
	[[<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, <minecraft:chainmail_leggings>, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, null, <ore:wireFineAluminium>]]);

// Нагрудник Фарадея
recipes.addShaped(<immersiveengineering:faraday_suit_chest>, 
	[[<ore:wireFineAluminium>, <minecraft:chainmail_chestplate>, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>]]);

// Шлем Фарадея
recipes.addShaped(<immersiveengineering:faraday_suit_head>, 
	[[<ore:wireFineAluminium>, <ore:wireFineAluminium>, <ore:wireFineAluminium>], 
	[<ore:wireFineAluminium>, <minecraft:chainmail_helmet>, <ore:wireFineAluminium>], 
	[null, null, null]]);

// Коннектор краснокаменного зонда
recipes.addShaped(<immersiveengineering:connector:13>, 
	[[<minecraft:glass_pane>, <immersiveengineering:connector:12>, <minecraft:glass_pane>], 
	[<minecraft:glass_pane>, <immersiveengineering:material:27>, <minecraft:glass_pane>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Блок генератора
recipes.addShaped(<immersiveengineering:metal_decoration0:6>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateGold>, <immersiveengineering:metal_device1:2>, <ore:plateGold>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Инженерный черчеж (детали для производства)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 
	[[null, null, <ore:stickWroughtIron>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Инженерный черчеж (обычные патроны)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), 
	[[null, null, <minecraft:gunpowder>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Инженерный черчеж (пресс-форма)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}), 
	[[null, null, <ore:plateSteel>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Инженерный черчеж (Connectors)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Connectors"}), 
	[[null, null, <minecraft:clay_ball>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Инженерный черчеж (Электроды дуговой печи)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), 
	[[null, null, <ore:dustGraphite>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Инженерный черчеж (Device)
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Device"}), 
	[[null, null, <minecraft:redstone>], 
	[<minecraft:feather>, <ore:dyeBlue>, <minecraft:dye>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// Деревянный столб
recipes.remove(<immersiveengineering:wooden_device1:3>);
recipes.addShaped(<immersiveengineering:wooden_device1:3>, 
	[[<ore:fenceTreatedWood>], 
	[<ore:fenceTreatedWood>], 
	[<ore:brickStone>]]);

// Стальной столб
recipes.remove(<immersiveengineering:metal_decoration2>);
recipes.addShaped(<immersiveengineering:metal_decoration2>, 
	[[<ore:fenceSteel>], 
	[<ore:fenceSteel>], 
	[<ore:brickStone>]]);

// Алюминиевый столб
recipes.remove(<immersiveengineering:metal_decoration2:2>);
recipes.addShaped(<immersiveengineering:metal_decoration2:2>, 
	[[<ore:fenceAluminum>], 
	[<ore:fenceAluminum>], 
	[<ore:brickStone>]]);

// Молот инженера
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, 
	[[null, <minecraft:string>, <tfc:metal/hammer_head/wrought_iron>], 
	[null, <minecraft:stick>, <minecraft:string>], 
	[<minecraft:stick>, null, null]]);

// Кусачки инженера
recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped(<immersiveengineering:tool:1>, 
	[[null, <tfc:metal/knife_blade/wrought_iron>, null], 
	[<tfc:metal/knife_blade/wrought_iron>, <minecraft:string>, <minecraft:stick>], 
	[null, <minecraft:stick>, <minecraft:string>]]);

// Низковольтный конденсатор
recipes.addShaped(<immersiveengineering:metal_device0>, 
	[[<ore:plateSteel>, <immersiveengineering:wirecoil>, <ore:plateSteel>], 
	[<ore:wireGtSingleLead>, <ore:plankTreatedWood>, <ore:wireGtSingleLead>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Средневольтный конденсатор
recipes.addShaped(<immersiveengineering:metal_device0:1>, 
	[[<ore:plateSteel>, <immersiveengineering:wirecoil:1>, <ore:plateSteel>], 
	[<ore:wireGtQuadrupleLead>, <ore:plankTreatedWood>, <ore:wireGtQuadrupleLead>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Высоковольтный генератор
recipes.addShaped(<immersiveengineering:metal_device0:2>, 
	[[<ore:plateSteel>, <immersiveengineering:wirecoil:2>, <ore:plateSteel>], 
	[<ore:wireGtHexLead>, <ore:plankTreatedWood>, <ore:wireGtHexLead>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Кинетический генератор
recipes.addShaped(<immersiveengineering:metal_device1:2>, 
	[[<immersiveengineering:material:9>, <ore:plateSteel>, <immersiveengineering:material:9>], 
	[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], 
	[<immersiveengineering:material:9>, <ore:plateSteel>, <immersiveengineering:material:9>]]);

// Вольтметр инженера
recipes.addShaped(<immersiveengineering:tool:2>, 
	[[<ore:stickTreatedWood>, <minecraft:redstone>, <ore:stickTreatedWood>], 
	[<ore:stickTreatedWood>, <ore:wireGtSingleSteel>, <ore:stickTreatedWood>], 
	[<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>]]);

// Кирпич коксовой печи
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, 
	[[<tfc:mortar>, <ore:dustGraphite>, <tfc:mortar>], 
	[<ore:dustSulfur>, <tfc:fire_bricks>, <ore:dustSulfur>], 
	[<tfc:mortar>, <ore:dustGraphite>, <tfc:mortar>]]);

// Кирпич доменной печи
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, 
	[[<tfc:mortar>, <ore:dustGraphite>, <tfc:mortar>], 
	[<ore:dustKaolinite>, <tfc:fire_bricks>, <ore:dustKaolinite>], 
	[<tfc:mortar>, <ore:dustGraphite>, <tfc:mortar>]]);

// Кирпич продвинутой доменной печи
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped(<immersiveengineering:stone_decoration:2>, 
	[[<tfc:mortar>, <ore:plateSteel>, <tfc:mortar>], 
	[<ore:plateSteel>, <immersiveengineering:stone_decoration:1>, <ore:plateSteel>], 
	[<tfc:mortar>, <ore:plateSteel>, <tfc:mortar>]]);

// Печной кирпич
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>, 
	[[<tfc:mortar>, <ore:dustKaolinite>, <tfc:mortar>], 
	[<ore:plateBlackSteel>, <tfc:fire_bricks>, <ore:plateBlackSteel>], 
	[<tfc:mortar>, <ore:dustKaolinite>, <tfc:mortar>]]);

// Канистра
recipes.remove(<immersiveengineering:jerrycan>);
recipes.addShaped(<immersiveengineering:jerrycan>, 
	[[<ore:plateDoubleWroughtIron>, <ore:stickWroughtIron>, <ore:plateDoubleWroughtIron>], 
	[<ore:plateDoubleWroughtIron>, null, <ore:plateDoubleWroughtIron>], 
	[<ore:dyeGreen>, <ore:plateDoubleWroughtIron>, <ore:dyeGreen>]]);

// Получение пыли ВОП-графита
recipes.addShaped(<immersiveengineering:material:18> * 4, 
	[[<ore:dustGraphite>, <ore:dustCoke>, <ore:dustGraphite>], 
	[<ore:dustCoke>, <minecraft:redstone>, <ore:dustCoke>], 
	[<ore:dustGraphite>, <ore:dustCoke>, <ore:dustGraphite>]]);

// Прочная ткань
recipes.remove(<immersiveengineering:material:5>);
recipes.addShaped(<immersiveengineering:material:5>, 
	[[<tfc:crop/product/burlap_cloth>, <minecraft:stick>, <tfc:crop/product/burlap_cloth>]]);

// Костробетон
recipes.remove(<immersiveengineering:stone_decoration:4>);
recipes.addShaped(<immersiveengineering:stone_decoration:4>, 
	[[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], 
	[<tfc:crop/product/jute_fiber>, <tfc:crop/product/jute_fiber>, <tfc:crop/product/jute_fiber>], 
	[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);

// Алюминиевый крепеж
recipes.remove(<immersiveengineering:metal_decoration2:3>);
recipes.addShaped(<immersiveengineering:metal_decoration2:3> * 4, 
	[[<ore:ingotAluminium>, <ore:ingotAluminium>], 
	[<ore:ingotAluminium>, <ore:stickAluminium>]]);

// Буровая установка
recipes.remove(<immersiveengineering:metal_device1:7>);
recipes.addShaped(<immersiveengineering:metal_device1:7>, 
	[[<gregtech:meta_item_1:127>, <gregtech:meta_item_1:466>, <gregtech:meta_item_1:127>], 
	[<immersiveengineering:metal_decoration1:1>, <ore:fenceSteel>, <immersiveengineering:metal_decoration1:1>], 
	[<immersiveengineering:metal_decoration0:5>, <ore:fenceSteel>, <immersiveengineering:metal_decoration0:5>]]);

// Битум
recipes.addShapeless(<immersivepetroleum:material> * 2, 
	[<ore:dustCharcoal> | <ore:dustCoal>, <tfc:powder/flux> | <ore:dustBorax>]);

// При обжигании блока стали из грега в печке получается блок стали из иммерсива
furnace.addRecipe(<immersiveengineering:storage:8>, <gregtech:meta_block_compressed_20:4>);

// Бур
recipes.remove(<immersiveengineering:drill>);
Blueprint.addRecipe("Device", <immersiveengineering:drill>, [<immersiveengineering:material:9> * 2, <immersiveengineering:material:13> * 2, <immersiveengineering:metal_decoration0:5>]);
// Железное буровое долото
recipes.remove(<immersiveengineering:drillhead:1>);
Blueprint.addRecipe("Device", <immersiveengineering:drillhead:1>, [<ore:plateDoubleWroughtIron> * 5, <immersiveengineering:material:8> * 2, <immersiveengineering:tool>]);
// Стальное буровое долото
recipes.remove(<immersiveengineering:drillhead>);
Blueprint.addRecipe("Device", <immersiveengineering:drillhead>, [<ore:plateDoubleSteel> * 5, <immersiveengineering:drillhead:1>, <immersiveengineering:tool>]);
// Большой баллон
recipes.remove(<immersiveengineering:toolupgrade:3>);
Blueprint.addRecipe("Device", <immersiveengineering:toolupgrade:3>, [<minecraft:bucket> * 2, <ore:plateSteel> * 2, <immersiveengineering:material:9>, <ore:dyeRed>]);
// Баллон со сжатым воздухом
recipes.remove(<immersiveengineering:toolupgrade>);
Blueprint.addRecipe("Device", <immersiveengineering:toolupgrade>, [<minecraft:bucket> * 2, <ore:plateWroughtIron> * 2, <immersiveengineering:material:8>, <ore:dyeBlue>]);
// Дополнительные шнеки
recipes.remove(<immersiveengineering:toolupgrade:2>);
Blueprint.addRecipe("Device", <immersiveengineering:toolupgrade:2>, [<ore:ingotSteel> * 2, <ore:stickSteel>, <immersiveengineering:material:9>]);

// Продвинутая смазосная система
recipes.remove(<immersiveengineering:toolupgrade:1>);
recipes.addShaped(<immersiveengineering:toolupgrade:1>, 
	[[<ore:ringBronze>, <immersiveengineering:material:9>, <ore:ringBronze>], 
	[<immersiveengineering:tool>, <ore:stickSteel>, <immersiveengineering:tool:1>], 
	[null, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "lubricant", Amount: 1000}}), null]]);

// Регистрация дополнительного топлива для бура
DieselHandler.addDrillFuel(<liquid:gasoline>);


print("Initialized 'Immersive Engineering'");