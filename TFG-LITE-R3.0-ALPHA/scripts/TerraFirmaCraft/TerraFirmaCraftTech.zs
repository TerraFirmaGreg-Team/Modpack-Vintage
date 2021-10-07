import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Anvil;

//Провода для примитивной эры
WireDrawing.removeRecipe(<tfctech:metal/copper_wire>);
WireDrawing.addRecipe("tfctech:wire_copper", <tfctech:metal/copper_wire:1>, 3, <ore:wireGtSingleCopper>.firstItem, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/gold_wire>);
WireDrawing.addRecipe("tfctech:wire_gold", <tfctech:metal/gold_wire:1>, 3, <ore:wireGtSingleGold>.firstItem, 0xFFc2bb30);
WireDrawing.removeRecipe(<tfctech:metal/lead_wire>);
WireDrawing.addRecipe("tfctech:wire_lead", <tfctech:metal/lead_wire:1>, 3, <ore:wireGtSingleLead>.firstItem, 0xFF593f73);
WireDrawing.removeRecipe(<tfctech:metal/nickel_wire>);
WireDrawing.addRecipe("tfctech:wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <ore:wireGtSingleNickel>.firstItem, 0xFFb79bd4);
WireDrawing.removeRecipe(<tfctech:metal/silver_wire>);
WireDrawing.addRecipe("tfctech:wire_silver", <tfctech:metal/silver_wire:1>, 3, <ore:wireGtSingleSilver>.firstItem, 0xFFbfbfbf);
WireDrawing.removeRecipe(<tfctech:metal/tin_wire>);
WireDrawing.addRecipe("tfctech:wire_tin", <tfctech:metal/tin_wire:1>, 3, <ore:wireGtSingleTin>.firstItem, 0xFF666666);
WireDrawing.removeRecipe(<tfctech:metal/zinc_wire>);
WireDrawing.addRecipe("tfctech:wire_zinc", <tfctech:metal/zinc_wire:1>, 3, <ore:wireGtSingleZinc>.firstItem, 0xFF999999);
WireDrawing.removeRecipe(<tfctech:metal/steel_wire>);
WireDrawing.addRecipe("tfctech:wire_steel", <tfctech:metal/steel_wire:1>, 3, <ore:wireGtSingleSteel>.firstItem, 0xFF4d4d4d);
WireDrawing.removeRecipe(<tfctech:metal/platinum_wire>);
WireDrawing.addRecipe("tfctech:wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <ore:wireGtSinglePlatinum>.firstItem, 0xFFbabf88);
WireDrawing.removeRecipe(<tfctech:metal/black_steel_wire>);
WireDrawing.addRecipe("tfctech:wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <ore:wireGtSingleBlackSteel>.firstItem, 0xFF292929);

//Фикс палок из TFC-Tech
//Anvil.removeRecipe(<>);
/*
Anvil.addRecipe("tfctech:rod_1", <gregtech:meta_item_1:10230>, <gregtech:meta_item_2:14230>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_2", <gregtech:meta_item_2:10035>, <gregtech:meta_item_2:14035>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_3", <gregtech:meta_item_2:10232>, <gregtech:meta_item_2:14232>*2, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_4", <gregtech:meta_item_2:10227>, <gregtech:meta_item_2:14227>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_5", <gregtech:meta_item_2:10126>, <gregtech:meta_item_2:14126>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_6", <gregtech:meta_item_2:10051>, <gregtech:meta_item_2:14051>*2, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_7", <gregtech:meta_item_2:10233>, <gregtech:meta_item_2:14233>*2, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_8", <gregtech:meta_item_2:10112>, <gregtech:meta_item_2:14112>*2, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_9", <gregtech:meta_item_2:10071>, <gregtech:meta_item_2:14071>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_10", <gregtech:meta_item_2:10229>, <gregtech:meta_item_2:14229>*2, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_11", <gregtech:meta_item_2:10231>, <gregtech:meta_item_2:14231>*2, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_12", <gregtech:meta_item_2:10094>, <gregtech:meta_item_2:14094>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_13", <gregtech:meta_item_2:10184>, <gregtech:meta_item_2:14184>*2, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_14", <gregtech:meta_item_2:10095>, <gregtech:meta_item_2:14095>*2, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_15", <gregtech:meta_item_2:10197>, <gregtech:meta_item_2:14197>*2, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_16", <gregtech:meta_item_2:10140>, <gregtech:meta_item_2:14140>*2, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_17", <gregtech:meta_item_2:10018>, <gregtech:meta_item_2:14018>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_18", <gregtech:meta_item_2:10062>, <gregtech:meta_item_2:14062>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_19", <gregtech:meta_item_2:10228>, <gregtech:meta_item_2:14228>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:rod_20", <gregtech:meta_item_2:10026>, <gregtech:meta_item_2:14026>*2, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
*/

//Баффнутый крафт поташа
recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.addShapeless(<ore:dustPotash>.firstItem * 4, [<tfctech:pot_potash>]);
//Фикс крафта поташа(резервуар остается)
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");
recipes.addShapeless(<tfctech:pot_ash>, [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);

//Резина для примитивного этапа
recipes.addShapeless(<ore:plateRubber>.firstItem * 2, [<tfctech:latex/rubber>, <ore:craftingToolKnife>.firstItem.withEmptyTag()]);

//Winch
recipes.remove(<tfctech:wiredraw/winch>);
recipes.addShaped(<tfctech:wiredraw/winch>,
[[<ore:stickWroughtIron>, null, <ore:stickWroughtIron>],
 [null, <ore:stickLongWroughtIron>, null],
 [<ore:stickWroughtIron>, null, <ore:stickWroughtIron>]]);

//Медный индуктор
recipes.remove(<tfctech:metal/copper_inductor>);
recipes.addShaped(<tfctech:metal/copper_inductor>,
[[null, <ore:wireGtSingleCopper>, null],
 [<ore:wireGtSingleCopper>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:wireGtSingleCopper>],
 [null, <ore:wireGtSingleCopper>, null]]);

//Тигель
recipes.remove(<tfctech:induction_crucible>);
recipes.addShaped(<tfctech:induction_crucible>,
[[<ore:plateSteel>, null, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);
 
//Электро наковальня
recipes.remove(<tfctech:electric_forge>);
recipes.addShaped(<tfctech:electric_forge>,
[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

//Smeltery Cauldron
recipes.remove(<tfctech:smeltery_cauldron>);
recipes.addShaped(<tfctech:smeltery_cauldron>,
[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
 [<ore:stickLongWroughtIron>, null, <ore:stickLongWroughtIron>]]);

//Smeltery Firebox
recipes.remove(<tfctech:smeltery_firebox>);
recipes.addShaped(<tfctech:smeltery_firebox>,
[[<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>],
 [<ore:plateWroughtIron>, <tfc:fire_bricks>, <ore:plateWroughtIron>],
 [<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>]]);

//Wire Draw Bench
recipes.remove(<tfctech:wire_draw_bench>);
recipes.addShaped(<tfctech:wire_draw_bench>,
[[<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <tfctech:metal/iron_tongs>],
 [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>]]);

//Оф мусор.
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/propick_head>);
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/hammer_head>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/sleeve>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/sleeve>);