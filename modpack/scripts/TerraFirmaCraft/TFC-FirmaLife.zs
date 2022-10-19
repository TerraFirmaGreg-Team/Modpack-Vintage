import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

import mods.firmalife.Oven;
import mods.firmalife.Drying;



// --- Добавление рецептов

// Присвоение единиц металла
// Mallet Heads
ItemRegistry.registerItemMetal(<firmalife:bismuth_bronze_mallet_head>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:black_bronze_mallet_head>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:bronze_mallet_head>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:copper_mallet_head>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<firmalife:wrought_iron_mallet_head>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<firmalife:steel_mallet_head>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:black_steel_mallet_head>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:blue_steel_mallet_head>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:red_steel_mallet_head>, "RED_STEEL", 144, true);
// Mallets
ItemRegistry.registerItemMetal(<firmalife:bismuth_bronze_mallet>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:black_bronze_mallet>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:bronze_mallet>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<firmalife:copper_mallet>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<firmalife:wrought_iron_mallet>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<firmalife:steel_mallet>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:black_steel_mallet>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:blue_steel_mallet>, "BLUE_STEEL", 144, true);
ItemRegistry.registerItemMetal(<firmalife:red_steel_mallet>, "RED_STEEL", 144, true);

// Забор
for i, FirmalifeFences in FirmalifeFences {
    recipes.addShaped("tfg/firmalife/fence_" + i, FirmalifeFences * 8,
        [[null, null, null],
        [TFC_Planks[i + 95], TFC_Lumber[i + 95], TFC_Planks[i + 95]],
        [TFC_Planks[i + 95], TFC_Lumber[i + 95], TFC_Planks[i + 95]]]);
}

// Калитки
for i, FirmalifeFenceGates in FirmalifeFenceGates {
    recipes.addShaped("tfg/firmalife/fencegate_" + i, FirmalifeFenceGates * 2,
        [[null, null, null],
        [TFC_Lumber[i + 95], TFC_Planks[i + 95], TFC_Lumber[i + 95]],
        [TFC_Lumber[i + 95], TFC_Planks[i + 95], TFC_Lumber[i + 95]]]);
}

// Двери
for i, FirmalifeDoors in FirmalifeDoors {
    recipes.addShaped("tfg/firmalife/door_" + i, FirmalifeDoors * 2,
        [[TFC_Lumber[i + 95], TFC_Lumber[i + 95], null],
        [TFC_Lumber[i + 95], TFC_Lumber[i + 95], null],
        [TFC_Lumber[i + 95], TFC_Lumber[i + 95], null]]);
}

// Люки
for i, FirmalifeTrapdoors in FirmalifeTrapdoors {
    recipes.addShaped("tfg/firmalife/trapdoor_" + i, FirmalifeTrapdoors * 3,
        [[null, null, null],
        [TFC_Lumber[i + 95], TFC_Lumber[i + 95], TFC_Lumber[i + 95]],
        [TFC_Lumber[i + 95], TFC_Lumber[i + 95], TFC_Lumber[i + 95]]]);
}

// Климатическая станция уровня 0
recipes.addShaped("tfg/firmalife/climate_station_0", <firmalife:climate_station>, [
    [<metaitem:plateWroughtIron>, <ore:plankWood>, <metaitem:plateWroughtIron>],
    [<minecraft:redstone>, <ore:blockGlass>, <minecraft:redstone>],
    [<metaitem:plateWroughtIron>, <ore:plankWood>, <metaitem:plateWroughtIron>]]);

// Климатическая станция уровня 1
recipes.addShaped("tfg/firmalife/climate_station_1", <firmalife:climate_station_1>, [
    [<metaitem:plateWroughtIron>, <ore:blockGlass>, <metaitem:plateWroughtIron>],
    [<ore:blockGlass>, <firmalife:climate_station>, <ore:blockGlass>],
    [<metaitem:plateWroughtIron>, <ore:blockGlass>, <metaitem:plateWroughtIron>]]);

// Климатическая станция уровня 5
recipes.addShaped("tfg/firmalife/climate_station_5", <firmalife:climate_station_5>, [
    [<metaitem:gearCobaltBrass>, <ore:gemFlawless>, <metaitem:gearCobaltBrass>],
    [<ore:gemFlawless>, <firmalife:climate_station_4>, <ore:gemFlawless>],
    [<metaitem:gearCobaltBrass>, <ore:gemFlawless>, <metaitem:gearCobaltBrass>]]);

// Разбрызгиватель
recipes.addShaped("tfg/firmalife/sprinkler", <firmalife:sprinkler>, [
    [<metaitem:gearCobaltBrass>, null, <metaitem:gearCobaltBrass>],
    [<metaitem:plateRedSteel>, <firmalife:spout>, <metaitem:plateRedSteel>],
    [<metaitem:gearCobaltBrass>, null, <metaitem:gearCobaltBrass>]]);

