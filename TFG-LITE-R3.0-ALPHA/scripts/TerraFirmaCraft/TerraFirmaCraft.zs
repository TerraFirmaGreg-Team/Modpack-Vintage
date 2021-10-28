import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.firmalife.Drying;

//Удаление + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	//Small Ores
	<tfc:ore/native_copper:*>,
	<tfc:ore/native_gold:*>,
	<tfc:ore/native_platinum:*>,
	<tfc:ore/hematite:*>,
	<tfc:ore/native_silver:*>,
	<tfc:ore/cassiterite:*>,
	<tfc:ore/galena:*>,
	<tfc:ore/bismuthinite:*>,
	<tfc:ore/garnierite:*>,
	<tfc:ore/malachite:*>,
	<tfc:ore/magnetite:*>,
	<tfc:ore/limonite:*>,
	<tfc:ore/sphalerite:*>,
	<tfc:ore/tetrahedrite:*>,
	<tfc:ore/halite:*>,
	//Fake Rods
	<tfc:metal/rod/gold>,
	<tfc:metal/rod/wrought_iron>,
	<tfc:metal/rod/steel>,
	//Dusts
	<tfc:metal/dust/bismuth>,
	<tfc:metal/dust/bismuth_bronze>,
	<tfc:metal/dust/black_bronze>,
	<tfc:metal/dust/brass>,
	<tfc:metal/dust/bronze>,
	<tfc:metal/dust/copper>,
	<tfc:metal/dust/gold>,
	<tfc:metal/dust/lead>,
	<tfc:metal/dust/nickel>,
	<tfc:metal/dust/rose_gold>,
	<tfc:metal/dust/silver>,
	<tfc:metal/dust/tin>,
	<tfc:metal/dust/zinc>,
	<tfc:metal/dust/sterling_silver>,
	<tfc:metal/dust/pig_iron>,
	<tfc:metal/dust/steel>,
	<tfc:metal/dust/platinum>,
	<tfc:metal/dust/black_steel>,
	<tfc:metal/dust/blue_steel>,
	<tfc:metal/dust/red_steel>,
	<tfc:metal/dust/wrought_iron>,
	//Plate
	<tfc:metal/sheet/bismuth>,
	<tfc:metal/sheet/bismuth_bronze>,
	<tfc:metal/sheet/black_bronze>,
	<tfc:metal/sheet/brass>,
	<tfc:metal/sheet/bronze>,
	<tfc:metal/sheet/copper>,
	<tfc:metal/sheet/gold>,
	<tfc:metal/sheet/lead>,
	<tfc:metal/sheet/nickel>,
	<tfc:metal/sheet/rose_gold>,
	<tfc:metal/sheet/silver>,
	<tfc:metal/sheet/tin>,
	<tfc:metal/sheet/zinc>,
	<tfc:metal/sheet/sterling_silver>,
	<tfc:metal/sheet/pig_iron>,
	<tfc:metal/sheet/steel>,
	<tfc:metal/sheet/platinum>,
	<tfc:metal/sheet/black_steel>,
	<tfc:metal/sheet/blue_steel>,
	<tfc:metal/sheet/red_steel>,
	//<tfc:metal/sheet/wrought_iron>,
	//Double Plates
	<tfc:metal/double_sheet/bismuth>,
	<tfc:metal/double_sheet/bismuth_bronze>,
	<tfc:metal/double_sheet/black_bronze>,
	<tfc:metal/double_sheet/brass>,
	<tfc:metal/double_sheet/bronze>,
	<tfc:metal/double_sheet/copper>,
	<tfc:metal/double_sheet/gold>,
	<tfc:metal/double_sheet/lead>,
	<tfc:metal/double_sheet/nickel>,
	<tfc:metal/double_sheet/rose_gold>,
	<tfc:metal/double_sheet/silver>,
	<tfc:metal/double_sheet/tin>,
	<tfc:metal/double_sheet/zinc>,
	<tfc:metal/double_sheet/sterling_silver>,
	<tfc:metal/double_sheet/wrought_iron>,
	<tfc:metal/double_sheet/pig_iron>,
	<tfc:metal/double_sheet/platinum>,
	<tfc:metal/double_sheet/steel>,
	<tfc:metal/double_sheet/black_steel>,
	<tfc:metal/double_sheet/blue_steel>,
	<tfc:metal/double_sheet/red_steel>,
	//Nuggets
	<tfc:metal/nugget/bismuth>,
	<tfc:metal/nugget/bismuth_bronze>,
	<tfc:metal/nugget/black_bronze>,
	<tfc:metal/nugget/brass>,
	<tfc:metal/nugget/bronze>,
	<tfc:metal/nugget/copper>,
	<tfc:metal/nugget/gold>,
	<tfc:metal/nugget/lead>,
	<tfc:metal/nugget/nickel>,
	<tfc:metal/nugget/rose_gold>,
	<tfc:metal/nugget/silver>,
	<tfc:metal/nugget/tin>,
	<tfc:metal/nugget/zinc>,
	<tfc:metal/nugget/sterling_silver>,
	<tfc:metal/nugget/pig_iron>,
	<tfc:metal/nugget/steel>,
	<tfc:metal/nugget/platinum>,
	<tfc:metal/nugget/black_steel>,
	<tfc:metal/nugget/blue_steel>,
	<tfc:metal/nugget/red_steel>,
	<tfc:metal/nugget/wrought_iron>,
	//Gears
	<tfctech:metal/bismuth_gear>,
	<tfctech:metal/bismuth_bronze_gear>,
	<tfctech:metal/black_bronze_gear>,
	<tfctech:metal/brass_gear>,
	<tfctech:metal/bronze_gear>,
	<tfctech:metal/copper_gear>,
	<tfctech:metal/gold_gear>,
	<tfctech:metal/lead_gear>,
	<tfctech:metal/nickel_gear>,
	<tfctech:metal/rose_gold_gear>,
	<tfctech:metal/silver_gear>,
	<tfctech:metal/tin_gear>,
	<tfctech:metal/zinc_gear>,
	<tfctech:metal/sterling_silver_gear>,
	<tfctech:metal/wrought_iron_gear>,
	<tfctech:metal/pig_iron_gear>,
	<tfctech:metal/steel_gear>,
	<tfctech:metal/platinum_gear>,
	<tfctech:metal/black_steel_gear>,
	<tfctech:metal/blue_steel_gear>,
	<tfctech:metal/red_steel_gear>,
	//Long Rods
	<tfctech:metal/bismuth_bronze_long_rod>,
	<tfctech:metal/black_bronze_long_rod>,
	<tfctech:metal/bronze_long_rod>,
	<tfctech:metal/copper_long_rod>,
	<tfctech:metal/gold_long_rod>,
	<tfctech:metal/lead_long_rod>,
	<tfctech:metal/rose_gold_long_rod>,
	<tfctech:metal/silver_long_rod>,
	<tfctech:metal/tin_long_rod>,
	<tfctech:metal/sterling_silver_long_rod>,
	<tfctech:metal/wrought_iron_long_rod>,
	<tfctech:metal/pig_iron_long_rod>,
	<tfctech:metal/brass_long_rod>,
	<tfctech:metal/steel_long_rod>,
	<tfctech:metal/black_steel_long_rod>,
	<tfctech:metal/blue_steel_long_rod>,
	<tfctech:metal/red_steel_long_rod>,
	<tfctech:metal/platinum_long_rod>,
	<tfctech:metal/zinc_long_rod>,
	<tfctech:metal/nickel_long_rod>,
	<tfctech:metal/bismuth_long_rod>,
	//Rods
	<tfctech:metal/bismuth_bronze_rod>,
	<tfctech:metal/black_bronze_rod>,
	<tfctech:metal/bronze_rod>,
	<tfctech:metal/copper_rod>,
	<tfctech:metal/gold_rod>,
	<tfctech:metal/lead_rod>,
	<tfctech:metal/rose_gold_rod>,
	<tfctech:metal/silver_rod>,
	<tfctech:metal/tin_rod>,
	<tfctech:metal/sterling_silver_rod>,
	<tfctech:metal/wrought_iron_rod>,
	<tfctech:metal/pig_iron_rod>,
	<tfctech:metal/brass_rod>,
	<tfctech:metal/steel_rod>,
	<tfctech:metal/black_steel_rod>,
	<tfctech:metal/blue_steel_rod>,
	<tfctech:metal/red_steel_rod>,
	<tfctech:metal/platinum_rod>,
	<tfctech:metal/zinc_rod>,
	<tfctech:metal/nickel_rod>,
	<tfctech:metal/bismuth_rod>,
	//Hammers
	<tfc:metal/hammer/copper>,
	<tfc:metal/hammer/bismuth_bronze>,
	<tfc:metal/hammer/bronze>,
	<tfc:metal/hammer/black_bronze>,
	<tfc:metal/hammer/wrought_iron>,
	<tfc:metal/hammer/steel>,
	<tfc:metal/hammer/black_steel>,
	<tfc:metal/hammer/blue_steel>,
	<tfc:metal/hammer/red_steel>,
	//Hammers Heads
	//<tfc:metal/hammer_head/copper>,
	<tfc:metal/hammer_head/red_steel>,
	<tfc:metal/hammer_head/blue_steel>,
	<tfc:metal/hammer_head/black_steel>,
	<tfc:metal/hammer_head/steel>,
	<tfc:metal/hammer_head/wrought_iron>,
	<tfc:metal/hammer_head/bronze>,
	<tfc:metal/hammer_head/black_bronze>,
	<tfc:metal/hammer_head/bismuth_bronze>,
	//Saw
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/red_steel>,
	//Saw Heads
	<tfc:metal/saw_blade/copper>,
	//Knife
	<tfc:metal/knife/copper>,
	<tfc:metal/knife/bismuth_bronze>,
	<tfc:metal/knife/bronze>,
	<tfc:metal/knife/black_bronze>,
	<tfc:metal/knife/wrought_iron>,
	<tfc:metal/knife/steel>,
	<tfc:metal/knife/black_steel>,
	<tfc:metal/knife/blue_steel>,
	<tfc:metal/knife/red_steel>,
	//Knife Heads
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/red_steel>,
	<tfc:metal/knife_blade/blue_steel>,
	<tfc:metal/knife_blade/black_steel>,
	<tfc:metal/knife_blade/steel>,
	<tfc:metal/knife_blade/wrought_iron>,
	<tfc:metal/knife_blade/bronze>,
	<tfc:metal/knife_blade/black_bronze>,
	<tfc:metal/knife_blade/bismuth_bronze>,
	//Propick
	<tfc:metal/propick/bismuth_bronze>,
	<tfc:metal/propick/bronze>,
	<tfc:metal/propick/black_bronze>,
	<tfc:metal/propick/wrought_iron>,
	<tfc:metal/propick/copper>,
	<tfc:metal/propick/steel>,
	<tfc:metal/propick/black_steel>,
	<tfc:metal/propick/blue_steel>,
	<tfc:metal/propick/red_steel>,
	//Geologic Pickaxe Heads
	<tfc:metal/propick_head/bismuth_bronze>,
	<tfc:metal/propick_head/bronze>,
	<tfc:metal/propick_head/black_bronze>,
	<tfc:metal/propick_head/wrought_iron>,
	<tfc:metal/propick_head/copper>,
	<tfc:metal/propick_head/steel>,
	<tfc:metal/propick_head/black_steel>,
	<tfc:metal/propick_head/blue_steel>,
	<tfc:metal/propick_head/red_steel>,
	//Other
	<tfc:sluice>,
	<tfctech:powder/potash>,
	//<tfc:metal/nugget/wrought_iron>,
	//<tfc:metal/double_sheet/wrought_iron>,
	<tfc:powder/saltpeter>,
	<tfc:powder/salt>,
	<tfc:sluice>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Quern - GT ore --> GT small pile
