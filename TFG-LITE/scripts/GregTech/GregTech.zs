import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;
import mods.gregtech.TerminalRegistry;

// --- Массивы

val Diamonds = <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond>;

val Rubber_Trees = <tfc:wood/log/rubber_fig> | <tfc:wood/log/hevea>;

val ItemsToRemove as IItemStack[] = [
    <minecraft:paper> * 2,
    <gregtech:machine_casing:1>,
    <gregtech:metal_casing:1>,
    <gregtech:steam_casing:4>,
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
    <metaitem:energy_hatch.input.mv>,
    <metaitem:compressed.coke_clay>,
    <metaitem:steam_hammer_bronze>,
    <metaitem:steam_hammer_steel>,
    <metaitem:cover.solar.panel.ulv>,
    <metaitem:cover.solar.panel.lv>,
    <metaitem:cover.solar.panel.mv>,
    <metaitem:cover.solar.panel.hv>,
    <metaitem:cover.solar.panel.ev>,
    <metaitem:cover.solar.panel.iv>,
    <metaitem:cover.solar.panel.luv>,
    <metaitem:cover.solar.panel.zpm>,
    <metaitem:cover.solar.panel.uv>
];

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
    "gregtech:glass_pane",
    "gregtech:plank_to_wooden_shape",
    "gregtech:sticks_from_bundle_saw",
    "gregtech:gravel_to_flint",
    "gregtech:dust_bronze",
    "gregtech:bow",
    "gregtech:iron_horse_armor",
    "gregtech:gold_horse_armor",
    "gregtech:diamond_horse_armor",
    "gregtech:sadle",
    "gregtech:wooden_crate",
    "gregtech:painting",
    "gregtech:item_frame",
    "gregtech:tripwire_hook",
    "gregtech:jukebox",
    "gregtech:minecart",
    "gregtech:anvil",
    "gregtech:hopper",
    "gregtech:cauldron",
    "gregtech:light_weighted_pressure_plate",
    "gregtech:observer",
    "gregtech:observer_certus",
    "gregtech:observer_quartzite",
    "gregtech:dispenser",
    "gregtech:dropper",
    "gregtech:clipboard",
    "gregtech:coke_oven_hatch",
    "gregtech:cover_fluid_voiding",
    "gregtech:cover_item_voiding"
] as string[];

// --- Удаление рецептов

