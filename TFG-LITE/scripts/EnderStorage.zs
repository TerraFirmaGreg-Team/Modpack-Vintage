import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление рецептов
val RemoveWorkbenchRecipes as IItemStack[] = [
	<enderstorage:ender_storage>,
  <enderstorage:ender_storage:1>,
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
  recipes.remove(item);
}

// ---- Adding Recipes

// Chest
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <ore:plateBronze> * 4,
    <ore:plateObsidian> * 32,
    <ore:wool> | <ore:blockWool>,
    <metaitem:cover.ender_fluid_link>,
    <metaitem:super_chest.hv>
  ])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage>])
  .duration(980)
  .EUt(480)
  .buildAndRegister();

// Tank
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <ore:plateBronze> * 4,
    <ore:plateObsidian> * 32,
    <ore:wool> | <ore:blockWool>,
    <metaitem:cover.ender_fluid_link>,
    <metaitem:super_tank.hv>
  ])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage:1>])
  .duration(980)
  .EUt(480)
  .buildAndRegister();