Quern.addRecipe("GTOreToTFC_Copper", <gregtech:ore_copper_0>, <gregtech:meta_dust_small:25> * 3);
Quern.addRecipe("GTOreToTFC_Malachite", <gregtech:ore_malachite_0>, <gregtech:meta_dust_small:346> * 3);
Quern.addRecipe("GTOreToTFC_Tetrahedrite", <gregtech:ore_tetrahedrite_0>, <gregtech:meta_dust_small:201> * 3);
Quern.addRecipe("GTOreToTFC_Bornite", <gregtech:ore_bornite_0>, <gregtech:meta_dust_small:222> * 3);
Quern.addRecipe("GTOreToTFC_Tenorite", <gregtech:ore_tenorite_0>, <gregtech:meta_dust_small:220> * 3);
Quern.addRecipe("GTOreToTFC_Chalcopyrite", <gregtech:ore_chalcopyrite_0>, <gregtech:meta_dust_small:139> * 3);
Quern.addRecipe("GTOreToTFC_Chalcocite", <gregtech:ore_chalcocite_0>, <gregtech:meta_dust_small:223> * 3);
Quern.addRecipe("GTOreToTFC_Enargite", <gregtech:ore_enargite_0>, <gregtech:meta_dust_small:224> * 3);
//-
Quern.addRecipe("GTOreToTFC_Tin", <gregtech:ore_tin_0>, <gregtech:meta_dust_small:112> * 3);
Quern.addRecipe("GTOreToTFC_Cassiterite", <gregtech:ore_cassiterite_0>, <gregtech:meta_dust_small:137> * 3);
Quern.addRecipe("GTOreToTFC_CassiteriteSand", <gregtech:ore_cassiterite_sand_0>, <gregtech:meta_dust_small:138> * 3);
//-
Quern.addRecipe("GTOreToTFC_Iron", <gregtech:ore_iron_0>, <gregtech:meta_dust_small:51> * 3);
Quern.addRecipe("GTOreToTFC_Pyrite", <gregtech:ore_pyrite_0>, <gregtech:meta_dust_small:180> * 3);
Quern.addRecipe("GTOreToTFC_YellowLimonite", <gregtech:ore_yellow_limonite_0>, <gregtech:meta_dust_small:211> * 3);
Quern.addRecipe("GTOreToTFC_Magnetite", <gregtech:ore_magnetite_0>, <gregtech:meta_dust_small:166> * 3);
Quern.addRecipe("GTOreToTFC_BrownLimonite", <gregtech:ore_brown_limonite_0>, <gregtech:meta_dust_small:135> * 3);
Quern.addRecipe("GTOreToTFC_BandedIron", <gregtech:ore_banded_iron_0>, <gregtech:meta_dust_small:129> * 3);
//-
Quern.addRecipe("GTOreToTFC_Zinc", <gregtech:ore_zinc_0>, <gregtech:meta_dust_small:122> * 3);
Quern.addRecipe("GTOreToTFC_Sphalerite", <gregtech:ore_sphalerite_0>, <gregtech:meta_dust_small:196> * 3);
//-
Quern.addRecipe("GTOreToTFC_Nickel", <gregtech:ore_nickel_0>, <gregtech:meta_dust_small:69> * 3);
Quern.addRecipe("GTOreToTFC_Garnierite", <gregtech:ore_garnierite_0>, <gregtech:meta_dust_small:154> * 3);
Quern.addRecipe("GTOreToTFC_Pentlandite", <gregtech:ore_pentlandite_0>, <gregtech:meta_dust_small:335> * 3);
//-
Quern.addRecipe("GTOreToTFC_Galena", <gregtech:ore_galena_0>, <gregtech:meta_dust_small:153> * 3);
Quern.addRecipe("GTOreToTFC_Lead", <gregtech:ore_lead_0>, <gregtech:meta_dust_small:55> * 3);
//-
Quern.addRecipe("GTOreToTFC_Gold", <gregtech:ore_gold_0>, <gregtech:meta_dust_small:41> * 3);
Quern.addRecipe("GTOreToTFC_Bismuth", <gregtech:ore_bismuth_0>, <gregtech:meta_dust_small:11> * 3);
Quern.addRecipe("GTOreToTFC_Silver", <gregtech:ore_silver_0>, <gregtech:meta_dust_small:100> * 3);
//-
Quern.addRecipe("GTOreToTFC_Sulfur", <gregtech:ore_sulfur_0>, <gregtech:meta_dust_small:103> * 3);
Quern.addRecipe("GTOreToTFC_RockSalt", <gregtech:ore_rock_salt_0>, <gregtech:meta_dust_small:183> * 3);
Quern.addRecipe("GTOreToTFC_Kaolinite", <gregtech:ore_kaolinite_0>, <gregtech:meta_dust_small:391> * 3);
Quern.addRecipe("GTOreToTFC_Graphite", <gregtech:ore_graphite_0>, <gregtech:meta_dust_small:341> * 3);