// Удаление рецептов
for item in ItemsToRemove {
    recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveItemRecipesByName {
    recipes.removeByRecipeName(item);
}

// Разбор бочки
macerator.findRecipe(2, [<metaitem:drum.wood>], null).remove();
arc_furnace.findRecipe(30, [<metaitem:drum.wood>], [<liquid:oxygen> * 59]).remove();

// Разбор ведра из синей стали
<recipemap:macerator>.findRecipe(2, [<minecraft:bucket:0>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<minecraft:bucket:0>], [<liquid:oxygen> * 56]).remove();


// Diamond Horse Armor -> 8x Diamond Dust
macerator.findRecipe(2, [<minecraft:diamond_horse_armor:0>], null).remove();
// Gold Horse Armor -> 8x Gold Dust
macerator.findRecipe(2, [<minecraft:golden_horse_armor:0>], null).remove();
// Gold Horse Armor -> 8x Gold Ingot
arc_furnace.findRecipe(30, [<minecraft:golden_horse_armor:0>], [<liquid:oxygen> * 196]).remove();

// Деревянный ящик
assembler.findRecipe(16, [<metaitem:plateWood> * 4, <metaitem:screwIron> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Чаровалка
macerator.findRecipe(2, [<minecraft:enchanting_table:0>], null).remove();

// Растительное масло
extractor.findRecipe(2, [<minecraft:beetroot_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:pumpkin_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:melon_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:wheat_seeds:0>], null).remove();

// Исправление дюпа палок
// cutter.findRecipe(7, [<tfc:stick_bundle:0>], [<liquid:lubricant>]).remove();

// Удаление базальта GT
furnace.remove(<gregtech:stone_smooth:3>);
extruder.findRecipe(8, [<gregtech:stone_cobble:3>, <metaitem:shape.extruder.block>], null).remove();
forge_hammer.findRecipe(4, [<gregtech:stone_smooth:3>], null).remove();
chemical_bath.findRecipe(16, [<gregtech:stone_cobble:3>], [<liquid:water> * 100]).remove();
furnace.remove(<gregtech:stone_polished:3>);
extruder.findRecipe(8, [<gregtech:stone_smooth:3>, <metaitem:shape.extruder.block>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.light_blue>], null).remove();
extruder.findRecipe(8, [<gregtech:stone_smooth:3>, <metaitem:shape.extruder.ingot>], null).remove();
forge_hammer.findRecipe(4, [<gregtech:stone_bricks:3>], null).remove();
chemical_bath.findRecipe(16, [<gregtech:stone_bricks:3>], [<liquid:water> * 100]).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:lensGlass>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.red>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_tiled:3>, <metaitem:glass_lens.red>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.pink>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.blue>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.yellow>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:3>, <metaitem:glass_lens.green>], null).remove();

// Удаление мрамора GT
furnace.remove(<gregtech:stone_smooth:2>);
extruder.findRecipe(8, [<gregtech:stone_cobble:2>, <metaitem:shape.extruder.block>], null).remove();
forge_hammer.findRecipe(4, [<gregtech:stone_smooth:2>], null).remove();
chemical_bath.findRecipe(16, [<gregtech:stone_cobble:2>], [<liquid:water> * 100]).remove();
furnace.remove(<gregtech:stone_polished:2>);
extruder.findRecipe(8, [<gregtech:stone_smooth:2>, <metaitem:shape.extruder.block>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.light_blue>], null).remove();
extruder.findRecipe(8, [<gregtech:stone_smooth:2>, <metaitem:shape.extruder.ingot>], null).remove();
forge_hammer.findRecipe(4, [<gregtech:stone_bricks:2>], null).remove();
chemical_bath.findRecipe(16, [<gregtech:stone_bricks:2>], [<liquid:water> * 100]).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:lensGlass>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.red>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_tiled:2>, <metaitem:glass_lens.red>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.pink>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.blue>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.yellow>], null).remove();
laser_engraver.findRecipe(16, [<gregtech:stone_polished:2>, <metaitem:glass_lens.green>], null).remove();

// Plant Ball
compressor.findRecipe(2, [<minecraft:cactus:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:reeds:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:wheat:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:brown_mushroom:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:carrot:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:beetroot:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:potato:0> * 8], null).remove();
compressor.findRecipe(2, [<minecraft:red_mushroom:0> * 8], null).remove();
centrifuge.findRecipe(30, [<minecraft:dirt:0>], null).remove();
centrifuge.findRecipe(30, [<minecraft:grass:0>], null).remove();

// Biomass
brewery.findRecipe(3, [<minecraft:cactus:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:reeds:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:carrot:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:brown_mushroom:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:red_mushroom:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:potato:0>], [<liquid:water> * 20]).remove();
brewery.findRecipe(3, [<minecraft:beetroot:0>], [<liquid:water> * 20]).remove();

// Glass
arc_furnace.findRecipe(30, [<minecraft:sand:0>], [<liquid:oxygen> * 20]).remove();

// Coke Oven Brick
alloy_smelter.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();

// Hevea -> Rubber
centrifuge.findRecipe(20, [<gregtech:rubber_log:0>], null).remove();

// Infinite Water Cover 
assembler.findRecipe(480, [<metaitem:electric.pump.hv> * 2, <minecraft:cauldron:0>, <metaitem:circuit.advanced_integrated>], null).remove();

// Voiding Cover (Fluid)
macerator.findRecipe(8, [<metaitem:cover.fluid.voiding>], null).remove();

// Voiding Cover (Item)
macerator.findRecipe(8, [<metaitem:cover.item.voiding>], null).remove();

// Fertilizer
mixer.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();

// Weird stone dust recipes
macerator.findRecipe(2, [<minecraft:stonebrick:0>], null).remove();
thermal_centrifuge.findRecipe(48, [<minecraft:cobblestone:0>], null).remove();
macerator.findRecipe(2, [<minecraft:furnace:0>], null).remove();
macerator.findRecipe(2, [<minecraft:cobblestone:0>], null).remove();
macerator.findRecipe(2, [<minecraft:cobblestone_wall:0>], null).remove();
macerator.findRecipe(2, [<minecraft:mossy_cobblestone:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_pressure_plate:0>], null).remove();

