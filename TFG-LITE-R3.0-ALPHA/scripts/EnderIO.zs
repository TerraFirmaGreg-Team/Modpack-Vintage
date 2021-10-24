import crafttweaker.item.IItemStack;

//Удаление рецептов + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	<enderio:item_material:9>,
	<enderio:item_material:10>,
	<enderio:item_material:11>,
	<enderio:item_material>,
	<enderio:item_material:66>,
	<enderio:block_reinforced_obsidian>,
	<enderio:item_yeta_wrench>,
	<enderio:item_material:5>,
	<enderio:item_material:64>,
	<enderio:item_material:38>,
	<enderio:item_basic_capacitor>,
	<enderio:item_basic_capacitor:1>,
	<enderio:item_basic_capacitor:2>,
	<enderio:block_exit_rail>,
	<enderio:item_dark_steel_upgrade:*>,
	<enderio:item_material:76>,
	<enderio:block_death_pouch>,
	<enderio:item_material:81>,
	<enderio:block_enderman_skull>,
	<enderio:block_dark_paper_anvil:*>,
	<enderio:item_dark_steel_shield>,
	<enderio:item_inventory_charger_simple>,
	<enderio:item_inventory_charger_basic>,
	<enderio:item_inventory_charger>,
	<enderio:item_inventory_charger_vibrant>,
	<enderio:item_end_steel_shield>,
	<enderio:block_holy_fog>,
	<enderio:block_holier_fog>,
	<enderio:item_material:78>,
	<enderio:item_material:79>,
	<enderio:item_material:80>,
	<enderio:block_cap_bank:*>,
	<enderio:block_gauge>,
	<enderio:block_power_monitor>,
	<enderio:block_advanced_power_monitor>,
	<enderio:item_soul_filter_normal>,
	<enderio:item_soul_filter_big>,
	<enderio:item_enchantment_filter_normal>,
	<enderio:item_enchantment_filter_big>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipes as IItemStack[] = [
	<enderio:item_material:60>,
	<enderio:item_material:77>,
	<enderio:item_basic_item_filter>,
	<enderio:item_advanced_item_filter>,
	<enderio:item_limited_item_filter>,
	<enderio:item_big_item_filter>,
	<enderio:item_inventory_charger_simple>,
	<enderio:item_inventory_charger_basic>,
	<enderio:item_inventory_charger>,
	<enderio:item_inventory_charger_vibrant>,
	<enderio:item_dark_steel_upgrade>,
	<enderio:item_extract_speed_downgrade>,
	<enderio:item_extract_speed_upgrade>,
	<enderio:item_redstone_timer_filter>,
	<enderio:item_redstone_sensor_filter>,
	<enderio:item_redstone_counting_filter>,
	<enderio:item_big_item_filter>,
	<enderio:item_big_advanced_item_filter>,
	<enderio:item_existing_item_filter>,
	<enderio:item_mod_item_filter>,
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
	<enderio:item_conduit_facade:2>,
	<enderio:block_infinity:*>,
	<enderio:item_material:20>
] as IItemStack[];
for item in RemoveItemRecipes{
    recipes.remove(item);
}

recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("enderio:compatibility_glass_pane");
recipes.removeByRecipeName("enderio:compatibility_glass_2_glass");
recipes.removeByRecipeName("enderio:slabcobblestone_to_cobblestone");
recipes.removeByRecipeName("enderio:infinity_rod");
recipes.removeByRecipeName("enderio:deco_block_2_7");

//Black Paper
recipes.addShapeless(<enderio:item_material:77>*2, [<ore:paper>, <ore:dyeBlack>, <ore:dyeBlack>]);

//Добавление рецептов
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
[[<ore:craftingRedstoneTorch>, null, <ore:craftingRedstoneTorch>],
 [<ore:plateIron>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateIron>],
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
 [<gregtech:meta_item_1:122>, <gregtech:meta_item_1:122>, <gregtech:meta_item_1:122>],
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

//Infinity Dust --> Infinity Block
compressor.recipeBuilder()
    .inputs(<ore:dustBedrock> * 9)
    .outputs(<enderio:block_infinity>)
    .duration(460).EUt(480).buildAndRegister();

//Infinity Block --> Infinity Block x2
compressor.recipeBuilder()
    .inputs(<enderio:block_infinity> * 9)
    .outputs(<enderio:block_infinity:1>)
    .duration(460).EUt(480).buildAndRegister();

//Infinity Block x2 --> Infinity Block x3
compressor.recipeBuilder()
    .inputs(<enderio:block_infinity:1> * 9)
    .outputs(<enderio:block_infinity:2>)
    .duration(460).EUt(480).buildAndRegister();

//Infinity Dust --> Infinity Block
macerator.recipeBuilder()
    .inputs(<enderio:block_infinity>)
    .outputs(<ore:dustBedrock>.firstItem * 9)
    .duration(460).EUt(480).buildAndRegister();

//Infinity Dust --> Infinity Block
macerator.recipeBuilder()
    .inputs(<enderio:block_infinity:1>)
    .outputs(<enderio:block_infinity> * 9)
    .duration(460).EUt(480).buildAndRegister();

//Infinity Dust --> Infinity Block
macerator.recipeBuilder()
    .inputs(<enderio:block_infinity:2>)
    .outputs(<enderio:block_infinity:1> * 9)
    .duration(460).EUt(480).buildAndRegister();