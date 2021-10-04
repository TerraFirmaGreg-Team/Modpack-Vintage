import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;
import mods.forestry.Carpenter;

//Удаление из JEI
val RemoveItemsFromJEI as IItemStack[] = [
	<forestry:ffarm>.withTag({FarmBlock: 7}),
	<forestry:ffarm>.withTag({FarmBlock: 1}),
	<forestry:ffarm:4>.withTag({FarmBlock: 7}),
	<forestry:ffarm:3>.withTag({FarmBlock: 1}),
	<forestry:ffarm:4>.withTag({FarmBlock: 1}),
	<forestry:ffarm:3>.withTag({FarmBlock: 7}),
	<forestry:ffarm:2>.withTag({FarmBlock: 7}),
	<forestry:ffarm:2>.withTag({FarmBlock: 1}),
	<forestry:ffarm:5>.withTag({FarmBlock: 7}),
	<forestry:ffarm:5>.withTag({FarmBlock: 1}),
	<forestry:ffarm>.withTag({FarmBlock: 4}),
	<forestry:ffarm>.withTag({FarmBlock: 5}),
	<forestry:wrench>,
	<forestry:gear_tin>,
	<forestry:gear_copper>,
	<forestry:gear_bronze>,
	<forestry:fabricator>,
	<forestry:crafting_material>,
	<forestry:carton>,
	<forestry:bronze_pickaxe>,
	<forestry:bronze_shovel>,
	<forestry:broken_bronze_pickaxe>,
	<forestry:broken_bronze_shovel>,
	<forestry:arboretum:1>,
	<forestry:farm_ender>,
	<forestry:farm_ender:1>,
	<forestry:peat_bog:1>,
	<forestry:farm_nether:1>,
	<forestry:farm_nether>,
	<forestry:farm_crops:1>,
	<forestry:farm_crops>,
	<forestry:arboretum>,
	<forestry:farm_gourd>,
	<forestry:farm_gourd:1>,
	<forestry:farm_mushroom>,
	<forestry:farm_mushroom:1>,
	<forestry:peat_bog>,
	<forestry:bronze_pickaxe>,
	<forestry:bronze_shovel>,
	<forestry:resource_storage>,
	<forestry:resource_storage:1>,
	<forestry:resource_storage:2>,
	<forestry:resource_storage:3>,
	<forestry:squeezer>,
	<forestry:moistener>,
	<forestry:centrifuge>,
	<forestry:ash>,
	<forestry:ash_brick>,
	<forestry:ash_stairs>,
	<forestry:peat>,
	<forestry:bituminous_peat>,
	<forestry:bog_earth>,
	<forestry:kit_shovel>,
	<forestry:kit_pickaxe>,
	<forestry:flexible_casing>,
	<forestry:wood_pulp>,
	<forestry:humus>,
	<forestry:rainmaker>,
	<forestry:candle>,
	<forestry:stump>,
	<forestry:crafting_material:7>,
	<forestry:greenhouse>,
	<forestry:greenhouse:3>,
	<forestry:greenhouse:4>,
	<forestry:greenhouse:5>,
	<forestry:climatiser>,
	<forestry:climatiser:1>,
	<forestry:climatiser:2>,
	<forestry:climatiser:3>,
	<forestry:climatiser:4>,
	<forestry:greenhouse.window>,
	<forestry:greenhouse.window_up>,
	<forestry:decaying_wheat>,
	<forestry:mouldy_wheat>,
	<forestry:imprinter>,
	<forestry:grafter_proven>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
	<forestry:sturdy_machine>,
	<forestry:portable_alyzer>,
	<forestry:analyzer>,
	<forestry:ffarm>.withTag({FarmBlock: 0}),
	<forestry:ffarm>.withTag({FarmBlock: 2}),
	<forestry:ffarm>.withTag({FarmBlock: 3}),
	<forestry:ffarm>.withTag({FarmBlock: 6}),
	<forestry:ffarm>.withTag({FarmBlock: 8}),
	<forestry:ffarm>.withTag({FarmBlock: 9}),
	<forestry:ffarm>.withTag({FarmBlock: 10}),
	<forestry:habitat_locator>,
	<forestry:frame_untreated>,
	<forestry:frame_impregnated>,
	<forestry:smoker>,
	<forestry:raintank>,
	<forestry:habitat_screen>,
	<forestry:habitat_former>,
	<forestry:database>,
	<forestry:alveary.hygro>,
	<forestry:alveary.heater>,
	<forestry:crafting_material:6>,
	<forestry:alveary.fan>,
	<forestry:alveary.swarmer>,
	<forestry:alveary.sieve>,
	<forestry:genetic_filter>,
	<forestry:naturalist_helmet>,
	<forestry:carpenter>,
	<forestry:bee_house>,
	<forestry:apiary>,
	<forestry:honeyed_slice>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

//Удаление рецептов из Карпентера
Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
Carpenter.removeRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}));
Carpenter.removeRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}));
Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));
Carpenter.removeRecipe(<forestry:soldering_iron>);
Carpenter.removeRecipe(<forestry:hardened_machine>);
Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.removeRecipe(<forestry:kit_shovel>);
Carpenter.removeRecipe(<forestry:kit_pickaxe>);
Carpenter.removeRecipe(<forestry:bog_earth> * 8);
Carpenter.removeRecipe(<forestry:ingot_bronze>);
Carpenter.removeRecipe(<forestry:ingot_bronze> * 2);
Carpenter.removeRecipe(<forestry:carton>);
Carpenter.removeRecipe(<forestry:wood_pulp>);
Carpenter.removeRecipe(<forestry:oak_stick> * 2);
Carpenter.removeRecipe(<minecraft:paper>);
Carpenter.removeRecipe(<forestry:humus> * 9);
Carpenter.removeRecipe(<forestry:escritoire>);
Carpenter.removeRecipe(<forestry:portable_alyzer>);
Carpenter.removeRecipe(<forestry:candle>);
Carpenter.removeRecipe(<forestry:habitat_screen>);

