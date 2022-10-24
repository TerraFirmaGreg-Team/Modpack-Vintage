# Flux Networks

import crafttweaker.item.IItemStack;

print("Initializing 'Flux Networks'...");


//Удаление рецептов
global ItemsToRemoveFN as IItemStack[] = [
	<fluxnetworks:gargantuanfluxstorage>,
	<fluxnetworks:herculeanfluxstorage>,
	<fluxnetworks:fluxstorage>,
	<fluxnetworks:fluxconfigurator>,
	<fluxnetworks:fluxpoint>,
	<fluxnetworks:fluxplug>,
	<fluxnetworks:fluxcontroller>,
	<fluxnetworks:fluxblock>,
	<fluxnetworks:fluxcore>
] as IItemStack[];
for item in ItemsToRemoveFN{
    recipes.remove(item);
}

//Рецепты в сборщике
//Флаксовое ядро
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140> * 4, <fluxnetworks:flux> * 4, <ore:lensEmerald>)
    .outputs(<fluxnetworks:fluxcore>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

//Флаксовый блок
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:501> * 12, <fluxnetworks:fluxcore> * 6, <gregtech:machine:988>)
    .outputs(<fluxnetworks:fluxblock>)
    .duration(15 * 20)
    .EUt(96)
    .buildAndRegister();

//Флаксовый контроллер
assembler.recipeBuilder()
    .inputs(<ore:stickSteel> * 12, <ore:foilStainlessSteel> * 8, <ore:lensEmerald> * 2, <appliedenergistics2:material:41> * 2, <ore:circuitHv> * 2, <fluxnetworks:fluxblock>)
    .outputs(<fluxnetworks:fluxcontroller>)
    .duration(25 * 20)
    .EUt(128)
    .buildAndRegister();

//Флаксовый разъем
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 6, <fluxnetworks:fluxcore> * 6, <appliedenergistics2:material:41>, <gregtech:meta_item_1:219>)
    .outputs(<fluxnetworks:fluxplug>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

//Флаксовая точка
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 6, <fluxnetworks:fluxcore> * 6, <appliedenergistics2:material:41>, <gregtech:meta_item_1:234>)
    .outputs(<fluxnetworks:fluxpoint>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

//Флаксовый конфигуратор
assembler.recipeBuilder()
    .inputs(<ore:stickSteel>, <fluxnetworks:fluxcore>, <appliedenergistics2:material:41>)
    .outputs(<fluxnetworks:fluxconfigurator>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

//Базовое флаксовое хранилище
assembler.recipeBuilder()
    .inputs(<ore:foilStainlessSteel> * 16, <gregtech:meta_item_1:717> * 4, <forestry:crafting_material:1> * 4, <fluxnetworks:fluxblock>)
    .outputs(<fluxnetworks:fluxstorage>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

//Геркулесовое флаксовое хранилище
assembler.recipeBuilder()
    .inputs(<ore:foilStainlessSteel> * 16, <gregtech:meta_item_1:718> * 4, <forestry:crafting_material:1> * 4, <fluxnetworks:fluxstorage> * 3)
    .outputs(<fluxnetworks:herculeanfluxstorage>)
    .duration(20 * 20)
    .EUt(128)
    .buildAndRegister();

//Гигансткое флаксовое хранилище
assembler.recipeBuilder()
    .inputs(<ore:foilStainlessSteel> * 16, <gregtech:meta_item_1:719> * 8, <forestry:crafting_material:1> * 8, <fluxnetworks:herculeanfluxstorage> * 3)
    .outputs(<fluxnetworks:gargantuanfluxstorage>)
    .duration(25 * 20)
    .EUt(128)
    .buildAndRegister();

//Рецепты в верстаке
//Флакс
recipes.addShapeless(<fluxnetworks:flux> * 2, 
	[<minecraft:redstone>, <ore:dustObsidian>]);


print("Initialized 'Flux Networks'");