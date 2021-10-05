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
	<tfc:metal/dust/wrought_iron>,
	<tfc:metal/nugget/wrought_iron>,
	<tfc:metal/double_sheet/wrought_iron>,
	<gregtech:meta_item_1:12197>,
	<gregtech:meta_item_1:10197>,
	<tfc:powder/saltpeter>,
	<tfc:powder/salt>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
/*
global ItemsToRemoveTFC as IItemStack[] = [
	//Кирки
	<tfc:metal/pick/bismuth_bronze>,
	<tfc:metal/pick/black_bronze>,
	<tfc:metal/pick/bronze>,
	<tfc:metal/pick/copper>,
	<tfc:metal/pick/black_steel>,
	<tfc:metal/pick/steel>,
	<tfc:metal/pick/wrought_iron>,
	<tfc:metal/pick/blue_steel>,
	<tfc:metal/pick/red_steel>,
	//Топоры
	<tfc:metal/axe/bismuth_bronze>,
	<tfc:metal/axe/black_bronze>,
	<tfc:metal/axe/bronze>,
	<tfc:metal/axe/copper>,
	<tfc:metal/axe/black_steel>,
	<tfc:metal/axe/steel>,
	<tfc:metal/axe/wrought_iron>,
	<tfc:metal/axe/blue_steel>,
	<tfc:metal/axe/red_steel>,
	//Мотыги
	<tfc:metal/hoe/bismuth_bronze>,
	<tfc:metal/hoe/black_bronze>,
	<tfc:metal/hoe/bronze>,
	<tfc:metal/hoe/copper>,
	<tfc:metal/hoe/black_steel>,
	<tfc:metal/hoe/steel>,
	<tfc:metal/hoe/wrought_iron>,
	<tfc:metal/hoe/blue_steel>,
	<tfc:metal/hoe/red_steel>,
	//Мечи
	<tfc:metal/sword/bismuth_bronze>,
	<tfc:metal/sword/black_bronze>,
	<tfc:metal/sword/bronze>,
	<tfc:metal/sword/copper>,
	<tfc:metal/sword/black_steel>,
	<tfc:metal/sword/steel>,
	<tfc:metal/sword/wrought_iron>,
	<tfc:metal/sword/blue_steel>,
	<tfc:metal/sword/red_steel>,
	//Лопаты
	<tfc:metal/shovel/bismuth_bronze>,
	<tfc:metal/shovel/black_bronze>,
	<tfc:metal/shovel/bronze>,
	<tfc:metal/shovel/copper>,
	<tfc:metal/shovel/black_steel>,
	<tfc:metal/shovel/steel>,
	<tfc:metal/shovel/wrought_iron>,
	<tfc:metal/shovel/blue_steel>,
	<tfc:metal/shovel/red_steel>
] as IItemStack[];
for item in ItemsToRemoveTFC{
    recipes.remove(item);
}*/

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
 
//Фикс крафта деревянной панельки
recipes.removeByRecipeName("gregtech:plank_to_wooden_shape");
recipes.addShaped(<gregtech:meta_item_2:32011>,
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
recipes.addShapeless(<gregtech:meta_item_1:2095>*9, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

//Высушивание соли
Drying.addRecipe("saltwatertosalt", <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "salt_water", Amount: 1000}}), <gregtech:meta_item_1:1155>, 24000);

//Фикс крафта ступка+кремний=гравий
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.addShapeless (<minecraft:flint>, [<ore:craftingToolMortar>.firstItem.withEmptyTag(), <ore:gravel>]);

//Hevea TFC --> Rubber
centrifuge.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:2012>, 2500, 600).chancedOutput(<gregtech:meta_item_1:2196>, 2500, 700).chancedOutput(<gregtech:meta_item_2:32570>, 3750, 900).fluidOutputs(<liquid:methane> * 60).duration(200).EUt(20).buildAndRegister();  

//Первые способы получить резину
extractor.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 2500, 0).duration(200).EUt(2).buildAndRegister(); 

