//Телепортатор
recipes.remove(<waystones:warp_stone>);
recipes.remove(<waystones:waystone>);
recipes.addShaped(<waystones:waystone>,
[[null, <ore:stoneBrick>, null],
 [<ore:stoneBrick>, <waystones:warp_stone>, <ore:stoneBrick>],
 [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);