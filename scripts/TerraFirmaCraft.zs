import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;

//Еда из GC
//ItemRegistry.registerFood(IIngredient input, int hunger, float water, float saturation, float decay, float grain, float veg, float fruit, float meat, float dairy);
ItemRegistry.registerFood(<extraplanets:canned_food>, 4, 0.0, 0.5, 0.5, 0, 0, 0, 1.0, 0.5);
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.3, 0.3, 0.5, 0, 0, 1.0, 0, 0.5);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.1, 0.4, 0.5, 0, 1.0, 0, 0, 0.5);

//Исправление кованного железа
Welding.removeRecipe(<tfc:metal/double_ingot/wrought_iron>);
Welding.addRecipe("tfc:double_ingot_wrought_iron_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:metal/double_ingot/wrought_iron>, 2);
recipes.removeByRecipeName("tfcthings:grindstone_base");
recipes.addShaped(<tfcthings:grindstone_base>,
[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
 [<ore:lumber>, null, <ore:lumber>]]);

Welding.removeRecipe(<tfc:metal/double_sheet/wrought_iron>);
Welding.addRecipe("tfc:double_plate_wrought_iron_fixed", <ore:plateIron>, <ore:plateIron>, <tfc:metal/double_sheet/wrought_iron>, 2);

Welding.removeRecipe(<tfc:metal/shears/wrought_iron>);
Welding.addRecipe("tfc:shears_wrought_iron_fixed", <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "iron"}}), <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "iron"}}), <tfc:metal/shears/wrought_iron>, 2);

Welding.removeRecipe(<tfc:metal/helmet/wrought_iron>);
Welding.addRecipe("tfc:helmet_wrought_iron_fixed", <tfc:metal/unfinished_helmet/wrought_iron>, <ore:plateIron>, <tfc:metal/helmet/wrought_iron>, 2);
Welding.removeRecipe(<tfc:metal/greaves/wrought_iron>);
Welding.addRecipe("tfc:greaves_wrought_iron_fixed", <tfc:metal/unfinished_greaves/wrought_iron>, <ore:plateIron>, <tfc:metal/greaves/wrought_iron>, 2);
Welding.removeRecipe(<tfc:metal/boots/wrought_iron>);
Welding.addRecipe("tfc:boots_wrought_iron_fixed", <tfc:metal/unfinished_boots/wrought_iron>, <ore:plateIron>, <tfc:metal/boots/wrought_iron>, 2);

Anvil.removeRecipe(<tfc:metal/hoe_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/axe_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/shovel_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/chisel_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/saw_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/pick_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/javelin_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/scythe_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>*2);
Anvil.removeRecipe(<tfc:metal/rod/gold>*2);
Anvil.removeRecipe(<tfc:metal/rod/steel>*2);
Anvil.removeRecipe(<tfc:metal/unfinished_boots/wrought_iron>);

Anvil.addRecipe("tfc:wrought_iron_hoe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/hoe_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_axe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/axe_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_shovel_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/shovel_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_chisel_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/chisel_head/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_saw_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/saw_blade/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:wrought_iron_pick_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/pick_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_javelin_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/javelin_head/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_scythe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/scythe_blade/wrought_iron>, 3, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_rod_fixed", <tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:14033>*2, 3, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:steel_rod_fixed", <tfc:metal/ingot/steel>, <gregtech:meta_item_1:14184>*2, 3, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:gold_rod_fixed", <tfc:metal/ingot/gold>, <gregtech:meta_item_1:14026>*2, 1, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_unf_boots_fixed", <ore:plateIron>, <tfc:metal/unfinished_boots/wrought_iron>, 3, "tools", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");

//Палки из пиломатериалов
recipes.addShapeless(<minecraft:stick>*2, [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>]);

//Флюс использует крафт с помощью GT молота
recipes.removeByRecipeName("tfc:flux");
recipes.addShapeless (<tfc:powder/flux>*2, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:rockFlux>]);

