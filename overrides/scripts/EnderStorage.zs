import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("enderstorage");

// ---- Добавление рецептов

// Chest
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <metaitem:foilBronze> * 4,
    <metaitem:plateEnderPearl> * 4,
    <metaitem:plateObsidian> * 32, 
    <ore:wool>, 
    <metaitem:cover.ender_fluid_link>, 
    <metaitem:super_chest.hv>])
	.fluidInputs([<liquid:blaze> * 1152])
  .outputs([<enderstorage:ender_storage>])
  .duration(980).EUt(7080).buildAndRegister();

// Tank
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <metaitem:foilBronze> * 4,
    <metaitem:plateEnderPearl> * 4,
    <metaitem:plateObsidian> * 32, 
    <ore:wool>, 
    <metaitem:cover.ender_fluid_link>, 
    <metaitem:super_tank.hv>])
	.fluidInputs([<liquid:blaze> * 1152])
  .outputs([<enderstorage:ender_storage:1>])
  .duration(980).EUt(7080).buildAndRegister();

// Pouch
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <metaitem:foilBronze> * 4,
    <metaitem:plateEnderPearl> * 4,
    <travelersbackpack:travelers_backpack>,
    <ore:wool> | <ore:blockWool>,
    <metaitem:cover.ender_fluid_link>])
  .fluidInputs([<liquid:blaze> * 1152])
  .outputs([<enderstorage:ender_pouch>])
  .duration(980).EUt(7080).buildAndRegister();