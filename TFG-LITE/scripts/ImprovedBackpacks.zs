import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveWorkbenchRecipes as IItemStack[] = [
    <improvedbackpacks:upgrade:2>,
    <improvedbackpacks:upgrade:3>,
    <improvedbackpacks:upgrade:4>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Добавление рецептов

// Iron Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:2>, [
    [null, <improvedbackpacks:tanned_leather>, null],
    [<ore:plateIronAny>, <improvedbackpacks:blank_upgrade>, <ore:plateIronAny>],
    [null, <ore:plateIronAny>, null]]);

// Gold Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:3>, [
    [null, <improvedbackpacks:tanned_leather>, null],
    [<ore:plateGold>, <improvedbackpacks:blank_upgrade>, <ore:plateGold>],
    [null, <ore:plateGold>, null]]);

// Diamond Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:4>, [
    [null, <improvedbackpacks:tanned_leather>, null],
    [<ore:plateDiamond>, <improvedbackpacks:blank_upgrade>, <ore:plateDiamond>],
    [null, <ore:plateDiamond>, null]]);