// Weird stone small dust recipes
macerator.findRecipe(2, [<minecraft:stone_slab:1>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_brick_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:red_sandstone_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:2>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:5>], null).remove();
macerator.findRecipe(2, [<minecraft:sandstone_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:3>], null).remove();

// Weird stone tiny dust recipes
macerator.findRecipe(2, [<minecraft:stone_button:0>], null).remove();

// Weird wood pulp recipes
macerator.findRecipe(2, [<minecraft:oak_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_pickaxe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_shovel:0>], null).remove();
macerator.findRecipe(2, [<minecraft:spruce_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_slab:0>], null).remove();
macerator.findRecipe(2, [<minecraft:acacia_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:dark_oak_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_axe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:birch_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_hoe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:jungle_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:wooden_sword:0>], null).remove();
macerator.findRecipe(2, [<minecraft:diamond_hoe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:diamond_sword:0>], null).remove();
macerator.findRecipe(2, [<minecraft:diamond_axe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:diamond_shovel:0>], null).remove();
macerator.findRecipe(2, [<minecraft:diamond_pickaxe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:iron_hoe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:iron_sword:0>], null).remove();
macerator.findRecipe(2, [<minecraft:iron_shovel:0>], null).remove();
macerator.findRecipe(2, [<minecraft:iron_pickaxe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:iron_axe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_sword:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_hoe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_pickaxe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_axe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_shovel:0>], null).remove();
macerator.findRecipe(2, [<minecraft:golden_sword:0>], null).remove();
macerator.findRecipe(2, [<minecraft:golden_shovel:0>], null).remove();
macerator.findRecipe(2, [<minecraft:golden_axe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:golden_hoe:0>], null).remove();
macerator.findRecipe(2, [<minecraft:golden_pickaxe:0>], null).remove();

// Weird dye recipes
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

