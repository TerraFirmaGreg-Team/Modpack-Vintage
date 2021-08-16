import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;

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

//Бафф крафта стен теплицы
Anvil.removeRecipe(<firmalife:greenhouse_wall>*2);
Anvil.addRecipe("tfc:greenhouse_wall_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_wall> * 4, 3, "general", "HIT_NOT_LAST", "PUNCH_NOT_LAST", "SHRINK_LAST");

//Бафф крафта крыши теплицы
Anvil.removeRecipe(<firmalife:greenhouse_roof>*2);
Anvil.addRecipe("tfc:greenhouse_roof_fix", <ore:plateWroughtIron>, <firmalife:greenhouse_roof> * 4, 3, "general", "HIT_THIRD_LAST", "PUNCH_SECOND_LAST", "PUNCH_LAST");

//Фикс сыра
Barrel.addRecipe("fixedcheese", <liquid:milk_curdled>*625, <tfc:food/cheese>*2, 8);