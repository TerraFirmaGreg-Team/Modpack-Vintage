import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Anvil;

//Провода для примитивной эры
WireDrawing.removeRecipe(<tfctech:metal/copper_wire>);
WireDrawing.addRecipe("tfctech:wire_copper", <tfctech:metal/copper_wire:1>, 3, <gregtech:cable:18>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/electrum_wire>);
WireDrawing.addRecipe("tfctech:wire_electrum", <tfctech:metal/electrum_wire:1>, 3, <gregtech:cable:112>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/red_alloy_wire>);
WireDrawing.addRecipe("tfctech:wire_red_alloy", <tfctech:metal/red_alloy_wire:1>, 3, <gregtech:cable:237>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/cobalt_wire>);
WireDrawing.addRecipe("tfctech:wire_cobalt", <tfctech:metal/cobalt_wire:1>, 3, <gregtech:cable:17>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/gold_wire>);
WireDrawing.addRecipe("tfctech:wire_gold", <tfctech:metal/gold_wire:1>, 3, <gregtech:cable:26>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/lead_wire>);
WireDrawing.addRecipe("tfctech:wire_lead", <tfctech:metal/lead_wire:1>, 3, <gregtech:cable:35>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/nickel_wire>);
WireDrawing.addRecipe("tfctech:wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <gregtech:cable:44>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/silver_wire>);
WireDrawing.addRecipe("tfctech:wire_silver", <tfctech:metal/silver_wire:1>, 3, <gregtech:cable:62>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/tin_wire>);
WireDrawing.addRecipe("tfctech:wire_tin", <tfctech:metal/tin_wire:1>, 3, <gregtech:cable:71>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/zinc_wire>);
WireDrawing.addRecipe("tfctech:wire_zinc", <tfctech:metal/zinc_wire:1>, 3, <gregtech:cable:79>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/steel_wire>);
WireDrawing.addRecipe("tfctech:wire_steel", <tfctech:metal/steel_wire:1>, 3, <gregtech:cable:184>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/platinum_wire>);
WireDrawing.addRecipe("tfctech:wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <gregtech:cable:51>, 0xFFA6B525);
WireDrawing.removeRecipe(<tfctech:metal/black_steel_wire>);
WireDrawing.addRecipe("tfctech:wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <gregtech:cable:231>, 0xFFA6B525);

//Баффнутый крафт поташа
recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.addShapeless(<gregtech:meta_item_1:2402>*4, [<tfctech:pot_potash>]);

//Резина для примитивного этапа
recipes.addShapeless(<gregtech:meta_item_1:12152>*2, [<tfctech:latex/rubber>, <ore:craftingToolKnife>.firstItem.withEmptyTag()]);

//Winch
recipes.remove(<tfctech:wiredraw/winch>);
recipes.addShaped(<tfctech:wiredraw/winch>,
[[<ore:stickIron>|<ore:stickWroughtIron>, null, <ore:stickIron>|<ore:stickWroughtIron>],
 [null, <ore:stickLongIron>|<ore:stickLongWroughtIron>, null],
 [<ore:stickIron>|<ore:stickWroughtIron>, null, <ore:stickIron>|<ore:stickWroughtIron>]]);

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
recipes.addShaped(<tfctech:smeltery_cauldron>,
[[<ore:plateIron>|<ore:plateWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>],
 [<ore:plateIron>|<ore:plateWroughtIron>, null, <ore:plateIron>|<ore:plateWroughtIron>],
 [<ore:stickLongIron>|<ore:stickLongWroughtIron>, null, <ore:stickLongIron>|<ore:stickLongWroughtIron>]]);

//Smeltery Firebox
recipes.addShaped(<tfctech:smeltery_firebox>,
[[<ore:stickIron>|<ore:stickWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>, <ore:stickIron>|<ore:stickWroughtIron>],
 [<ore:plateIron>|<ore:plateWroughtIron>, <tfc:fire_bricks>, <ore:plateIron>|<ore:plateWroughtIron>],
 [<ore:stickIron>|<ore:stickWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>, <ore:stickIron>|<ore:stickWroughtIron>]]);

//Wire Draw Bench
recipes.addShaped(<tfctech:wire_draw_bench>,
[[<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <tfctech:metal/iron_tongs>],
 [<ore:plateIron>|<ore:plateWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>, <ore:plateIron>|<ore:plateWroughtIron>],
 [<ore:plateIron>|<ore:plateWroughtIron>, null, <ore:plateIron>|<ore:plateWroughtIron>]]);

//Оф мусор.
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/propick_head>);
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/hammer_head>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/sleeve>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/sleeve>);

//Отключение некоторых вытяжных трубок
Anvil.removeRecipe(<tfctech:metal/osmium_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/manyullyn_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/boron_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/zircaloy_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/tungsten_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/invar_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/tungsten_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/beryllium_copper_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/aluminium_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/cobalt_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/titanium_blowpipe>);