// Remove Ender Air
gas_collector.findRecipe(256, [<metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();
centrifuge.findRecipe(480, null, [<liquid:ender_air> * 10000]).remove();
vacuum_freezer.findRecipe(7680, null, [<liquid:ender_air> * 4000]).remove();
distillation_tower.findRecipe(7680, null, [<liquid:liquid_ender_air> * 200000]).remove();

// Stone Dup
rock_breaker.findRecipe(7, [<minecraft:stone>], null).remove();
rock_breaker.findRecipe(7, [<minecraft:cobblestone>], null).remove();

// Nether Dust decomp
centrifuge.findRecipe(20, [<metaitem:dustNetherrack>], null).remove();

// --- Добавление рецептов

// Регистрация металлов
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeCopper>, "COPPER", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBismuthBronze>, "BISMUTH_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBronze>, "BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlackBronze>, "BLACK_BRONZE", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeWroughtIron>, "WROUGHT_IRON", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeSteel>, "STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlackSteel>, "BLACK_STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeRedSteel>, "RED_STEEL", 144, true);
ItemRegistry.registerItemMetal(<metaitem:toolHeadKnifeBlueSteel>, "BLUE_STEEL", 144, true);

// Люк коксовой печи
recipes.addShapeless("tfg/gregtech/coke_oven_hatch", <metaitem:coke_oven_hatch>, [<gregtech:metal_casing:8>, <ore:barrel>]);

// Контроллер теплицы
recipes.addShaped("tfg/gregtech/greenhouse_controller", <metaitem:multiblocktweaker:greenhouse>, [
  [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
  [<ore:circuitMv>, <metaitem:hull.mv>, <ore:circuitMv>],
  [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]]);

// Контроллер распилки
recipes.addShaped("tfg/gregtech/saw_mill_controller", <metaitem:multiblocktweaker:saw_mill>, [
    [<ore:screwSteel>, <ore:toolHeadBuzzSawSteel>, <ore:screwSteel>],
    [<metaitem:electric.motor.mv>, <metaitem:hull.mv>, <metaitem:electric.motor.mv>],
    [<ore:circuitMv>, <metaitem:conveyor.module.mv>, <ore:circuitMv>]]);

// Бронзовый паровой молот
recipes.addShaped("tfg/gregtech/bronze_forge_hammer", <metaitem:steam_hammer_bronze>, [
    [<ore:pipeSmallFluidBronze>, <ore:craftingPiston>, <ore:pipeSmallFluidBronze>],
    [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
    [<ore:pipeSmallFluidBronze>, <tfc:metal/anvil/wrought_iron>, <ore:pipeSmallFluidBronze>]]);

// Стальной паровой молот
recipes.addShaped("tfg/gregtech/steam_forge_hammer", <metaitem:steam_hammer_steel>, [
    [<ore:pipeSmallFluidSteel>, <ore:craftingPiston>, <ore:pipeSmallFluidSteel>],
    [<ore:pipeSmallFluidSteel>, <gregtech:steam_casing:2>, <ore:pipeSmallFluidSteel>],
    [<ore:pipeSmallFluidSteel>, <tfc:metal/anvil/steel>, <ore:pipeSmallFluidSteel>]]);

// Скомпрессированная глина
recipes.addShaped("tfg/gregtech/compressed_coke_clay", <metaitem:compressed.coke_clay> * 3, [
    [<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>],
    [<ore:sand>, <gregtech:meta_item_1:348>, <ore:sand>],
    [<ore:sand>, <ore:sand>, <ore:sand>]]);

// Деревянная форма
recipes.addShaped("tfg/gregtech/wooden_form", <metaitem:wooden_form.empty>, [
    [null, <ore:lumber>, null],
    [null, <ore:lumber>, null],
    [<ore:gtce.tool.saws>, <ore:lumber>, null]]);

// Бронзовый малый бойлер
recipes.addShaped("tfg/gregtech/small_steam_coal_boiler", <metaitem:steam_boiler_coal_bronze>, [
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:gtce.tool.wrenches>, <ore:plateBronze>],
    [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// Стальной малый бойлер
recipes.addShaped("tfg/gregtech/high_pressure_coal_boiler", <metaitem:steam_boiler_coal_steel>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>],
    [<minecraft:brick_block>, <tfc:blast_furnace>, <minecraft:brick_block>]]);

// Бронзовая паровая печь
recipes.addShaped("tfg/gregtech/steam_furnace", <metaitem:steam_furnace_bronze>, [
    [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>],
    [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing:1>,<ore:pipeSmallFluidBronze>],
    [<ore:pipeSmallFluidBronze>, <tfc:blast_furnace>, <ore:pipeSmallFluidBronze>]]);

// Бронзовый паровой сплавщик
recipes.addShaped("tfg/gregtech/steam_alloy_smelter", <metaitem:steam_alloy_smelter_bronze>, [
    [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>],
    [<tfc:blast_furnace>, <gregtech:steam_casing:1>, <tfc:blast_furnace>],
    [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidBronze>]]);

// Доменная печь
recipes.addShaped("tfg/gregtech/ebf", <metaitem:electric_blast_furnace>, [
    [<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
    [<ore:circuitLv>, <gregtech:metal_casing:2>, <ore:circuitLv>],
    [<ore:cableGtSingleTin>, <ore:circuitLv>, <ore:cableGtSingleTin>]]);

// Мульти-печь
recipes.addShaped("tfg/gregtech/multi_smelter", <metaitem:multi_furnace>, [
    [<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>],
    [<ore:circuitHv>, <gregtech:metal_casing:2>, <ore:circuitHv>],
    [<ore:cableGtSingleAnnealedCopper>, <ore:circuitHv>, <ore:cableGtSingleAnnealedCopper>]]);

// Стацния создания
recipes.addShaped("tfg/gregtech/crafting_station", <metaitem:workbench>, [
    [<ore:chestWood>, <ore:slabWood>, <ore:chestWood>],
    [<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:gtce.tool.saws>, <ore:plankWood>]]);

// LV Корпус машины
recipes.addShaped("tfg/gregtech/lv_machine_casing", <gregtech:machine_casing:1>, [
    [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>],
    [<ore:plateBlueSteel>, <ore:gtce.tool.wrenches>, <ore:plateBlueSteel>],
    [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);

// Primitive water pump deck
recipes.addShaped("tfg/gregtech/primitive_water_pump_deck", <gregtech:steam_casing:4> * 2, [
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>],
    [<ore:gtce.tool.screwdrivers>, <ore:slabCobblestone>, <ore:gtce.tool.hard.hammers>]]);

// Primitive water pump hatch
recipes.addShaped("tfg/gregtech/primitive_water_pump_hatch", <metaitem:pump_hatch>, [
    [<ore:screwIronAny>, <ore:ringIronAny>, <ore:gtce.tool.screwdrivers>],
    [<ore:plankWood>, <ore:pipeLargeFluidWood>, <ore:plankWood>],
    [<ore:slabCobblestone>, <ore:ringIronAny>, <ore:slabCobblestone>]]);

// Primitive water pump
recipes.addShaped("tfg/gregtech/primitive_water_pump", <metaitem:primitive_water_pump>, [
    [<ore:ringIronAny>, <ore:pipeNormalFluidWood>, <ore:screwIronAny>],
    [<ore:rotorIronAny>, <ore:plankWood>, <ore:gtce.tool.screwdrivers>],
    [<ore:slabCobblestone>, <ore:pipeLargeFluidWood>, <ore:slabCobblestone>]]);

// Coke Oven
recipes.addShaped("tfg/gregtech/coke_oven", <metaitem:coke_oven>, [
    [<gregtech:metal_casing:8>, <ore:plateIronAny>, <gregtech:metal_casing:8>],
    [<ore:plateIronAny>, <ore:gtce.tool.wrenches>, <ore:plateIronAny>],
    [<gregtech:metal_casing:8>, <ore:plateIronAny>, <gregtech:metal_casing:8>]]);

// Steam Miner
recipes.addShaped("tfg/gregtech/steam_miner", <metaitem:steam_miner>, [
    [Diamonds, <ore:pipeSmallFluidBronze>, Diamonds],
    [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
    [<ore:craftingPiston>, <ore:pipeSmallFluidBronze>, <ore:craftingPiston>]]);

// Steam Macerator
recipes.addShaped("tfg/gregtech/steam_macerator", <metaitem:steam_macerator_bronze>, [
    [Diamonds, <ore:pipeNormalFluidBronze>, Diamonds],
    [<ore:pipeNormalFluidBronze>, <gregtech:steam_casing>, <ore:pipeNormalFluidBronze>],
    [<ore:gearSmallBronze>, <ore:pipeNormalFluidBronze>, <ore:gearSmallBronze>]]);

// Steam Rock Breaker
recipes.addShaped("tfg/gregtech/steam_rick_breaker", <metaitem:steam_rock_breaker_bronze>, [
    [<ore:craftingPiston>, <ore:pipeSmallFluidBronze>, <ore:craftingPiston>],
    [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
    [Diamonds, <ore:pipeSmallFluidBronze>, Diamonds]]);

// Firebrick GT
recipes.addShaped("tfg/gregtech/fire_bricks", <gregtech:metal_casing:1>, [
    [null, <ore:plateCopper>, null],
    [<ore:plateCopper>, <tfc:fire_bricks>, <ore:plateCopper>],
    [null, <ore:plateCopper>, null]]);

// Quartz Sand - 1
recipes.addShaped("tfg/gregtech/quartz_sand", <metaitem:dustQuartzSand>, [
    [null, <ore:sand>, null],
    [null, <ore:gtce.tool.mortars>, null],
    [null, null, null]]);

// Steam Import Bus
recipes.addShaped("tfg/gregtech/steam_import_bus", <metaitem:steam_import_bus>, [
    [null, <ore:chest>, null],
    [null, <gregtech:steam_casing>, null],
    [null, null, null]]);

// Steam Export Bus
recipes.addShaped("tfg/gregtech/steam_export_bus", <metaitem:steam_export_bus>, [
    [null, <gregtech:steam_casing>, null],
    [null, <ore:chest>, null],
    [null, null, null]]);

// Wooden Crate
recipes.addShaped("tfg/gregtech/wooden_crate", <metaitem:crate.wood>, [
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>],
    [<ore:plankWood>, <ore:gtce.tool.saws>, <ore:plankWood>],
    [<ore:screwIronAny>, <ore:plankWood>, <ore:screwIronAny>]]);

// Блокнот
recipes.addShaped("tfg/gregtech/clipboard", <metaitem:clipboard>, [
    [null, <ore:screwIronAny>, <ore:gtce.tool.screwdrivers>],
    [<ore:boltIronAny>, <metaitem:plateWood>, <ore:boltIronAny>],
    [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Лук
recipes.addShaped(<minecraft:bow>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:stickLongWood>, <ore:string>],
    [<metaitem:stickLongWood>, <ore:ringIronAny>, <ore:string>],
    [<ore:gtce.tool.files>, <metaitem:stickLongWood>, <ore:string>]]);

// Чаровалка
macerator.recipeBuilder()
    .inputs(<minecraft:enchanting_table>)
    .outputs(<metaitem:dustPaper> * 9, <metaitem:dustObsidian> * 3)
    .duration(135).EUt(2).buildAndRegister();

// Extruder Shape (Sense Head)

recipes.addShaped(<contenttweaker:shape_extruder_sense>, [
    [null, null, null],
    [<ore:gtce.tool.hard.hammers>, <metaitem:shape.extruder.plate>, null],
    [null, null, null]]);

forming_press.recipeBuilder()
    .inputs(<metaitem:shape.empty>)
    .notConsumable(<contenttweaker:shape_extruder_sense>)
    .outputs(<contenttweaker:shape_extruder_sense>)
    .duration(120).EUt(22).buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:shape_extruder_sense>)
    .outputs(<metaitem:dustSteel> * 4)
    .duration(56).EUt(8).buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs(<contenttweaker:shape_extruder_sense>)
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotSteel> * 4)
    .duration(56).EUt(30).buildAndRegister();

// Mold (Knife Head)

recipes.addShaped(<contenttweaker:shape_mold_knife>, [
    [null, null, null],
    [<ore:craftingToolHardHammer>, <metaitem:shape.empty>, null],
    [null, null, null]]);

forming_press.recipeBuilder()
    .inputs(<metaitem:shape.empty>)
    .notConsumable(<contenttweaker:shape_mold_knife>)
    .outputs(<contenttweaker:shape_mold_knife>)
    .duration(120).EUt(22).buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:shape_mold_knife>)
    .outputs(<metaitem:dustSteel> * 4)
    .duration(56).EUt(8).buildAndRegister();

arc_furnace.recipeBuilder()
    .inputs(<contenttweaker:shape_mold_knife>)
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotSteel> * 4)
    .duration(56).EUt(30).buildAndRegister();

// Растительное масло
extractor.recipeBuilder()
    .inputs(<ore:listAllSeeds>)
    .fluidOutputs(<liquid:seed_oil> * 10).EUt(2).duration(32).buildAndRegister();

// Контроллер звездной кузни
assembly_line.recipeBuilder()
    .inputs([
      <ore:batteryIv> * 4,  
      <ore:circuitIv> * 9, 
      <metaitem:robot.arm.iv> * 14, 
      <metaitem:tool.dataorb> * 4, 
      <gcym:unique_casing:4> * 5, 
      <metaitem:conveyor.module.ev> * 3, 
      <metaitem:conveyor.module.ev> * 3, 
      <ore:plateDoubleNaquadah> * 3, 
      <ore:plateDoubleNaquadah> * 3
      ])
    .fluidInputs(<liquid:molten.titanium_carbide> * 6864, <liquid:molten.hssg> * 4432)
    .outputs(<metaitem:multiblocktweaker:star_forge>)
    .duration(1300).EUt(8100).buildAndRegister();

// Solar Panel (ULV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel> * 8,
        <minecraft:daylight_detector> * 8,
        <ore:circuitUlv> * 4,
        <metaitem:plate.ultra_low_power_integrated_circuit> * 4,
        <minecraft:glass>,
        <metaitem:transformer.ulv>
        ])
    .fluidInputs(<liquid:silicon> * 2304)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<metaitem:cover.solar.panel.ulv>])
    .duration(20).EUt(30720).buildAndRegister();

