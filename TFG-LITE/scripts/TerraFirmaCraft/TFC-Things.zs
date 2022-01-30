import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;

//Удаление мусора
val RemoveItemsFromJEI as IItemStack[] = [
    <tfcthings:pigvil>,
    <tfcthings:pigvil_black_steel>,
    <tfcthings:pigvil_blue_steel>,
    <tfcthings:pigvil_red_steel>,
    <tfcthings:pigvil_purple_steel>,
    <tfcthings:mold/unfired/prospectors_hammer_head>,
    <tfcthings:mold/prospectors_hammer_head>,
    <tfcthings:pig_iron_carrot>,
    <tfcthings:black_steel_carrot>,
    <tfcthings:blue_steel_carrot>,
    <tfcthings:red_steel_carrot>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

val ItemsToRemove as IItemStack[] = [
	//Платиновые короны
    <tfcthings:crown/platinum_opal>,
    <tfcthings:crown/platinum_jasper>,
    <tfcthings:crown/platinum_jade>,
    <tfcthings:crown/platinum_garnet>,
    <tfcthings:crown/platinum_emerald>,
    <tfcthings:crown/platinum_diamond>,
    <tfcthings:crown/platinum_beryl>,
    <tfcthings:crown/platinum_amethyst>,
    <tfcthings:crown/platinum_agate>,
    <tfcthings:crown/platinum_ruby>,
    <tfcthings:crown/platinum_sapphire>,
    <tfcthings:crown/platinum_topaz>,
    <tfcthings:crown/platinum_tourmaline>,
    //Золотые короны
    <tfcthings:crown/gold_jade>,
    <tfcthings:crown/gold_garnet>,
    <tfcthings:crown/gold_emerald>,
    <tfcthings:crown/gold_diamond>,
    <tfcthings:crown/gold_beryl>,
    <tfcthings:crown/gold_amethyst>,
    <tfcthings:crown/gold_agate>,
    <tfcthings:crown/gold_topaz>,
    <tfcthings:crown/gold_tourmaline>,
    <tfcthings:crown/gold_sapphire>,
    <tfcthings:crown/gold_ruby>,
    <tfcthings:crown/gold_opal>,
    <tfcthings:crown/gold_jasper>,
    //Other
    <tfcthings:sling_ammo_light>,
    <tfcthings:sling_ammo_spread>,
    <tfcthings:diamond_grit>
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

//Поименное удаление
recipes.removeByRecipeName("tfcthings:grindstone_base_steel");
recipes.removeByRecipeName("tfcthings:grindstone_base");

//Removing Prospect Hammer
ClayKnapping.removeRecipe(<tfcthings:mold/unfired/prospectors_hammer_head>);
Heating.removeRecipe(<tfcthings:mold/prospectors_hammer_head>);

//Remove carrots
Anvil.removeRecipe(<tfcthings:pig_iron_carrot>);
Anvil.removeRecipe(<tfcthings:black_steel_carrot>);
Anvil.removeRecipe(<tfcthings:blue_steel_carrot>);
Anvil.removeRecipe(<tfcthings:red_steel_carrot>);

//Серебрянные короны
recipes.addShapeless(<tfcthings:crown/platinum_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless(<tfcthings:crown/platinum_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless(<tfcthings:crown/platinum_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless(<tfcthings:crown/platinum_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless(<tfcthings:crown/platinum_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless(<tfcthings:crown/platinum_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless(<tfcthings:crown/platinum_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless(<tfcthings:crown/platinum_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless(<tfcthings:crown/platinum_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless(<tfcthings:crown/platinum_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless(<tfcthings:crown/platinum_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless(<tfcthings:crown/platinum_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless(<tfcthings:crown/platinum_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJade>]);
//Золотые короны
recipes.addShapeless(<tfcthings:crown/gold_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless(<tfcthings:crown/gold_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless(<tfcthings:crown/gold_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless(<tfcthings:crown/gold_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless(<tfcthings:crown/gold_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless(<tfcthings:crown/gold_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless(<tfcthings:crown/gold_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless(<tfcthings:crown/gold_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless(<tfcthings:crown/gold_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless(<tfcthings:crown/gold_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless(<tfcthings:crown/gold_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless(<tfcthings:crown/gold_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless(<tfcthings:crown/gold_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJade>]);

//Fix Bracing recipe
Anvil.removeRecipe(<tfcthings:metal_bracing>);
Anvil.removeRecipe(<tfcthings:metal_bracing> * 2);
Anvil.addRecipe("tfg:tfcthings_bracing_wrought_iron", <ore:ingotWroughtIron>, <tfcthings:metal_bracing>, 3, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:tfcthings_bracing_steel", <ore:ingotSteel>, <tfcthings:metal_bracing> * 2, 4, "general", "BEND_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");

//TFC-Things Sling Ammo с помощью GT молота
//Sling Ammo Spread
recipes.addShapeless(<tfcthings:sling_ammo_spread>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>]);
//Sling Ammo Light
recipes.addShapeless(<tfcthings:sling_ammo_light>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>, <ore:craftingToolFile>.firstItem.withEmptyTag()]);

//Алмазная пыль --> крошка TFC
Quern.addRecipe("tfg:tfcthings_diamond_grit", <ore:dustDiamond>, <tfcthings:diamond_grit>);

//Fix Bear Trap
Anvil.removeRecipe(<tfcthings:bear_trap_half>);
Anvil.addRecipe("tfg:tfcthings_bear_trap", <ore:plateSteel>, <tfcthings:bear_trap_half>, 3, "general", "HIT_LAST", "DRAW_SECOND_LAST", "SHRINK_THIRD_LAST");

//Fix Heavy Sling Ammo recipe
Anvil.removeRecipe(<tfcthings:sling_ammo> * 8);
Anvil.removeRecipe(<tfcthings:sling_ammo> * 16);
Anvil.addRecipe("tfg:tfcthings_sling_ammo_wrought_iron", <ore:ingotWroughtIron>, <tfcthings:sling_ammo> * 8, 3, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg:tfcthings_sling_ammo__steel", <ore:ingotSteel>, <tfcthings:sling_ammo> * 16, 4, "general", "HIT_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

//Минус точильный камень
recipes.addShaped(<tfcthings:grindstone_base>,
[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
 [<ore:lumber>, null, <ore:lumber>]]);

//Black Steel Grindstone
Anvil.removeRecipe(<tfcthings:grindstone_steel>);
Anvil.addRecipe("tfg:grindstone_steel", <tfcthings:grindstone_quartz>, <ore:plateDoubleBlackSteel>, <tfcthings:grindstone_steel>, 5);

//Исправление крафта молотков
/*
Anvil.removeRecipe(<firmalife:bismuth_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:black_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:copper_mallet_head>);
Anvil.removeRecipe(<firmalife:wrought_iron_mallet_head>);
Anvil.removeRecipe(<firmalife:steel_mallet_head>);
Anvil.removeRecipe(<firmalife:black_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:blue_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:red_steel_mallet_head>);
Anvil.addRecipe("tfg:firmalife_bismuth_bronze_hammer", <ore:ingotBismuthBronze>, <firmalife:bismuth_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_bronze_hammer", <ore:ingotBlackBronze>, <firmalife:black_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_bronze_hammer", <ore:ingotBronze>, <firmalife:bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_copper_hammer", <ore:ingotCopper>, <firmalife:copper_mallet_head>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_wrought_iron_hammer", <ore:ingotWroughtIron>, <firmalife:wrought_iron_mallet_head>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_steel_hammer", <ore:ingotSteel>, <firmalife:steel_mallet_head>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_steel_hammer", <ore:ingotBlackSteel>, <firmalife:black_steel_mallet_head>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_blue_steel_hammer", <ore:ingotBlueSteel>, <firmalife:blue_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_red_steel_hammer", <ore:ingotRedSteel>, <firmalife:red_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");*/