//Удаление поименно.
recipes.removeByRecipeName("forestry:greenhouse_window");
recipes.removeByRecipeName("forestry:greenhouse_window_roof");

//Создание рецептов
// --- Bee Comb Compressing
compressor.recipeBuilder().inputs(<forestry:bee_combs> * 9).outputs(<forestry:bee_combs_0>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:4> * 9).outputs(<forestry:bee_combs_0:4>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:5> * 9).outputs(<forestry:bee_combs_0:5>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:15> * 9).outputs(<forestry:bee_combs_0:15>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:7> * 9).outputs(<forestry:bee_combs_0:7>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:6> * 9).outputs(<forestry:bee_combs_0:6>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:2> * 9).outputs(<forestry:bee_combs_0:2>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:3> * 9).outputs(<forestry:bee_combs_0:3>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:16> * 9).outputs(<forestry:bee_combs_1>).duration(4).EUt(2).buildAndRegister();

// --- Фикс пшеничных сот
//centrifuge.findRecipe(5, [<forestry:bee_combs:14>], null).remove();
compressor.recipeBuilder()
	.inputs(<forestry:bee_combs:14>)
	.chancedOutput(<forestry:honey_drop>, 2000, 1000)
	.chancedOutput(<forestry:beeswax>, 2000, 1000)
	.chancedOutput(<tfc:food/wheat>, 8000, 1000)
	.duration(10).EUt(5).buildAndRegister();

// --- Harderer Casing
Carpenter.addRecipe(<forestry:hardened_machine>, 
[[<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>],
 [<ore:plateDiamond>, <forestry:sturdy_machine>, <ore:plateDiamond>],
 [<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>]], 250, <liquid:water> * 5000);

// --- Escritoire
Carpenter.addRecipe(<forestry:escritoire>,
[[<ore:plankWood>, null, null],
 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>]], 250, <liquid:seed.oil> * 500);

// --- Habitat Screen
Carpenter.addRecipe(<forestry:habitat_screen>,
[[null, <gregtech:meta_item_1:32690>, null],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [null, <ore:plateTin>, null]], 250, <liquid:water> * 2000);

// --- Portable Analyzer
Carpenter.addRecipe(<forestry:portable_alyzer>,
[[<ore:plateTin>, <ore:paneGlass>, <ore:plateTin>],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [<ore:dustRedstone>, <ore:gemDiamond>, <ore:dustRedstone>]], 250, <liquid:water> * 1000);

// --- Apiary
Carpenter.addRecipe(<forestry:apiary>,
[[<ore:screwCupronickel>, <ore:slabWood>, <ore:screwCupronickel>],
 [<forestry:bee_house>, <ore:beeComb>, <forestry:bee_house>],
 [<ore:fenceWood>, <ore:slabWood>, <ore:fenceWood>]], 500, <liquid:seed.oil> * 2500, <forestry:frame_impregnated>);