// Solar Panel (LV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.ulv> * 4,
        <metaitem:sensor.lv> * 8,
        <metaitem:circuit.electronic> * 4,
        <metaitem:plate.ultra_low_power_integrated_circuit> * 16,
        <appliedenergistics2:quartz_glass>,
        <metaitem:transformer.lv>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs([<metaitem:cover.solar.panel.lv>])
    .duration(40).EUt(30720).buildAndRegister();

// Solar Panel (MV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.lv> * 4,
        <metaitem:sensor.mv> * 8,
        <metaitem:circuit.good_electronic> * 4,
        <metaitem:plate.low_power_integrated_circuit> * 4,
        <appliedenergistics2:quartz_vibrant_glass>,
        <metaitem:transformer.mv>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs([<metaitem:cover.solar.panel.mv>])
    .duration(80).EUt(30720).buildAndRegister();

// Solar Panel (HV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.mv> * 4,
        <metaitem:sensor.hv> * 8,
        <metaitem:circuit.advanced_integrated> * 4,
        <metaitem:plate.low_power_integrated_circuit> * 16,
        <appliedenergistics2:quartz_vibrant_glass>,
        <metaitem:transformer.hv>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs([<metaitem:cover.solar.panel.hv>])
    .duration(160).EUt(30720).buildAndRegister();

