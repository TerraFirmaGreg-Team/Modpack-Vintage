#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	// Marble and Basalt
	<gregtech:stone_tiled_small:2>,
	<gregtech:stone_bricks_small:2>,
	<gregtech:stone_windmill_a:2>,
	<gregtech:stone_windmill_b:2>,
	<gregtech:stone_bricks_square:2>,
	<gregtech:stone_smooth:3>,
	<gregtech:stone_cobble:3>,
	<gregtech:stone_cobble_mossy:3>,
	<gregtech:stone_polished:3>,
	<gregtech:stone_bricks:3>,
	<gregtech:stone_bricks_cracked:3>,
	<gregtech:stone_bricks_mossy:3>,
	<gregtech:stone_chiseled:3>,
	<gregtech:stone_tiled:3>,
	<gregtech:stone_tiled_small:3>,
	<gregtech:stone_bricks_small:3>,
	<gregtech:stone_windmill_a:3>,
	<gregtech:stone_windmill_b:3>,
	<gregtech:stone_bricks_square:3>,
	<gregtech:stone_smooth:2>,
	<gregtech:stone_cobble:2>,
	<gregtech:stone_cobble_mossy:2>,
	<gregtech:stone_polished:2>,
	<gregtech:stone_bricks:2>,
	<gregtech:stone_bricks_cracked:2>,
	<gregtech:stone_bricks_mossy:2>,
	<gregtech:stone_chiseled:2>,
	<gregtech:stone_tiled:2>,
	// Tools
	/*
	<metaitem:toolHeadSwordFlint>,
	<metaitem:toolHeadPickaxeFlint>,
	<metaitem:toolHeadShovelFlint>,
	<metaitem:toolHeadAxeFlint>,
	<metaitem:toolHeadHoeFlint>,
	<metaitem:toolHeadHammerFlint>,
	<metaitem:toolHeadFileFlint>,
	<metaitem:toolHeadSawFlint>,
	<metaitem:toolHeadSenseFlint>,
	*/
	// Rubber Stuff
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
	<metaitem:dustTinyFireclay>,
	// Wooden Barrel
	<metaitem:drum.wood>,
	// Nether dust
	<metaitem:dustNetherrack>,
	<metaitem:dustSmallNetherrack>,
	<metaitem:dustTinyNetherrack>
];

val RemoveRecipe as IItemStack[] = [
   <minecraft:paper> * 2,
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
   <metaitem:cover.solar.panel.uv>,
   <metaitem:passthrough_hatch_item>
];

val RemoveRecipesByName = [
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

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipe {
   recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveRecipesByName {
   recipes.removeByRecipeName(item);
}

// Разбор бочки
// macerator.findRecipe(2, [<metaitem:drum.wood>], null).remove();
// arc_furnace.findRecipe(30, [<metaitem:drum.wood>], [<liquid:oxygen> * 59]).remove();

// Разбор ведра из синей стали
macerator.findRecipe(2, [<minecraft:bucket:0>], null).remove();
// arc_furnace.findRecipe(30, [<minecraft:bucket:0>], [<liquid:oxygen> * 56]).remove();

// Diamond Horse Armor -> 8x Diamond Dust
macerator.findRecipe(2, [<minecraft:diamond_horse_armor:0>], null).remove();
// Gold Horse Armor -> 8x Gold Dust
macerator.findRecipe(2, [<minecraft:golden_horse_armor:0>], null).remove();
// Gold Horse Armor -> 8x Gold Ingot
//arc_furnace.findRecipe(30, [<minecraft:golden_horse_armor:0>], [<liquid:oxygen> * 196]).remove();

// Деревянный ящик
//assembler.findRecipe(16, [<metaitem:plateWood> * 4, <metaitem:screwIron> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

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

// Нефтеностный песок
// centrifuge.findRecipe(5, [<minecraft:sand:0>], [<liquid:oil> * 500]).remove();

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
