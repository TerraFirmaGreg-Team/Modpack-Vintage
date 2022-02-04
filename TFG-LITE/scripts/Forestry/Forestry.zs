import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;
import mods.forestry.Carpenter;

//Удаление из JEI
val RemoveItemsFromJEI as IItemStack[] = [
	<forestry:ingot_copper>,
	<forestry:ingot_tin>,
	<forestry:ingot_bronze>,
	<forestry:resources>,
	<forestry:resources:1>,
	<forestry:resources:2>,
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
	<forestry:grafter_proven>,
	<forestry:ffarm>.withTag({FarmBlock: 0}),
	<forestry:ffarm>.withTag({FarmBlock: 1}),
	<forestry:ffarm>.withTag({FarmBlock: 2}),
	<forestry:ffarm>.withTag({FarmBlock: 4}),
	<forestry:ffarm>.withTag({FarmBlock: 5}),
	<forestry:ffarm>.withTag({FarmBlock: 7}),
	<forestry:ffarm:2>.withTag({FarmBlock: 0}),
	<forestry:ffarm:2>.withTag({FarmBlock: 1}),
	<forestry:ffarm:2>.withTag({FarmBlock: 2}),
	<forestry:ffarm:2>.withTag({FarmBlock: 4}),
	<forestry:ffarm:2>.withTag({FarmBlock: 5}),
	<forestry:ffarm:2>.withTag({FarmBlock: 7}),
	<forestry:ffarm:3>.withTag({FarmBlock: 0}),
	<forestry:ffarm:3>.withTag({FarmBlock: 1}),
	<forestry:ffarm:3>.withTag({FarmBlock: 2}),
	<forestry:ffarm:3>.withTag({FarmBlock: 4}),
	<forestry:ffarm:3>.withTag({FarmBlock: 5}),
	<forestry:ffarm:3>.withTag({FarmBlock: 7}),
	<forestry:ffarm:4>.withTag({FarmBlock: 0}),
	<forestry:ffarm:4>.withTag({FarmBlock: 1}),
	<forestry:ffarm:4>.withTag({FarmBlock: 2}),
	<forestry:ffarm:4>.withTag({FarmBlock: 4}),
	<forestry:ffarm:4>.withTag({FarmBlock: 5}),
	<forestry:ffarm:4>.withTag({FarmBlock: 7}),
	<forestry:ffarm:5>.withTag({FarmBlock: 0}),
	<forestry:ffarm:5>.withTag({FarmBlock: 1}),
	<forestry:ffarm:5>.withTag({FarmBlock: 2}),
	<forestry:ffarm:5>.withTag({FarmBlock: 4}),
	<forestry:ffarm:5>.withTag({FarmBlock: 5}),
	<forestry:ffarm:5>.withTag({FarmBlock: 7}),
	<forestry:can>,
	<forestry:can:1>,
	<forestry:capsule>,
	<forestry:capsule:1>,
	<forestry:refractory>,
	<forestry:refractory:1>,
	<forestry:ambrosia>,
	<forestry:honey_pot>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
	<forestry:sturdy_machine>,
	<forestry:portable_alyzer>,
	<forestry:analyzer>,
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
	<forestry:honeyed_slice>,
	<forestry:ffarm>.withTag({FarmBlock: 3}),
	<forestry:ffarm>.withTag({FarmBlock: 6}),
	<forestry:ffarm>.withTag({FarmBlock: 8}),
	<forestry:ffarm>.withTag({FarmBlock: 9}),
	<forestry:ffarm>.withTag({FarmBlock: 10}),
	<forestry:ffarm:2>.withTag({FarmBlock: 3}),
	<forestry:ffarm:2>.withTag({FarmBlock: 6}),
	<forestry:ffarm:2>.withTag({FarmBlock: 8}),
	<forestry:ffarm:2>.withTag({FarmBlock: 9}),
	<forestry:ffarm:2>.withTag({FarmBlock: 10}),
	<forestry:ffarm:3>.withTag({FarmBlock: 3}),
	<forestry:ffarm:3>.withTag({FarmBlock: 6}),
	<forestry:ffarm:3>.withTag({FarmBlock: 8}),
	<forestry:ffarm:3>.withTag({FarmBlock: 9}),
	<forestry:ffarm:3>.withTag({FarmBlock: 10}),
	<forestry:ffarm:4>.withTag({FarmBlock: 3}),
	<forestry:ffarm:4>.withTag({FarmBlock: 6}),
	<forestry:ffarm:4>.withTag({FarmBlock: 8}),
	<forestry:ffarm:4>.withTag({FarmBlock: 9}),
	<forestry:ffarm:4>.withTag({FarmBlock: 10}),
	<forestry:ffarm:5>.withTag({FarmBlock: 3}),
	<forestry:ffarm:5>.withTag({FarmBlock: 6}),
	<forestry:ffarm:5>.withTag({FarmBlock: 8}),
	<forestry:ffarm:5>.withTag({FarmBlock: 9}),
	<forestry:ffarm:5>.withTag({FarmBlock: 10})
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
Carpenter.removeRecipe(<forestry:kit_shovel>);
Carpenter.removeRecipe(<forestry:kit_pickaxe>);
Carpenter.removeRecipe(<forestry:bog_earth> * 8);
Carpenter.removeRecipe(<forestry:ingot_bronze>);
Carpenter.removeRecipe(<forestry:ingot_bronze> * 2);
Carpenter.removeRecipe(<forestry:carton>);
Carpenter.removeRecipe(<forestry:wood_pulp>);
Carpenter.removeRecipe(<minecraft:paper>);
Carpenter.removeRecipe(<forestry:humus> * 9);
Carpenter.removeRecipe(<forestry:escritoire>);
Carpenter.removeRecipe(<forestry:portable_alyzer>);
Carpenter.removeRecipe(<forestry:candle>);
Carpenter.removeRecipe(<forestry:habitat_screen>);

//Удаление поименно
recipes.removeByRecipeName("forestry:beeswax_worth");
recipes.removeByRecipeName("forestry:greenhouse_window");
recipes.removeByRecipeName("forestry:greenhouse_window_roof");
recipes.removeByRecipeName("forestry:greenhouse_fan");
recipes.removeByRecipeName("forestry:greenhouse_control");
recipes.removeByRecipeName("forestry:greenhouse_heater");
recipes.removeByRecipeName("forestry:greenhouse_dehumidifier");
recipes.removeByRecipeName("forestry:greenhouse_humidifier");


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
centrifuge.recipeBuilder()
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
[[null, <metaitem:cover.screen>, null],
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

// --- Farm Block --- Bricks
Carpenter.addRecipe(<forestry:ffarm>.withTag({FarmBlock: 3}),
[[null, null, null],
 [<ore:plateCopper>, <ore:brickStone>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block --- Nether Bricks
Carpenter.addRecipe(<forestry:ffarm>.withTag({FarmBlock: 6}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:nether_brick>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block --- Quartz Block
Carpenter.addRecipe(<forestry:ffarm>.withTag({FarmBlock: 8}),
[[null, null, null],
 [<ore:plateCopper>, <ore:blockNetherQuartz>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block --- Chiseled Quartz Block
Carpenter.addRecipe(<forestry:ffarm>.withTag({FarmBlock: 9}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:1>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block --- Pillar Quartz Block
Carpenter.addRecipe(<forestry:ffarm>.withTag({FarmBlock: 10}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:2>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 2 --- Bricks
Carpenter.addRecipe(<forestry:ffarm:2>.withTag({FarmBlock: 3}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 3}), null],
 [<ore:gearIron>, <ore:pipeSmallFluidSteel>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 2 --- Nether Bricks
Carpenter.addRecipe(<forestry:ffarm:2>.withTag({FarmBlock: 6}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 6}), null],
 [<ore:gearIron>, <ore:pipeSmallFluidSteel>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 2 --- Quartz Block
Carpenter.addRecipe(<forestry:ffarm:2>.withTag({FarmBlock: 8}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 8}), null],
 [<ore:gearIron>, <ore:pipeSmallFluidSteel>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 2 --- Chiseled Quartz Block
Carpenter.addRecipe(<forestry:ffarm:2>.withTag({FarmBlock: 9}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 9}), null],
 [<ore:gearIron>, <ore:pipeSmalFluidlSteel>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 2 --- Pillar Quartz Block
Carpenter.addRecipe(<forestry:ffarm:2>.withTag({FarmBlock: 10}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 10}), null],
 [<ore:gearIron>, <ore:pipeSmallFluidSteel>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 3 --- Bricks
Carpenter.addRecipe(<forestry:ffarm:3>.withTag({FarmBlock: 3}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 3}), null],
 [<ore:gearIron>, <ore:trapdoorWood>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 3 --- Nether Bricks
Carpenter.addRecipe(<forestry:ffarm:3>.withTag({FarmBlock: 6}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 6}), null],
 [<ore:gearIron>, <ore:trapdoorWood>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 3 --- Quartz Block
Carpenter.addRecipe(<forestry:ffarm:3>.withTag({FarmBlock: 8}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 8}), null],
 [<ore:gearIron>, <ore:trapdoorWood>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 3 --- Chiseled Quartz Block
Carpenter.addRecipe(<forestry:ffarm:3>.withTag({FarmBlock: 9}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 9}), null],
 [<ore:gearIron>, <ore:trapdoorWood>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 3 --- Pillar Quartz Block
Carpenter.addRecipe(<forestry:ffarm:3>.withTag({FarmBlock: 10}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 10}), null],
 [<ore:gearIron>, <ore:trapdoorWood>, <ore:gearIron>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 4 --- Bricks
Carpenter.addRecipe(<forestry:ffarm:4>.withTag({FarmBlock: 3}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 3}), null],
 [<ore:blockGlass>, <ore:gearIron>, <ore:blockGlass>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 4 --- Nether Bricks
Carpenter.addRecipe(<forestry:ffarm:4>.withTag({FarmBlock: 6}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 6}), null],
 [<ore:blockGlass>, <ore:gearIron>, <ore:blockGlass>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 4 --- Quartz Block
Carpenter.addRecipe(<forestry:ffarm:4>.withTag({FarmBlock: 8}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 8}), null],
 [<ore:blockGlass>, <ore:gearIron>, <ore:blockGlass>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 4 --- Chiseled Quartz Block
Carpenter.addRecipe(<forestry:ffarm:4>.withTag({FarmBlock: 9}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 9}), null],
 [<ore:blockGlass>, <ore:gearIron>, <ore:blockGlass>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 4 --- Pillar Quartz Block
Carpenter.addRecipe(<forestry:ffarm:4>.withTag({FarmBlock: 10}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 10}), null],
 [<ore:blockGlass>, <ore:gearIron>, <ore:blockGlass>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 5 --- Bricks
Carpenter.addRecipe(<forestry:ffarm:5>.withTag({FarmBlock: 3}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 3}), null],
 [<ore:cableGtQuadrupleRedAlloy>, <forestry:thermionic_tubes:11>, <ore:cableGtQuadrupleRedAlloy>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 5 --- Nether Bricks
Carpenter.addRecipe(<forestry:ffarm:5>.withTag({FarmBlock: 6}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 6}), null],
 [<ore:cableGtQuadrupleRedAlloy>, <forestry:thermionic_tubes:11>, <ore:cableGtQuadrupleRedAlloy>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 5 --- Quartz Block
Carpenter.addRecipe(<forestry:ffarm:5>.withTag({FarmBlock: 8}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 8}), null],
 [<ore:cableGtQuadrupleRedAlloy>, <forestry:thermionic_tubes:11>, <ore:cableGtQuadrupleRedAlloy>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 5 --- Chiseled Quartz Block
Carpenter.addRecipe(<forestry:ffarm:5>.withTag({FarmBlock: 9}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 9}), null],
 [<ore:cableGtQuadrupleRedAlloy>, <forestry:thermionic_tubes:11>, <ore:cableGtQuadrupleRedAlloy>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Farm Block 5 --- Pillar Quartz Block
Carpenter.addRecipe(<forestry:ffarm:5>.withTag({FarmBlock: 10}),
[[null, null, null],
 [null, <forestry:ffarm>.withTag({FarmBlock: 10}), null],
 [<ore:cableGtQuadrupleRedAlloy>, <forestry:thermionic_tubes:11>, <ore:cableGtQuadrupleRedAlloy>]], 1000, <liquid:creosote> * 2500, <ore:circuitBasic>.firstItem);

// --- Капля меда
centrifuge.recipeBuilder()
	.inputs(<forestry:bee_combs>)
	.chancedOutput(<forestry:beeswax>, 9000, 50)
	.outputs(<forestry:honey_drop>)
	.duration(10).EUt(2).buildAndRegister();

// --- Seed Oil
extractor.findRecipe(2, [<minecraft:beetroot_seeds>], null).remove();
extractor.findRecipe(2, [<minecraft:pumpkin_seeds>], null).remove();
extractor.findRecipe(2, [<minecraft:melon_seeds>], null).remove();
extractor.findRecipe(2, [<minecraft:wheat_seeds>], null).remove();
extractor.recipeBuilder()
	.inputs(<ore:listAllSeeds>)
	.fluidOutputs(<liquid:seed.oil>*20)
	.duration(20).EUt(2).buildAndRegister();

// --- Basic Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<metaitem:board.coated>, <appliedenergistics2:material:17>, <ore:wireGtSingleAluminium>*4)
	.circuit(1)
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:0>.withTag({T: 0 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Enhanced Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<metaitem:board.phenolic>, <appliedenergistics2:material:17>*2, <ore:wireGtSingleAnnealedCopper>*4)
	.circuit(1)
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Refined Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<metaitem:board.plastic>, <appliedenergistics2:material:17>*2, <ore:wireGtSingleBlackSteel>*4)
	.circuit(1)
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Intricate Circuit Board
circuit_assembler.recipeBuilder()
	.inputs(<metaitem:board.epoxy>, <appliedenergistics2:material:17>*2, <ore:wireGtSingleGold>*4)
	.circuit(1)
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
	.duration(200).EUt(30).buildAndRegister();

// --- Капля меда
recipes.addShapeless(<forestry:honey_drop>, [<forestry:bee_combs>, <ore:craftingToolMortar>.firstItem.withEmptyTag()]);

// --- Хлеб с медом
recipes.addShapeless(<forestry:honeyed_slice>, [<firmalife:honeycomb>, <ore:categoryBread>]);

// --- Регистрация хлеба с медом
ItemRegistry.registerFood(<forestry:honeyed_slice>, 4, 0, 0.7, 0.4, 1.0, 0, 0, 0, 0);

// --- Паяльник
recipes.addShaped(<forestry:soldering_iron>, 
[[null, <ore:stickIron>, <forestry:oak_stick>],
 [<ore:stickIron>, <ore:circuitBasic>, <forestry:oak_stick>],
 [null, null, <forestry:oak_stick>]]);

// --- Карпентер
recipes.addShaped(<forestry:carpenter>, 
[[<ore:plateCupronickel>, <metaitem:drum.steel>, <ore:plateCupronickel>],
 [<ore:circuitBasic>, <forestry:sturdy_machine>, <ore:circuitBasic>],
 [<ore:gearSteel>, <ore:circuitBasic>, <ore:gearSteel>]]);

// --- Прочный корпус
recipes.addShaped(<forestry:sturdy_machine>, 
[[<ore:plateBrass>, <ore:screwSteel>, <ore:plateBrass>],
 [<ore:screwSteel>, null, <ore:screwSteel>],
 [<ore:plateBrass>, <ore:screwSteel>, <ore:plateBrass>]]);

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

// --- Определитель окружающей среды
recipes.addShaped(<forestry:habitat_locator>,
[[null, <ore:plateCopper>, null],
 [<ore:plateCopper>, <metaitem:sensor.mv>, <ore:plateCopper>],
 [null, <ore:plateCopper>, null]]);

// --- Рамка простая
recipes.addShaped(<forestry:frame_untreated>,
[[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
 [<ore:stickWood>, <ore:string>, <ore:stickWood>],
 [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// --- Рамка укрепленная
recipes.addShaped(<forestry:frame_impregnated>,
[[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <ore:string>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>]]);

// --- Дымитель
recipes.addShaped(<forestry:smoker>,
[[<ore:leather>, <ore:stickWood>, <ore:plateTin>],
 [<ore:leather>, <minecraft:flint_and_steel>, <ore:plateTin>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

// --- Бочка под дождь
recipes.addShaped(<forestry:raintank>,
[[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>],
 [<ore:plateSteel>, <metaitem:drum.bronze>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>]]);

// --- Создаватель окружающей среды
recipes.addShaped(<forestry:habitat_former>,
[[<ore:paneGlass>, <ore:cableGtOctalRedAlloy>, <ore:paneGlass>],
 [<forestry:thermionic_tubes:6>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:6>],
 [<ore:gearBronze>, <ore:circuitGood>, <ore:gearBronze>]]);

// --- База данных
recipes.addShaped(<forestry:database>,
[[<ore:plateCopper>, <forestry:portable_alyzer>, <ore:plateCopper>],
 [<ore:ForestryChests>, <forestry:sturdy_machine>, <ore:ForestryChests>],
 [<ore:plankWood>, <forestry:royal_jelly>, <ore:plankWood>]]);

// --- Улучшения для пасеки 1
recipes.addShaped(<forestry:alveary.hygro>,
[[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>],
 [<ore:paneGlass>, <forestry:alveary.plain>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);

// --- Улучшения для пасеки 2
recipes.addShaped(<forestry:alveary.heater>,
[[<forestry:thermionic_tubes:4>, <ore:plateSteel>, <forestry:thermionic_tubes:4>],
 [null, <forestry:alveary.plain>, null],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);

// --- Улучшения для пасеки 3
recipes.addShaped(<forestry:alveary.fan>,
[[<ore:plateSteel>, <ore:rotorStainlessSteel>, <ore:plateSteel>],
 [<ore:rotorStainlessSteel>, <forestry:alveary.plain>, <ore:rotorStainlessSteel>],
 [<ore:plateSteel>, <forestry:thermionic_tubes:4>, <ore:plateSteel>]]);

// --- Улучшения для пасеки 4
recipes.addShaped(<forestry:alveary.swarmer>,
[[<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>]]);

// --- Улучшения для пасеки 5
recipes.addShaped(<forestry:alveary.sieve>,
[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:crafting_material:3>, <forestry:crafting_material:3>, <forestry:crafting_material:3>]]);

// --- Фильтр по геному
recipes.addShaped(<forestry:genetic_filter>,
[[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>],
 [<forestry:propolis>, <ore:paneGlass>, <forestry:propolis>],
 [<ore:gearBronze>, <ore:gemDiamond>, <ore:gearBronze>]]);

// --- Шлем натуралиста
recipes.addShaped(<forestry:naturalist_helmet>,
[[null, <ore:plateCopper>, null],
 [<ore:ForestryPropolis>, null, <ore:ForestryPropolis>],
 [null, <ore:plateCopper>, null]]);