// Solar Panel (EV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.hv> * 4,
        <metaitem:sensor.ev> * 8,
        <metaitem:circuit.workstation> * 4,
        <metaitem:plate.power_integrated_circuit> * 4,
        <gregtech:transparent_casing>,
        <metaitem:transformer.ev>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs([<metaitem:cover.solar.panel.ev>])
    .duration(320).EUt(30720).buildAndRegister();

// Solar Panel (IV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.ev> * 4,
        <metaitem:sensor.iv> * 8,
        <metaitem:circuit.mainframe> * 4,
        <metaitem:plate.power_integrated_circuit> * 16,
        <gregtech:transparent_casing>,
        <metaitem:transformer.iv>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 4608)
    .outputs([<metaitem:cover.solar.panel.iv>])
    .duration(640).EUt(30720).buildAndRegister();

// Solar Panel (LuV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.iv> * 4,
        <metaitem:sensor.luv> * 8,
        <metaitem:circuit.nano_mainframe> * 4,
        <metaitem:plate.high_power_integrated_circuit> * 8,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.luv>
    ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 9216)
    .outputs([<metaitem:cover.solar.panel.luv>])
    .duration(1280).EUt(30720).buildAndRegister();

// Solar Panel (ZPM)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.luv> * 4,
        <metaitem:sensor.zpm> * 8,
        <metaitem:circuit.quantum_mainframe> * 4,
        <metaitem:plate.high_power_integrated_circuit> * 32,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.zpm>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<metaitem:cover.solar.panel.zpm>])
    .duration(2560).EUt(122880).buildAndRegister();

