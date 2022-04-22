import crafttweaker.item.IItemStack;

val Diamonds = <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond>;

// --- Removing Recipes

// Удаление рецептов + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
    // Rubber stuff
    <gregtech:planks>,
    <gregtech:rubber_log>,
    <gregtech:rubber_leaves>,
    <gregtech:rubber_sapling>,
    // Primitive Blast Furnace
    <metaitem:primitive_blast_furnace.bronze>,
    // Flour
    <metaitem:dustWheat>,
    <metaitem:dustSmallWheat>,
    <metaitem:dustTinyWheat>,
    // Compressed Clay
    <metaitem:compressed.fireclay>,
    // Compressed FireClay
    <metaitem:compressed.fireclay>,
    <metaitem:dustFireclay>,
    <metaitem:dustSmallFireclay>,
    <metaitem:dustTinyFireclay>
];
for item in ItemsToRemoveFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
	// Paper
    <minecraft:paper> * 2,
    // LV Casing
    <gregtech:machine_casing:1>,
    // Firebrick
    <gregtech:metal_casing:1>,
    // Pump casing
    <gregtech:steam_casing:4>,
    // Other
    <metaitem:coke_oven>,
    <metaitem:steam_miner>,
    <metaitem:steam_macerator_bronze>,
    <metaitem:steam_rock_breaker_bronze>,
    <metaitem:pump_hatch>,
    <metaitem:primitive_water_pump>,
    <metaitem:steam_boiler_coal_bronze>,
    <metaitem:steam_boiler_coal_steel>,
    <metaitem:steam_furnace_bronze>,
    <metaitem:steam_alloy_smelter_bronze>,
    <metaitem:electric_blast_furnace>,
    <metaitem:multi_furnace>,
    <metaitem:workbench>,
    <metaitem:energy_hatch.input.mv>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Поименное удаление рецептов
