# Immersive Petroleum

import mods.immersivepetroleum.PortableGenerator;
import mods.immersiveengineering.Blueprint;
import crafttweaker.item.IItemStack;

print("Initializing 'Immersive Petroleum'...");


// Удаление рецептов
global ItemsToRemoveIP as IItemStack[] = [
	<immersivepetroleum:metal_device>,
	<immersivepetroleum:metal_device:1>,
	<immersivepetroleum:schematic>
] as IItemStack[];
for item in ItemsToRemoveIP{
    recipes.remove(item);
}


// Рецепты в сборщике
// Смазочное устройство
recipes.addShaped(<immersivepetroleum:metal_device>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:stickSteel>, <minecraft:glass>, <ore:stickSteel>], 
	[<ore:fenceTreatedWood>, <immersiveengineering:wooden_device0:7>, <ore:fenceTreatedWood>]]);

// Портативный генератор
assembler.recipeBuilder()
    .inputs(<ore:plateBlackSteel> * 4, <immersiveengineering:jerrycan>, <minecraft:repeater>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_device0>)
    .outputs(<immersivepetroleum:metal_device:1>)
    .duration(15 * 20)
    .EUt(32)
    .buildAndRegister();
recipes.addShaped(<immersivepetroleum:metal_device:1>, 
	[[<ore:plateBlackSteel>, <immersiveengineering:metal_device0>, <ore:plateBlackSteel>], 
	[<minecraft:repeater>, <immersiveengineering:metal_device1:6>, <immersiveengineering:jerrycan>], 
	[<ore:plateBlackSteel>, <immersiveengineering:metal_decoration0:6>, <ore:plateBlackSteel>]]);

// Проектор
assembler.recipeBuilder()
    .inputs(<immersiveengineering:material:9> * 2, <immersiveengineering:metal_decoration2:4>, <ore:plankTreatedWood>, <immersiveengineering:material:26>, <ore:wireGtSingleCopper>, <minecraft:redstone>)
    .outputs(<immersivepetroleum:schematic>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();
Blueprint.addRecipe("Device", <immersivepetroleum:schematic>, [<immersiveengineering:metal_decoration2:4>, <immersiveengineering:material:9> * 2, <ore:plankTreatedWood>, <immersiveengineering:material:26>, <ore:wireGtSingleCopper>, <minecraft:redstone>]);

// Регистрация топлива для портативного генератора
PortableGenerator.registerPortableGenFuel(<liquid:oil>, 50, 5);
PortableGenerator.registerPortableGenFuel(<liquid:ethanol>, 75, 5);
PortableGenerator.registerPortableGenFuel(<liquid:biodiesel>, 300, 5);
PortableGenerator.registerPortableGenFuel(<liquid:diesel>, 175, 5);


print("Initialized 'Immersive Petroleum'");