import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление и скрытие предметов
val ItemsToRemove as IItemStack[] = [
	<projectred-core:resource_item:100>,
    <projectred-core:resource_item:101>,
    <projectred-core:resource_item:102>,
] as IItemStack[];
for item in ItemsToRemove{
    mods.jei.JEI.removeAndHide(item);
}

furnace.remove(<projectred-core:resource_item> * 2);

// --- Adding Recipes

furnace.addRecipe(<projectred-core:resource_item> * 2, <ore:RawIgneousExtrusive>);

//Iron Coil
recipes.remove(<projectred-core:resource_item:401>);
recipes.addShaped(<projectred-core:resource_item:401>,
[[null, <ore:barsIron>, <ore:stickIron>],
 [<ore:barsIron>, <ore:stickIron>, <ore:barsIron>],
 [<ore:stickIron>, <ore:barsIron>, null]]);