//Добавление рецептов печи для еды TFC
//Хавка
furnace.addRecipe(<tfc:food/cooked_beef>, <tfc:food/beef>);
furnace.addRecipe(<tfc:food/cooked_pork>, <tfc:food/pork>);
furnace.addRecipe(<tfc:food/cooked_chicken>, <tfc:food/chicken>);
furnace.addRecipe(<tfc:food/cooked_mutton>, <tfc:food/mutton>);
furnace.addRecipe(<tfc:food/cooked_fish>, <tfc:food/fish>);
furnace.addRecipe(<tfc:food/cooked_bear>, <tfc:food/bear>);
furnace.addRecipe(<tfc:food/cooked_calamari>, <tfc:food/calamari>);
furnace.addRecipe(<tfc:food/cooked_horse_meat>, <tfc:food/horse_meat>);
furnace.addRecipe(<tfc:food/cooked_pheasant>, <tfc:food/pheasant>);
furnace.addRecipe(<tfc:food/cooked_mongoose>, <tfc:food/mongoose>);
furnace.addRecipe(<tfc:food/cooked_gran_feline>, <tfc:food/gran_feline>);
furnace.addRecipe(<tfc:food/cooked_camelidae>, <tfc:food/camelidae>);
furnace.addRecipe(<tfc:food/cooked_rabbit>, <tfc:food/rabbit>);
furnace.addRecipe(<tfc:food/cooked_wolf>, <tfc:food/wolf>);
furnace.addRecipe(<tfc:food/cooked_venison>, <tfc:food/venison>);
//Керамика
furnace.addRecipe(<tfc:ceramics/unfired/mold/knife_blade>, <tfc:ceramics/fired/mold/knife_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/scythe_blade>, <tfc:ceramics/fired/mold/scythe_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/ingot>, <tfc:ceramics/fired/mold/ingot>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/pick_head>, <tfc:ceramics/fired/mold/pick_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/shovel_head>, <tfc:ceramics/fired/mold/shovel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/axe_head>, <tfc:ceramics/fired/mold/axe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/hoe_head>, <tfc:ceramics/fired/mold/hoe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/chisel_head>, <tfc:ceramics/fired/mold/chisel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/sword_blade>, <tfc:ceramics/fired/mold/sword_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/mace_head>, <tfc:ceramics/fired/mold/mace_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/saw_blade>, <tfc:ceramics/fired/mold/saw_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/javelin_head>, <tfc:ceramics/fired/mold/javelin_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>);
furnace.addRecipe(<tfc:ceramics/fired/large_vessel>, <tfc:ceramics/unfired/large_vessel>);
furnace.addRecipe(<tfc:ceramics/fired/vessel>, <tfc:ceramics/unfired/vessel>);
furnace.addRecipe(<tfc:ceramics/fired/pot>, <tfc:ceramics/unfired/pot>);
furnace.addRecipe(<tfc:ceramics/fired/bowl>, <tfc:ceramics/unfired/bowl>);
furnace.addRecipe(<tfc:ceramics/fired/spindle>, <tfc:ceramics/unfired/spindle>);
furnace.addRecipe(<tfc:ceramics/fired/fire_brick>, <tfc:ceramics/unfired/fire_brick>);
furnace.addRecipe(<tfc:ceramics/fired/jug>, <tfc:ceramics/unfired/jug>);
furnace.addRecipe(<minecraft:brick>, <tfc:ceramics/unfired/clay_brick>);
furnace.addRecipe(<minecraft:flower_pot>, <tfc:ceramics/unfired/clay_flower_pot>);

