import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление и скрытие предметов
val RemoveRecipes as IItemStack[] = [
	<toolbelt:belt>,
    <toolbelt:pouch>
] as IItemStack[];
for item in RemoveRecipes {
    recipes.remove(item);
}

// --- Adding Recipes

// Belt Pouch
recipes.addShaped(<toolbelt:pouch>, 
[[<ore:string>, <metaitem:ringGold>, <ore:string>],
 [<ore:leather>, null, <ore:leather>],
 [<ore:string>, <ore:leather>, <ore:string>]]);

// Belt
recipes.addShaped(<toolbelt:belt>, 
[[<ore:string>, <ore:leather>, <ore:string>],
 [<ore:leather>, null, <ore:leather>],
 [<ore:leather>, <ore:ringIronAny>, <ore:leather>]]);