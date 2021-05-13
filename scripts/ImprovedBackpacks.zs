//Удаление рецептов
recipes.remove(<improvedbackpacks:upgrade:2>);
recipes.remove(<improvedbackpacks:upgrade:3>);
recipes.remove(<improvedbackpacks:upgrade:4>);

//Создание рецептов
//Улучшение железное
recipes.addShaped(<improvedbackpacks:upgrade:2>,
[[null, <improvedbackpacks:tanned_leather>, null],
 [<ore:plateIron>, <improvedbackpacks:blank_upgrade>, <ore:plateIron>],
 [null, <ore:plateIron>, null]]);
 
//Улучшение золотое
recipes.addShaped(<improvedbackpacks:upgrade:3>,
[[null, <improvedbackpacks:tanned_leather>, null],
 [<ore:plateGold>, <improvedbackpacks:blank_upgrade>, <ore:plateGold>],
 [null, <ore:plateGold>, null]]);
 
//Улучшение алмазное
recipes.addShaped(<improvedbackpacks:upgrade:4>,
[[null, <improvedbackpacks:tanned_leather>, null],
 [<ore:plateDiamond>, <improvedbackpacks:blank_upgrade>, <ore:plateDiamond>],
 [null, <ore:plateDiamond>, null]]);