import crafttweaker.item.IItemStack;

//Удаление рецептов + скрытие
global ItemsToRemoveEIJEI as IItemStack[] = [
	<enderio:item_material:9>,
	<enderio:item_material:10>,
	<enderio:item_material:11>
] as IItemStack[];
for item in ItemsToRemoveEIJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
global ItemsToRemoveEI as IItemStack[] = [
	<enderio:block_exit_rail>,
	<enderio:item_material:9>,
	<enderio:item_material:60>,
	<enderio:item_material:77>,
	<enderio:block_dark_paper_anvil>,
	<enderio:item_basic_item_filter>,
	<enderio:item_advanced_item_filter>,
	<enderio:item_limited_item_filter>,
	<enderio:item_big_item_filter>,
	<enderio:item_dark_steel_shield>,
	<enderio:item_inventory_charger_simple>,
	<enderio:item_inventory_charger_basic>,
	<enderio:item_inventory_charger>,
	<enderio:item_inventory_charger_vibrant>,
	<enderio:item_end_steel_shield>,
	<enderio:item_dark_steel_upgrade>,
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}),
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}),
	<enderio:item_extract_speed_downgrade>,
	<enderio:item_extract_speed_upgrade>,
	<enderio:item_redstone_timer_filter>,
	<enderio:item_redstone_sensor_filter>,
	<enderio:item_redstone_counting_filter>,
	<enderio:item_big_item_filter>,
	<enderio:item_big_advanced_item_filter>,
	<enderio:item_existing_item_filter>,
	<enderio:item_mod_item_filter>,
	<enderio:item_power_item_filter>,
	<enderio:item_soul_filter_normal>,
	<enderio:item_soul_filter_big>,
	<enderio:item_enchantment_filter_normal>,
	<enderio:item_enchantment_filter_big>,
	<enderio:item_fluid_filter>,
	<enderio:item_redstone_not_filter>,
	<enderio:item_redstone_or_filter>,
	<enderio:item_redstone_and_filter>,
	<enderio:item_redstone_nor_filter>,
	<enderio:item_redstone_nand_filter>,
	<enderio:item_redstone_xor_filter>,
	<enderio:item_redstone_xnor_filter>,
	<enderio:item_redstone_toggle_filter>,
	<enderio:block_advanced_power_monitor>,
	<enderio:block_gauge>,
	<enderio:block_power_monitor>,
	<enderio:block_cap_bank:3>,
	<enderio:block_cap_bank:2>,
	<enderio:block_cap_bank:1>,
	<enderio:item_basic_capacitor>,
	<enderio:item_basic_capacitor:1>,
	<enderio:item_basic_capacitor:2>,
	<enderio:item_yeta_wrench>,
	<enderio:item_redstone_conduit>,
	<enderio:item_power_conduit>,
	<enderio:item_power_conduit:2>,
	<enderio:item_power_conduit:1>,
	<enderio:item_item_conduit>,
	<enderio:item_liquid_conduit:1>,
	<enderio:item_liquid_conduit:2>,
	<enderio:item_liquid_conduit>,
	<enderio:item_conduit_probe>,
	<enderio:item_conduit_facade:3>,
	<enderio:item_conduit_facade:2>
] as IItemStack[];
for item in ItemsToRemoveEI{
    recipes.remove(item);
}
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("enderio:compatibility_glass_pane");
recipes.removeByRecipeName("enderio:compatibility_glass_2_glass");

//Добавление рецептов
//Xyeta Wrench
recipes.addShaped(<enderio:item_yeta_wrench>, 
[[<ore:ingotNeodymiumMagnetic>, null, <ore:ingotNeodymiumMagnetic>],
 [null, <ore:gearSteelMagnetic>, null],
 [null, <ore:ingotNeodymiumMagnetic>, null]]);

