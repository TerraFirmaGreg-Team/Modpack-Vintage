//Удаление + скрытие
mods.jei.JEI.removeAndHide(<enderstorage:ender_pouch>);

//Удаление рецептов
recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_storage:1>);

//Добавление рецептов
//Бак
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1586>, <ore:pipeQuadrupleFluidStainlessSteel>*2, <ore:blockGlass>*6, <appliedenergistics2:material:48>, <ore:blockGlass>*6, <ore:dyeWhite>*3, <minecraft:blaze_rod>*4, <ore:plateObsidian>*32)
   .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 9}))
   .fluidInputs([<liquid:soldering_alloy> * 1152])
   .outputs(<enderstorage:ender_storage:1>)
   .duration(1000).EUt(480).buildAndRegister();

//Сундук
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1586>, <ore:pipeNormalItemPolyvinylChloride>*2, <appliedenergistics2:material:48>, <ore:dyeWhite>*3, <minecraft:blaze_rod>*2, <ore:plateObsidian>*32)
   .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 8}))
   .fluidInputs([<liquid:soldering_alloy> * 1152])
   .outputs(<enderstorage:ender_storage>)
   .duration(980)
   .EUt(480)
   .buildAndRegister();