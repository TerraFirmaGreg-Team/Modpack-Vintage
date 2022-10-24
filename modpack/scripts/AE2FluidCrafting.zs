# AE2 Fluid Crafting

import crafttweaker.item.IItemStack;

print("Initializing 'AE2 Fluid Crafting'...");


//Удаление рецептов
global ItemsToRemoveAE2FC as IItemStack[] = [
	<ae2fc:part_fluid_pattern_terminal>,
	<ae2fc:burette>,
	<ae2fc:ingredient_buffer>,
	<ae2fc:fluid_packet_decoder>,
	<ae2fc:fluid_pattern_encoder>,
	<ae2fc:fluid_discretizer>
] as IItemStack[];
for item in ItemsToRemoveAE2FC{
    recipes.remove(item);
}

//Рецепты в сборщике
//Me Fluid Discretizer
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 12, <ore:plateSteel> * 6, <gregtech:meta_item_1:501> * 4, <gregtech:machine:988>, <appliedenergistics2:material:24>, <ore:circuitHv>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>)
    .outputs(<ae2fc:fluid_discretizer>)
    .duration(15 * 20)
    .EUt(256)
    .buildAndRegister();

//Fluid Pattern Encoder
assembler.recipeBuilder()
    .inputs(<ore:plateLapis> * 6, <ore:plateSteel> * 6, <ore:wireGtSingleGold> * 2, <appliedenergistics2:material:24>, <ore:craftingTableWood>)
    .outputs(<ae2fc:fluid_pattern_encoder>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

//ME Fluid Packed Decoder
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 6, <appliedenergistics2:part:16> * 2, <appliedenergistics2:material:23>, <appliedenergistics2:fluid_interface>)
    .outputs(<ae2fc:fluid_packet_decoder>)
    .duration(15 * 20)
    .EUt(256)
    .buildAndRegister();

//Ingredient Buffer
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 12, <ore:plateStainlessSteel> * 6, <appliedenergistics2:material:54>, <appliedenergistics2:material:35>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <ore:circuitHv>, <appliedenergistics2:quartz_glass>)
    .outputs(<ae2fc:ingredient_buffer>)
    .duration(15 * 20)
    .EUt(256)
    .buildAndRegister();

//Precision Buterre
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel> * 6, <gregtech:meta_item_1:501> * 4, <gregtech:machine:988>, <gregtech:meta_item_1:144>)
    .outputs(<ae2fc:burette>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

//ME Dual Interface
assembler.recipeBuilder()
    .inputs(<ore:plateLapis> * 6, <ore:wireGtSingleGold> * 6, <ore:foilStainlessSteel> * 6, <gregtech:machine:988>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:159>)
    .outputs(<ae2fc:dual_interface>)
    .duration(25 * 20)
    .EUt(256)
    .buildAndRegister();

//ME Fluid Pattern Terminal
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleGold> * 4, <appliedenergistics2:part:520>, <appliedenergistics2:part:340>, <ore:circuitHv>)
    .outputs(<ae2fc:part_fluid_pattern_terminal>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();


print("Initialized 'AE2 Fluid Crafting'");