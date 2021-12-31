import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

// --- Furnace recipes for TFC items
furnace.addRecipe(<firmalife:unfired_mallet_mold>, <firmalife:mallet_mold>);

//Климатическая станция уровня 0
recipes.remove(<firmalife:climate_station>);
recipes.addShaped(<firmalife:climate_station>,
[[<ore:plateWroughtIron>, <ore:plankWood>, <ore:plateWroughtIron>],
 [<ore:dustRedstone>, <ore:blockGlass>, <ore:dustRedstone>],
 [<ore:plateWroughtIron>, <ore:plankWood>, <ore:plateWroughtIron>]]);

//Климатическая станция уровня 1
recipes.remove(<firmalife:climate_station_1>);
recipes.addShaped(<firmalife:climate_station_1>,
[[<ore:plateWroughtIron>, <ore:blockGlass>, <ore:plateWroughtIron>],
 [<ore:blockGlass>, <firmalife:climate_station>, <ore:blockGlass>],
 [<ore:plateWroughtIron>, <ore:blockGlass>, <ore:plateWroughtIron>]]);

//Свечка
recipes.remove(<firmalife:candle> * 6);
recipes.addShapeless(<firmalife:candle> * 6, [<ore:itemBeeswax>, <ore:string>]);

//Обработанное дерево
recipes.remove(<firmalife:treated_lumber>);
recipes.addShapeless(<firmalife:treated_lumber>, [<ore:lumber>, <ore:itemBeeswax>, <ore:dustSalt>]);

//Greenhouse Door
Anvil.removeRecipe(<firmalife:greenhouse_door>);
Anvil.addRecipe("firmalife:greenhouse_door_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_door> * 4, 3, "general", "HIT_NOT_LAST", "HIT_NOT_LAST", "PUNCH_LAST");

//Бафф крафта стен теплицы
Anvil.removeRecipe(<firmalife:greenhouse_wall>*2);
Anvil.addRecipe("firmalife:greenhouse_wall_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_wall> * 4, 3, "general", "HIT_NOT_LAST", "PUNCH_NOT_LAST", "SHRINK_LAST");

//Бафф крафта крыши теплицы
Anvil.removeRecipe(<firmalife:greenhouse_roof>*2);
Anvil.addRecipe("firmalife:greenhouse_roof_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_roof> * 4, 3, "general", "HIT_THIRD_LAST", "PUNCH_SECOND_LAST", "PUNCH_LAST");