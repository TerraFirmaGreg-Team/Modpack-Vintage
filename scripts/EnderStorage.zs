import mods.gregtech.recipe.RecipeMap;

//val assembler as RecipeMap = RecipeMap.getByName("assembler");

//Удаление + скрытие
mods.jei.JEI.removeAndHide(<enderstorage:ender_pouch>);

//Удаление рецептов
recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_storage:1>);

//Добавление рецептов

//Бак
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1020>, <ore:pipeMediumStainlessSteel>*2, <appliedenergistics2:material:48>, <ore:blockGlass>*6, <ore:dyeWhite>*3, <minecraft:blaze_rod>*4, <minecraft:obsidian>*2)
   .fluidInputs([<liquid:soldering_alloy> * 1152])
   .outputs(<enderstorage:ender_storage:1>)
   .duration(5000)
   .EUt(480)
   .buildAndRegister(); 

//Сундук
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1010>, <ore:pipeMediumStainlessSteel>*2, <appliedenergistics2:material:48>, <ore:dyeWhite>*3, <minecraft:blaze_rod>*2, <minecraft:obsidian>*6)
   .fluidInputs([<liquid:soldering_alloy> * 1152])
   .outputs(<enderstorage:ender_storage>)
   .duration(5000)
   .EUt(480)
   .buildAndRegister(); 