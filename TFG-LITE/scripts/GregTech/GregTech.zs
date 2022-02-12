import crafttweaker.item.IItemStack;

val Diamonds = <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond>;

//Удаление + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
    // Rubber stuff
    <gregtech:planks>,
    <gregtech:rubber_log>,
    <gregtech:rubber_leaves>,
    <gregtech:rubber_sapling>,
    // Primitive Blast Furnace
    <metaitem:primitive_blast_furnace.bronze>,
    // Flour
    <ore:dustWheat>.firstItem,
    <ore:dustSmallWheat>.firstItem,
    <ore:dustTinyWheat>.firstItem,
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

val ItemsToRemove as IItemStack[] = [
	// Paper
    <minecraft:paper> * 2,
    //LV Casing
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
    <metaitem:workbench>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Удаление рецептов
recipes.removeByRecipeName("gregtech:cobblestone_hammer");
recipes.removeByRecipeName("gregtech:piston_iron");
recipes.removeByRecipeName("gregtech:sticky_resin_torch");
recipes.removeByRecipeName("gregtech:torch_phosphorus");
recipes.removeByRecipeName("gregtech:torch_coke");
recipes.removeByRecipeName("gregtech:torch_coke_dust");
recipes.removeByRecipeName("gregtech:torch_sulfur");
recipes.removeByRecipeName("gregtech:iron_trapdoor");
recipes.removeByRecipeName("gregtech:iron_door");
recipes.removeByRecipeName("gregtech:iron_bars");
recipes.removeByRecipeName("gregtech:quartz_sand");
recipes.removeByRecipeName("gregtech:lead");
recipes.removeByRecipeName("gregtech:redstone_lamp");
recipes.removeByRecipeName("gregtech:repeater");
recipes.removeByRecipeName("gregtech:comparator");
recipes.removeByRecipeName("gregtech:comparator_certus");
recipes.removeByRecipeName("gregtech:comparator_quartzite");
recipes.removeByRecipeName("gregtech:daylight_detector");
recipes.removeByRecipeName("gregtech:daylight_detector_certus");
recipes.removeByRecipeName("gregtech:daylight_detector_quartzite");
recipes.removeByRecipeName("gregtech:lever");

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

//Fix Plant Ball Recipes
//From Dirt
centrifuge.findRecipe(30, [<minecraft:dirt:0>], null).remove();
//From Grass
centrifuge.findRecipe(30, [<minecraft:grass:0>], null).remove();
//From Dirt
centrifuge.recipeBuilder()
    .inputs([<ore:dirt>])
    .chancedOutput(<metaitem:plant_ball>, 1200, 700)
    .chancedOutput(<tfc:dirt/basalt>, 5000, 1200)
    .chancedOutput(<ore:dustTinyClay>.firstItem, 4000, 900)
    .duration(275).EUt(30).buildAndRegister();
//From Grass
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

//Armor Stand Fix
// Armor Stand * 1
assembler.findRecipe(7, [<minecraft:stone_slab:0>, <minecraft:stick:0> * 6], null).remove();
assembler.recipeBuilder()
    .inputs([<ore:slabStonePolished>, <minecraft:stick> * 6])
    .outputs(<minecraft:armor_stand>)
    .duration(300).EUt(7).buildAndRegister();

// Cobble FIx
// Cobblestone Stairs * 4
assembler.findRecipe(1, [<tfc:cobble/basalt:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Moss Stone * 1
assembler.findRecipe(1, [<chisel:cobblestone:0>, <minecraft:vine:0>], null).remove();
// Gravel * 1
forge_hammer.findRecipe(16, [<chisel:cobblestone:0>], null).remove();

//Fix Shit Glass Craft
// Glass * 2
arc_furnace.findRecipe(30, [<minecraft:sand:0>], [<liquid:oxygen> * 20]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:sand>])
    .fluidInputs(<fluid:oxygen> * 20)
    .outputs(<minecraft:glass> * 2)
    .duration(175).EUt(7).buildAndRegister();

//Fix Coke Oven Bricks Craft
// Coke Oven Brick * 2
alloy_smelter.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();
alloy_smelter.recipeBuilder()
    .inputs([<ore:sand>, <minecraft:clay_ball:0>])
    .outputs(<metaitem:brick.coke>)
    .duration(175).EUt(7).buildAndRegister();

//Fix Stone Exploit
// Stone * 1
compressor.findRecipe(2, [<metaitem:plateStone> * 9], null).remove();
compressor.recipeBuilder()
    .inputs([<metaitem:plateStone> * 9])
    .outputs(<tfc:raw/basalt>)
    .duration(300).EUt(2).buildAndRegister();

//Fix Dirt Exploit
// Dirt * 1
macerator.findRecipe(2, [<metaitem:bio_chaff>], null).remove();
macerator.recipeBuilder()
    .inputs([<metaitem:bio_chaff>])
    .outputs(<tfc:dirt/basalt>)
    .duration(300).EUt(2).buildAndRegister();

//Fix Gravel Exploit
forge_hammer.findRecipe(16, [<ore:cobblestone>.firstItem], null);

//Fix Sand Exploit
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


//Quartz Sand - 2
macerator.findRecipe(2, [<minecraft:sand>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<ore:dustQuartzSand>.firstItem)
    .duration(50).EUt(2).buildAndRegister();

//Переработка тфкшной гевеи
centrifuge.findRecipe(20, [<gregtech:rubber_log:0>], null).remove();
centrifuge.recipeBuilder()
    .inputs(<tfc:wood/log/rubber_fig> | <tfc:wood/log/hevea>)
    .chancedOutput(<ore:dustCarbon>.firstItem, 2500, 600)
    .chancedOutput(<ore:dustWood>.firstItem, 2500, 700)
    .chancedOutput(<metaitem:plant_ball>, 3750, 900)
    .chancedOutput(<metaitem:rubber_drop>, 5000, 1200)
    .fluidOutputs(<fluid:methane> * 65)
    .EUt(20).duration(200).buildAndRegister();

//Исправление рецепта на бумагу
//Крафт бумажной пыли
recipes.addShaped( <ore:dustPaper>.firstItem * 2,
[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
 [null, <ore:craftingToolMortar>.firstItem.withEmptyTag(), null]]);
//Крафт бамаги из пыли
recipes.addShaped(<ore:paper>.firstItem * 2,
[[null, <ore:slabStonePolished>.reuse(), null],
 [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
 [null, <ore:slabStonePolished>.reuse(), null]]);

//Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .EUt(140).duration(330).buildAndRegister();
	
//Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .EUt(140).duration(220).buildAndRegister();
	
//Гравий --> кремень
forge_hammer.recipeBuilder()
    .inputs([<ore:gravel> * 1])
    .outputs(<minecraft:flint> * 1)
    .duration(45).EUt(5).buildAndRegister();

//Сахарный тростник --> целлюлоза
forge_hammer.recipeBuilder()
    .inputs([<ore:sugarcane> * 3])
    .outputs(<ore:dustPaper>.firstItem * 2)
    .duration(105).EUt(4).buildAndRegister();

//Песок+Гравий --> цемент тфк
mixer.recipeBuilder()
    .inputs(<ore:sand>*4, <ore:gravel>*4)
    .outputs(<tfc:aggregate>*8)
    .duration(20).EUt(4).buildAndRegister();

//Фикс снопа сена
packer.findRecipe(2, [<minecraft:wheat>*9, <gregtech:meta_item_1:461>.withTag({Configuration: 9})], null).remove();

//Фикс сундуков
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();

//Rock breaker fixes
rock_breaker.findRecipe(7, [<minecraft:stone>], null).remove();
rock_breaker.findRecipe(7, [<minecraft:cobblestone>], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneGranite>.firstItem], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneDiorite>.firstItem], null).remove();
rock_breaker.findRecipe(60, [<ore:stoneAndesite>.firstItem], null).remove();

//Крафт некоторых блоков в компрессоре
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

//Исправление рецепта синей стали
recipes.removeByRecipeName("gregtech:dust_blue_steel");
mixer.findRecipe(7, [<ore:dustSterlingSilver>.firstItem, <ore:dustBismuthBronze>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2, <gregtech:meta_item_1:461>.withTag({Configuration: 1})], null).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustRoseGold>.firstItem, <ore:dustBrass>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2)
    .circuit(1)
    .outputs(<gregtech:meta_dust:2511> * 8)
    .duration(800).EUt(8).buildAndRegister();

//Исправление рецепта красной стали
recipes.removeByRecipeName("gregtech:dust_red_steel");
mixer.findRecipe(7, [<ore:dustRoseGold>.firstItem, <ore:dustBrass>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2, <gregtech:meta_item_1:461>.withTag({Configuration: 1})], null).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustSterlingSilver>.firstItem, <ore:dustBismuthBronze>.firstItem, <ore:dustBlackSteel>.firstItem * 4, <ore:dustSteel>.firstItem * 2)
    .circuit(1)
    .outputs(<gregtech:meta_dust:2510> * 8)
    .duration(800).EUt(8).buildAndRegister();