val RemoveItemRecipesByName = [
    "gregtech:cobblestone_hammer",
    "gregtech:piston_iron",
    "gregtech:sticky_resin_torch",
    "gregtech:torch_phosphorus",
    "gregtech:torch_coke",
    "gregtech:torch_coke_dust",
    "gregtech:torch_sulfur",
    "gregtech:iron_trapdoor",
    "gregtech:iron_door",
    "gregtech:iron_bars",
    "gregtech:quartz_sand",
    "gregtech:lead",
    "gregtech:redstone_lamp",
    "gregtech:repeater",
    "gregtech:comparator",
    "gregtech:comparator_certus",
    "gregtech:comparator_quartzite",
    "gregtech:daylight_detector",
    "gregtech:daylight_detector_certus",
    "gregtech:daylight_detector_quartzite",
    "gregtech:lever",
    "gregtech:steam_output_bus",
    "gregtech:steam_input_bus",
    "gregtech:glass_pane"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Отключение крафта одинарных пластин в верстаке
for item in GTPlates{
    recipes.removeByRecipeName(item);
}

//Отключение крафта двойных пластин в верстаке
for item in GTDoublePlates{
    recipes.removeByRecipeName(item);
}

// --- Adding Recipes

// Small Steam Coal Boiler
recipes.addShaped(<metaitem:steam_boiler_coal_bronze>,
[[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
 [<ore:plateBronze>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBronze>],
 [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// High Pressure Coal Boiler
recipes.addShaped(<metaitem:steam_boiler_coal_steel>,
[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateSteel>],
 [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// Steam Furnace
recipes.addShaped(<metaitem:steam_furnace_bronze>,
[[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>],
 [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing:1>,<ore:pipeSmallFluidBronze>],
 [<ore:pipeSmallFluidBronze>, <tfc:blast_furnace>, <ore:pipeSmallFluidBronze>]]);

// Steam Alloy Smelter
recipes.addShaped(<metaitem:steam_alloy_smelter_bronze>,
[[<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>],
 [<tfc:blast_furnace>, <gregtech:steam_casing:1>, <tfc:blast_furnace>],
 [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>]]);

// Blast Furnace
recipes.addShaped(<metaitem:electric_blast_furnace>,
[[<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
 [<ore:circuitLv>, <gregtech:metal_casing:2>, <ore:circuitLv>],
 [<ore:cableGtSingleTin>, <ore:circuitLv>, <ore:cableGtSingleTin>]]);

// Multi-Smelter
recipes.addShaped(<metaitem:multi_furnace>,
[[<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
 [<ore:circuitHv>, <gregtech:metal_casing:2>, <ore:circuitHv>],
 [<ore:cableGtSingleAnnealedCopper>, <ore:circuitHv>, <ore:cableGtSingleAnnealedCopper>]]);

// Crafting Station
recipes.addShaped(<metaitem:workbench>,
[[<ore:chestWood>, <ore:slabWood>, <ore:chestWood>],
 [<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>],
 [<ore:plankWood>, <ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:plankWood>]]);

// LV Machine Casing
recipes.addShaped(<gregtech:machine_casing:1>,
[[<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>],
 [<ore:plateBlueSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBlueSteel>],
 [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);

// Primitive water pump deck
recipes.addShaped(<gregtech:steam_casing:4> * 2,
[[<ore:screwIron>, <ore:plankWood>, <ore:screwIron>],
 [<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:slabCobblestone>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag()]]);

// Primitive water pump hatch
recipes.addShaped(<metaitem:pump_hatch>,
[[<ore:screwIron>, <ore:ringIron>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag()],
 [<ore:plankWood>, <ore:pipeLargeFluidWood>, <ore:plankWood>],
 [<ore:slabCobblestone>, <ore:ringIron>, <ore:slabCobblestone>]]);

// Primitive water pump
recipes.addShaped(<metaitem:primitive_water_pump>,
[[<ore:ringIron>, <ore:pipeNormalFluidWood>, <ore:screwIron>],
 [<ore:rotorIron>, <ore:plankWood>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag()],
 [<ore:slabCobblestone>, <ore:pipeLargeFluidWood>, <ore:slabCobblestone>]]);

// Coke Oven
recipes.addShaped(<metaitem:coke_oven>,
[[<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>],
 [<ore:plateWroughtIron>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateWroughtIron>],
 [<gregtech:metal_casing:8>, <ore:plateWroughtIron>, <gregtech:metal_casing:8>]]);

// Steam Miner
recipes.addShaped(<metaitem:steam_miner>,
[[Diamonds, <ore:pipeSmallFluidBronze>, Diamonds],
 [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
 [<ore:craftingPiston>, <ore:pipeSmallFluidBronze>, <ore:craftingPiston>]]);

// Steam Macerator
recipes.addShaped(<metaitem:steam_macerator_bronze>,
[[Diamonds, <ore:pipeNormalFluidBronze>, Diamonds],
 [<ore:pipeNormalFluidBronze>, <gregtech:steam_casing>, <ore:pipeNormalFluidBronze>],
 [<ore:gearSmallBronze>, <ore:pipeNormalFluidBronze>, <ore:gearSmallBronze>]]);

// Steam Rock Breaker
recipes.addShaped(<metaitem:steam_rock_breaker_bronze>,
[[<ore:craftingPiston>, <ore:pipeSmallFluidBronze>, <ore:craftingPiston>],
 [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
 [Diamonds, <ore:pipeSmallFluidBronze>, Diamonds]]);

// Firebrick GT
recipes.addShaped(<gregtech:metal_casing:1>,
[[null, <ore:plateCopper>, null],
 [<ore:plateCopper>, <tfc:fire_bricks>, <ore:plateCopper>],
 [null, <ore:plateCopper>, null]]);

// Quartz Sand - 1
recipes.addShaped(<ore:dustQuartzSand>.firstItem,
[[null, <ore:sand>, null],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null],
 [null, null, null]]);

// Steam import bus
recipes.addShaped( <metaitem:steam_import_bus>,
[[null, <ore:chest>, null],
 [null, <gregtech:steam_casing>, null],
 [null, null, null]]);

// Steam export bus
recipes.addShaped( <metaitem:steam_export_bus>,
[[null, <gregtech:steam_casing>, null],
 [null, <ore:chest>, null],
 [null, null, null]]);

// Исправление рецепта на бумагу
// Крафт бумажной пыли
recipes.addShaped( <ore:dustPaper>.firstItem * 2,
[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null]]);
// Крафт бамаги из пыли
recipes.addShaped(<ore:paper>.firstItem * 2,
[[null, <ore:slabStonePolished>.reuse(), null],
 [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
 [null, <ore:slabStonePolished>.reuse(), null]]);

// Fix Plant Ball Recipes
// Remove From Cactus
compressor.findRecipe(2, [<minecraft:cactus:0> * 8], null).remove();
// Remove From Wheat
compressor.findRecipe(2, [<minecraft:wheat:0> * 8], null).remove();
// Remove From Another Mushroom
compressor.findRecipe(2, [<minecraft:brown_mushroom:0> * 8], null).remove();
// Remove From Carrot
compressor.findRecipe(2, [<minecraft:carrot:0> * 8], null).remove();
// Remove From Beetroot
compressor.findRecipe(2, [<minecraft:beetroot:0> * 8], null).remove();
// Remove From Potato
compressor.findRecipe(2, [<minecraft:potato:0> * 8], null).remove();
// Remove From Mushroom
compressor.findRecipe(2, [<minecraft:red_mushroom:0> * 8], null).remove();
// Remove From Dirt
centrifuge.findRecipe(30, [<minecraft:dirt:0>], null).remove();
// Remove From Grass
centrifuge.findRecipe(30, [<minecraft:grass:0>], null).remove();
// From Dirt
centrifuge.recipeBuilder()
    .inputs([<ore:dirt>])
    .chancedOutput(<metaitem:plant_ball>, 1200, 700)
    .chancedOutput(<tfc:dirt/basalt>, 5000, 1200)
    .chancedOutput(<ore:dustTinyClay>.firstItem, 4000, 900)
    .duration(275).EUt(30).buildAndRegister();
// From Grass
centrifuge.recipeBuilder()
    .inputs([<ore:grass>])
    .chancedOutput(<metaitem:plant_ball>, 3000, 1200)
    .chancedOutput(<tfc:dirt/basalt>, 5000, 1200)
    .chancedOutput(<ore:dustTinyClay>.firstItem, 5000, 900)
    .duration(275).EUt(30).buildAndRegister();
// From Cactus
compressor.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(300).EUt(2).buildAndRegister();
// From Grains
compressor.recipeBuilder()
    .inputs([<ore:categoryGrain> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();
// From Vegetables
compressor.recipeBuilder()
    .inputs([<ore:categoryVegetable> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();
// From Fruit
compressor.recipeBuilder()
    .inputs([<ore:categoryFruit> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();
// From Red Mushroom
compressor.recipeBuilder()
    .inputs([<ore:mushroomRed> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();
// From Mushroom
compressor.recipeBuilder()
    .inputs([<ore:mushroombrown> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(350).EUt(2).buildAndRegister();

// Fix Biomass Recipes
// Remove From Cactus
brewery.findRecipe(3, [<minecraft:cactus:0>], [<liquid:water> * 20]).remove();
// Remove From Carrot
brewery.findRecipe(3, [<minecraft:carrot:0>], [<liquid:water> * 20]).remove();
// Remove From Brownmushroom
brewery.findRecipe(3, [<minecraft:brown_mushroom:0>], [<liquid:water> * 20]).remove();
// Remove From Red Mushroom
brewery.findRecipe(3, [<minecraft:red_mushroom:0>], [<liquid:water> * 20]).remove();
// Remove From Potato
brewery.findRecipe(3, [<minecraft:potato:0>], [<liquid:water> * 20]).remove();
// Remove From Beetroot
brewery.findRecipe(3, [<minecraft:beetroot:0>], [<liquid:water> * 20]).remove();
// From Cactus
brewery.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus>])
    .fluidInputs([<liquid:water> * 20])
    .fluidOutputs([<liquid:biomass> * 20])
    .duration(300).EUt(2).buildAndRegister();
// From Grains
brewery.recipeBuilder()
    .inputs([<ore:categoryGrain> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();
// From Vegetables
brewery.recipeBuilder()
    .inputs([<ore:categoryVegetable> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();
// From Fruit
brewery.recipeBuilder()
    .inputs([<ore:categoryFruit> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();
// From Red Mushroom
brewery.recipeBuilder()
    .inputs([<ore:mushroomRed> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();
// From Mushroom
brewery.recipeBuilder()
    .inputs([<ore:mushroombrown> * 8])
    .fluidInputs(<liquid:water> * 20)
    .fluidOutputs(<liquid:biomass> * 20)
    .duration(160).EUt(3).buildAndRegister();

// Fix Shit Glass Craft
// Glass * 2
arc_furnace.findRecipe(30, [<minecraft:sand:0>], [<liquid:oxygen> * 20]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<minecraft:glass> * 2)
    .duration(175).EUt(7).buildAndRegister();

// Fix Coke Oven Bricks Craft
// Coke Oven Brick * 2
alloy_smelter.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();
alloy_smelter.recipeBuilder()
    .inputs([<ore:sand>, <minecraft:clay_ball:0>])
    .outputs(<metaitem:brick.coke>)
    .duration(175).EUt(7).buildAndRegister();

// Переработка тфкшной гевеи
centrifuge.findRecipe(20, [<gregtech:rubber_log:0>], null).remove();
centrifuge.recipeBuilder()
    .inputs(<tfc:wood/log/rubber_fig> | <tfc:wood/log/hevea>)
    .chancedOutput(<ore:dustCarbon>.firstItem, 2500, 600)
    .chancedOutput(<ore:dustWood>.firstItem, 2500, 700)
    .chancedOutput(<metaitem:plant_ball>, 3750, 900)
    .chancedOutput(<metaitem:rubber_drop>, 5000, 1200)
    .fluidOutputs(<fluid:methane> * 65)
    .EUt(20).duration(200).buildAndRegister();

// Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .EUt(140).duration(330).buildAndRegister();
	
// Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .EUt(140).duration(220).buildAndRegister();

// Гравий --> кремень
forge_hammer.recipeBuilder()
    .inputs([<ore:gravel> * 1])
    .outputs(<minecraft:flint> * 1)
    .duration(45).EUt(5).buildAndRegister();

// Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder()
    .inputs([<ore:sugarcane> * 3])
    .outputs(<ore:dustPaper>.firstItem * 2)
    .duration(105).EUt(4).buildAndRegister();

// Песок + Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand> * 4, <ore:gravel> * 4)
    .outputs(<tfc:aggregate> * 8)
    .duration(20).EUt(4).buildAndRegister();

// Infinite Water Cover 
assembler.findRecipe(480, [<metaitem:electric.pump.hv> * 2, <minecraft:cauldron:0>, <metaitem:circuit.advanced_integrated>], null).remove();
assembler.recipeBuilder()
    .inputs(<metaitem:electric.pump.hv> * 2, <minecraft:cauldron:0>, <metaitem:circuit.advanced_integrated>, <minecraft:ender_pearl>, <metaitem:emitter.hv>)
    .outputs(<metaitem:cover.infinite_water>)
    .duration(200).EUt(480).buildAndRegister();


// Voiding Cover (Fluid)
recipes.removeByRecipeName("gregtech:cover_fluid_voiding");
macerator.findRecipe(8, [<metaitem:cover.fluid.voiding>], null).remove();


// Voiding Cover (Item)
recipes.removeByRecipeName("gregtech:cover_item_voiding");
macerator.findRecipe(8, [<metaitem:cover.item.voiding>], null).remove();


// Fertilizer
mixer.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();
mixer.recipeBuilder()
	.inputs(<ore:sand> * 4,<ore:dustWood> * 2, <ore:dirt>)
    .fluidInputs(<liquid:water> * 1000)
	.outputs(<metaitem:fertilizer>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();

// Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([<ore:dustDiamond>, <ore:dustIridium>])
    .fluidInputs([<liquid:nether_air> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs([<ore:dustDiamond> * 2, <ore:dustIridium> * 2])
    .fluidInputs([<liquid:sulfur_dioxide> * 6000, <liquid:carbon_monoxide> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs([<metaitem:dustNetherStar> * 1])
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

// Mars air
// <recipemap:gas_collector>.findRecipe(64, [<metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// gas_collector.recipeBuilder()
//     .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
//     .fluidOutputs([<liquid:nether_air> * 10000])
//     .property("dimension", -29)
//     .duration(200)
//     .EUt(256)
//     .buildAndRegister();

// Venus air
// <recipemap:gas_collector>.findRecipe(256, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
// gas_collector.recipeBuilder()
//     .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
//     .fluidOutputs([<liquid:ender_air> * 10000])
//     .property("dimension", -31)
//     .duration(200)
//     .EUt(256)
//     .buildAndRegister();

// Fix RockBreaker Exploit
rock_breaker.findRecipe(7, [<minecraft:stone>], null).remove();
rock_breaker.findRecipe(7, [<minecraft:cobblestone>], null).remove();
// Рецепты для всех сырых камней
for item in TFC_Raws {
    rock_breaker.recipeBuilder()
    	.notConsumable(item)
    	.outputs(item)
    	.duration(16).EUt(32).buildAndRegister();
}

// Remove weird stone dust recipes
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:stonebrick:0>], null).remove();
// Stone Dust * 1
thermal_centrifuge.findRecipe(48, [<minecraft:cobblestone:0>], null).remove();
// Stone Dust * 8
macerator.findRecipe(2, [<minecraft:furnace:0>], null).remove();
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:cobblestone:0>], null).remove();
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:cobblestone_wall:0>], null).remove();
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:mossy_cobblestone:0>], null).remove();
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:stone_pressure_plate:0>], null).remove();

// Remove weird stone small dust recipes
// Small Pile of Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_slab:1>], null).remove();
// Small Pile of Stone Dust * 6
macerator.findRecipe(2, [<minecraft:stone_brick_stairs:0>], null).remove();
// Small Pile of Stone Dust * 6
macerator.findRecipe(2, [<minecraft:red_sandstone_stairs:0>], null).remove();
// Small Pile of Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_slab:2>], null).remove();
// Small Pile of Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_slab:5>], null).remove();
// Small Pile of Stone Dust * 6
macerator.findRecipe(2, [<minecraft:sandstone_stairs:0>], null).remove();
// Small Pile of Stone Dust * 6
macerator.findRecipe(2, [<minecraft:stone_stairs:0>], null).remove();
// Small Pile of Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_slab:0>], null).remove();
// Small Pile of Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_slab:3>], null).remove();

// Remove weird stone tiny dust recipes
// Tiny Pile of Stone Dust * 1
macerator.findRecipe(2, [<minecraft:stone_button:0>], null).remove();

// Remove weird wood pulp recipes
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:oak_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 14
macerator.findRecipe(2, [<minecraft:wooden_pickaxe:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:wooden_shovel:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:spruce_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 2
macerator.findRecipe(2, [<minecraft:wooden_slab:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:acacia_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:dark_oak_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 14
macerator.findRecipe(2, [<minecraft:wooden_axe:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:birch_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 10
macerator.findRecipe(2, [<minecraft:wooden_hoe:0>], null).remove();
// Small Pile of Wood Pulp * 6
macerator.findRecipe(2, [<minecraft:jungle_stairs:0>], null).remove();
// Small Pile of Wood Pulp * 9
macerator.findRecipe(2, [<minecraft:wooden_sword:0>], null).remove();
// Diamond Dust * 2
macerator.findRecipe(2, [<minecraft:diamond_hoe:0>], null).remove();
// Diamond Dust * 2
macerator.findRecipe(2, [<minecraft:diamond_sword:0>], null).remove();
// Diamond Dust * 3
macerator.findRecipe(2, [<minecraft:diamond_axe:0>], null).remove();
// Diamond Dust * 1
macerator.findRecipe(2, [<minecraft:diamond_shovel:0>], null).remove();
// Diamond Dust * 3
macerator.findRecipe(2, [<minecraft:diamond_pickaxe:0>], null).remove();
// Iron Dust * 2
macerator.findRecipe(2, [<minecraft:iron_hoe:0>], null).remove();
// Iron Dust * 2
macerator.findRecipe(2, [<minecraft:iron_sword:0>], null).remove();
// Iron Dust * 1
macerator.findRecipe(2, [<minecraft:iron_shovel:0>], null).remove();
// Iron Dust * 3
macerator.findRecipe(2, [<minecraft:iron_pickaxe:0>], null).remove();
// Iron Dust * 3
macerator.findRecipe(2, [<minecraft:iron_axe:0>], null).remove();
// Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_sword:0>], null).remove();
// Stone Dust * 2
macerator.findRecipe(2, [<minecraft:stone_hoe:0>], null).remove();
// Stone Dust * 3
macerator.findRecipe(2, [<minecraft:stone_pickaxe:0>], null).remove();
// Stone Dust * 3
macerator.findRecipe(2, [<minecraft:stone_axe:0>], null).remove();
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:stone_shovel:0>], null).remove();
// Gold Dust * 2
macerator.findRecipe(2, [<minecraft:golden_sword:0>], null).remove();
// Gold Dust * 1
macerator.findRecipe(2, [<minecraft:golden_shovel:0>], null).remove();
// Gold Dust * 3
macerator.findRecipe(2, [<minecraft:golden_axe:0>], null).remove();
// Gold Dust * 2
macerator.findRecipe(2, [<minecraft:golden_hoe:0>], null).remove();
// Gold Dust * 3
macerator.findRecipe(2, [<minecraft:golden_pickaxe:0>], null).remove();

// Remove weird dye recipes
// Yellow Dye * 3
extractor.findRecipe(2, [<minecraft:double_plant:0>], null).remove();
// Yellow Dye * 2
extractor.findRecipe(2, [<minecraft:yellow_flower:0>], null).remove();
// Orange Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:5>], null).remove();
// Red Dye * 3
extractor.findRecipe(2, [<minecraft:double_plant:4>], null).remove();
// Red Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:4>], null).remove();
// Red Dye * 2
extractor.findRecipe(2, [<minecraft:beetroot:0>], null).remove();
// Red Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:0>], null).remove();
// Light Gray Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:3>], null).remove();
// Light Gray Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:6>], null).remove();
// Light Gray Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:8>], null).remove();
// Pink Dye * 3
extractor.findRecipe(2, [<minecraft:double_plant:5>], null).remove();
// Pink Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:7>], null).remove();
// Light Blue Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:1>], null).remove();
// Magenta Dye * 3
extractor.findRecipe(2, [<minecraft:double_plant:1>], null).remove();
// Magenta Dye * 2
extractor.findRecipe(2, [<minecraft:red_flower:2>], null).remove();