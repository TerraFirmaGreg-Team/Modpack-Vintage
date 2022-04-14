import mods.tfctech.WireDrawing;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

// --- Removing Recipes

recipes.remove(<tfctech:wire_draw_bench>);
recipes.remove(<tfctech:smeltery_firebox>);
recipes.remove(<tfctech:smeltery_cauldron>);
recipes.remove(<tfctech:electric_forge>);
recipes.remove(<tfctech:metal/copper_inductor>);
recipes.remove(<tfctech:induction_crucible>);
recipes.remove(<tfctech:wiredraw/winch>);

mods.jei.JEI.removeAndHide(<tfctech:powder/potash>);

recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");

WireDrawing.removeRecipe(<tfctech:metal/zinc_wire>);
WireDrawing.removeRecipe(<tfctech:metal/copper_wire>);
WireDrawing.removeRecipe(<tfctech:metal/gold_wire>);
WireDrawing.removeRecipe(<tfctech:metal/lead_wire>);
WireDrawing.removeRecipe(<tfctech:metal/nickel_wire>);
WireDrawing.removeRecipe(<tfctech:metal/silver_wire>);
WireDrawing.removeRecipe(<tfctech:metal/tin_wire>);
WireDrawing.removeRecipe(<tfctech:metal/steel_wire>);
WireDrawing.removeRecipe(<tfctech:metal/platinum_wire>);
WireDrawing.removeRecipe(<tfctech:metal/black_steel_wire>);

Anvil.removeRecipe(<tfctech:metal/iron_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/black_steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/iron_tongs>);
Anvil.removeRecipe(<tfctech:metal/iron_bowl_mount>);
Anvil.removeRecipe(<tfctech:metal/wrought_iron_blowpipe>);

for item in All_Strips {
    recipes.remove(item);
}

// --- Adding Recipes

// --- Furnace recipes for TFC items
furnace.addRecipe(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>);
furnace.addRecipe(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>);