//Цемент из тфк --> бетон разных цветов
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:white_dye> * 125]).outputs(<minecraft:concrete>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:orange_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:magenta_dye> * 125]).outputs(<minecraft:concrete:2>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_blue_dye> * 125]).outputs(<minecraft:concrete:3>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:yellow_dye> * 125]).outputs(<minecraft:concrete:4>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:lime_dye> * 125]).outputs(<minecraft:concrete:5>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:pink_dye> * 125]).outputs(<minecraft:concrete:6>).duration(15).EUt(8).buildAndRegister();	
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:gray_dye> * 125]).outputs(<minecraft:concrete:7>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_gray_dye> * 125]).outputs(<minecraft:concrete:8>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:cyan_dye> * 125]).outputs(<minecraft:concrete:9>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:purple_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:blue_dye> * 125]).outputs(<minecraft:concrete:11>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:brown_dye> * 125]).outputs(<minecraft:concrete:12>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:green_dye> * 125]).outputs(<minecraft:concrete:13>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:red_dye> * 125]).outputs(<minecraft:concrete:14>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:black_dye> * 125]).outputs(<minecraft:concrete:15>).duration(15).EUt(8).buildAndRegister();

//Фикс блоков из ценных штук
/*
compressor.findRecipe(2, [<tfc:gem/ruby:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/topaz:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/sapphire:2>*9], null).remove();
compressor.findRecipe(2, [<minecraft:diamond>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/opal:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/amethyst:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:ore/lapis_lazuli>*9], null).remove();
compressor.recipeBuilder().inputs(<ore:gemRuby>*9).outputs(<gregtech:meta_block_compressed_9:10>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemTopaz>*9).outputs(<gregtech:meta_block_compressed_11:14>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemSapphire>*9).outputs(<gregtech:meta_block_compressed_9:13>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemOpal>*9).outputs(<gregtech:meta_block_compressed_13:5>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAmethyst>*9).outputs(<gregtech:meta_block_compressed_13:6>).duration(40).EUt(2).buildAndRegister();
*/

