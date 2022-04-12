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
    "gregtech:steam_input_bus"
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
 [<ore:circuitBasic>, <gregtech:metal_casing:2>, <ore:circuitBasic>],
 [<ore:cableGtSingleTin>, <ore:circuitBasic>, <ore:cableGtSingleTin>]]);

// Multi-Smelter
recipes.addShaped(<metaitem:multi_furnace>,
[[<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
 [<ore:circuitAdvanced>, <gregtech:metal_casing:2>, <ore:circuitAdvanced>],
 [<ore:cableGtSingleAnnealedCopper>, <ore:circuitAdvanced>, <ore:cableGtSingleAnnealedCopper>]]);

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

// Fix Cactus Recycling
// Plant Ball * 1
compressor.findRecipe(2, [<minecraft:cactus:0> * 8], null).remove();
compressor.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus> * 8])
    .outputs(<metaitem:plant_ball>)
    .duration(300).EUt(2).buildAndRegister();
// Biomass * 20
brewery.findRecipe(3, [<minecraft:cactus:0>], [<liquid:water> * 20]).remove();
brewery.recipeBuilder()
    .inputs([<tfc:plants/barrel_cactus>])
    .fluidInputs([<liquid:water> * 20])
    .fluidOutputs([<liquid:biomass> * 20])
    .duration(300).EUt(2).buildAndRegister();

// Fix Plant Ball Recipes
// From Dirt
centrifuge.findRecipe(30, [<minecraft:dirt:0>], null).remove();
// From Grass
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

// Fix Meat
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:porkchop:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:beef:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:fish:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:rabbit:0>], null).remove();
// Mince Meat * 1
macerator.findRecipe(2, [<minecraft:chicken:0>], null).remove();
// Mince Meat * 1
macerator.findRecipe(2, [<minecraft:mutton:0>], null).remove();
// Mince Meat
macerator.recipeBuilder()
    .inputs([<ore:categoryMeat>])
    .outputs(<ore:dustMeat>.firstItem, <ore:dustTinyBone>.firstItem)
    .duration(105).EUt(2).buildAndRegister();

// Armor Stand Fix
// Armor Stand * 1
assembler.findRecipe(7, [<minecraft:stone_slab:0>, <minecraft:stick:0> * 6], null).remove();
assembler.recipeBuilder()
    .inputs([<ore:slabStonePolished>, <minecraft:stick> * 6])
    .outputs(<minecraft:armor_stand>)
    .duration(300).EUt(7).buildAndRegister();

// Hopper Fix
// Hopper * 1
assembler.findRecipe(2, [<minecraft:chest:0>, <metaitem:plateIron> * 5], null).remove();
// Hopper * 1
assembler.findRecipe(2, [<minecraft:trapped_chest:0>, <metaitem:plateWroughtIron> * 5], null).remove();
// Hopper * 1
assembler.recipeBuilder()
    .inputs([<ore:chest>, <ore:plateIron> * 5 | <ore:plateWroughtIron> * 5])
    .outputs(<minecraft:hopper>)
    .duration(400).EUt(2).buildAndRegister();

