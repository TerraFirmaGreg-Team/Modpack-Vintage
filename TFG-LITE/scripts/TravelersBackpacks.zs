import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveWorkbenchRecipes as IItemStack[] = [
    <travelersbackpack:hose_nozzle>,
    <travelersbackpack:hose>,
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// Поименное удаление рецептов
recipes.removeByRecipeName("travelersbackpack:travelers_backpack_standard");

// --- Добавление рецептов

// Рюкзак
recipes.addShaped(<travelersbackpack:travelers_backpack>, [
    [<ore:leather>, <metaitem:plateDoubleGold>, <ore:leather>],
    [<metaitem:drum.steel>, <ore:chestWood>, <metaitem:drum.steel>],
    [<ore:leather>, <ore:bed>, <ore:leather>]]);

// Носик
recipes.addShaped(<travelersbackpack:hose_nozzle>, [
    [<metaitem:ringGold>, <minecraft:lever>, null]]);

// Шланг
recipes.addShaped(<travelersbackpack:hose>, [
    [<travelersbackpack:hose_nozzle>, <ore:dyeGreen>, null],
    [<ore:dyeGreen>, <metaitem:plateRubber>, <ore:dyeGreen>],
    [null, <ore:dyeGreen>, <metaitem:plateRubber>]]);