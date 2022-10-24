#priority 1
# Minecraft

import crafttweaker.item.IItemStack;

print("Initializing 'Minecraft'...");


// Удаление рецептов из NEI
var tools = [<minecraft:golden_hoe>, <minecraft:golden_sword>, <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>, <minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:iron_sword>, <minecraft:diamond_sword>, <minecraft:wooden_shovel>, <minecraft:stone_shovel>, <minecraft:iron_shovel>, <minecraft:golden_shovel>, <minecraft:diamond_shovel>, <minecraft:wooden_axe>, <minecraft:stone_axe>, <minecraft:iron_axe>, <minecraft:golden_axe>, <minecraft:diamond_axe>, <minecraft:wooden_hoe>, <minecraft:stone_hoe>, <minecraft:iron_hoe>, <minecraft:diamond_hoe>, <minecraft:iron_boots>, <minecraft:iron_leggings>, <minecraft:iron_chestplate>, <minecraft:iron_helmet>, <minecraft:golden_boots>, <minecraft:golden_leggings>, <minecraft:golden_chestplate>, <minecraft:golden_helmet>, <minecraft:sapling:*>] as IItemStack[];
for tool in tools {
    mods.jei.JEI.removeAndHide(tool);
	  tool.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Удаление рецептов
var d_tools = [<minecraft:compass>, <minecraft:clock>, <minecraft:saddle>, <minecraft:iron_horse_armor>, <minecraft:golden_horse_armor>, <minecraft:diamond_horse_armor>, <minecraft:tnt>, <minecraft:stone_pressure_plate>, <minecraft:stone_button>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:light_weighted_pressure_plate>, <minecraft:glass_bottle>] as IItemStack[];
for d_tool in d_tools {
    recipes.remove(d_tool); 
}

// Удаление всех рецептов в печке
furnace.removeAll();

// Удаление рецепта получения кремния в просеивателе
// Кремень * 1
<recipemap:sifter>.findRecipe(16, [<minecraft:gravel:0>], null).remove();

// Цветочный горшок (удаление крафта)
<recipemap:assembler>.findRecipe(2, [<minecraft:brick:0> * 3], null).remove();

// Удаление рецепта крюка
recipes.remove(<minecraft:tripwire_hook>);

// Удаление крафта гранита
recipes.remove(<minecraft:stone:1>);

// Удаление крафта диорита
recipes.remove(<minecraft:stone:3>);

// Удаление крафта андезита
recipes.remove(<minecraft:stone:5>);

// Удаление крафта верстака из машин грега
<recipemap:assembler>.findRecipe(6, [<metaitem:plateWood> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 4})], null).remove();

// Удаление крафта люка из машин грега
<recipemap:assembler>.findRecipe(4, [<metaitem:plateWood> * 3, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Удаление крафта сундука из машин грега
<recipemap:assembler>.findRecipe(4, [<metaitem:plateWood> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

// Удаление крафта каменистой земли из машин грега
<recipemap:mixer>.findRecipe(4, [<minecraft:gravel:0>, <minecraft:dirt:0>], null).remove();

// Удаление крафта снопа сена из машин грега
<recipemap:packer>.findRecipe(2, [<minecraft:wheat:0> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// Удаление крафта земли из машин грега
<recipemap:macerator>.findRecipe(2, [<metaitem:bio_chaff>], null).remove();

// Удаления крафта факелов в верстаке
recipes.remove(<minecraft:torch>);

// Удаление крафта мицелия
<recipemap:centrifuge>.findRecipe(30, [<minecraft:mycelium:0>], null).remove();

// Удаление старых крафтов с грибами
<recipemap:centrifuge>.findRecipe(5, [<minecraft:brown_mushroom:0>], null).remove();
<recipemap:centrifuge>.findRecipe(5, [<minecraft:red_mushroom:0>], null).remove();
<recipemap:mixer>.findRecipe(7, [<minecraft:sugar:0>, <minecraft:brown_mushroom:0>, <minecraft:spider_eye:0>], null).remove();
<recipemap:mixer>.findRecipe(7, [<minecraft:sugar:0>, <minecraft:red_mushroom:0>, <minecraft:spider_eye:0>], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:red_mushroom:0> * 8], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:brown_mushroom:0> * 8], null).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:red_mushroom:0>], [<liquid:water> * 20]).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:brown_mushroom:0>], [<liquid:water> * 20]).remove();
// Новые крафты с грибом из ТФК
mixer.recipeBuilder()
    .inputs(<ore:dustSugar>, <tfc:plants/porcini>, <minecraft:spider_eye>)
    .outputs(<minecraft:fermented_spider_eye>)
    .duration(5 * 20)
    .EUt(7)
    .buildAndRegister();