// Cobble FIx
// Cobblestone Stairs * 4
assembler.findRecipe(1, [<tfc:cobble/basalt:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Moss Stone * 1
assembler.findRecipe(1, [<chisel:cobblestone:0>, <minecraft:vine:0>], null).remove();
// Gravel * 1
forge_hammer.findRecipe(16, [<chisel:cobblestone:0>], null).remove();
// Fix Shit Glass Craft
// Glass * 2
arc_furnace.findRecipe(30, [<minecraft:sand:0>], [<liquid:oxygen> * 20]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:sand>])
    //.fluidInputs(<fluid:oxygen> * 20)
    .outputs(<minecraft:glass> * 2)
    .duration(175).EUt(7).buildAndRegister();
// Fix Coke Oven Bricks Craft
// Coke Oven Brick * 2
alloy_smelter.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();
alloy_smelter.recipeBuilder()
    .inputs([<ore:sand>, <minecraft:clay_ball:0>])
    .outputs(<metaitem:brick.coke>)
    .duration(175).EUt(7).buildAndRegister();
// Fix Stone Exploit
// Stone * 1
compressor.findRecipe(2, [<metaitem:plateStone> * 9], null).remove();
compressor.recipeBuilder()
    .inputs([<metaitem:plateStone> * 9])
    .outputs(<tfc:raw/basalt>)
    .duration(300).EUt(2).buildAndRegister();
// Fix Dirt Exploit
// Dirt * 1
macerator.findRecipe(2, [<metaitem:bio_chaff>], null).remove();
macerator.recipeBuilder()
    .inputs([<metaitem:bio_chaff>])
    .outputs(<tfc:dirt/basalt>)
    .duration(300).EUt(2).buildAndRegister();
// Fix Gravel Exploit
forge_hammer.findRecipe(16, [<ore:cobblestone>.firstItem], null);
// Fix Sand Exploit
// Diamond Small Pile * 1
centrifuge.findRecipe(30, [<minecraft:sand:1>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<tfc:sand/quartzite>])
    .chancedOutput(<ore:dustTinyDiamond>.firstItem, 100, 100)
    .chancedOutput(<ore:dustIron>.firstItem, 5000, 500)
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .duration(275).EUt(30).buildAndRegister();
// Oil * 500
centrifuge.findRecipe(5, [<gregtech:ore_oilsands_0:0>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<ore:oreOilsands>])
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .fluidOutputs([<liquid:oil> * 500])
    .duration(200).EUt(5).buildAndRegister();
// Oil * 80
centrifuge.findRecipe(80, [<minecraft:soul_sand:0>], null).remove();
// Helium Gas * 120
centrifuge.findRecipe(20, [<metaitem:dustEndstone>], null).remove();
// Myshroom * 1
centrifuge.findRecipe(30, [<minecraft:mycelium:0>], null).remove();
// Quartz Sand - 2
macerator.findRecipe(2, [<minecraft:sand>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<ore:dustQuartzSand>.firstItem)
    .duration(50).EUt(2).buildAndRegister();
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
// Песок+Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand>*4, <ore:gravel>*4)
    .outputs(<tfc:aggregate>*8)
    .duration(20).EUt(4).buildAndRegister();
// Infinite Water Cover 
<recipemap:assembler>.findRecipe(480, [<metaitem:electric.pump.hv> * 2, <minecraft:cauldron:0>, <metaitem:circuit.advanced_integrated>], null).remove();
assembler.recipeBuilder()
    .inputs(<metaitem:electric.pump.hv> * 2, <minecraft:cauldron:0>, <metaitem:circuit.advanced_integrated>, <minecraft:ender_pearl>, <metaitem:emitter.hv>)
    .outputs(<metaitem:cover.infinite_water>)
    .duration(200).EUt(480).buildAndRegister();
// Fertilizer
<recipemap:mixer>.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();
mixer.recipeBuilder()
	.inputs(<ore:sand> * 4,<ore:dustWood> * 2, <ore:dirt>)
    .fluidInputs(<liquid:water> * 1000)
	.outputs(<metaitem:fertilizer>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();
// Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([
        <ore:dustDiamond>,
        <ore:dustIridium>
    ])
    .fluidInputs([
        <liquid:nether_air> * 8000,
        <liquid:rocket_fuel> * 1000
    ])
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs([
        <ore:dustDiamond> * 2,
        <ore:dustIridium> * 2
    ])
    .fluidInputs([
        <liquid:sulfur_dioxide> * 6000,
        <liquid:carbon_monoxide> * 8000,
        <liquid:rocket_fuel> * 1000
    ])
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

// Фикс снопа сена
packer.findRecipe(2, [<minecraft:wheat>*9, <gregtech:meta_item_1:461>.withTag({Configuration: 9})], null).remove();

// Фикс сундуков
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();

// Rock breaker fixes
rock_breaker.findRecipe(7, [<minecraft:stone>], null).remove();
rock_breaker.findRecipe(7, [<minecraft:cobblestone>], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneGranite>.firstItem], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneDiorite>.firstItem], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneAndesite>.firstItem], null).remove();

// Крафт некоторых блоков в компрессоре
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

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