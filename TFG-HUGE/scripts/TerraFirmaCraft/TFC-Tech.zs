import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

// --- Removing
mods.jei.JEI.removeAndHide(<tfctech:powder/potash>);
mods.jei.JEI.removeAndHide(<tfctech:fridge>);

// --- Furnace recipes for TFC items
furnace.addRecipe(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>);
furnace.addRecipe(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>);

//Провода для примитивной эры
WireDrawing.removeRecipe(<tfctech:metal/zinc_wire>);

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
WireDrawing.removeRecipe(<tfctech:metal/steel_wire>);
WireDrawing.addRecipe("tfctech:wire_steel", <tfctech:metal/steel_wire:1>, 3, <ore:wireGtSingleSteel>.firstItem, 0xFF4d4d4d);
WireDrawing.removeRecipe(<tfctech:metal/platinum_wire>);
WireDrawing.addRecipe("tfctech:wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <ore:wireGtSinglePlatinum>.firstItem, 0xFFbabf88);
WireDrawing.removeRecipe(<tfctech:metal/black_steel_wire>);
WireDrawing.addRecipe("tfctech:wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <ore:wireGtSingleBlackSteel>.firstItem, 0xFF292929);

//Баффнутый крафт поташа
recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.addShapeless(<ore:dustPotash>.firstItem * 4, [<tfctech:pot_potash>]);
//Фикс крафта поташа(резервуар остается)
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");
recipes.addShapeless(<tfctech:pot_ash>, [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);

//Резина для примитивного этапа
recipes.addShapeless(<ore:plateRubber>.firstItem * 2, [<tfctech:latex/rubber>, <ore:craftingToolKnife>.firstItem.withEmptyTag()]);

//Нерф крафта резины через бочку
Barrel.removeRecipe(<tfctech:latex/rubber_mix> * 6);
Barrel.addRecipe("tfg:rubber_mix", <tfctech:latex/vulcanizing_agents>, <liquid:latex> * 1000, <tfctech:latex/rubber_mix> * 6, 8);

//Draw Plates
Anvil.removeRecipe(<tfctech:metal/iron_draw_plate>);
Anvil.addRecipe("tfctech:IronDrawPlateF", <ore:ingotWroughtIron>, <tfctech:metal/iron_draw_plate>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.removeRecipe(<tfctech:metal/steel_draw_plate>);
Anvil.addRecipe("tfctech:SteelDrawPlateF", <ore:ingotSteel>, <tfctech:metal/steel_draw_plate>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.removeRecipe(<tfctech:metal/black_steel_draw_plate>);
Anvil.addRecipe("tfctech:BlackSteelDrawPlateF", <ore:ingotBlackSteel>, <tfctech:metal/black_steel_draw_plate>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");

//Tongs
Anvil.removeRecipe(<tfctech:metal/iron_tongs>);
Anvil.addRecipe("tfctech:TongsF", <ore:ingotWroughtIron>, <tfctech:metal/iron_tongs>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");

//Bowl Mount
Anvil.removeRecipe(<tfctech:metal/iron_bowl_mount>);
Anvil.addRecipe("tfctech:BowlMountF", <ore:ingotWroughtIron>, <tfctech:metal/iron_bowl_mount>, 3, "general", "BEND_LAST", "DRAW_SECOND_LAST", "BEND_NOT_LAST");

//Blowpipe
Anvil.removeRecipe(<tfctech:metal/wrought_iron_blowpipe>);
Anvil.addRecipe("tfctech:WroughtIronBlowpipeF", <ore:plateWroughtIron>, <tfctech:metal/wrought_iron_blowpipe>, 3, "general", "BEND_LAST", "BEND_SECOND_LAST");

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