brewery.recipeBuilder()
    .inputs(<tfc:plants/porcini>)
    .fluidInputs([<liquid:water> * 50])
    .fluidOutputs([<liquid:biomass> * 50])
    .duration(8 * 20)
    .EUt(3)
    .buildAndRegister();

// Удаление некоторых крафтов с тростником 
<recipemap:compressor>.findRecipe(2, [<minecraft:reeds:0> * 8], null).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:reeds:0>], [<liquid:water> * 20]).remove();

// Удаление нектоторых рецептов с сахаром
<recipemap:macerator>.findRecipe(2, [<minecraft:reeds:0>], null).remove();
recipes.removeByRecipeName("gregtech:sugar");
// Новый крафт сахара
chemical_reactor.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/sugarcane>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<minecraft:sugar>)
    .duration(12 * 20)
    .EUt(16)
    .buildAndRegister();

// Удаление старых крафтов получения золотых яблок
<recipemap:chemical_reactor>.findRecipe(30, [<minecraft:apple:0>, <minecraft:gold_ingot:0> * 8], null).remove();
<recipemap:chemical_reactor>.findRecipe(30, [<minecraft:apple:0>, <minecraft:gold_block:0> * 8], null).remove();
<recipemap:large_chemical_reactor>.findRecipe(30, [<minecraft:apple:0>, <minecraft:gold_ingot:0> * 8], null).remove();
<recipemap:large_chemical_reactor>.findRecipe(30, [<minecraft:apple:0>, <minecraft:gold_block:0> * 8], null).remove();
// Новые крафты
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_ingot> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple>)
    .duration(15 * 20)
    .EUt(32)
    .buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_block> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple:1>)
    .duration(60 * 20)
    .EUt(32)
    .buildAndRegister();

// Удаление старых крафтов получения золотой моркови
<recipemap:chemical_reactor>.findRecipe(30, [<minecraft:carrot:0>, <minecraft:gold_nugget:0> * 8], null).remove();
<recipemap:large_chemical_reactor>.findRecipe(30, [<minecraft:carrot:0>, <minecraft:gold_nugget:0> * 8], null).remove();
recipes.remove(<minecraft:golden_carrot>); 
// Новый крафт золотой моркови
chemical_reactor.recipeBuilder()
    .inputs(<ore:ingotGold> * 2, <tfc:food/carrot>)
    .outputs(<minecraft:golden_carrot>)
    .duration(8 * 20)
    .EUt(32)
    .buildAndRegister();

// Сверкающий арбуз
recipes.remove(<minecraft:speckled_melon>);
<recipemap:chemical_reactor>.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();
<recipemap:large_chemical_reactor>.findRecipe(30, [<minecraft:melon:0>, <minecraft:gold_nugget:0> * 8], null).remove();
chemical_reactor.recipeBuilder()
    .inputs(<ore:ingotGold> * 2, <minecraft:melon>)
    .outputs(<minecraft:speckled_melon>)
    .duration(8 * 20)
    .EUt(32)
    .buildAndRegister();

