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
Anvil.removeRecipe(<tfctech:metal/brass_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bismuth_bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/black_bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bronze_long_rod>);
Anvil.removeRecipe(<tfctech:metal/copper_long_rod>);
Anvil.removeRecipe(<tfctech:metal/gold_long_rod>);
Anvil.removeRecipe(<tfctech:metal/lead_long_rod>);
Anvil.removeRecipe(<tfctech:metal/rose_gold_long_rod>);
Anvil.removeRecipe(<tfctech:metal/silver_long_rod>);
Anvil.removeRecipe(<tfctech:metal/tin_long_rod>);
Anvil.removeRecipe(<tfctech:metal/sterling_silver_long_rod>);
Anvil.removeRecipe(<tfctech:metal/wrought_iron_long_rod>);
Anvil.removeRecipe(<tfctech:metal/pig_iron_long_rod>);
Anvil.removeRecipe(<tfctech:metal/steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/black_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/blue_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/red_steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/nickel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/bismuth_long_rod>);
Anvil.removeRecipe(<tfctech:metal/platinum_long_rod>);
Anvil.removeRecipe(<tfctech:metal/zinc_long_rod>);
Anvil.addRecipe("tfctech:long_rod_brass", <ore:ingotBrass>, <gregtech:meta_stick_long:259>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_bronze", <ore:ingotBronze>, <gregtech:meta_stick_long:260>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_copper", <ore:ingotCopper>, <gregtech:meta_stick_long:25>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_gold", <ore:ingotGold>, <gregtech:meta_stick_long:41>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_lead", <ore:ingotLead>, <gregtech:meta_stick_long:55>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_rose_gold", <ore:ingotRoseGold>, <gregtech:meta_stick_long:301>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_silver", <ore:ingotSilver>, <gregtech:meta_stick_long:100>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_tin", <ore:ingotTin>, <gregtech:meta_stick_long:112>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_bismuth_bronze", <ore:ingotBismuthBronze>, <gregtech:meta_stick_long:303>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_black_bronze", <ore:ingotBlackBronze>, <gregtech:meta_stick_long:302>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_steel", <ore:ingotSteel>, <gregtech:meta_stick_long:324>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_pig_iron", <ore:ingotPigIron>, <gregtech:meta_stick_long:299>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_wrought_iron", <ore:ingotWroughtIron>, <gregtech:meta_stick_long:335>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_sterling_silver", <ore:ingotSterlingSilver>, <gregtech:meta_stick_long:300>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_red_steel", <ore:ingotRedSteel>, <gregtech:meta_stick_long:2510>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_blue_steel", <ore:ingotBlueSteel>, <gregtech:meta_stick_long:2511>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_black_steel", <ore:ingotBlackSteel>, <gregtech:meta_stick_long:2011>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_platinum", <ore:ingotPlatinum>, <gregtech:meta_stick_long:80>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_nickel", <ore:ingotNickel>, <gregtech:meta_stick_long:69>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_bismuth", <ore:ingotBismuth>, <gregtech:meta_stick_long:11>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:long_rod_zinc", <ore:ingotZinc>, <gregtech:meta_stick_long:122>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

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