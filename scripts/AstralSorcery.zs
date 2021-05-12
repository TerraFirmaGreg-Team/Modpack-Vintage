import mods.astralsorcery.LiquidInteraction;
import mods.astralsorcery.LightTransmutation;

//Отключение крафтов
recipes.remove(<astralsorcery:blockblackmarble>);

//Крафт руды звездного металла
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);
mods.astralsorcery.LightTransmutation.addTransmutation(<gregtech:ore_iron_0>, <astralsorcery:blockcustomore:1>, 10);

//Фикс переплавки в печке
furnace.remove(<astralsorcery:itemcraftingcomponent>*3);
furnace.addRecipe(<astralsorcery:itemcraftingcomponent>*3, <contenttweaker:aquamarine_andesite_sand>);

//Угольный мрамор
recipes.addShaped(<astralsorcery:blockblackmarble>*8,
[[<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
 [<ore:stoneMarble>, <ore:gemCoal>, <ore:stoneMarble>],
 [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]]);