//Energy conduit tier 1
recipes.addShaped(<enderio:item_power_conduit>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:wireGtQuadrupleRedAlloy>, <ore:wireGtQuadrupleRedAlloy>, <ore:wireGtQuadrupleRedAlloy>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Energy conduit tier 2
recipes.addShaped(<enderio:item_power_conduit:1>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:wireGtQuadrupleAnnealedCopper>, <ore:wireGtQuadrupleAnnealedCopper>, <ore:wireGtQuadrupleAnnealedCopper>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_power_conduit:1>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:wireGtQuadrupleAnnealedCopper>, <enderio:item_power_conduit>, <ore:wireGtQuadrupleAnnealedCopper>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Energy conduit tier 3
recipes.addShaped(<enderio:item_power_conduit:2>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:wireGtDoubleLuvSuperconductorBase>, <ore:wireGtDoubleLuvSuperconductorBase>, <ore:wireGtDoubleLuvSuperconductorBase>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_power_conduit:2>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:wireGtDoubleLuvSuperconductorBase>, <enderio:item_power_conduit:1>, <ore:wireGtDoubleLuvSuperconductorBase>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Conduit probe
recipes.addShaped(<enderio:item_conduit_probe>, 
[[<gregtech:meta_item_1:9299>, null, <gregtech:meta_item_1:9299>],
 [<ore:plateIron>, <enderio:item_yeta_wrench>, <ore:plateIron>],
 [<ore:plateIron>, <ore:dustBedrock>, <ore:plateIron>]]);
 
//Fluid conduit tier 1
recipes.addShaped(<enderio:item_liquid_conduit>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:pipeLargeBronze>, <ore:pipeLargeBronze>, <ore:pipeLargeBronze>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Fluid conduit tier 2
recipes.addShaped(<enderio:item_liquid_conduit:1>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:pipeLargePlastic>, <ore:pipeLargePlastic>, <ore:pipeLargePlastic>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:pipeLargePlastic>, <enderio:item_liquid_conduit>, <ore:pipeLargePlastic>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Fluid conduit tier 3
recipes.addShaped(<enderio:item_liquid_conduit:2>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:pipeLargePolybenzimidazole>, <ore:pipeLargePolybenzimidazole>, <ore:pipeLargePolybenzimidazole>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:pipeLargePolybenzimidazole>, <enderio:item_liquid_conduit:1>, <ore:pipeLargePolybenzimidazole>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//Redstone conduit
recipes.addShaped(<enderio:item_redstone_conduit>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]); 
 
//Item conduit
recipes.addShaped(<enderio:item_item_conduit>*2, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<gregtech:meta_item_1:32630>, <gregtech:meta_item_1:32630>, <gregtech:meta_item_1:32630>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]); 
 
//Transparent conduit facade
recipes.addShaped(<enderio:item_conduit_facade:2>*3, 
[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
 [<ore:itemConduitBinder>, <ore:blockGlass>, <ore:itemConduitBinder>],
 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
 
//Hardened transparent conduit facade
recipes.addShaped(<enderio:item_conduit_facade:3>*3, 
[[null, <ore:plateNeodymiumMagnetic>, null],
 [<ore:plateNeodymiumMagnetic>, <enderio:item_conduit_facade:2>, <ore:plateNeodymiumMagnetic>],
 [null, <ore:plateNeodymiumMagnetic>, null]]); 

//Basic item filter
recipes.addShaped(<enderio:item_basic_item_filter>, 
[[null, <ore:paper>, null],
 [<ore:paper>, <minecraft:hopper>, <ore:paper>],
 [null, <ore:paper>, null]]);
 
//Advanced item filter
recipes.addShaped(<enderio:item_advanced_item_filter>, 
[[<ore:cableGtSingleRedAlloy>, <ore:paper>, <ore:cableGtSingleRedAlloy>],
 [<ore:paper>, <ore:circuitGood>, <ore:paper>],
 [<ore:cableGtSingleRedAlloy>, <ore:paper>, <ore:cableGtSingleRedAlloy>]]);
 
//Limited item filter
recipes.addShaped(<enderio:item_limited_item_filter>, 
[[<minecraft:comparator>, <enderio:item_advanced_item_filter>, <minecraft:comparator>]]);
 
//Big item filter
recipes.addShaped(<enderio:item_big_item_filter>, 
[[<ore:dustObsidian>, <ore:paper>, <ore:dustObsidian>],
 [<ore:paper>, <ore:circuitAdvanced>, <ore:paper>],
 [<ore:dustObsidian>, <ore:paper>, <ore:dustObsidian>]]);
 
//Advanced big intem filter
recipes.addShaped(<enderio:item_big_advanced_item_filter>, 
[[null, <minecraft:shulker_shell>, null],
 [null, <enderio:item_advanced_item_filter>, null],
 [null, <minecraft:shulker_shell>, null]]);
 
//Existing item filter
recipes.addShaped(<enderio:item_existing_item_filter>, 
[[null, <ore:cableGtSingleRedAlloy>, null],
 [<ore:cableGtSingleRedAlloy>, <enderio:item_advanced_item_filter>, <ore:cableGtSingleRedAlloy>],
 [null, <minecraft:comparator>, null]]);
 
//Mod item filter
recipes.addShaped(<enderio:item_mod_item_filter>, 
[[null, <ore:paper>, null],
 [<ore:paper>, <enderio:item_yeta_wrench>, <ore:paper>],
 [null, <ore:paper>, null]]);
 
//Power item filter
recipes.addShaped(<enderio:item_power_item_filter>, 
[[null, <ore:paper>, null],
 [<ore:paper>, <gregtech:machine:714>, <ore:paper>],
 [null, <ore:paper>, null]]);
 
//Fluid filter
recipes.addShaped(<enderio:item_fluid_filter>, 
[[null, <ore:paper>, null],
 [<ore:paper>, <minecraft:bucket>, <ore:paper>],
 [null, <ore:paper>, null]]);
 
//Redstone filter base
recipes.addShaped(<enderio:item_material:60>, 
[[<ore:cableGtSingleRedAlloy>, <ore:paper>, <ore:cableGtSingleRedAlloy>],
 [<ore:paper>, <ore:foilNeodymiumMagnetic>, <ore:paper>],
 [<ore:cableGtSingleRedAlloy>, <ore:paper>, <ore:cableGtSingleRedAlloy>]]);
 
//NOT filter
recipes.addShaped(<enderio:item_redstone_not_filter>, 
[[<minecraft:redstone_torch>, <enderio:item_material:60>, <ore:cableGtSingleRedAlloy>]]);
 
//OR filter
recipes.addShaped(<enderio:item_redstone_or_filter>, 
[[null, <minecraft:redstone_torch>, null],
 [null, <enderio:item_material:60>, null],
 [null, <minecraft:redstone_torch>, null]]);
 
//AND filter
recipes.addShaped(<enderio:item_redstone_and_filter>, 
[[null, <ore:cableGtSingleRedAlloy>, null],
 [null, <enderio:item_material:60>, null],
 [null, <ore:cableGtSingleRedAlloy>, null]]);
 
//NOR filter
recipes.addShaped(<enderio:item_redstone_nor_filter>, 
[[<enderio:item_redstone_or_filter>, <minecraft:redstone_torch>, null]]);
 
//NAND filter
recipes.addShaped(<enderio:item_redstone_nand_filter>, 
[[<enderio:item_redstone_and_filter>, <minecraft:redstone_torch>, null]]);
 
//XOR filter
recipes.addShaped(<enderio:item_redstone_xor_filter>, 
[[<ore:cableGtSingleRedAlloy>, <minecraft:redstone_torch>, <ore:cableGtSingleRedAlloy>],
 [<ore:cableGtSingleRedAlloy>, <enderio:item_material:60>, <ore:cableGtSingleRedAlloy>],
 [<ore:cableGtSingleRedAlloy>, <minecraft:redstone_torch>, <ore:cableGtSingleRedAlloy>]]);
 
//XNOR filter
recipes.addShaped(<enderio:item_redstone_xnor_filter>, 
[[<enderio:item_redstone_xor_filter>, <minecraft:redstone_torch>, null]]);
 
//Toggle latch filter
recipes.addShaped(<enderio:item_redstone_toggle_filter>, 
[[<minecraft:lever>, <enderio:item_material:60>, <ore:craftingRedstoneTorch>]]);
 
//Counting filter
recipes.addShaped(<enderio:item_redstone_counting_filter>, 
[[<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, null],
 [<ore:cableGtSingleRedAlloy>, <enderio:item_material:60>, <ore:craftingRedstoneTorch>],
 [<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, null]]);
 
//Sensor filter
recipes.addShaped(<enderio:item_redstone_sensor_filter>, 
[[null, null, <ore:cableGtSingleRedAlloy>],
 [<minecraft:comparator>, <enderio:item_material:60>, <ore:craftingRedstoneTorch>],
 [null, null, <ore:cableGtSingleRedAlloy>]]);
 
//Timer filter
recipes.addShaped(<enderio:item_redstone_timer_filter>, 
[[<ore:cableGtSingleRedAlloy>, <enderio:item_material:60>, <minecraft:clock>]]);

//SPEEDUP Upgrade
recipes.addShaped(<enderio:item_extract_speed_upgrade>, 
[[null, <appliedenergistics2:material:30>, null],
 [null, <enderio:item_basic_item_filter>, null],
 [null, <appliedenergistics2:material:30>, null]]);
 
//NOT SPEEDUP Upgrade
recipes.addShaped(<enderio:item_extract_speed_downgrade>*3, 
[[null, <appliedenergistics2:material:24>, null],
 [null, <enderio:item_basic_item_filter>, null],
 [null, <appliedenergistics2:material:24>, null]]);