// --- Genetics Processor
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitBasic>, <ore:plateRoseGold>, <ore:cableGtSingleAnnealedCopper>*4, <gtadditions:ga_meta_item:32032>)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<gendustry:genetics_processor>)
	.duration(5000).EUt(32).buildAndRegister();
// --- Enviromental Processor
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitBasic>, <ore:plateRoseGold>, <ore:cableGtSingleAluminium>*4, <gtadditions:ga_meta_item:32032>)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<gendustry:env_processor>)
	.duration(5000).EUt(32).buildAndRegister();

// --- Капля меда
centrifuge.recipeBuilder()
	.inputs(<forestry:bee_combs>)
	.chancedOutput(<forestry:beeswax>, 9000, 50)
	.outputs(<forestry:honey_drop>)
	.duration(10).EUt(2).buildAndRegister();

// --- Seed Oil
fluid_extractor.findRecipe(2, [<minecraft:beetroot_seeds>], null).remove();
fluid_extractor.recipeBuilder()
	.inputs(<ore:listAllseed>)
	.fluidOutputs(<liquid:seed.oil>*20)
	.duration(20).EUt(20).buildAndRegister();

// --- Basic Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:17033> * 4, <ore:circuitPrimitive> * 2, <gregtech:meta_item_1:19033> * 2,  <gtadditions:ga_meta_item:32029>, <gregtech:meta_item_2:16033>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:0>.withTag({T: 0 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Enhanced Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:17095> * 4, <ore:circuitBasic> * 2, <gregtech:meta_item_2:16095> * 2,  <gtadditions:ga_meta_item:32029>, <gregtech:meta_item_2:16033>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Refined Circuit Board
circuit_assembler.recipeBuilder().inputs(<gregtech:meta_item_1:17184> * 4, <ore:circuitGood> * 2, <gregtech:meta_item_1:19184> * 2,  <gtadditions:ga_meta_item:32030>, <gregtech:meta_item_2:16184>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Intricate Circuit Board
circuit_assembler.recipeBuilder().inputs(<gregtech:meta_item_1:17112> * 4, <ore:circuitAdvanced> * 2, <gregtech:meta_item_1:19112> * 2,  <gtadditions:ga_meta_item:32030>, <gregtech:meta_item_2:16112>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Капля меда
recipes.addShapeless(<forestry:honey_drop>, [<forestry:bee_combs>, <ore:craftingToolMortar>.firstItem.withEmptyTag()]);

// --- Хлеб с медом
recipes.addShapeless(<forestry:honey_drop>, [<forestry:bee_combs>, <ore:craftingToolMortar>.firstItem.withEmptyTag()]);

// --- Регистрация хлеба с медом
ItemRegistry.registerFood(<forestry:honeyed_slice>, 4, 0, 0.7, 0.4, 1.0, 0, 0, 0, 0);

// --- Паяльник
recipes.addShaped(<forestry:soldering_iron>, 
[[null, <ore:stickIron>, <forestry:oak_stick>],
 [<ore:stickIron>, <ore:circuitBasic>, <forestry:oak_stick>],
 [null, null, <forestry:oak_stick>]]);

// --- Карпентер
recipes.addShaped(<forestry:carpenter>, 
[[<ore:plateCupronickel>, <gregtech:machine:813>, <ore:plateCupronickel>],
 [<ore:circuitBasic>, <forestry:sturdy_machine>, <ore:circuitBasic>],
 [<ore:gearSteel>, <ore:circuitBasic>, <ore:gearSteel>]]);

// --- Прочный корпус
recipes.addShaped(<forestry:sturdy_machine>, 
[[<ore:plateBrass>, <ore:screwSteel>, <ore:plateBrass>],
 [<ore:screwSteel>, null, <ore:screwSteel>],
 [<ore:plateBrass>, <ore:screwSteel>, <ore:plateBrass>]]);

// --- Фабрикатор
recipes.addShaped(<forestry:fabricator>,  
[[<gregtech:meta_item_1:17184>, <gregtech:machine:813>, <gregtech:meta_item_1:17184>],
 [<gregtech:meta_item_2:32456>, <forestry:sturdy_machine>, <gregtech:meta_item_2:32456>],
 [<gregtech:meta_item_1:17184>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:17184>]]);

// --- Аналайзер
recipes.addShaped(<forestry:analyzer>,
[[<ore:plateBronze>, <forestry:portable_alyzer>, <ore:plateBronze>],
 [<ore:paneGlass>, <forestry:sturdy_machine>, <ore:paneGlass>],
 [<ore:plateBronze>, <ore:circuitBasic>, <ore:plateBronze>]]);

// --- Bee House
recipes.addShaped(<forestry:bee_house>,
[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
 [<forestry:frame_impregnated>, <forestry:impregnated_casing>, <forestry:frame_impregnated>],
 [<ore:beeComb>, <ore:slabWood>, <ore:beeComb>]]);

//Farms
//К-Кирпич
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 0}),
[[null, null, null],
 [<ore:plateCopper>, <ore:brickStone>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Р-К-Кирпич
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 2}),
[[null, null, null],
 [<ore:plateCopper>, <ore:stoneCracked>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Кирпич
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 3}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:brick_block>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Незер кирпич
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 6}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:nether_brick>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Кварц 1
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 8}),
[[null, null, null],
 [<ore:plateCopper>, <ore:blockNetherQuartz>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Кварц 2
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 9}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:1>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
 
//Кварц 3
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 10}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:2>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);

