import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.remove(<workbenchplus:workbenchplus>);

// --- Добавление рецептов
// Верстак
recipes.addShaped("tfg/workbenchplus/workbench", <workbenchplus:workbenchplus>, [
    [<ore:chestWood>, <ore:trapdoormetal>, <ore:chestWood>],
    [<ore:plateIronAny>, <ore:craftingTableWood>, <ore:plateIronAny>],
    [<ore:plateIronAny>, <ore:gtce.tool.saws>, <ore:plateIronAny>]]);