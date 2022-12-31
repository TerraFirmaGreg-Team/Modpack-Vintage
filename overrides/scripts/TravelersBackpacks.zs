import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Рюкзак
recipes.addShaped("tfg/travelersbackpacks/travelers_backpack", <travelersbackpack:travelers_backpack>, [
    [<ore:leather>, <metaitem:plateDoubleGold>, <ore:leather>],
    [<metaitem:drum.steel>, <ore:chestWood>, <metaitem:drum.steel>],
    [<ore:leather>, <ore:bed>, <ore:leather>]]);

// Носик
recipes.addShaped("tfg/travelersbackpacks/hose_nozzle", <travelersbackpack:hose_nozzle>, [
    [<metaitem:ringGold>, <minecraft:lever>, null]]);

// Шланг
recipes.addShaped("tfg/travelersbackpacks/hose", <travelersbackpack:hose>, [
    [<travelersbackpack:hose_nozzle>, <ore:dyeGreen>, null],
    [<ore:dyeGreen>, <metaitem:plateRubber>, <ore:dyeGreen>],
    [null, <ore:dyeGreen>, <metaitem:plateRubber>]]);