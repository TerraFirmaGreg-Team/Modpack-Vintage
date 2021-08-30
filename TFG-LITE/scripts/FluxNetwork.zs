//Удаление рецептов
recipes.remove(<fluxnetworks:fluxblock>);
recipes.remove(<fluxnetworks:fluxcontroller>);
recipes.remove(<fluxnetworks:fluxcore>);
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.remove(<fluxnetworks:fluxplug>);
recipes.remove(<fluxnetworks:fluxpoint>);

//Создание рецептов
//Конфигуратор сети
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.addShaped(<fluxnetworks:fluxconfigurator>,
[[null, <ore:plateIron>, <ore:plateIron>],
 [<ore:plateIron>, <minecraft:ender_eye>, <ore:plateIron>],
 [<gregtech:meta_item_2:19231>, <ore:plateIron>, null]]);
 
//Флаксовый блок
assembler.recipeBuilder()
   .inputs(<fluxnetworks:flux> * 9, <fluxnetworks:fluxcore> * 8)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxblock>)
   .duration(1000)
   .EUt(540)
   .buildAndRegister(); 
//Флаксовый контроллер
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxblock> * 5, <gregtech:machine:504>, <fluxnetworks:fluxcore>*16, <gtadditions:ga_meta_item:32211>*2, <gtadditions:ga_field_gen_casing:3>, <ore:cableGtQuadrupleAluminium>*4)
   .fluidInputs([<liquid:soldering_alloy> * 1296])
   .outputs(<fluxnetworks:fluxcontroller>)
   .duration(2500)
   .EUt(612)
   .buildAndRegister();
//Флаксовое ядро
assembler.recipeBuilder()
   .inputs(<fluxnetworks:flux>*16, <gregtech:meta_item_1:2138>*4, <gtadditions:ga_meta_item:32032>, <ore:plateSteel>*4, <gregtech:meta_item_2:32461>*5, <gregtech:meta_item_2:32459>*3)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<fluxnetworks:fluxcore>*4)
   .duration(2500)
   .EUt(572)
   .buildAndRegister(); 
//Разьем
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxcore>*4, <gregtech:machine:503>, <gtadditions:ga_multiblock_casing:6>, <gregtech:meta_item_1:32673>)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxplug>)
   .duration(2500)
   .EUt(512)
   .buildAndRegister();
//Точка
assembler.recipeBuilder()
   .inputs(<fluxnetworks:fluxcore>*4, <gregtech:machine:503>, <gtadditions:ga_multiblock_casing:6>, <gregtech:meta_item_1:32693>)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<fluxnetworks:fluxpoint>)
   .duration(2500)
   .EUt(512)
   .buildAndRegister(); 