//Крафт бронзового парового молотка
recipes.remove(<gregtech:machine:13>);
recipes.addShaped(<gregtech:machine:13>, 
[[<ore:pipeSmallBronze>, <ore:craftingPiston>, <ore:pipeSmallBronze>],
 [<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],
 [<ore:pipeSmallBronze>, <tfc:metal/anvil/wrought_iron>, <ore:pipeSmallBronze>]]);
 
//Крафт стального парового молотка
recipes.remove(<gregtech:machine:14>);
recipes.addShaped(<gregtech:machine:14>,
[[<ore:pipeSmallSteel>, <ore:craftingPiston>, <ore:pipeSmallSteel>],
 [<ore:pipeSmallSteel>, <gregtech:machine_casing:12>, <ore:pipeSmallSteel>],
 [<ore:pipeSmallSteel>, <tfc:metal/anvil/steel>, <ore:pipeSmallSteel>]]);

//Compressed coke clay
/*
recipes.removeByRecipeName("gtadditions:coke_brick");
recipes.addShaped(<gtadditions:ga_meta_item:32036>*3,
[[<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>],
 [<ore:sand>, <gregtech:meta_item_2:32012>, <ore:sand>],
 [<ore:sand>, <ore:sand>, <ore:sand>]]);
 
recipes.removeByRecipeName("gtadditions:ga_casing_lv");
recipes.addShaped(<gregtech:machine_casing:1>,
[[<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>],
 [<ore:plateBlueSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBlueSteel>],
 [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);
*/
//Фикс крафта деревянной панельки
recipes.removeByRecipeName("gregtech:plank_to_wooden_shape");
recipes.addShaped(<gregtech:meta_item_1:196>,
[[null, <ore:lumber>, null],
 [null, <ore:lumber>, null],
 [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>, null]]);
 
//Исправление крафта бумаги
recipes.removeByRecipeName("tfc:paper");

//Удобрение
Drying.addRecipe("wood_ash_to_fertilizer", <tfc:wood_ash>, <tfc:powder/fertilizer>, 8000);

//Гниль из Forestry в удобрение
Quern.addRecipe("forestry_mulch_to_fertilizer", <forestry:mulch>, <tfc:powder/fertilizer>);

//Фикс бронзовой пыли
recipes.removeByRecipeName("gregtech:dust_bronze");
recipes.addShapeless(<ore:dustBronze>.firstItem * 9, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

//Высушивание соли
Drying.addRecipe("saltwatertosalt", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "salt_water", Amount: 1000}}), <ore:dustSmallSalt>.firstItem * 9, 24000);

