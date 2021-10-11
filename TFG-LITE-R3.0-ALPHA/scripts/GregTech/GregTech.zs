import crafttweaker.item.IItemStack;

//Удаление + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
    //GT Wooden Small Chest
    <gregtech:machine:1485>,
    //GT Wooden Chest
    <gregtech:machine:1486>,
    //Primitive Blast Furnace
    <gregtech:metal_casing:1>,
    <gregtech:metal_casing:1>,
    //flour
    <gregtech:meta_dust:385>,
    <gregtech:meta_dust_small:385>,
    <gregtech:meta_dust_tiny:385>
] as IItemStack[];
for item in ItemsToRemoveFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

/*
val ItemsToRemove as IItemStack[] = [
	//2x ingots + hammer --> Plate

] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}*/

//Реплейс всех печек на печь из GT
recipes.replaceAllOccurences(<minecraft:furnace>, <tfc:blast_furnace>);

//Переработка танков в Arc
/*
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1501>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotBronze>.firstItem * 3).duration(400).EUt(8).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1502>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotSteel>.firstItem * 3).duration(400).EUt(30).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1503>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotAluminium>.firstItem *3).duration(400).EUt(120).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1504>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotStainlessSteel>.firstItem * 3).duration(400).EUt(500).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1505>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotTitanium>.firstItem * 3).duration(400).EUt(1560).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1506>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotTungstenSteel>.firstItem * 3).duration(400).EUt(2560).buildAndRegister();

//Сундуки можно переработать
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1487>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotBronze>.firstItem * 10).EUt(8).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1488>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotSteel>.firstItem * 10).EUt(30).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1489>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotAluminium>.firstItem * 10).EUt(120).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1490>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotStainlessSteel>.firstItem * 10).EUt(500).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1491>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotTitanium>.firstItem * 10).EUt(1560).duration(400).buildAndRegister();
arc_furnace.recipeBuilder().inputs(<gregtech:machine:1492>).fluidInputs(<liquid:oxygen> * 150).outputs(<ore:ingotTungstenSteel>.firstItem * 10).EUt(2560).duration(400).buildAndRegister();
*/

//Рецепт Coke Oven
recipes.addShaped("tfg_coke_oven_controller", <gregtech:machine:1016>,
[[<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>],
 [<ore:plateWroughtIron>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateWroughtIron>],
 [<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>]]);

//Исправление рецепта на бумагу
//Крафт бумажной пыли
recipes.addShaped("tfg_sugarcane_to_chad", <ore:dustPaper>.firstItem * 2,
[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null]]);
//Крафт бамаги из пыли
recipes.addShaped("tfg_chad_to_paper", <ore:paper>.firstItem * 2,
[[null, <ore:slabStonePolished>, null],
 [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
 [null, <ore:slabStonePolished>, null]]);

//Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .EUt(140).duration(330).buildAndRegister();
	
//Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .EUt(140).duration(220).buildAndRegister();
	
//Гравий --> кремень
forge_hammer.recipeBuilder()
    .inputs([<ore:gravel> * 1])
    .outputs(<minecraft:flint> * 1)
    .duration(45).EUt(5).buildAndRegister();

//Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder()
    .inputs([<ore:sugarcane> * 3])
    .outputs(<ore:dustPaper>.firstItem * 2)
    .duration(105).EUt(4).buildAndRegister();

//Песок+Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand>*4, <ore:gravel>*4)
    .outputs(<tfc:aggregate>*8)
    .duration(20).EUt(4).buildAndRegister();

//Жидкий воздух --> Воздух
fluid_heater.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:liquid_oxygen> * 100)
    .fluidOutputs(<liquid:oxygen> * 1000)
    .duration(400).EUt(32).buildAndRegister();

//Фикс снопа сена
packer.findRecipe(2, [<minecraft:wheat> * 9, <gregtech:meta_item_1:193>.withTag({Configuration: 9})], null).remove();

//Фиксы корпусов
//Удаление
assembler.findRecipe(16, [<tfc:metal/sheet/wrought_iron>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:198>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:2>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:197>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:113>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:309>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:22>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:50>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:75>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
assembler.findRecipe(16, [<gregtech:meta_plate:375>*8, <gregtech:meta_item_1:193>.withTag({Configuration: 8})], null).remove();
//Создание
assembler.recipeBuilder().inputs(<ore:plateWroughtIron>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateSteel>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:1>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateAluminium>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:2>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateStainlessSteel>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:3>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTitanium>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:4>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateTungstenSteel>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:5>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateChrome>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:6>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateIridium>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:7>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateOsmium>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:8>).duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateNeutronium>*6).notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 8})).outputs(<gregtech:machine_casing:9>).duration(20).EUt(16).buildAndRegister();

//Крафт некоторых блоков в компрессоре
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

//Фикс красной и синей стали
recipes.removeByRecipeName("gregtech:dust_blue_steel");
recipes.removeByRecipeName("gregtech:dust_red_steel");