// Jar
recipes.addShaped("tfg/firmalife/jar", <firmalife:jar>, [
    [null, <ore:plateIronAny>, null],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [null, <ore:paneGlass>, null]]);


// Pizza Dough
recipes.addShapeless("tfg/firmalife/pizza_dough", <firmalife:pizza_dough>, [<ore:gtce.tool.knife>, <ore:doughFlat>, <tfc:plants/basil>, <firmalife:tomato_sauce>, <ore:gtce.tool.rolling.pins>]);

// Свечка
recipes.addShapeless("tfg/firmalife/candle", <firmalife:candle> * 6, [<ore:itemBeeswax>, <ore:string>]);

// Обработанное дерево
recipes.addShapeless("tfg/firmalife/treated_lumber", <firmalife:treated_lumber>, [<ore:lumber>, <ore:itemBeeswax>, <metaitem:dustSalt>]);

// Furnace recipes for TFC item
furnace.addRecipe(<firmalife:unfired_mallet_mold>, <firmalife:mallet_mold>);

// Удобрение
Drying.addRecipe("tfg/firmalife/fertilizer", <tfc:wood_ash>, <tfc:powder/fertilizer>, 8000);

// Высушивание соли
Drying.addRecipe("tfg/firmalife/salt", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "salt_water", Amount: 1000}}), <metaitem:wooden.bucket.with.salt>, 24000);
recipes.addShapeless(<metaitem:dustSmallSalt> * 2, [<metaitem:wooden.bucket.with.salt>.giveBack(<tfc:wooden_bucket>)]);

// Greenhouse Door
Anvil.addRecipe("tfg/firmalife/greenhouse_door", <metaitem:plateWroughtIron>, <firmalife:greenhouse_door> * 4, 3, "general", "HIT_NOT_LAST", "HIT_NOT_LAST", "PUNCH_LAST");

// Бафф крафта стен теплицы
Anvil.addRecipe("tfg/firmalife/greenhouse_wall", <metaitem:plateWroughtIron>, <firmalife:greenhouse_wall> * 4, 3, "general", "HIT_NOT_LAST", "PUNCH_NOT_LAST", "SHRINK_LAST");

// Бафф крафта крыши теплицы
Anvil.addRecipe("tfg/firmalife/greenhouse_roof", <metaitem:plateWroughtIron>, <firmalife:greenhouse_roof> * 4, 3, "general", "HIT_THIRD_LAST", "PUNCH_SECOND_LAST", "PUNCH_LAST");

// Treated Lumber
Barrel.addRecipe("tfg/firmalife/treated_lumber", <ore:lumber>, <liquid:gtfo_olive_oil> * 500, <firmalife:treated_lumber>, 8);

// Молотки
Anvil.addRecipe("tfg:firmalife_bismuth_bronze_hammer", <metaitem:ingotBismuthBronze>, <firmalife:bismuth_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_bronze_hammer", <metaitem:ingotBlackBronze>, <firmalife:black_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_bronze_hammer", <metaitem:ingotBronze>, <firmalife:bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_copper_hammer", <metaitem:ingotCopper>, <firmalife:copper_mallet_head>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_wrought_iron_hammer", <metaitem:ingotWroughtIron>, <firmalife:wrought_iron_mallet_head>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_steel_hammer", <metaitem:ingotSteel>, <firmalife:steel_mallet_head>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_steel_hammer", <metaitem:ingotBlackSteel>, <firmalife:black_steel_mallet_head>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_blue_steel_hammer", <metaitem:ingotBlueSteel>, <firmalife:blue_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_red_steel_hammer", <metaitem:ingotRedSteel>, <firmalife:red_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");

// Chestnut Dough
mixer.recipeBuilder()
    .inputs([<ore:chestnutFlour>, <metaitem:dustSmallSalt>, <ore:fruitDry>])
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs(<firmalife:chestnut_dough> * 2)
    .duration(400).EUt(2).buildAndRegister();

// Chestnut Bread
baking_oven.recipeBuilder()
    .inputs([<firmalife:chestnut_dough>, <minecraft:coal:1> * 2])
    .outputs(<firmalife:chestnut_bread>)
    .property("temperature", 500)
    .duration(400).EUt(1).buildAndRegister();

baking_oven.recipeBuilder()
    .inputs([<firmalife:chestnut_dough>, <minecraft:coal> * 2])
    .outputs(<firmalife:chestnut_bread>)
    .property("temperature", 500)
    .duration(400).EUt(1).buildAndRegister();

baking_oven.recipeBuilder()
    .inputs([<firmalife:chestnut_dough>, <metaitem:gemCoke>])
    .outputs(<firmalife:chestnut_bread>)
    .property("temperature", 500)
    .duration(400).EUt(1).buildAndRegister();