//Точильный инструмент использует крафт с помощью алмазной пыли GT
recipes.remove(<tfcthings:diamond_grit>);
recipes.remove(<tfcthings:grindstone_diamond>);
Welding.removeRecipe(<tfcthings:honing_steel_head_diamond>);
Welding.removeRecipe(<tfcthings:honing_steel_diamond>);
recipes.addShaped(<tfcthings:grindstone_diamond>,
[[<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>],
 [<ore:dustDiamond>, <tfcthings:grindstone_steel>, <ore:dustDiamond>],
 [<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>]]);
Welding.addRecipe("tfc:honing_steel_head_diamond", <tfcthings:honing_steel_head>, <ore:dustDiamond>, <tfcthings:honing_steel_head_diamond>, 5);
Welding.addRecipe("tfc:honing_steel_diamond", <tfcthings:honing_steel>, <ore:dustDiamond>, <tfcthings:honing_steel_diamond>, 5);

//TFC-Things Sling Ammo с помощью GT молота
//Sling Ammo Spread
recipes.remove(<tfcthings:sling_ammo_spread>);
recipes.addShapeless(<tfcthings:sling_ammo_spread>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>]);
//Sling Ammo Light
recipes.remove(<tfcthings:sling_ammo_light>);
recipes.addShapeless(<tfcthings:sling_ammo_light>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>, <ore:craftingToolFile>.firstItem.withEmptyTag()]);

