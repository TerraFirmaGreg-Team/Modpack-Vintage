import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.Anvil;
import mods.firmalife.Drying;
import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
	<firmalife:climate_station>,
    <firmalife:climate_station_1>,
    <firmalife:climate_station_5>,
    <firmalife:sprinkler>,
    <firmalife:candle> * 6,
    <firmalife:treated_lumber>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// --- Adding Recipes

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

// Климатическая станция уровня 0
recipes.addShaped(<firmalife:climate_station>,
[[<ore:plateWroughtIron>, <ore:plankWood>, <ore:plateWroughtIron>],
  [<ore:dustRedstone>, <ore:blockGlass>, <ore:dustRedstone>],
  [<ore:plateWroughtIron>, <ore:plankWood>, <ore:plateWroughtIron>]]);

// Климатическая станция уровня 1
recipes.addShaped(<firmalife:climate_station_1>,
[[<ore:plateWroughtIron>, <ore:blockGlass>, <ore:plateWroughtIron>],
  [<ore:blockGlass>, <firmalife:climate_station>, <ore:blockGlass>],
  [<ore:plateWroughtIron>, <ore:blockGlass>, <ore:plateWroughtIron>]]);

// Климатическая станция уровня 5
recipes.addShaped(<firmalife:climate_station_5>,
[[<ore:gearCobaltBrass>, <ore:gemFlawless>, <ore:gearCobaltBrass>],
  [<ore:gemFlawless>, <firmalife:climate_station_4>, <ore:gemFlawless>],
  [<ore:gearCobaltBrass>, <ore:gemFlawless>, <ore:gearCobaltBrass>]]);

// Разбрызгиватель
recipes.addShaped(<firmalife:sprinkler>,
[[<ore:gearCobaltBrass>, null, <ore:gearCobaltBrass>],
  [<ore:plateRedSteel>, <firmalife:spout>, <ore:plateRedSteel>],
  [<ore:gearCobaltBrass>, null, <ore:gearCobaltBrass>]]);

// Свечка
recipes.addShapeless(<firmalife:candle> * 6, [<ore:itemBeeswax>, <ore:string>]);

// Обработанное дерево
recipes.addShapeless(<firmalife:treated_lumber>, [<ore:lumber>, <ore:itemBeeswax>, <ore:dustSalt>]);

// Furnace recipes for TFC item
furnace.addRecipe(<firmalife:unfired_mallet_mold>, <firmalife:mallet_mold>);

// Удобрение
Drying.addRecipe("tfg:wood_ash_to_fertilizer", <tfc:wood_ash>, <tfc:powder/fertilizer>, 8000);

// Высушивание соли
Drying.addRecipe("tfg:saltwatertosalt", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "salt_water", Amount: 1000}}), <contenttweaker:wooden_bucket_with_salt>, 24000);
recipes.addShapeless(<metaitem:dustSmallSalt> * 2, [<contenttweaker:wooden_bucket_with_salt>.giveBack(<tfc:wooden_bucket>)]);

// Greenhouse Door
Anvil.removeRecipe(<firmalife:greenhouse_door>);
Anvil.addRecipe("firmalife:greenhouse_door_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_door> * 4, 3, "general", "HIT_NOT_LAST", "HIT_NOT_LAST", "PUNCH_LAST");

// Бафф крафта стен теплицы
Anvil.removeRecipe(<firmalife:greenhouse_wall>*2);
Anvil.addRecipe("firmalife:greenhouse_wall_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_wall> * 4, 3, "general", "HIT_NOT_LAST", "PUNCH_NOT_LAST", "SHRINK_LAST");

// Бафф крафта крыши теплицы
Anvil.removeRecipe(<firmalife:greenhouse_roof>*2);
Anvil.addRecipe("firmalife:greenhouse_roof_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_roof> * 4, 3, "general", "HIT_THIRD_LAST", "PUNCH_SECOND_LAST", "PUNCH_LAST");

// Исправление крафта молотков
// Удаление
Anvil.removeRecipe(<firmalife:bismuth_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:black_bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:bronze_mallet_head>);
Anvil.removeRecipe(<firmalife:copper_mallet_head>);
Anvil.removeRecipe(<firmalife:wrought_iron_mallet_head>);
Anvil.removeRecipe(<firmalife:steel_mallet_head>);
Anvil.removeRecipe(<firmalife:black_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:blue_steel_mallet_head>);
Anvil.removeRecipe(<firmalife:red_steel_mallet_head>);
// Добавление
Anvil.addRecipe("tfg:firmalife_bismuth_bronze_hammer", <ore:ingotBismuthBronze>, <firmalife:bismuth_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_bronze_hammer", <ore:ingotBlackBronze>, <firmalife:black_bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_bronze_hammer", <ore:ingotBronze>, <firmalife:bronze_mallet_head>, 2, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_copper_hammer", <ore:ingotCopper>, <firmalife:copper_mallet_head>, 1, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_wrought_iron_hammer", <ore:ingotWroughtIron>, <firmalife:wrought_iron_mallet_head>, 3, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_steel_hammer", <ore:ingotSteel>, <firmalife:steel_mallet_head>, 4, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_black_steel_hammer", <ore:ingotBlackSteel>, <firmalife:black_steel_mallet_head>, 5, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_blue_steel_hammer", <ore:ingotBlueSteel>, <firmalife:blue_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");
Anvil.addRecipe("tfg:firmalife_red_steel_hammer", <ore:ingotRedSteel>, <firmalife:red_steel_mallet_head>, 6, "general", "PUNCH_LAST", "PUNCH_SECOND_LAST", "SHRINK_THIRD_LAST");