//Отключение крафта одинарных пластин в верстаке
val GTPlates = [
    "gregtech:plate_livermorium",
    "gregtech:plate_rubber",
    "gregtech:plate_rhodium_plated_palladium",
    "gregtech:plate_aluminium",
	"gregtech:plate_iron_magnetic",
    "gregtech:plate_naquadah",
    "gregtech:plate_steel_magnetic",
    "gregtech:plate_invar",
    "gregtech:plate_cupronickel",
    "gregtech:plate_californium",
    "gregtech:plate_soldering_alloy",
    "gregtech:plate_naquadah_alloy",
    "gregtech:plate_fermium",
    "gregtech:plate_beryllium",
    "gregtech:plate_potassium",
    "gregtech:plate_thorium",
    "gregtech:plate_samarium",
    "gregtech:plate_stainless_steel",
    "gregtech:plate_lithium",
    "gregtech:plate_bronze",
    "gregtech:plate_flerovium",
    "gregtech:plate_polyphenylene_sulfide",
    "gregtech:plate_europium",
    "gregtech:plate_tungsten",
    "gregtech:plate_gallium_arsenide",
    "gregtech:plate_curium",
    "gregtech:plate_erbium",
    "gregtech:plate_terbium",
    "gregtech:plate_niobium_titanium",
    "gregtech:plate_titanium",
    "gregtech:plate_damascus_steel",
    "gregtech:plate_iridium",
    "gregtech:wrench_tungsten_steel",
    "gregtech:plate_tungsten_steel",
    "gregtech:plate_hsss",
    "gregtech:plate_plutonium241",
    "gregtech:plate_gallium",
    "gregtech:plate_cobalt",
    "gregtech:plate_einsteinium",
    "gregtech:plate_scandium",
    "gregtech:plate_tellurium",
    "gregtech:plate_ruthenium",
    "gregtech:plate_ruridit",
    "gregtech:plate_indium_gallium_phosphide",
    "gregtech:plate_blue_steel",
    "gregtech:plate_annealed_copper",
    "gregtech:plate_bismuth_bronze",
    "gregtech:plate_tantalum",
    "gregtech:plate_osmiridium",
    "gregtech:plate_potin",
    "gregtech:plate_strontium",
    "gregtech:plate_silver",
    "gregtech:plate_yttrium_barium_cuprate",
    "gregtech:plate_yttrium",
    "gregtech:plate_trinium",
    "gregtech:plate_platinum",
    "gregtech:plate_rutherfordium",
    "gregtech:plate_neptunium",
    "gregtech:plate_vanadium",
    "gregtech:plate_niobium",
    "gregtech:plate_tin_alloy",
    "gregtech:plate_rhenium",
    "gregtech:plate_fluxed_electrum",
    "gregtech:plate_palladium",
    "gregtech:plate_tritanium",
    "gregtech:plate_battery_alloy",
    "gregtech:plate_manganese",
    "gregtech:plate_tin",
    "gregtech:plate_barium",
    "gregtech:plate_americium",
    "gregtech:plate_calcium",
    "gregtech:plate_electrum",
    "gregtech:plate_indium_tin_barium_titanium_cuprate",
    "gregtech:plate_red_alloy",
    "gregtech:plate_rhodium",
    "gregtech:plate_black_bronze",
    "gregtech:plate_nickel",
    "gregtech:plate_hsse",
    "gregtech:plate_brass",
    "gregtech:plate_molybdenum",
    "gregtech:plate_ytterbium",
    "gregtech:plate_red_steel",
    "gregtech:plate_naquadah_enriched",
    "gregtech:plate_mendelevium",
    "gregtech:plate_osmium",
    "gregtech:plate_nichrome",
    "gregtech:plate_magnesium",
    "gregtech:plate_vanadium_gallium",
    "gregtech:plate_cobalt_brass",
    "gregtech:plate_copper",
    "gregtech:plate_plutonium",
    "gregtech:plate_uranium_rhodium_dinaquadide",
    "gregtech:plate_protactinium",
    "gregtech:plate_graphite",
    "gregtech:plate_cerium",
    "gregtech:plate_oganesson",
    "gregtech:plate_steel",
    "gregtech:plate_neutronium",
    "gregtech:plate_zinc",
    "gregtech:plate_antimony",
    "gregtech:plate_niobium_nitride",
    "gregtech:plate_neodymium_magnetic",
    "gregtech:plate_ultimet",
    "gregtech:plate_lead",
    "gregtech:plate_iron",
    "gregtech:plate_praseodymium",
    "gregtech:plate_dubnium",
    "gregtech:plate_uranium235",
    "gregtech:plate_sodium",
    "gregtech:plate_duranium",
    "gregtech:plate_thulium",
    "gregtech:plate_neodymium",
    "gregtech:wrench_vanadium_steel",
    "gregtech:plate_vanadium_steel",
    "gregtech:plate_hssg",
    "gregtech:plate_berkelium",
    "gregtech:plate_graphene",
    "gregtech:plate_nickel_zinc_ferrite",
    "gregtech:plate_uranium",
    "gregtech:plate_chrome",
    "gregtech:plate_rubidium",
    "gregtech:plate_hassium",
    "gregtech:plate_silicon",
    "gregtech:plate_tungsten_carbide",
    "gregtech:plate_black_steel",
    "gregtech:plate_rose_gold",
    "gregtech:plate_gold",
    "gregtech:plate_naquadria",
    "gregtech:plate_promethium",
    "gregtech:plate_magnalium",
    "gregtech:plate_kanthal",
    "gregtech:plate_wrought_iron",
    "gregtech:plate_enriched_naquadah_trinium_europium_duranide",
    "gregtech:plate_bismuth",
    "gregtech:plate_sterling_silver",
    "gregtech:plate_zirconium"
] as string[];
for item in GTPlates{
    recipes.removeByRecipeName(item);
}