// Новый крафт тыквенного пирога
mixer.recipeBuilder()
    .inputs(<ore:dustSugar> * 2, <minecraft:pumpkin>, <tfc:food/cornmeal_dough> | <tfc:food/wheat_dough>)
    .fluidInputs([<liquid:milk> * 200])
    .outputs(<minecraft:pumpkin_pie>)
    .duration(15 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение семян арбуза
sifter.recipeBuilder()
    .inputs(<tfc:plants/toquilla_palm>)
    .chancedOutput(<minecraft:melon_seeds>, 100, 50)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение семян тыквы
sifter.recipeBuilder()
    .inputs(<tfc:plants/switchgrass>)
    .chancedOutput(<minecraft:pumpkin_seeds>, 100, 50)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение кактуса
chemical_reactor.recipeBuilder()
    .inputs(<tfc:plants/barrel_cactus> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:cactus>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();

// Получение красного гриба
chemical_reactor.recipeBuilder()
    .inputs(<tfc:plants/porcini> * 4, <ore:dyeRed>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:red_mushroom>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();

// Нарост из незера
mixer.recipeBuilder()
    .inputs(<minecraft:sugar> * 5, <minecraft:fermented_spider_eye> * 3, <minecraft:pumpkin_seeds> | <minecraft:melon_seeds>)
    .fluidInputs([<liquid:milk> * 500])
    .outputs(<minecraft:nether_wart>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Песок душ
chemical_reactor.recipeBuilder()
    .inputs(<ore:sand>, <ore:dustSaltpeter>)
    .fluidInputs([<liquid:oil> * 500])
    .outputs(<minecraft:soul_sand>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
// Удаление раскрафта песка душ в центрифуге
<recipemap:centrifuge>.findRecipe(80, [<minecraft:soul_sand:0>], null).remove();

// Плод хоруса
mixer.recipeBuilder()
    .inputs(<ore:dustEnderPearl>, <minecraft:snowball>, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<minecraft:chorus_fruit>)
    .duration(30 * 20)
    .EUt(32)
    .buildAndRegister();

// Хорус
assembler.recipeBuilder()
    .inputs(<minecraft:chorus_fruit> * 4, <minecraft:chorus_fruit_popped> * 4)
    .outputs(<minecraft:chorus_plant>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Эндер-жемчуг
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:1> * 3, <gregtech:meta_lens:2000>)
    .outputs(<minecraft:ender_pearl>)
    .duration(15 * 20)
    .EUt(32)
    .buildAndRegister();

// Мертвый куст
furnace.addRecipe(<minecraft:deadbush>, <tfc:plants/toquilla_palm>);

// Редстоун руда
chemical_reactor.recipeBuilder()
    .inputs(<gregtech:ore_redstone_0>)
    .fluidInputs([<liquid:redstone> * 500])
    .outputs(<minecraft:redstone_ore>)
    .duration(60 * 20)
    .EUt(32)
    .buildAndRegister();

// Эндерняк
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustEnderEye> * 1, <minecraft:stone>)
    .fluidInputs([<liquid:platinum> * 144])
    .outputs(<minecraft:end_stone>)
    .duration(60 * 20)
    .EUt(32)
    .buildAndRegister();

// Тростник
chemical_reactor.recipeBuilder()
    .inputs(<tfc:crop/seeds/sugarcane> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:reeds>)
    .duration(35 * 20)
    .EUt(32)
    .buildAndRegister();

// Кувшинка
chemical_reactor.recipeBuilder()
    .inputs(<tfc:plants/water_lily> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:waterlily>)
    .duration(35 * 20)
    .EUt(32)
    .buildAndRegister();

// Получение семян пшеницы
macerator.recipeBuilder()
    .inputs(<tfc:crop/seeds/wheat> * 4)
    .outputs(<minecraft:wheat_seeds>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Печенье
mixer.recipeBuilder()
    .inputs(<minecraft:dye:3>, <minecraft:sugar>, <tfc:food/barley_dough> | <tfc:food/cornmeal_dough> | <tfc:food/oat_dough> | <tfc:food/rice_dough> | <tfc:food/rye_dough> | <tfc:food/wheat_dough>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<minecraft:cookie> * 4)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Подписи к некоторым предметам
<minecraft:cactus>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §2§lКактусы");
<minecraft:nether_wart>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §c§lНарост Нижнего мира");
<minecraft:vine>.addTooltip("§e§fНеобходим для работы пчел, которые требуют цветы:§r §a§lЛианы и папоротники");
<minecraft:red_mushroom>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §7§lГрибы");
<minecraft:chorus_plant>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §d§lКрай");
<minecraft:yellow_flower>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §e§lЦветы§r§f,§r §b§lЗимние");
<minecraft:wheat_seeds>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §e§lПшеница");
<minecraft:stone>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §7§lСкалы");
<minecraft:deadbush>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §6§lМертвые кусты");
<minecraft:redstone_ore>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §4§lРедстоун");
<minecraft:melon_seeds>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §a§lБахчевые");
<minecraft:waterlily>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §3§lКувшинки");
<minecraft:reeds>.addTooltip("§fНеобходим для работы пчел, которые требуют цветы:§r §a§lТростник");

// Получение лавы
chemical_reactor.recipeBuilder()
    .inputs(<forestry:phosphor> * 2, <ore:cobblestone>)
    .fluidOutputs([<liquid:lava> * 1000])
    .duration(25 * 20)
    .EUt(20)
    .buildAndRegister();

// Рельсы различные
// Рельсы
assembler.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
recipes.remove(<minecraft:rail>); 
assembler.recipeBuilder()
    .inputs(<ore:slabWood> * 4, <ore:stickLongWood> * 2, <ore:stickLongSteel> * 2, <ore:stickLongIron> * 2)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Энергорельсы
assembler.findRecipe(30, [<metaitem:stickGold> * 12, <minecraft:stick:0>, <minecraft:redstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
recipes.remove(<minecraft:golden_rail>); 
assembler.recipeBuilder()
    .inputs(<ore:foilRedAlloy> * 8, <ore:slabWood> * 4, <ore:stickLongGold> * 2, <ore:stickLongSteel> * 2, <ore:stickLongIron> * 2)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:golden_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Активирующие рельсы
assembler.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0> * 2, <minecraft:redstone_torch:0>, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
recipes.remove(<minecraft:activator_rail>); 
assembler.recipeBuilder()
    .inputs(<ore:foilRedAlloy> * 8, <ore:slabWood> * 4, <ore:stickLongTin> * 2, <ore:stickLongSteel> * 2, <ore:stickLongIron> * 2)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:activator_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Рельсы с датчиком
assembler.findRecipe(30, [<metaitem:stickIron> * 12, <minecraft:stick:0>, <minecraft:redstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
recipes.remove(<minecraft:detector_rail>); 
assembler.recipeBuilder()
    .inputs(<ore:slabWood> * 4, <ore:stickLongSteel> * 2, <ore:stickLongIron> * 2, <ore:plateIron>, <ore:plateRedAlloy>)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:detector_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Бумага
// Удаление старых крафтов
<recipemap:chemical_bath>.findRecipe(7, [<minecraft:reeds:0>], [<liquid:water> * 100]).remove();
<recipemap:chemical_bath>.findRecipe(7, [<minecraft:reeds:0>], [<liquid:distilled_water> * 100]).remove();
recipes.remove(<minecraft:paper>); 

// Инструменты
// Щит
recipes.remove(<minecraft:shield>);
recipes.addShaped("minecraft_shield", <minecraft:shield>,
 [[<ore:stickIron>, <ore:plateWood>, <ore:stickIron>],
  [<ore:stickIron>, <ore:plateWood>, <ore:stickIron>],
  [<ore:ringIron>, <ore:plateWood>, <ore:stickIron>]]);

// Удочка
recipes.remove(<minecraft:fishing_rod>);
recipes.addShaped("minecraft_fishing_rod", <minecraft:fishing_rod>,
 [[null, null, <ore:stickWood>],
  [null, <ore:stickWood>, <ore:string>],
  [<ore:stickWood>, <ore:ringWroughtIron> | <ore:ringBronze>, <ore:string>]]);

// Ножницы
recipes.remove(<minecraft:shears>);
recipes.addShaped("minecraft_shears", <minecraft:shears>,
 [[<ore:plateIron>, <ore:craftingToolFileEmptyTag>, <ore:plateIron>],
  [<ore:plateIron>, <ore:craftingToolWrenchEmptyTag>, <ore:plateIron>],
  [null, <ore:ringIron>, null]]);

// Чародейский стол
assembler.findRecipe(7, [<minecraft:obsidian:0> * 4, <minecraft:diamond:0> * 2, <minecraft:book:0>], null).remove();
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped("minecraft_enchanting_table", <minecraft:enchanting_table>,
 [[<ore:gemDiamond>, <ore:bookEmpty>, <ore:gemDiamond>],
  [<ore:plateRedSteel>, <ore:plateRedSteel>, <ore:plateRedSteel>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

// Проигрыватель
assembler.findRecipe(16, [<minecraft:planks:0> * 8, <minecraft:diamond:0>], null).remove();
recipes.remove(<minecraft:jukebox>);
recipes.addShaped("minecraft_jukebox", <minecraft:jukebox>,
 [[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
  [<ore:plateWood>, <ore:plateDiamond>, <ore:plateWood>],
  [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]]);

// Нотный блок
recipes.remove(<minecraft:noteblock>);
recipes.addShaped("minecraft_noteblock", <minecraft:noteblock>,
 [[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
  [<ore:plateWood>, <ore:plateRedstone>, <ore:plateWood>],
  [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]]);

// Вагонетка
recipes.remove(<minecraft:minecart>);
recipes.addShaped("minecraft_minecart", <minecraft:minecart>,
 [[null, null, null],
  [<ore:plateIron>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateIron>],
  [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Варочная стойка
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped("minecraft_brewing_stand", <minecraft:brewing_stand>,
 [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
  [<ore:foilCopper>, <minecraft:blaze_rod>, <ore:foilCopper>],
  [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]]);

// Прутья
assembler.recipeBuilder()
    .inputs(<ore:stickWroughtIron> * 3)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 3}))
    .outputs(<minecraft:iron_bars> * 4)
    .duration(15 * 20)
    .EUt(4)
    .buildAndRegister();
recipes.addShaped(<minecraft:iron_bars> * 8,
	[[null, <ore:craftingToolHardHammerEmptyTag>, null],
	[<ore:stickWroughtIron>, <ore:stickWroughtIron>, <ore:stickWroughtIron>],
	[<ore:stickWroughtIron>, <ore:stickWroughtIron>, <ore:stickWroughtIron>]]);

// Котел
recipes.remove(<minecraft:cauldron>);
<recipemap:assembler>.findRecipe(4, [<metaitem:plateIron> * 7, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
recipes.addShaped("minecraft_cauldron", <minecraft:cauldron>,
	[[<ore:plateWroughtIron> | <ore:plateIron>, null, <ore:plateWroughtIron> | <ore:plateIron>],
	[<ore:plateWroughtIron> | <ore:plateIron>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateWroughtIron> | <ore:plateIron>],
	[<ore:plateWroughtIron> | <ore:plateIron>, <ore:plateWroughtIron> | <ore:plateIron>, <ore:plateWroughtIron> | <ore:plateIron>]]);
assembler.recipeBuilder()
    .inputs(<ore:plateWroughtIron> * 7 | <ore:plateIron> * 7)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 7}))
    .outputs(<minecraft:cauldron>)
    .duration(15 * 20)
    .EUt(4)
    .buildAndRegister();

// Датчик дневного света
recipes.remove(<minecraft:daylight_detector>);
recipes.addShaped(<minecraft:daylight_detector>,
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
	[<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>],
	[<ore:lumber>, <ore:lumber>, <ore:lumber>]]);
recipes.addShaped(<minecraft:daylight_detector>,
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
	[<ore:plateQuartzite>, <ore:plateQuartzite>, <ore:plateQuartzite>],
	[<ore:lumber>, <ore:lumber>, <ore:lumber>]]);
recipes.addShaped(<minecraft:daylight_detector>,
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
	[<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, <ore:plateCertusQuartz>],
	[<ore:lumber>, <ore:lumber>, <ore:lumber>]]);

// Нить
recipes.addShaped(<minecraft:string>,
	[[<tfc:crop/product/jute_fiber>, <tfc:crop/product/jute_fiber>, <tfc:crop/product/jute_fiber>]]);

// Удаление старых крафтов поршня
recipes.remove(<minecraft:piston>);
<recipemap:assembler>.findRecipe(16, [<metaitem:plateSteel>, <minecraft:planks:0> * 3, <minecraft:cobblestone:0> * 4, <minecraft:redstone:0>], null).remove();
<recipemap:assembler>.findRecipe(16, [<metaitem:plateTitanium>, <minecraft:planks:0> * 3, <minecraft:cobblestone:0> * 4, <minecraft:redstone:0>], null).remove();
<recipemap:assembler>.findRecipe(16, [<metaitem:plateIron>, <minecraft:planks:0> * 3, <minecraft:cobblestone:0> * 4, <minecraft:redstone:0>], null).remove();
<recipemap:assembler>.findRecipe(16, [<metaitem:plateBronze>, <minecraft:planks:0> * 3, <minecraft:cobblestone:0> * 4, <minecraft:redstone:0>], null).remove();
<recipemap:assembler>.findRecipe(16, [<metaitem:plateAluminium>, <minecraft:planks:0> * 3, <minecraft:cobblestone:0> * 4, <minecraft:redstone:0>], null).remove();

// Новые крафты поршня
assembler.recipeBuilder()
    .inputs(<ore:cobblestone> * 4, <ore:lumber> * 3, <tfc:metal/rod/wrought_iron>, <minecraft:redstone>)
    .outputs(<minecraft:piston>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:cobblestone> * 4, <ore:lumber> * 3, <tfc:metal/rod/steel>, <minecraft:redstone>)
    .outputs(<minecraft:piston>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<minecraft:piston>,
	[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
	[<ore:cobblestone>, <tfc:metal/rod/wrought_iron>, <ore:cobblestone>],
	[<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:piston>,
	[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
	[<ore:cobblestone>, <tfc:metal/rod/steel>, <ore:cobblestone>],
	[<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);

// Липкий поршень
recipes.addShaped(<minecraft:sticky_piston>,
	[[<ore:craftingToolHardHammerEmptyTag>],
	[<ore:dustRawRubber>],
	[<minecraft:piston>]]);

// Редстоуновый фонарь
recipes.remove(<minecraft:redstone_lamp>);
assembler.findRecipe(1, [<minecraft:glowstone_dust> * 4, <minecraft:redstone> * 4], null).remove();
assembler.recipeBuilder()
    .inputs(<minecraft:glowstone>, <ore:plateRedstone> * 6)
    .outputs(<minecraft:redstone_lamp>)
    .duration(20 * 20)
    .EUt(1)
    .buildAndRegister();

// Наблюдатель
recipes.remove(<minecraft:observer>);
recipes.addShaped(<minecraft:observer>,
	[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
	[<minecraft:redstone>, <minecraft:redstone>, <ore:plateNetherQuartz>],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:observer>,
	[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
	[<minecraft:redstone>, <minecraft:redstone>, <ore:plateQuartzite>],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:observer>,
	[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
	[<minecraft:redstone>, <minecraft:redstone>, <ore:plateCertusQuartz>],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Яйцо дракона
recipes.remove(<minecraft:dragon_egg>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:709> * 32, <ore:foilTungsten> * 24, <appliedenergistics2:material:8> * 16, <forestry:crafting_material:1> * 8, <gregtech:meta_item_1:281> * 4, <gregtech:meta_item_1:282>)
    .fluidInputs([<liquid:binnie.dna.raw> * 1000])
    .outputs(<minecraft:dragon_egg>)
    .duration(360 * 20)
    .EUt(512)
    .buildAndRegister();

// Череп скелета
assembler.recipeBuilder()
    .inputs(<ore:blockBone>)
    .fluidInputs([<liquid:lubricant> * 1000])
    .outputs(<minecraft:skull>)
    .duration(180 * 20)
    .EUt(512)
    .buildAndRegister();

// Чепер визер-скелета
electric_blast_furnace.recipeBuilder()
    .inputs(<minecraft:skull>, <ore:dustCoal> * 64)
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<minecraft:skull:1>)
    .property("temperature", 2500)
    .duration(350 * 20)
    .EUt(128)
    .buildAndRegister();

// Звезда из Незера
implosion_compressor.recipeBuilder()
    .inputs(<minecraft:skull:1> * 3)
    .property("explosives", <minecraft:tnt> * 16)
    .outputs(<minecraft:nether_star>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Слеза гаста
recipes.remove(<minecraft:ghast_tear>);
assembler.recipeBuilder()
    .inputs(<ore:dustPhosphorus> * 8, <ore:gunpowder> * 8, <ore:dustNetherStar>)
    .fluidInputs([<liquid:binnie.dna.raw> * 500])
    .outputs(<minecraft:ghast_tear> * 8)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Кристалл энда
assembler.findRecipe(16, [<minecraft:ghast_tear:0>, <minecraft:ender_eye:0>], [<liquid:glass> * 1008]).remove();
recipes.remove(<minecraft:end_crystal>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass> * 16, <ore:plateAmethyst> * 6, <minecraft:ender_eye>, <minecraft:ghast_tear>)
    .outputs(<minecraft:end_crystal>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Элитры
assembler.recipeBuilder()
    .inputs(<ore:foilIridium> * 16, <gregtech:meta_item_1:501> * 8, <ore:plateUltimet> * 8, <ore:platePolycaprolactam> * 4)
    .outputs(<minecraft:elytra>)
    .duration(90 * 20)
    .EUt(512)
    .buildAndRegister();

// Удаление старого рецепта ведра
<recipemap:bender>.findRecipe(4, [<metaitem:plateIron> * 3, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();
// Ведро
recipes.remove(<minecraft:bucket>);
assembler.recipeBuilder()
    .inputs(<ore:plateWroughtIron> * 3, <tfc:metal/bucket/blue_steel>, <tfc:metal/bucket/red_steel>)
    .outputs(<minecraft:bucket>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();
recipes.addShaped(<minecraft:bucket>, 
	[[<ore:plateWroughtIron>, <tfc:metal/bucket/red_steel>.noReturn(), <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <tfc:metal/bucket/blue_steel>.noReturn(), <ore:plateWroughtIron>], 
	[null, <ore:plateWroughtIron>, null]]);

// Удаление старого крафта печки 
<recipemap:assembler>.findRecipe(7, [<minecraft:mossy_cobblestone:0> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// Новый крафт печки
assembler.recipeBuilder()
    .inputs(<tfc:fire_bricks> * 8, <tfc:wrought_iron_grill>)
    .outputs(<minecraft:furnace>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:metal_casing:1> * 8, <tfc:wrought_iron_grill>)
    .outputs(<minecraft:furnace>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
// Новый крафт печки в верстаке
recipes.addShaped(<minecraft:furnace>, 
	[[<tfc:fire_bricks>, <tfc:fire_bricks>, <tfc:fire_bricks>], 
	[<tfc:fire_bricks>, <tfc:wrought_iron_grill>, <tfc:fire_bricks>], 
	[<tfc:fire_bricks>, <tfc:fire_bricks>, <tfc:fire_bricks>]]);
recipes.addShaped(<minecraft:furnace>, 
	[[<gregtech:metal_casing:1>, <gregtech:metal_casing:1>, <gregtech:metal_casing:1>], 
	[<gregtech:metal_casing:1>, <tfc:wrought_iron_grill>, <gregtech:metal_casing:1>], 
	[<gregtech:metal_casing:1>, <gregtech:metal_casing:1>, <gregtech:metal_casing:1>]]);

// Выпечка картофеля из ТФК картофеля
furnace.addRecipe(<minecraft:baked_potato>, <tfc:food/potato>);

// Выпечка хоруса
furnace.addRecipe(<minecraft:chorus_fruit_popped>, <minecraft:chorus_fruit>);

// Получение терракоты 
furnace.addRecipe(<minecraft:hardened_clay>, <minecraft:clay>);
// Получение разных видов керамики
furnace.addRecipe(<minecraft:white_glazed_terracotta>, <minecraft:stained_hardened_clay>);
furnace.addRecipe(<minecraft:orange_glazed_terracotta>, <minecraft:stained_hardened_clay:1>);
furnace.addRecipe(<minecraft:magenta_glazed_terracotta>, <minecraft:stained_hardened_clay:2>);
furnace.addRecipe(<minecraft:light_blue_glazed_terracotta>, <minecraft:stained_hardened_clay:3>);
furnace.addRecipe(<minecraft:yellow_glazed_terracotta>, <minecraft:stained_hardened_clay:4>);
furnace.addRecipe(<minecraft:lime_glazed_terracotta>, <minecraft:stained_hardened_clay:5>);
furnace.addRecipe(<minecraft:pink_glazed_terracotta>, <minecraft:stained_hardened_clay:6>);
furnace.addRecipe(<minecraft:gray_glazed_terracotta>, <minecraft:stained_hardened_clay:7>);
furnace.addRecipe(<minecraft:silver_glazed_terracotta>, <minecraft:stained_hardened_clay:8>);
furnace.addRecipe(<minecraft:cyan_glazed_terracotta>, <minecraft:stained_hardened_clay:9>);
furnace.addRecipe(<minecraft:purple_glazed_terracotta>, <minecraft:stained_hardened_clay:10>);
furnace.addRecipe(<minecraft:blue_glazed_terracotta>, <minecraft:stained_hardened_clay:11>);
furnace.addRecipe(<minecraft:brown_glazed_terracotta>, <minecraft:stained_hardened_clay:12>);
furnace.addRecipe(<minecraft:green_glazed_terracotta>, <minecraft:stained_hardened_clay:13>);
furnace.addRecipe(<minecraft:red_glazed_terracotta>, <minecraft:stained_hardened_clay:14>);
furnace.addRecipe(<minecraft:black_glazed_terracotta>, <minecraft:stained_hardened_clay:15>);

// Миска
recipes.remove(<minecraft:bowl>);
recipes.addShaped(<minecraft:bowl>,
	[[<ore:craftingToolFileEmptyTag>],
	[<ore:slabWood>]]);

// Тушеные грибы
mixer.recipeBuilder()
    .inputs(<tfc:plants/porcini> * 3, <minecraft:bowl>)
    .fluidInputs([<liquid:milk> * 100])
    .outputs(<minecraft:mushroom_stew>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Воронка
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>,
 [[<ore:plateIron>, <ore:craftingToolWrenchEmptyTag>, <ore:plateIron>],
  [<ore:plateIron>, <ore:chest>, <ore:plateIron>],
  [null, <ore:plateIron>, null]]);
recipes.addShaped(<minecraft:hopper>,
 [[<ore:plateWroughtIron>, <ore:craftingToolWrenchEmptyTag>, <ore:plateWroughtIron>],
  [<ore:plateWroughtIron>, <ore:chest>, <ore:plateWroughtIron>],
  [null, <ore:plateWroughtIron>, null]]);

// Блок лазурита
recipes.addShaped(<minecraft:lapis_block>,
	[[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>]]);
// Лазурит
recipes.addShapeless(<minecraft:dye:4> * 9, 
	[<minecraft:lapis_block>]);

// Маяк
recipes.addShaped(<minecraft:beacon>,
	[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<minecraft:glass>, <minecraft:nether_star>, <minecraft:glass>],
	[<minecraft:obsidian>, <minecraft:glowstone>, <minecraft:obsidian>]]);

// Пшеница
recipes.addShaped(<minecraft:wheat> * 12,
	[[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>],
	[<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>],
	[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]]);

// Огниво
recipes.addShapeless(<minecraft:flint_and_steel>, 
	[<minecraft:flint>, <tfctech:metal/steel_strip>]);

// Светокамень
recipes.addShaped(<minecraft:glowstone>,
	[[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>]]);

// Кирпичи
recipes.remove(<minecraft:brick_block>);
recipes.addShaped(<minecraft:brick_block>,
	[[<tfc:mortar>, <minecraft:brick>, <tfc:mortar>],
	[<minecraft:brick>, <tfc:mortar>, <minecraft:brick>],
	[<tfc:mortar>, <minecraft:brick>, <tfc:mortar>]]);

// Алмазная броня
recipes.remove(<minecraft:diamond_helmet>);
electric_blast_furnace.recipeBuilder()
    .inputs(<tfc:metal/helmet/blue_steel>, <ore:dustDiamond> * 5)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<minecraft:diamond_helmet>)
    .property("temperature", 1450)
    .duration(120 * 20)
    .EUt(128)
    .buildAndRegister();
recipes.remove(<minecraft:diamond_chestplate>);
electric_blast_furnace.recipeBuilder()
    .inputs(<tfc:metal/chestplate/blue_steel>, <ore:dustDiamond> * 8)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<minecraft:diamond_chestplate>)
    .property("temperature", 1450)
    .duration(120 * 20)
    .EUt(128)
    .buildAndRegister();
recipes.remove(<minecraft:diamond_leggings>);
electric_blast_furnace.recipeBuilder()
    .inputs(<tfc:metal/greaves/blue_steel>, <ore:dustDiamond> * 7)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<minecraft:diamond_leggings>)
    .property("temperature", 1450)
    .duration(120 * 20)
    .EUt(128)
    .buildAndRegister();
recipes.remove(<minecraft:diamond_boots>);
electric_blast_furnace.recipeBuilder()
    .inputs(<tfc:metal/boots/blue_steel>, <ore:dustDiamond> * 4)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<minecraft:diamond_boots>)
    .property("temperature", 1450)
    .duration(120 * 20)
    .EUt(128)
    .buildAndRegister();


print("Initialized 'Minecraft'");