//Чугун --> Сталь
forge_hammer.findRecipe(16, [<gregtech:meta_item_1:10140>*3], null).remove();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<tfc:metal/ingot/steel>).duration(400).EUt(2).buildAndRegister(); 

//Salt(Ocean water) --> Fresh water
centrifuge.recipeBuilder().fluidInputs(<liquid:salt_water>*1000).chancedOutput(<gregtech:meta_item_1:2155>, 2500, 2500).fluidOutputs(<liquid:fresh_water>*750).duration(100).EUt(10).buildAndRegister();

//Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand>*8], null).remove();
electrolyzer.recipeBuilder().inputs(<ore:sand>*8).outputs(<gregtech:meta_item_1:2159>).chancedOutput(<gregtech:meta_item_1:2159>, 2500, 2500).duration(150).EUt(25).buildAndRegister();

//Дистилированная вода из горячей
distillery.recipeBuilder()
	.fluidInputs(<liquid:fresh_water>*576)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.fluidOutputs(<liquid:distilled_water>*510)
	.duration(240).EUt(30).buildAndRegister();

//Кривые палки офаем
Anvil.removeRecipe(<tfc:metal/rod/wrought_iron>*2);
Anvil.removeRecipe(<tfc:metal/rod/gold>*2);

//Палки из пиломатериалов
recipes.addShapeless(<minecraft:stick>*2, [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>]);

//Флюс использует крафт с помощью GT молота
recipes.removeByRecipeName("tfc:flux");
recipes.addShapeless (<tfc:powder/flux>*2, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:rockFlux>]);

//Добавление других вариантов угля для TFC
ItemRegistry.registerFuel(<ore:fuelCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<ore:gemCoal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<ore:gemLignite>, 1200, 1300, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

//How water --> Dist
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
Anvil.addRecipe("tfc:hammer_head/BismuthBronzeF", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:5230>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackBronzeF", <ore:ingotBlackBronze>, <gregtech:meta_item_2:5229>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BronzeF", <ore:ingotBronze>, <gregtech:meta_item_2:5095>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/WroughtIronF", <ore:ingotWroughtIron>, <gregtech:meta_item_2:5197>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/SteelF", <ore:ingotSteel>, <gregtech:meta_item_2:5184>, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackSteelF", <ore:ingotBlackSteel>, <gregtech:meta_item_2:5231>, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlueSteelF", <ore:ingotBlueSteel>, <gregtech:meta_item_2:5233>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/RedSteelF", <ore:ingotRedSteel>, <gregtech:meta_item_2:5232>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CobaltF", <ore:ingotCobalt>, <gregtech:meta_item_2:5017>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/InvarF", <ore:ingotInvar>, <gregtech:meta_item_2:5126>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

//Крафт голов напильков из GT
Anvil.addRecipe("tfc:file_head/Bronze", <ore:ingotBronze>, <gregtech:meta_item_2:6095>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BismuthBronze", <ore:ingotBlackBronze>, <gregtech:meta_item_2:6229>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackBronze", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:6230>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackSteel", <ore:ingotBlackSteel>, <gregtech:meta_item_2:6231>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RedSteel", <ore:ingotRedSteel>, <gregtech:meta_item_2:6232>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlueSteel", <ore:ingotBlueSteel>, <gregtech:meta_item_2:6233>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Steel", <ore:ingotSteel>, <gregtech:meta_item_2:6184>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/SterlingSilver", <ore:ingotSterlingSilver>, <gregtech:meta_item_2:6227>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RoseGold", <ore:ingotRoseGold>, <gregtech:meta_item_2:6228>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Brass", <ore:ingotBrass>, <gregtech:meta_item_2:6094>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Cobalt", <ore:ingotCobalt>, <gregtech:meta_item_2:6017>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

//Создание рецептов для теплицы
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
//ПЕРЕРАБОТКА ВСЕХ РАСТЕНИЙ И МЯСА ИЗ TFC ДЛЯ GT + Отключение ванильного.
//
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