// Solar Panel (UV)
assembly_line.recipeBuilder()
    .inputs([
        <metaitem:cover.solar.panel.zpm> * 4,
        <metaitem:sensor.uv> * 8,
        <metaitem:circuit.crystal_mainframe> * 4,
        <metaitem:plate.ultra_high_power_integrated_circuit> * 64,
        <gregtech:transparent_casing:1>,
        <metaitem:transformer.uv>
        ])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 36864)
    .outputs([<metaitem:cover.solar.panel.uv>])
    .duration(5120).EUt(491520).buildAndRegister();

// Dry Ice -> Carbon + Oxygen
electrolyzer.recipeBuilder()
    .fluidInputs([<liquid:dry_ice> * 1000])
    .fluidOutputs([<liquid:oxygen> * 2000])
    .outputs([<metaitem:dustCarbon>])
    .duration(200).EUt(7680).buildAndRegister();

// Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([<ore:dustDiamond>, <ore:dustIridium>])
    .fluidInputs([<liquid:mars_air> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200).EUt(7680).buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs([<ore:dustDiamond> * 2, <ore:dustIridium> * 2])
    .fluidInputs([<liquid:sulfur_dioxide> * 6000, <liquid:carbon_monoxide> * 8000, <liquid:rocket_fuel> * 1000])
    .outputs([<metaitem:dustNetherStar> * 1])
    .duration(700).EUt(2000).buildAndRegister(); 

// Ступка + Гравий -> Кремений
recipes.addShapeless (<minecraft:flint>, [<ore:gtce.tool.mortars>, <ore:gravel>]);

// Бронзовая пыль в TFC стиле
recipes.addShapeless(<metaitem:dustBronze> * 9, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

// Исправление рецепта на бумагу

// Крафт бумажной пыли
    recipes.addShaped(<metaitem:dustPaper> * 2,
    [[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
    [null, <ore:gtce.tool.mortars>, null]]);

// Крафт бумаги из пыли
recipes.addShaped(<ore:paper>.firstItem * 2,
    [[null, <ore:slabStonePolished>.reuse(), null],
    [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>],
    [null, <ore:slabStonePolished>.reuse(), null]]);

// Plant Ball Recipes

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

// Biomass Recipes

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

// Glass
arc_furnace.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<minecraft:glass> * 2)
    .duration(175).EUt(7).buildAndRegister();

// Coke Oven Bricks
alloy_smelter.recipeBuilder()
    .inputs([<ore:sand>, <minecraft:clay_ball:0>])
    .outputs(<metaitem:brick.coke> * 2)
    .duration(175).EUt(7).buildAndRegister();

// Hevea -> Rubber
centrifuge.recipeBuilder()
    .inputs(Rubber_Trees)
    .chancedOutput(<metaitem:dustCarbon>, 2500, 600)
    .chancedOutput(<metaitem:dustWood>, 2500, 700)
    .chancedOutput(<metaitem:plant_ball>, 3750, 900)
    .chancedOutput(<metaitem:rubber_drop>, 5000, 1200)
    .fluidOutputs(<fluid:methane> * 65)
    .duration(200).EUt(20).buildAndRegister();

// Лава из незерака
extractor.recipeBuilder()
    .inputs(<ore:netherrack>)
    .fluidOutputs(<fluid:lava> * 250)
    .duration(330).EUt(140).buildAndRegister();
	
// Лава из магма блока
extractor.recipeBuilder()
    .inputs(<minecraft:magma>)
    .fluidOutputs(<fluid:lava> * 750)
    .duration(220).EUt(140).buildAndRegister();

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
assembler.recipeBuilder()
    .inputs(<metaitem:electric.pump.iv> * 2, <minecraft:cauldron:0>, <ore:circuitIv> * 2, <minecraft:ender_pearl> * 2, <metaitem:emitter.iv>)
    .outputs(<metaitem:cover.infinite_water>)
    .duration(200).EUt(3280).buildAndRegister();

// Fertilizer
mixer.recipeBuilder()
	.inputs(<ore:sand> * 4,<ore:dustWood> * 2, <ore:dirt>)
    .fluidInputs(<liquid:water> * 1000)
	.outputs(<metaitem:fertilizer>)
	.duration(100).EUt(30).buildAndRegister();

// Деревянный ящик
assembler.recipeBuilder()
    .inputs(<ore:screwIronAny> * 4, <ore:plankWood> * 4)
    .circuit(1)
    .outputs(<metaitem:crate.wood>)
    .duration(100).EUt(16).buildAndRegister();

// Разбор ведра из синей стали
arc_furnace.recipeBuilder()
    .inputs([<minecraft:bucket:0>])
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotBlueSteel> * 3)
    .duration(56).EUt(30).buildAndRegister();
macerator.recipeBuilder()
    .inputs(<minecraft:bucket:0>)
    .outputs(<metaitem:dustBlueSteel> * 3)
    .duration(56).EUt(2).buildAndRegister();

// Разбор ведра из кованого стали
arc_furnace.recipeBuilder()
    .inputs([<tfc:metal/bucket/red_steel>])
    .fluidInputs(<liquid:oxygen> * 56)
    .outputs(<metaitem:ingotWroughtIron> * 3)
    .duration(56).EUt(30).buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:metal/bucket/red_steel>)
    .outputs(<metaitem:dustWroughtIron> * 3)
    .duration(56).EUt(2).buildAndRegister();

// Телепорт
TerminalRegistry.registerDevice(<charset:icon>, "disabled");
TerminalRegistry.createAppRegistryBuilder("teleport")
    .isDefaultApp(false)
    .device(0, "disabled")
    .upgrade(<charset:icon>)
    .build();