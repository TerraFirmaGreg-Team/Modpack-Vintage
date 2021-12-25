import crafttweaker.item.IItemStack;

//Удаление и скрытие предметов
/*
global ItemsToRemovePR as IItemStack[] = [
	
] as IItemStack[];
for item in ItemsToRemovePR{
    mods.jei.JEI.removeAndHide(item);
}*/

//Iron Coil
recipes.remove(<projectred-core:resource_item:401>);
recipes.addShaped(<projectred-core:resource_item:401>,
[[null, <ore:barsIron>, <ore:stickIron>],
 [<ore:barsIron>, <ore:stickIron>, <ore:barsIron>],
 [<ore:stickIron>, <ore:barsIron>, null]]);
