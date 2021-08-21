import crafttweaker.item.IItemStack;

//Удаление рецептов + скрытие
global ItemsToRemoveFORESTRYJEI as IItemStack[] = [
	//<forestry:fertilizer_compound>,
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
	<forestry:chipsets>.withTag({T: 0 as short}),
	<forestry:crafting_material:1>,
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
	<gendustry:industrial_grafter:*>,
	<gendustry:industrial_scoop:*>,
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
	<forestry:ash_stairs>
] as IItemStack[];
for item in ItemsToRemoveFORESTRYJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
global ItemsToRemoveFORESTRY as IItemStack[] = [
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
	<forestry:crafting_material:3>,
	<forestry:alveary.hygro>,
	<forestry:alveary.heater>,
	<forestry:crafting_material:6>,
	<forestry:alveary.fan>,
	<forestry:alveary.swarmer>,
	<forestry:alveary.sieve>,
	<forestry:genetic_filter>,
	<forestry:naturalist_helmet>
] as IItemStack[];
for item in ItemsToRemoveFORESTRY{
    recipes.remove(item);
}

recipes.removeByRecipeName("forestry:greenhouse_window");
recipes.removeByRecipeName("forestry:greenhouse_window_roof");

//Создание рецептов
//Создание блоков меда Forestry через компрессор
compressor.recipeBuilder().inputs(<forestry:bee_combs> * 9).outputs(<forestry:bee_combs_0>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:4> * 9).outputs(<forestry:bee_combs_0:4>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:5> * 9).outputs(<forestry:bee_combs_0:5>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:15> * 9).outputs(<forestry:bee_combs_0:15>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:7> * 9).outputs(<forestry:bee_combs_0:7>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:6> * 9).outputs(<forestry:bee_combs_0:6>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:2> * 9).outputs(<forestry:bee_combs_0:2>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:3> * 9).outputs(<forestry:bee_combs_0:3>).duration(4).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<forestry:bee_combs:16> * 9).outputs(<forestry:bee_combs_1>).duration(4).EUt(2).buildAndRegister();

//Genetics Processor
assembler.recipeBuilder().inputs(<ore:circuitBasic>, <ore:plateRoseGold>, <ore:cableGtSingleAnnealedCopper>*4, <gtadditions:ga_meta_item:32032>).fluidInputs([<liquid:soldering_alloy> * 288]).outputs(<gendustry:genetics_processor>).duration(5000).EUt(32).buildAndRegister();
//Enviromental Processor
assembler.recipeBuilder().inputs(<ore:circuitBasic>, <ore:plateRoseGold>, <ore:cableGtSingleAluminium>*4, <gtadditions:ga_meta_item:32032>).fluidInputs([<liquid:soldering_alloy> * 288]).outputs(<gendustry:env_processor>).duration(5000).EUt(32).buildAndRegister();

//Капля меда
centrifuge.recipeBuilder().inputs(<forestry:bee_combs>).chancedOutput(<forestry:beeswax>, 9000, 50).outputs(<forestry:honey_drop>).duration(10).EUt(2).buildAndRegister();

//Капля меда
recipes.addShapeless(<forestry:honey_drop>, [<forestry:bee_combs>, <ore:craftingToolMortar>.firstItem.withEmptyTag()]);

//Seed Oil
fluid_extractor.recipeBuilder().inputs(<ore:listAllseed>).fluidOutputs(<liquid:seed.oil>*20).duration(20).EUt(20).buildAndRegister();
fluid_extractor.findRecipe(2, [<minecraft:beetroot_seeds>], null).remove();

//Гибкий корпус из форестри
assembler.recipeBuilder().inputs(<ore:plateBronze>*4, <ore:plateEmerald>*2, <ore:slimeball>*2, <ore:glue>*2).fluidInputs([<liquid:glass> * 400]).outputs(<forestry:flexible_casing>).duration(20).EUt(16).buildAndRegister();

//Веревочка
recipes.addShapeless (<forestry:crafting_material:2>*3, [<ore:string>]);

//Прочный корпус
recipes.addShaped(<forestry:sturdy_machine>, 
[[<ore:plateBrass>,<ore:screwSteel>,<ore:plateBrass>],
 [<ore:screwSteel>,null,<ore:screwSteel>],
 [<ore:plateBrass>,<ore:screwSteel>,<ore:plateBrass>]]);

//Фабрикатор
recipes.addShaped(<forestry:fabricator>, 
[[<ore:plateGold>, <ore:blockGlass>, <ore:plateGold>],
 [<ore:blockGlass>, <forestry:sturdy_machine>, <ore:blockGlass>],
 [<ore:plateGold>, <ore:cableGtSingleAluminium>, <ore:plateGold>]]);

//Портативный анализатор
recipes.addShaped(<forestry:portable_alyzer>,
[[<ore:plateTin>, <ore:paneGlass>, <ore:plateTin>],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [<ore:dustRedstone>, <ore:gemDiamond>, <ore:dustRedstone>]]);

//Укрепленный корпус
recipes.addShaped(<forestry:hardened_machine>,
[[<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>],
 [<ore:plateDiamond>, <forestry:sturdy_machine>, <ore:plateDiamond>],
 [<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>]]);

//Секретер
recipes.addShaped(<forestry:escritoire>,
[[<ore:plankWood>, null, null],
 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>]]);

//Аналайзер
recipes.addShaped(<forestry:analyzer>,
[[<ore:plateBronze>, <forestry:portable_alyzer>, <ore:plateBronze>],
 [<ore:paneGlass>, <forestry:sturdy_machine>, <ore:paneGlass>],
 [<ore:plateBronze>, null, <ore:plateBronze>]]);

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

//Супер ткань
recipes.addShaped(<forestry:crafting_material:3>,
[[<ore:string>, <minecraft:wool>, <ore:string>],
 [<ore:string>, <minecraft:wool>, <ore:string>],
 [null, null, null]]);

//Дымитель
recipes.addShaped(<forestry:smoker>,
[[<ore:leather>, <ore:stickWood>, <ore:plateTin>],
 [<ore:leather>, <minecraft:flint_and_steel>, <ore:plateTin>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

//Экран окружающей среды
recipes.addShaped(<forestry:habitat_screen>,
[[null, <gregtech:meta_item_1:32690>, null],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [null, <ore:plateTin>, null]]);

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

//Куча палок укрепленных
recipes.addShaped(<forestry:crafting_material:6>,
[[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [null, null, null]]);

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
[[<ore:plateSteel>, null, <ore:plateSteel>],
 [null, <forestry:alveary.plain>, null],
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