import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("enderstorage");

// ---- Добавление рецептов

// Chest
assembler.recipeBuilder()
  .circuit(1)
  .inputs([<ore:plateBronze> * 4,<ore:plateObsidian> * 32, <ore:wool>, <metaitem:cover.ender_fluid_link>, <metaitem:super_chest.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage>])
  .duration(980).EUt(2080).buildAndRegister();

// Tank
assembler.recipeBuilder()
  .circuit(2)
  .inputs([<ore:plateBronze> * 4, <ore:plateObsidian> * 32, <ore:wool>, <metaitem:cover.ender_fluid_link>, <metaitem:super_tank.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs([<enderstorage:ender_storage:1>])
  .duration(980).EUt(2080).buildAndRegister();