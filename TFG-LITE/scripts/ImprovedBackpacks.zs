import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление рецептов
val RemoveWorkbenchRecipes as IItemStack[] = [
  <improvedbackpacks:upgrade:2>,
  <improvedbackpacks:upgrade:3>,
  <improvedbackpacks:upgrade:4>
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Adding Recipes

// Iron Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:2>,
[[null, <improvedbackpacks:tanned_leather>, null],
  [<ore:plateWroughtIron>, <improvedbackpacks:blank_upgrade>, <ore:plateWroughtIron>],
  [null, <ore:plateWroughtIron>, null]]);

// Gold Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:3>,
[[null, <improvedbackpacks:tanned_leather>, null],
  [<ore:plateGold>, <improvedbackpacks:blank_upgrade>, <ore:plateGold>],
  [null, <ore:plateGold>, null]]);

// Diamond Upgrade
recipes.addShaped(<improvedbackpacks:upgrade:4>,
[[null, <improvedbackpacks:tanned_leather>, null],
  [<ore:plateDiamond>, <improvedbackpacks:blank_upgrade>, <ore:plateDiamond>],
  [null, <ore:plateDiamond>, null]]);