// Провода для примитивной эры
WireDrawing.addRecipe("tfg:tfctech/wire_copper", <tfctech:metal/copper_wire:1>, 3, <ore:wireGtSingleCopper>.firstItem, 0xFFA6B525);
WireDrawing.addRecipe("tfg:tfctech/wire_gold", <tfctech:metal/gold_wire:1>, 3, <ore:wireGtSingleGold>.firstItem, 0xFFc2bb30);
WireDrawing.addRecipe("tfg:tfctech/wire_lead", <tfctech:metal/lead_wire:1>, 3, <ore:wireGtSingleLead>.firstItem, 0xFF593f73);
WireDrawing.addRecipe("tfg:tfctech/wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <ore:wireGtSingleNickel>.firstItem, 0xFFb79bd4);
WireDrawing.addRecipe("tfg:tfctech/wire_silver", <tfctech:metal/silver_wire:1>, 3, <ore:wireGtSingleSilver>.firstItem, 0xFFbfbfbf);
WireDrawing.addRecipe("tfg:tfctech/wire_tin", <tfctech:metal/tin_wire:1>, 3, <ore:wireGtSingleTin>.firstItem, 0xFF666666);
WireDrawing.addRecipe("tfg:tfctech/wire_steel", <tfctech:metal/steel_wire:1>, 3, <ore:wireGtSingleSteel>.firstItem, 0xFF4d4d4d);
WireDrawing.addRecipe("tfg:tfctech/wire_platinum", <tfctech:metal/platinum_wire:1>, 3, <ore:wireGtSinglePlatinum>.firstItem, 0xFFbabf88);
WireDrawing.addRecipe("tfg:tfctech/wire_black_steel", <tfctech:metal/black_steel_wire:1>, 3, <ore:wireGtSingleBlackSteel>.firstItem, 0xFF292929);

// Рецепты Strips
recipes.addShapeless(<tfctech:metal/bismuth_strip> * 4, [<ore:chisel>, <ore:plateBismuth>]);
recipes.addShapeless(<tfctech:metal/bismuth_bronze_strip> * 4, [<ore:chisel>, <ore:plateBismuthBronze>]);
recipes.addShapeless(<tfctech:metal/black_bronze_strip> * 4, [<ore:chisel>, <ore:plateBlackBronze>]);
recipes.addShapeless(<tfctech:metal/brass_strip> * 4, [<ore:chisel>, <ore:plateBrass>]);
recipes.addShapeless(<tfctech:metal/bronze_strip> * 4, [<ore:chisel>, <ore:plateBronze>]);
recipes.addShapeless(<tfctech:metal/copper_strip> * 4, [<ore:chisel>, <ore:plateCopper>]);
recipes.addShapeless(<tfctech:metal/gold_strip> * 4, [<ore:chisel>, <ore:plateGold>]);
recipes.addShapeless(<tfctech:metal/lead_strip> * 4, [<ore:chisel>, <ore:plateLead>]);
recipes.addShapeless(<tfctech:metal/nickel_strip> * 4, [<ore:chisel>, <ore:plateNickel>]);
recipes.addShapeless(<tfctech:metal/rose_gold_strip> * 4, [<ore:chisel>, <ore:plateRoseGold>]);
recipes.addShapeless(<tfctech:metal/silver_strip> * 4, [<ore:chisel>, <ore:plateSilver>]);
recipes.addShapeless(<tfctech:metal/tin_strip> * 4, [<ore:chisel>, <ore:plateTin>]);
recipes.addShapeless(<tfctech:metal/zinc_strip> * 4, [<ore:chisel>, <ore:plateZinc>]);
recipes.addShapeless(<tfctech:metal/sterling_silver_strip> * 4, [<ore:chisel>, <ore:plateSterlingSilver>]);
recipes.addShapeless(<tfctech:metal/wrought_iron_strip> * 4, [<ore:chisel>, <ore:plateWroughtIron>]);
recipes.addShapeless(<tfctech:metal/pig_iron_strip> * 4, [<ore:chisel>, <ore:platePigIron>]);
recipes.addShapeless(<tfctech:metal/steel_strip> * 4, [<ore:chisel>, <ore:plateSteel>]);
recipes.addShapeless(<tfctech:metal/platinum_strip> * 4, [<ore:chisel>, <ore:platePlatinum>]);
recipes.addShapeless(<tfctech:metal/black_steel_strip> * 4, [<ore:chisel>, <ore:plateBlackSteel>]);
recipes.addShapeless(<tfctech:metal/blue_steel_strip> * 4, [<ore:chisel>, <ore:plateBlueSteel>]);
recipes.addShapeless(<tfctech:metal/red_steel_strip> * 4, [<ore:chisel>, <ore:plateRedSteel>]);

// Крафт поташа с увеличенным выходом
recipes.addShapeless(<ore:dustPotash>.firstItem * 4, [<tfctech:pot_potash>]);

// Исправление рецепта емкости с поташем
recipes.addShapeless(<tfctech:pot_ash>, [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);

// Резина для первых этапов
recipes.addShapeless(<ore:plateRubber>.firstItem * 2, [<tfctech:latex/rubber>, <ore:craftingToolKnife>.firstItem.withEmptyTag()]);

// Уменьшение выхода рецепта с резиной
Barrel.removeRecipe(<tfctech:latex/rubber_mix> * 6);
Barrel.addRecipe("tfg:tfctech/rubber_mix", <tfctech:latex/vulcanizing_agents>, <liquid:latex> * 1000, <tfctech:latex/rubber_mix> * 6, 8);

// Вытяжные пластины
Anvil.addRecipe("tfg:tfctech/iron_draw_plate", <ore:ingotWroughtIron>, <tfctech:metal/iron_draw_plate>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/steel_draw_plate", <ore:ingotSteel>, <tfctech:metal/steel_draw_plate>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");
Anvil.addRecipe("tfg:tfctech/black_steel_draw_plate", <ore:ingotBlackSteel>, <tfctech:metal/black_steel_draw_plate>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "HIT_ANY");

// Tongs
Anvil.addRecipe("tfg:tfctech/tongs", <ore:ingotWroughtIron>, <tfctech:metal/iron_tongs>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");

// Bowl Mount
Anvil.addRecipe("tfg:tfctech/bowl_mount", <ore:ingotWroughtIron>, <tfctech:metal/iron_bowl_mount>, 3, "general", "BEND_LAST", "DRAW_SECOND_LAST", "BEND_NOT_LAST");

// Blowpipe
Anvil.addRecipe("tfg:tfctech/wrought_iron_blowpipe", <ore:plateWroughtIron>, <tfctech:metal/wrought_iron_blowpipe>, 3, "general", "BEND_LAST", "BEND_SECOND_LAST");

// Winch
recipes.addShaped(<tfctech:wiredraw/winch>,
[[<ore:stickWroughtIron>, null, <ore:stickWroughtIron>],
 [null, <ore:stickLongWroughtIron>, null],
 [<ore:stickWroughtIron>, null, <ore:stickWroughtIron>]]);

// Медный индуктор
recipes.addShaped(<tfctech:metal/copper_inductor>,
[[null, <ore:wireGtSingleCopper>, null],
 [<ore:wireGtSingleCopper>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:wireGtSingleCopper>],
 [null, <ore:wireGtSingleCopper>, null]]);

// Тигель
recipes.addShaped(<tfctech:induction_crucible>,
[[<ore:plateSteel>, null, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);
 
// Электро наковальня
recipes.addShaped(<tfctech:electric_forge>,
[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

// Smeltery Cauldron
recipes.addShaped(<tfctech:smeltery_cauldron>,
[[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
 [<ore:stickLongWroughtIron>, null, <ore:stickLongWroughtIron>]]);

// Smeltery Firebox
recipes.addShaped(<tfctech:smeltery_firebox>,
[[<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>],
 [<ore:plateWroughtIron>, <tfc:fire_bricks>, <ore:plateWroughtIron>],
 [<ore:stickWroughtIron>, <ore:plateWroughtIron>, <ore:stickWroughtIron>]]);

// Wire Draw Bench
recipes.addShaped(<tfctech:wire_draw_bench>,
[[<tfctech:wiredraw/winch>, <tfctech:wiredraw/leather_belt>, <tfctech:metal/iron_tongs>],
 [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>]]);