//Обычные крафты
recipes.addShaped(<forestry:habitat_locator>,
[[null, <ore:plateCopper>, null],
 [<ore:plateCopper>, <gregtech:meta_item_1:32691>, <ore:plateCopper>],
 [null, <ore:plateCopper>, null]]);

//Рамка простая
recipes.addShaped(<forestry:frame_untreated>,
[[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
 [<ore:stickWood>, <ore:string>, <ore:stickWood>],
 [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

//Рамка укрепленная
recipes.addShaped(<forestry:frame_impregnated>,
[[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <ore:string>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>]]);

//Дымитель
recipes.addShaped(<forestry:smoker>,
[[<ore:leather>, <ore:stickWood>, <ore:plateTin>],
 [<ore:leather>, <minecraft:flint_and_steel>, <ore:plateTin>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

//Бочка под дождь
recipes.addShaped(<forestry:raintank>,
[[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>],
 [<ore:plateSteel>, <gregtech:machine:813>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>]]);

//Создаватель окружающей среды
recipes.addShaped(<forestry:habitat_former>,
[[<ore:paneGlass>, <ore:cableGtOctalRedAlloy>, <ore:paneGlass>],
 [<forestry:thermionic_tubes:6>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:6>],
 [<ore:gearBronze>, <ore:circuitGood>, <ore:gearBronze>]]);

//База данных
recipes.addShaped(<forestry:database>,
[[<ore:plateCopper>, <forestry:portable_alyzer>, <ore:plateCopper>],
 [<ore:ForestryChests>, <forestry:sturdy_machine>, <ore:ForestryChests>],
 [<ore:plankWood>, <forestry:royal_jelly>, <ore:plankWood>]]);

//Улучшения для пасеки 1
recipes.addShaped(<forestry:alveary.hygro>,
[[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>],
 [<ore:paneGlass>, <forestry:alveary.plain>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);

//Улучшения для пасеки 2
recipes.addShaped(<forestry:alveary.heater>,
[[<forestry:thermionic_tubes:4>, <ore:plateSteel>, <forestry:thermionic_tubes:4>],
 [null, <forestry:alveary.plain>, null],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);

//Улучшения для пасеки 3
recipes.addShaped(<forestry:alveary.fan>,
[[<ore:plateSteel>, <ore:rotorStainlessSteel>, <ore:plateSteel>],
 [<ore:rotorStainlessSteel>, <forestry:alveary.plain>, <ore:rotorStainlessSteel>],
 [<ore:plateSteel>, <forestry:thermionic_tubes:4>, <ore:plateSteel>]]);

//Улучшения для пасеки 4
recipes.addShaped(<forestry:alveary.swarmer>,
[[<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>]]);

//Улучшения для пасеки 5
recipes.addShaped(<forestry:alveary.sieve>,
[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:crafting_material:3>, <forestry:crafting_material:3>, <forestry:crafting_material:3>]]);

//Фильтр по геному
recipes.addShaped(<forestry:genetic_filter>,
[[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>],
 [<forestry:propolis>, <ore:paneGlass>, <forestry:propolis>],
 [<ore:gearBronze>, <ore:gemDiamond>, <ore:gearBronze>]]);

//Шлем натуралиста
recipes.addShaped(<forestry:naturalist_helmet>,
[[null, <ore:plateCopper>, null],
 [<ore:ForestryPropolis>, null, <ore:ForestryPropolis>],
 [null, <ore:plateCopper>, null]]);