//Фикс крафта ступка+кремний=гравий
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.addShapeless (<minecraft:flint>, [<ore:craftingToolMortar>.firstItem.withEmptyTag(), <ore:gravel>]);

//Hevea TFC --> Rubber
centrifuge.recipeBuilder()
	.inputs(<tfc:wood/log/hevea>)
	.chancedOutput(<gregtech:meta_item_1:119>, 5000, 1200)
	.chancedOutput(<ore:dustCarbon>.firstItem, 2500, 600)
	.chancedOutput(<ore:dustWood>.firstItem, 2500, 700)
	.chancedOutput(<gregtech:meta_item_1:245>, 3750, 900)
	.fluidOutputs(<liquid:methane> * 60)
	.duration(200).EUt(20).buildAndRegister();  

//Первые способы получить резину
extractor.recipeBuilder()
	.inputs(<tfc:wood/log/hevea>)
	.outputs(<ore:dustRawRubber>.firstItem)
	.duration(200).EUt(2).buildAndRegister(); 

//Чугун --> Сталь
//forge_hammer.findRecipe(16, [<gregtech:meta_item_1:10140>*3], null).remove();
//forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<tfc:metal/ingot/steel>).duration(400).EUt(2).buildAndRegister(); 

//Salt(Ocean water) --> Fresh water
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:salt_water>*1000)
	.chancedOutput(<ore:dustSalt>.firstItem, 2500, 2500)
	.fluidOutputs(<liquid:fresh_water>*750)
	.duration(100).EUt(10).buildAndRegister();

//Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand>*8], null).remove();
electrolyzer.recipeBuilder()
	.inputs(<ore:sand>*8)
	.outputs(<ore:dustSiliconDioxide>.firstItem)
	.duration(150).EUt(25).buildAndRegister();

//Дистилированная вода из горячей
distillery.recipeBuilder()
	.fluidInputs(<liquid:fresh_water>*576)
	.notConsumable(<gregtech:meta_item_1:193>.withTag({Configuration: 0}))
	.fluidOutputs(<liquid:distilled_water>*510)
	.duration(240).EUt(30).buildAndRegister();

//Кривые палки офаем
Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>*2);
Anvil.removeRecipe(<tfc:metal/rod/steel>*2);
Anvil.removeRecipe(<tfc:metal/rod/gold>*2);

//Палки из пиломатериалов
recipes.addShapeless(<minecraft:stick>*2, [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>]);

//Флюс использует крафт с помощью GT молота
recipes.removeByRecipeName("tfc:flux");
recipes.addShapeless (<tfc:powder/flux>*2, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:rockFlux>]);

//Hot water --> Dist
Barrel.addRecipe("tfc:freshwatertodistwater", <tfc:crop/product/jute_net>, <liquid:fresh_water>*4000, <tfc:crop/product/dirty_jute_net>, <liquid:distilled_water>*3600, 4);

//Отключение крафтов всех геологических TFC
Anvil.removeRecipe(<tfc:metal/propick_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/copper>);
Anvil.removeRecipe(<tfc:metal/propick_head/wrought_iron>);

//Отключение крафтов всех молотков TFC
Anvil.removeRecipe(<tfc:metal/hammer_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/copper>);

//Отключение крафтов всех пил TFC(которые не дублируются)
Anvil.removeRecipe(<tfc:metal/saw_blade/copper>);

//Отключение крафтов всех ножей TFC
Anvil.removeRecipe(<tfc:metal/knife_blade/red_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/blue_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/copper>);