//Отключение крафта двойных пластин в верстаке
val GTDoublePlates = [
    "gregtech:plate_double_livermorium",
	"gregtech:plate_double_blue_steel",
    "gregtech:plate_rhodium_plated_palladium",
    "gregtech:plate_double_cobalt_brass",
    "gregtech:plate_double_copper",
    "gregtech:plate_double_naquadah_enriched",
    "gregtech:plate_double_black_bronze",
    "gregtech:plate_double_trinium",
    "gregtech:plate_double_chrome",
    "gregtech:plate_double_neodymium",
    "gregtech:plate_double_damascus_steel",
    "gregtech:plate_double_oganesson",
    "gregtech:plate_double_black_steel",
    "gregtech:plate_double_uranium",
    "gregtech:plate_double_erbium",
    "gregtech:plate_double_duranium",
    "gregtech:plate_double_red_steel",
    "gregtech:plate_double_niobium",
    "gregtech:plate_double_kanthal",
    "gregtech:plate_double_steel",
    "gregtech:plate_double_brass",
    "gregtech:plate_double_tin",
    "gregtech:plate_double_naquadah_alloy",
    "gregtech:plate_double_calcium",
    "gregtech:plate_double_thorium",
    "gregtech:plate_double_battery_alloy",
    "gregtech:plate_double_iron",
    "gregtech:plate_double_tantalum",
    "gregtech:plate_double_plutonium241",
    "gregtech:plate_double_thulium",
    "gregtech:plate_double_invar",
    "gregtech:plate_double_hssg",
    "gregtech:plate_double_soldering_alloy",
    "gregtech:plate_double_nickel",
    "gregtech:plate_double_flerovium",
    "gregtech:plate_double_platinum",
    "gregtech:plate_double_hassium",
    "gregtech:plate_double_enriched_naquadah_trinium_europium_duranide",
    "gregtech:plate_double_potin",
    "gregtech:plate_double_steel_magnetic",
    "gregtech:plate_double_molybdenum",
    "gregtech:plate_double_indium_tin_barium_titanium_cuprate",
    "gregtech:plate_double_gallium",
    "gregtech:plate_double_uranium_rhodium_dinaquadide",
    "gregtech:plate_double_tin_alloy",
    "gregtech:plate_double_sodium",
    "gregtech:plate_double_yttrium_barium_cuprate",
    "gregtech:plate_double_red_alloy",
    "gregtech:plate_double_einsteinium",
    "gregtech:plate_double_scandium",
    "gregtech:plate_double_strontium",
    "gregtech:plate_double_bismuth_bronze",
    "gregtech:plate_double_gold",
    "gregtech:plate_double_protactinium",
    "gregtech:plate_double_rhodium",
    "gregtech:plate_double_graphite",
    "gregtech:plate_double_ultimet",
    "gregtech:plate_double_yttrium",
    "gregtech:plate_double_potassium",
    "gregtech:plate_double_naquadah",
    "gregtech:plate_double_iron_magnetic",
    "gregtech:plate_double_fluxed_electrum",
    "gregtech:plate_double_stainless_steel",
    "gregtech:plate_double_magnalium",
    "gregtech:plate_double_plutonium",
    "gregtech:plate_double_annealed_copper",
    "gregtech:plate_double_magnesium",
    "gregtech:plate_double_cobalt",
    "gregtech:plate_double_nichrome",
    "gregtech:plate_double_neutronium",
    "gregtech:plate_double_palladium",
    "gregtech:plate_double_vanadium_gallium",
    "gregtech:plate_double_dubnium",
    "gregtech:plate_double_lead",
    "gregtech:plate_double_silver",
    "gregtech:plate_double_zinc",
    "gregtech:plate_double_cupronickel",
    "gregtech:plate_double_europium",
    "gregtech:plate_double_naquadria",
    "gregtech:plate_double_tellurium",
    "gregtech:plate_double_neptunium",
    "gregtech:plate_double_antimony",
    "gregtech:plate_double_bronze",
    "gregtech:plate_double_indium_gallium_phosphide",
    "gregtech:plate_double_aluminium",
    "gregtech:plate_double_ruthenium",
    "gregtech:plate_double_mendelevium",
    "gregtech:plate_double_osmium",
    "gregtech:plate_double_titanium",
    "gregtech:plate_double_americium",
    "gregtech:plate_double_hsss",
    "gregtech:plate_double_fermium",
    "gregtech:plate_double_tritanium",
    "gregtech:plate_double_beryllium",
    "gregtech:plate_double_rhenium",
    "gregtech:plate_double_rubidium",
    "gregtech:plate_double_rose_gold",
    "gregtech:plate_double_promethium",
    "gregtech:plate_double_californium",
    "gregtech:plate_double_barium",
    "gregtech:plate_double_sterling_silver",
    "gregtech:plate_double_rutherfordium",
    "gregtech:plate_double_lithium",
    "gregtech:plate_double_niobium_nitride",
    "gregtech:plate_double_ruridit",
    "gregtech:plate_double_praseodymium",
    "gregtech:plate_double_vanadium",
    "gregtech:plate_double_bismuth",
    "gregtech:plate_double_osmiridium",
    "gregtech:plate_double_iridium",
    "gregtech:plate_double_berkelium",
    "gregtech:plate_double_neodymium_magnetic",
    "gregtech:plate_double_tungsten",
    "gregtech:plate_double_ytterbium",
    "gregtech:plate_double_zirconium",
    "gregtech:plate_double_gallium_arsenide",
    "gregtech:plate_double_uranium235",
    "gregtech:plate_double_hsse",
    "gregtech:plate_double_samarium",
    "gregtech:plate_double_tungsten_steel",
    "gregtech:plate_double_tungsten_carbide",
    "gregtech:plate_double_cerium",
    "gregtech:plate_double_graphene",
    "gregtech:plate_double_nickel_zinc_ferrite",
    "gregtech:plate_double_curium",
    "gregtech:plate_double_electrum",
    "gregtech:plate_double_wrought_iron",
    "gregtech:plate_double_terbium",
    "gregtech:plate_double_niobium_titanium",
    "gregtech:plate_double_manganese",
    "gregtech:plate_double_silicon",
    "gregtech:plate_double_polyphenylene_sulfide",
    "gregtech:plate_double_vanadium_steel"
] as string[];
for item in GTDoublePlates{
    recipes.removeByRecipeName(item);
}