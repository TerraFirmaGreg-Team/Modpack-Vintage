import crafttweaker.item.IItemStack;

// --- Массивы
val RemoveWorkbenchRecipes as IItemStack[] = [
	<enderstorage:ender_storage>,
  <enderstorage:ender_storage:1>,
] as IItemStack[];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
  recipes.remove(item);
}

// ---- Добавление рецептов

// Chest
assembler.recipeBuilder()
  .circuit(1)
  .inputs([<ore:plateBronze> * 4,<ore:plateObsidian> * 32, <ore:wool>, <metaitem:cover.ender_fluid_link>, <metaitem:super_chest.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage>])
  .duration(980)
  .EUt(2080)
  .buildAndRegister();

// Tank
assembler.recipeBuilder()
  .circuit(2)
  .inputs([<ore:plateBronze> * 4, <ore:plateObsidian> * 32, <ore:wool>, <metaitem:cover.ender_fluid_link>, <metaitem:super_tank.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage:1>])
  .duration(980)
  .EUt(2080)
  .buildAndRegister();