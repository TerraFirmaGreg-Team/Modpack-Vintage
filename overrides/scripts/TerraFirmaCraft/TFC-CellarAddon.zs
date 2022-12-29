import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Стенка подвала
recipes.addShaped("tfg/cellars/cellar_wall", <cellars:cellar_wall>, [
    [<ore:lumber>, <ore:straw>, <ore:lumber>],
    [<ore:clay>, null, <ore:clay>],
    [<ore:lumber>, <ore:straw>, <ore:lumber>]]);

// Дверь подвала
recipes.addShaped("tfg/cellars/cellar_door", <cellars:cellar_door>, [
    [<ore:lumber>, <ore:clay>, <ore:lumber>],
    [<ore:lumber>, <ore:straw>, <ore:lumber>],
    [<ore:lumber>, <ore:clay>, <ore:lumber>]]);
