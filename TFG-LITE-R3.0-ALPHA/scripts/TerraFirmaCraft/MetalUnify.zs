import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.tfcdryingrack.Rack;
import mods.horsepower.Grindstone;

/*
 *
 * Файл унификации металлов TFG
 *
 */

// --- Латунь



// --- Унификация кованного железа
/*
//CONVERT
forge_hammer.recipeBuilder().inputs(<gregtech:meta_item_1:10197>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//FH Hot Iron Ingot --> Wrought Iron Ingot
recipes.removeByRecipeName("gtadditions:ga_wrought");
recipes.addShapeless(<tfc:metal/ingot/wrought_iron>, [<gtadditions:ga_meta_item:32037>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag()]);
//Двойная пластина
Welding.removeRecipe(<tfc:metal/double_sheet/wrought_iron>);
Welding.addRecipe("tfc:double_plate_fixed", <ore:plateWroughtIron>, <ore:plateWroughtIron>, <gtadditions:ga_meta_item:1197>, 3);
//Слиток
furnace.remove(<gregtech:meta_item_1:10197>);
furnace.addRecipe(<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:2197>);
forge_hammer.findRecipe(8, [<gtadditions:ga_meta_item:32037>], null).remove();
forge_hammer.recipeBuilder().inputs(<gtadditions:ga_meta_item:32037>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Наггет
alloy_smelter.findRecipe(8, [<gregtech:meta_item_1:9197>*9, <gregtech:meta_item_1:32306>], null).remove();
alloy_smelter.recipeBuilder().inputs(<gregtech:meta_item_1:9197>*9).notConsumable(<gregtech:meta_item_1:32306>).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Пластина
recipes.removeByRecipeName("gtadditions:plate_wrought_iron");
recipes.removeByRecipeName("gtadditions:flatten_plate_wrought_iron");
recipes.addShaped(<tfc:metal/sheet/wrought_iron>,
[[null, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), null], 
[null, <gtadditions:ga_meta_item:197>, null],
[null, null, null]]);
//Жидкость слиток
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32306>], [<liquid:wrought_iron>*144]).remove();
fluid_solidifier.recipeBuilder().notConsumable(<gregtech:meta_item_1:32306>).fluidInputs([<liquid:wrought_iron>*144]).outputs(<tfc:metal/ingot/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Жидкость пластина
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:wrought_iron>*144]).remove();
fluid_solidifier.recipeBuilder().notConsumable(<gregtech:meta_item_1:32301>).fluidInputs([<liquid:wrought_iron>*144]).outputs(<tfc:metal/sheet/wrought_iron>).duration(100).EUt(8).buildAndRegister(); 
//Пластина AlloySmelter
alloy_smelter.findRecipe(16, [<tfc:metal/ingot/wrought_iron>*2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>*2).notConsumable(<gregtech:meta_item_1:32301>).outputs(<tfc:metal/sheet/wrought_iron>).duration(200).EUt(16).buildAndRegister(); 
//Слиток Compressor
compressor.findRecipe(2, [<tfc:metal/nugget/wrought_iron>*9], null).remove();
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:9197>*9).outputs(<tfc:metal/ingot/wrought_iron>).duration(200).EUt(8).buildAndRegister(); 
//Блок AlloySmelter
alloy_smelter.findRecipe(8, [<gregtech:meta_block_compressed_12:5>, <gregtech:meta_item_1:32306>], null).remove();
alloy_smelter.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).notConsumable(<gregtech:meta_item_1:32306>).outputs(<tfc:metal/ingot/wrought_iron>*9).duration(1000).EUt(8).buildAndRegister(); 
//Слиток BlastFurnace
blast_furnace.findRecipe(500, [<gregtech:meta_item_1:2121>*5], null).remove();
blast_furnace.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2121>*5)
    .outputs(<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:2122>*3)
    .property("temperature", 1700)
    .duration(600).EUt(500).buildAndRegister();
//Слиток Packer
packer.findRecipe(4, [<tfc:metal/nugget/wrought_iron>*9, <gtadditions:ga_meta_item:32133>], null).remove();
//Блок Unpacker
unpacker.findRecipe(8, [<gregtech:meta_block_compressed_12:5>, <gtadditions:ga_meta_item:32133>], null).remove();
//Пластина MetalBender
metal_bender.findRecipe(24, [<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:197>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0})).outputs(<tfc:metal/sheet/wrought_iron>).duration(140).EUt(24).buildAndRegister(); 
metal_bender.recipeBuilder().inputs(<gtadditions:ga_meta_item:197>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0})).outputs(<tfc:metal/sheet/wrought_iron>).duration(140).EUt(24).buildAndRegister(); 
//Пластины CuttingSaw
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:water>*42]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:distilled_water>*31]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_12:5>], [<liquid:lubricant>*10]).remove();
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:water>*42]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(600).EUt(30).buildAndRegister(); 
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:distilled_water>*31]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(400).EUt(30).buildAndRegister(); 
cutting_saw.recipeBuilder().inputs(<gregtech:meta_block_compressed_12:5>).fluidInputs([<liquid:lubricant>*10]).outputs(<tfc:metal/sheet/wrought_iron>*9).duration(200).EUt(30).buildAndRegister(); 
//Пластины Extruder
extruder.findRecipe(64, [<tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:32350>], null).remove();
extruder.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).notConsumable(<gregtech:meta_item_1:32350>).outputs(<tfc:metal/sheet/wrought_iron>).duration(150).EUt(64).buildAndRegister(); 
//Пластины ForgeHammer
forge_hammer.findRecipe(16, [<tfc:metal/ingot/wrought_iron>*3], null).remove();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>*3).outputs(<tfc:metal/sheet/wrought_iron>*2).duration(100).EUt(16).buildAndRegister(); 
//Исправляем железные прутья
Anvil.removeRecipe(<minecraft:iron_bars>*16);
//Исправляем гриль
Anvil.removeRecipe(<tfc:wrought_iron_grill>);
Anvil.addRecipe("tfc:WroughtIronGrillTweaked", <ore:plateDoubleWroughtIron>, <tfc:wrought_iron_grill>, 3, "general", "DRAW_ANY", "PUNCH_LAST", "PUNCH_NOT_LAST");
//Крафт железного трапдора через наковальню тфк
Anvil.addRecipe("tfc:IronTrapdoorTweaked", <ore:plateDoubleWroughtIron>, <minecraft:iron_trapdoor>, 3, "general", "UPSET_NOT_LAST", "BEND_NOT_LAST", "UPSET_THIRD_LAST");
*/

// --- Унификация соли
Quern.removeRecipe(<tfc:powder/salt>*4);
Quern.removeRecipe(<tfc:powder/salt>*2);
Grindstone.remove(<tfc:powder/salt>*6);
Grindstone.remove(<tfc:powder/salt>*8);
Rack.removeRecipe(<ore:dustSaltpeter>.firstItem);
Quern.addRecipe("quern_saltrock_to_salt", <tfc:rock/rocksalt>, <ore:dustSalt>.firstItem * 4);
Grindstone.add(<tfc:rock/rocksalt>, <ore:dustSalt>.firstItem * 8, 10, false);
Rack.addRecipe("rack_saltpeter_to_salt", <ore:dustSaltpeter>.firstItem, <ore:dustSalt>.firstItem, 24, 1.0);

// --- Унификация сальпетера
Quern.removeRecipe(<tfc:powder/saltpeter>*4);
Grindstone.remove(<tfc:powder/saltpeter>*8);