//Новые рецепты ковки GT(TFC) молотков
Anvil.addRecipe("tfc:hammer_head/CopperF", <ore:ingotCopper>, <tfc:metal/hammer_head/copper>, 0, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BismuthBronzeF", <ore:ingotBismuthBronze>, <ore:toolHeadHammerBismuthBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackBronzeF", <ore:ingotBlackBronze>, <ore:toolHeadHammerBlackBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BronzeF", <ore:ingotBronze>, <ore:toolHeadHammerBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/WroughtIronF", <ore:ingotWroughtIron>, <ore:toolHeadHammerWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/SteelF", <ore:ingotSteel>, <ore:toolHeadHammerSteel>.firstItem, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackSteelF", <ore:ingotBlackSteel>, <ore:toolHeadHammerBlackSteel>.firstItem, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlueSteelF", <ore:ingotBlueSteel>, <ore:toolHeadHammerBlueSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/RedSteelF", <ore:ingotRedSteel>, <ore:toolHeadHammerRedSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CobaltF", <ore:ingotCobalt>, <ore:toolHeadHammerCobalt>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/InvarF", <ore:ingotInvar>, <ore:toolHeadHammerInvar>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

//Крафт голов напильков из GT
Anvil.addRecipe("tfc:file_head/Bronze", <ore:ingotBronze>, <ore:toolHeadFileBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BismuthBronze", <ore:ingotBlackBronze>, <ore:toolHeadFileBismuthBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackBronze", <ore:ingotBismuthBronze>, <ore:toolHeadFileBlackBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadFileBlackSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadFileRedSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadFileBlueSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Steel", <ore:ingotSteel>, <ore:toolHeadFileSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/SterlingSilver", <ore:ingotSterlingSilver>, <ore:toolHeadFileSterlingSilver>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RoseGold", <ore:ingotRoseGold>, <ore:toolHeadFileRoseGold>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Brass", <ore:ingotBrass>, <ore:toolHeadFileBrass>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadFileCobalt>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

//Создание рецептов для теплицы
/*
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>).chancedOutput(<tfc:crop/seeds/barley>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>).chancedOutput(<tfc:crop/seeds/maize>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>).chancedOutput(<tfc:crop/seeds/oat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>).chancedOutput(<tfc:crop/seeds/rice>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>).chancedOutput(<tfc:crop/seeds/rye>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>).chancedOutput(<tfc:crop/seeds/wheat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>).chancedOutput(<tfc:crop/seeds/beet>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>).chancedOutput(<tfc:crop/seeds/cabbage>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>).chancedOutput(<tfc:crop/seeds/carrot>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>).chancedOutput(<tfc:crop/seeds/garlic>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>).chancedOutput(<tfc:crop/seeds/green_bean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>).chancedOutput(<tfc:crop/seeds/onion>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>).chancedOutput(<tfc:crop/seeds/potato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>).chancedOutput(<tfc:crop/seeds/soybean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>).chancedOutput(<tfc:crop/seeds/squash>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>).chancedOutput(<tfc:crop/seeds/sugarcane>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>).chancedOutput(<tfc:crop/seeds/tomato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>).chancedOutput(<tfc:crop/seeds/red_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>).chancedOutput(<tfc:crop/seeds/yellow_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>).chancedOutput(<tfc:crop/seeds/jute>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
*/
/*
//Создание рецептов для теплицы с удобрением
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>, <tfc:crop/seeds/barley>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>, <tfc:crop/seeds/maize>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>, <tfc:crop/seeds/oat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>, <tfc:crop/seeds/rice>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>, <tfc:crop/seeds/rye>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>, <tfc:crop/seeds/wheat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>, <tfc:crop/seeds/beet>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>, <tfc:crop/seeds/cabbage>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>, <tfc:crop/seeds/carrot>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>, <tfc:crop/seeds/garlic>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>, <tfc:crop/seeds/green_bean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>, <tfc:crop/seeds/onion>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>, <tfc:crop/seeds/potato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>, <tfc:crop/seeds/soybean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>, <tfc:crop/seeds/squash>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>, <tfc:crop/seeds/sugarcane>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>, <tfc:crop/seeds/tomato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>, <tfc:crop/seeds/red_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>, <tfc:crop/seeds/yellow_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>, <tfc:crop/seeds/jute>*2).duration(2500).EUt(26).buildAndRegister();
*/
/*
//Отключение ванильных крафтов через теплицу(без удобрения)
//green_house.findRecipe(16, [<minecraft:potato>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:carrot>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:cactus>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:reeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:red_mushroom>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:brown_mushroom>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//green_house.findRecipe(16, [<minecraft:beetroot>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
//Отключение ванильных крафтов через теплицу(с костной мукой)
green_house.findRecipe(16, [<minecraft:potato>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
//Отключение ванильных крафтов через теплицу(с удобрением)
green_house.findRecipe(16, [<minecraft:potato>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
//Отключение крафтов ванильных предметов.
assembler.findRecipe(4, [<minecraft:planks>*6, <minecraft:book>*3], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*3, <gregtech:meta_item_1:32766>.withTag({Configuration: 3})], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
*/
//ПЕРЕРАБОТКА ВСЕХ РАСТЕНИЙ И МЯСА ИЗ TFC ДЛЯ GT + Отключение ванильного.
//
/*
//Отключение яблок
macerator.findRecipe(120, [<minecraft:apple>], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
//Отключение мясо+рыба
//Мясо
macerator.findRecipe(16, [<minecraft:porkchop>], null).remove();
macerator.findRecipe(16, [<minecraft:beef>], null).remove();
macerator.findRecipe(16, [<minecraft:chicken>], null).remove();
macerator.findRecipe(16, [<minecraft:rabbit>], null).remove();
macerator.findRecipe(16, [<minecraft:mutton>], null).remove();
bio_reactor.findRecipe(30720, [<minecraft:beef>, <gtadditions:ga_meta_item:32399>], [<liquid:bacterial_growth_medium>*1000]).remove();
//Рыба не жаренная
fluid_extractor.findRecipe(4, [<minecraft:fish>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:1>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:2>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:3>], null).remove();
//Отключение картошки
compressor.findRecipe(2, [<minecraft:potato>*8], null).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:water>*20]).remove();
mixer.findRecipe(30, [<minecraft:potato>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:potato>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:potato>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
//Отключение арбуза
chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();
macerator.findRecipe(2, [<minecraft:melon_block>], null).remove();
macerator.findRecipe(2, [<minecraft:melon>], null).remove();
//Отключение торта
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");
//Отключение печенек
//compressor.findRecipe(2, [<minecraft:cookie>*9], null).remove();
//Отключение свеклы
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:water>*20]).remove();
extractor.findRecipe(2, [<minecraft:beetroot>], null).remove();
compressor.findRecipe(2, [<minecraft:beetroot>*8], null).remove();
mixer.findRecipe(30, [<minecraft:beetroot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:beetroot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:beetroot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
//Отключение моркови
recipes.removeByRecipeName("minecraft:golden_carrot");
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:water>*20]).remove();
compressor.findRecipe(2, [<minecraft:carrot>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
mixer.findRecipe(30, [<minecraft:carrot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:carrot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:carrot>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
//Отключение кактуса
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:water>*20]).remove();
mixer.findRecipe(30, [<minecraft:cactus>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:cactus>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:cactus>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
compressor.findRecipe(2, [<minecraft:cactus>*8], null).remove();
//Отключение тростника
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:water>*20]).remove();
mixer.findRecipe(30, [<minecraft:reeds>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:reeds>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:reeds>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
compressor.findRecipe(2, [<minecraft:reeds>*8], null).remove();
macerator.findRecipe(2, [<minecraft:reeds>], null).remove();
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:water>*100]).remove();
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:distilled_water>*100]).remove();
forge_hammer.findRecipe(4, [<minecraft:reeds>*3], null).remove();//Не работает
//Отключение коричневого гриба
compressor.findRecipe(2, [<minecraft:brown_mushroom>*8], null).remove(); 
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:water>*20]).remove();
mixer.findRecipe(30, [<minecraft:brown_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:brown_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:brown_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
large_mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();
//Отключение красного гриба
compressor.findRecipe(2, [<minecraft:red_mushroom>*8], null).remove(); 
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:water>*20]).remove();
mixer.findRecipe(30, [<minecraft:red_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:for.honey>*250]).remove();
mixer.findRecipe(30, [<minecraft:red_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:juice>*250]).remove();
mixer.findRecipe(30, [<minecraft:red_mushroom>*10, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*250]).remove();
centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();
large_mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();
//Wheat !--> Straw
compressor.findRecipe(2, [<minecraft:wheat>*9], null).remove();
compressor.findRecipe(2, [<tfc:straw>*9], null).remove();
compressor.recipeBuilder().inputs(<tfc:straw>*9).outputs(<tfc:thatch>).duration(20).EUt(2).buildAndRegister();
//Отключение старой гевеи
centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
large_centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
//Отключение старой земли
centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
//Отключение старой травы
centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
//Создание рецептов/////////////////////////////////////////////////////
//Яблоки
macerator.recipeBuilder().inputs(<tfc:food/green_apple>|<tfc:food/red_apple>).chancedOutput(<gtadditions:ga_dust:26>, 500, 250).duration(20).EUt(120).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<tfc:metal/ingot/gold>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple>).duration(15).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<minecraft:gold_block>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple:1>).duration(15).EUt(30).buildAndRegister();
//Мясо
bio_reactor.recipeBuilder().inputs(<ore:categoryMeat>, <gtadditions:ga_meta_item:32399>).fluidInputs([<liquid:bacterial_growth_medium>*1000]).outputs(<gtadditions:ga_meta_item:32477>).duration(500).EUt(30720).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane>*72).duration(20).EUt(5).buildAndRegister();
macerator.recipeBuilder().inputs(<ore:categoryMeat>).outputs(<gregtech:meta_item_1:1996>*6).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane>*34).duration(20).EUt(5).buildAndRegister();
fluid_extractor.recipeBuilder().inputs(<tfc:food/fish>).fluidOutputs(<liquid:fish_oil>*40).duration(20).EUt(20).buildAndRegister();
//Морковь
chemical_reactor.recipeBuilder().inputs(<ore:nuggetGold>*8, <tfc:food/carrot>).outputs(<minecraft:golden_carrot>).duration(15).EUt(30).buildAndRegister();
//Биомасса из овощей и фруктов
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*20).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*5).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryVegetable>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryFruit>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryGrain>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
//Тростник
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:food/sugarcane>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs(<tfc:food/sugarcane>).outputs(<minecraft:sugar>).duration(20).EUt(2).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water>*100]).outputs(<minecraft:paper>).duration(160).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:food/sugarcane>*3).outputs(<gregtech:meta_item_1:2325>*2).duration(40).EUt(9).buildAndRegister();
//Кактус
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/barrel_cactus>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
//Коричневый гриб
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/porcini>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
large_mixer.recipeBuilder().inputs(<tfc:plants/porcini>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})).fluidOutputs(<liquid:chitin>*100).duration(150).EUt(480).buildAndRegister();
//Земля+Трава
centrifuge.recipeBuilder().inputs(<ore:dirt>).chancedOutput(<gregtech:meta_item_2:32570>, 1250, 750).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 4000, 900).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:grass>).chancedOutput(<gregtech:meta_item_2:32570>, 3000, 1200).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 5000, 900).duration(20).EUt(30).buildAndRegister();
*/