//Добавление других вариантов угля для TFC
ItemRegistry.registerFuel(<ore:fuelCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<ore:gemCoal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<ore:gemLignite>, 1200, 1300, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

//Крафт стекла
Heating.removeRecipe(<minecraft:glass>);
recipes.addShapeless (<contenttweaker:glassmix>, [<ore:dustPotash>, <ore:sand>, <tfc:powder/flux>]);
ItemRegistry.registerItemHeat(<contenttweaker:glassmix>, 0.7, 1000.0, false);
Heating.addRecipe("tfc:glassmixtoglass", <contenttweaker:glassmix>, <minecraft:glass>, 700.0, 1000.0);
recipes.addShapeless(<tfctech:pot_ash>, [<tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);
recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");
recipes.addShapeless(<tfctech:powder/potash>*4, [<tfctech:pot_potash>]);

//TFC+GT
Barrel.addRecipe("tfc:hotwatertodwater", <liquid:hot_water>*5, <liquid:distilled_water>*1, 24);

//TFC+THAUMCRAFT
/*
//Броня из таумиума
Welding.removeRecipe(<tfc:metal/helmet/thaumium>);
Welding.removeRecipe(<tfc:metal/chestplate/thaumium>);
Welding.removeRecipe(<tfc:metal/greaves/thaumium>);
Welding.removeRecipe(<tfc:metal/boots/thaumium>);
Welding.addRecipe("tfc:thaumcraftthaumiumhelmet", <tfc:metal/unfinished_helmet/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_helm>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumchestplate", <tfc:metal/unfinished_chestplate/thaumium>, <tfc:metal/double_sheet/thaumium>, <thaumcraft:thaumium_chest>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumgreaves", <tfc:metal/unfinished_greaves/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_legs>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumboots", <tfc:metal/unfinished_boots/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_boots>, 3);
//Броня из пустотного металла
Anvil.addRecipe("tfc:thaumcraftvoidhelmet", <ore:plateVoidMetal>, <thaumcraft:void_helm>, 5, "armor", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidchestplate", <tfc:metal/double_sheet/void_metal>, <thaumcraft:void_chest>, 5, "armor", "HIT_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidgreaves", <ore:plateVoidMetal>, <thaumcraft:void_legs>, 5, "armor", "BEND_ANY", "DRAW_ANY", "HIT_ANY");
Anvil.addRecipe("tfc:thaumcraftvoidboots", <ore:plateVoidMetal>, <thaumcraft:void_boots>, 5, "armor", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");
//Инструменты из таумиума
recipes.addShapeless(<tfc:metal/sword/thaumium>, [<tfc:metal/sword_blade/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/pick/thaumium>, [<tfc:metal/pick_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/axe/thaumium>, [<tfc:metal/axe_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/shovel/thaumium>, [<tfc:metal/shovel_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/hoe/thaumium>, [<tfc:metal/hoe_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/chisel/thaumium>, [<tfc:metal/chisel_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/javelin/thaumium>, [<tfc:metal/javelin_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/scythe/thaumium>, [<tfc:metal/scythe_blade/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/mace/thaumium>, [<tfc:metal/mace_head/thaumium>, <ore:stickWood>]);
*/

//Крафт железного трапдора через наковальню тфк
Anvil.addRecipe("tfc:irontrapdoortweaked", <tfc:metal/double_sheet/wrought_iron>, <minecraft:iron_trapdoor>, 3, "general", "UPSET_NOT_LAST", "BEND_NOT_LAST", "UPSET_THIRD_LAST");

//Обжарка через печь необоженных форм
furnace.addRecipe(<tfc:ceramics/unfired/mold/knife_blade>, <tfc:ceramics/fired/mold/knife_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/scythe_blade>, <tfc:ceramics/fired/mold/scythe_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/ingot>, <tfc:ceramics/fired/mold/ingot>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/pick_head>, <tfc:ceramics/fired/mold/pick_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/shovel_head>, <tfc:ceramics/fired/mold/shovel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/axe_head>, <tfc:ceramics/fired/mold/axe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/hoe_head>, <tfc:ceramics/fired/mold/hoe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/chisel_head>, <tfc:ceramics/fired/mold/chisel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/sword_blade>, <tfc:ceramics/fired/mold/sword_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/mace_head>, <tfc:ceramics/fired/mold/mace_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/saw_blade>, <tfc:ceramics/fired/mold/saw_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/javelin_head>, <tfc:ceramics/fired/mold/javelin_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>);
furnace.addRecipe(<tfc:ceramics/fired/large_vessel>, <tfc:ceramics/unfired/large_vessel>);
furnace.addRecipe(<tfc:ceramics/fired/vessel>, <tfc:ceramics/unfired/vessel>);
furnace.addRecipe(<tfc:ceramics/fired/pot>, <tfc:ceramics/unfired/pot>);
furnace.addRecipe(<tfc:ceramics/fired/bowl>, <tfc:ceramics/unfired/bowl>);
furnace.addRecipe(<tfc:ceramics/fired/spindle>, <tfc:ceramics/unfired/spindle>);
furnace.addRecipe(<tfc:ceramics/fired/fire_brick>, <tfc:ceramics/unfired/fire_brick>);
furnace.addRecipe(<tfc:ceramics/fired/jug>, <tfc:ceramics/unfired/jug>);
furnace.addRecipe(<minecraft:brick>, <tfc:ceramics/unfired/clay_brick>);
furnace.addRecipe(<minecraft:flower_pot>, <tfc:ceramics/unfired/clay_flower_pot>);

//Отключение крафтов всех геологических TFC
Anvil.removeRecipe(<tfc:metal/propick_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/copper>);
Anvil.removeRecipe(<tfc:metal/propick_head/osmium>);
Anvil.removeRecipe(<tfc:metal/propick_head/manyullyn>);
Anvil.removeRecipe(<tfc:metal/propick_head/mithril>);
Anvil.removeRecipe(<tfc:metal/propick_head/boron>);
Anvil.removeRecipe(<tfc:metal/propick_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/propick_head/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/propick_head/zircaloy>);
Anvil.removeRecipe(<tfc:metal/propick_head/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/invar>);
Anvil.removeRecipe(<tfc:metal/propick_head/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/propick_head/tungsten>);
Anvil.removeRecipe(<tfc:metal/propick_head/aluminium>);
Anvil.removeRecipe(<tfc:metal/propick_head/cobalt>);
Anvil.removeRecipe(<tfc:metal/propick_head/titanium>);
//Anvil.removeRecipe(<tfc:metal/propick_head/thaumium>);//Таумиум

//Отключение крафтов всех молотков TFC
Anvil.removeRecipe(<tfc:metal/hammer_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/copper>);
Anvil.removeRecipe(<tfc:metal/hammer_head/osmium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/manyullyn>);
Anvil.removeRecipe(<tfc:metal/hammer_head/mithril>);
Anvil.removeRecipe(<tfc:metal/hammer_head/boron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/hammer_head/zircaloy>);
Anvil.removeRecipe(<tfc:metal/hammer_head/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/invar>);
Anvil.removeRecipe(<tfc:metal/hammer_head/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/hammer_head/tungsten>);
Anvil.removeRecipe(<tfc:metal/hammer_head/aluminium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/cobalt>);
Anvil.removeRecipe(<tfc:metal/hammer_head/titanium>);
//Anvil.removeRecipe(<tfc:metal/hammer_head/thaumium>);//Таумиум

//Отключение крафтов всех пил TFC(которые не дублируются)
Anvil.removeRecipe(<tfc:metal/saw_blade/copper>);
Anvil.removeRecipe(<tfc:metal/saw_blade/osmium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/manyullyn>);
Anvil.removeRecipe(<tfc:metal/saw_blade/mithril>);
Anvil.removeRecipe(<tfc:metal/saw_blade/boron>);
Anvil.removeRecipe(<tfc:metal/saw_blade/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/saw_blade/zircaloy>);
Anvil.removeRecipe(<tfc:metal/saw_blade/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/saw_blade/tungsten>);
Anvil.removeRecipe(<tfc:metal/saw_blade/aluminium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/titanium>);
//Anvil.removeRecipe(<tfc:metal/saw_blade/thaumium>);//Таумиум

//Отключение крафтов всех ножей TFC
Anvil.removeRecipe(<tfc:metal/knife_blade/red_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/blue_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/copper>);
Anvil.removeRecipe(<tfc:metal/knife_blade/osmium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/manyullyn>);
Anvil.removeRecipe(<tfc:metal/knife_blade/mithril>);
Anvil.removeRecipe(<tfc:metal/knife_blade/boron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/knife_blade/zircaloy>);
Anvil.removeRecipe(<tfc:metal/knife_blade/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/invar>);
Anvil.removeRecipe(<tfc:metal/knife_blade/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/knife_blade/tungsten>);
Anvil.removeRecipe(<tfc:metal/knife_blade/aluminium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/cobalt>);
Anvil.removeRecipe(<tfc:metal/knife_blade/titanium>);
//Anvil.removeRecipe(<tfc:metal/knife_blade/thaumium>);//Таумиум

//Новые рецепты ковки GT(TFC) молотков
Anvil.addRecipe("tfc:hammer_head/CopperF", <ore:ingotCopper>, <tfc:metal/hammer_head/copper>, 0, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BismuthBronzeF", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:5230>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackBronzeF", <ore:ingotBlackBronze>, <gregtech:meta_item_2:5229>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BronzeF", <ore:ingotBronze>, <gregtech:meta_item_2:5095>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/WroughtIronF", <ore:ingotWroughtIron>, <gregtech:meta_item_2:5197>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/SteelF", <ore:ingotSteel>, <gregtech:meta_item_2:5184>, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackSteelF", <ore:ingotBlackSteel>, <gregtech:meta_item_2:5231>, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlueSteelF", <ore:ingotBlueSteel>, <gregtech:meta_item_2:5233>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/RedSteelF", <ore:ingotRedSteel>, <gregtech:meta_item_2:5232>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CobaltF", <ore:ingotCobalt>, <gregtech:meta_item_2:5017>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/InvarF", <ore:ingotInvar>, <gregtech:meta_item_2:5126>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

//Крафт голов напильков из GT
Anvil.addRecipe("tfc:file_head/Bronze", <ore:ingotBronze>, <gregtech:meta_item_2:6095>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BismuthBronze", <ore:ingotBlackBronze>, <gregtech:meta_item_2:6229>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackBronze", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:6230>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

//Платиновые короны
recipes.remove(<tfcthings:crown/platinum_opal>);
recipes.remove(<tfcthings:crown/platinum_jasper>);
recipes.remove(<tfcthings:crown/platinum_jade>);
recipes.remove(<tfcthings:crown/platinum_garnet>);
recipes.remove(<tfcthings:crown/platinum_emerald>);
recipes.remove(<tfcthings:crown/platinum_diamond>);
recipes.remove(<tfcthings:crown/platinum_beryl>);
recipes.remove(<tfcthings:crown/platinum_amethyst>);
recipes.remove(<tfcthings:crown/platinum_agate>);
recipes.remove(<tfcthings:crown/platinum_ruby>);
recipes.remove(<tfcthings:crown/platinum_sapphire>);
recipes.remove(<tfcthings:crown/platinum_topaz>);
recipes.remove(<tfcthings:crown/platinum_tourmaline>);
//Золотые короны
recipes.remove(<tfcthings:crown/gold_jade>);
recipes.remove(<tfcthings:crown/gold_garnet>);
recipes.remove(<tfcthings:crown/gold_emerald>);
recipes.remove(<tfcthings:crown/gold_diamond>);
recipes.remove(<tfcthings:crown/gold_beryl>);
recipes.remove(<tfcthings:crown/gold_amethyst>);
recipes.remove(<tfcthings:crown/gold_agate>);
recipes.remove(<tfcthings:crown/gold_topaz>);
recipes.remove(<tfcthings:crown/gold_tourmaline>);
recipes.remove(<tfcthings:crown/gold_sapphire>);
recipes.remove(<tfcthings:crown/gold_ruby>);
recipes.remove(<tfcthings:crown/gold_opal>);
recipes.remove(<tfcthings:crown/gold_jasper>);

//Серебрянные короны
recipes.addShapeless (<tfcthings:crown/platinum_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless (<tfcthings:crown/platinum_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless (<tfcthings:crown/platinum_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless (<tfcthings:crown/platinum_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless (<tfcthings:crown/platinum_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless (<tfcthings:crown/platinum_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless (<tfcthings:crown/platinum_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless (<tfcthings:crown/platinum_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless (<tfcthings:crown/platinum_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless (<tfcthings:crown/platinum_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless (<tfcthings:crown/platinum_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless (<tfcthings:crown/platinum_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless (<tfcthings:crown/platinum_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJade>]);
//Золотые короны
recipes.addShapeless (<tfcthings:crown/gold_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless (<tfcthings:crown/gold_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless (<tfcthings:crown/gold_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless (<tfcthings:crown/gold_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless (<tfcthings:crown/gold_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless (<tfcthings:crown/gold_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless (<tfcthings:crown/gold_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless (<tfcthings:crown/gold_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless (<tfcthings:crown/gold_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless (<tfcthings:crown/gold_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless (<tfcthings:crown/gold_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless (<tfcthings:crown/gold_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless (<tfcthings:crown/gold_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJade>]);

//TFC-TECH
recipes.remove(<tfctech:metal/copper_inductor>);
recipes.addShaped(<tfctech:metal/copper_inductor>,
[[null, <ore:wireGtSingleCopper>, null],
 [<ore:wireGtSingleCopper>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:wireGtSingleCopper>],
 [null, <ore:wireGtSingleCopper>, null]]);

recipes.remove(<tfctech:fridge>);
recipes.addShaped(<tfctech:fridge>,
[[<ore:plateSteel>, <tfctech:metal/copper_inductor>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:sheetDoubleWroughtIron>, <ore:plateSteel>],
 [<ore:plateSteel>, <tfctech:metal/copper_inductor>, <ore:plateSteel>]]);
 
recipes.remove(<tfctech:induction_crucible>);
recipes.addShaped(<tfctech:induction_crucible>,
[[<ore:plateSteel>, null, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);
 
recipes.remove(<tfctech:electric_forge>);
recipes.addShaped(<tfctech:electric_forge>,
[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>],
 [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>],
 [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/propick_head>);
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/hammer_head>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/sleeve>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/rackwheel_piece>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/glass_block>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/glass_pane>);
Heating.removeRecipe(<tfctech:latex/rubber>);
Barrel.removeRecipe(<tfctech:latex/rubber_mix>*6);
Anvil.removeRecipe(<tfctech:metal/iron_tongs>);
Anvil.removeRecipe(<tfctech:metal/black_steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/iron_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/iron_groove>);
Anvil.removeRecipe(<tfctech:metal/iron_bowl_mount>);
Heating.removeRecipe(<tfctech:ceramics/mold/glass_block>);
Heating.removeRecipe(<tfctech:ceramics/mold/glass_pane>);
Heating.removeRecipe(<tfctech:ceramics/mold/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/sleeve>);

//Отключение вытяжных трубок
Anvil.removeRecipe(<tfctech:metal/red_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/blue_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/black_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/wrought_iron_blowpipe>);
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
//Anvil.removeRecipe(<tfctech:metal/thaumium_blowpipe>);//Таумиум