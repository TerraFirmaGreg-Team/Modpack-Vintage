//Удаление + скрытие
mods.jei.JEI.removeAndHide(<enderstorage:ender_pouch>);

//Удаление рецептов
recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_storage:1>);

//Добавление рецептов
// Chest
recipes.remove(<enderstorage:ender_storage>);
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
recipes.remove(<enderstorage:ender_storage:1>);
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