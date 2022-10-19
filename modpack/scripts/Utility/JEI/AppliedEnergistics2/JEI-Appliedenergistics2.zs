#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:quartz_stairs>,
	<appliedenergistics2:quartz_slab>,
	<appliedenergistics2:quartz_pillar>,
	<appliedenergistics2:quartz_pillar_stairs>,
	<appliedenergistics2:quartz_pillar_slab>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:chiseled_quartz_stairs>,
	<appliedenergistics2:chiseled_quartz_slab>,
	<appliedenergistics2:material>,
	<appliedenergistics2:material:5>,
	<appliedenergistics2:material:46>,
	<appliedenergistics2:encoded_pattern>,
	<appliedenergistics2:material:21>
];

val RemoveRecipe as IItemStack[] = [
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
	<appliedenergistics2:fluix_block>,
	<appliedenergistics2:paint_ball:*>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipe {
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

// Certus Quartz (Override)
extractor.findRecipe(30, [<metaitem:blockCertusQuartz>], null).remove();