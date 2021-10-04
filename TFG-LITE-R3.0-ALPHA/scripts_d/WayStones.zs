//Удаление рецептов
recipes.remove(<waystones:warp_stone>);
recipes.remove(<waystones:waystone>);

//Добавление рецептов
//Пьедестал
recipes.addShaped(<waystones:waystone>,
[[null, <ore:stoneBrick>, null],
 [<ore:stoneBrick>, <waystones:warp_stone>, <ore:stoneBrick>],
 [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//Варп камушек
recipes.addShaped(<waystones:warp_stone>,
[[<tfc:ore/lapis_lazuli>, <ore:plateIron>|<ore:plateWroughtIron>, <tfc:ore/lapis_lazuli>],
 [<ore:plateIron>|<ore:plateWroughtIron>, <ore:gemExquisite>, <ore:plateIron>|<ore:plateWroughtIron>],
 [<tfc:ore/lapis_lazuli>, <ore:plateIron>|<ore:plateWroughtIron>, <tfc:ore/lapis_lazuli>]]);