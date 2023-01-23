#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveAndHide as IItemStack[] = [
   // Blocks
   <minecraft:stone>,
   <minecraft:grass>,
   <minecraft:gravel>,
   <minecraft:dirt>,
   <minecraft:dirt:1>,
   <minecraft:dirt:2>,
   <minecraft:cobblestone>,
   <minecraft:sand>,
   <minecraft:sand:1>,
   <minecraft:stonebrick>,
   <minecraft:stonebrick:1>,
   <minecraft:stonebrick:2>,
   <minecraft:stonebrick:3>,
   <minecraft:mossy_cobblestone>,
   <minecraft:bookshelf>,
   <minecraft:sandstone>,
   <minecraft:sandstone:1>,
   <minecraft:sandstone:2>,
   <minecraft:red_sandstone>,
   <minecraft:red_sandstone:1>,
   <minecraft:red_sandstone:2>,
   // Logs
   <minecraft:log:*>,
   <minecraft:log2:*>,
   // Planks
   <minecraft:planks:*>,
   // Slabs
   <minecraft:wooden_slab:*>,
   <minecraft:stone_slab>,
   <minecraft:stone_slab:1>,
   <minecraft:stone_slab:3>,
   <minecraft:stone_slab:5>,
   <minecraft:stone_slab2>,
   // Stairs
   <minecraft:oak_stairs>,
   <minecraft:spruce_stairs>,
   <minecraft:birch_stairs>,
   <minecraft:jungle_stairs>,
   <minecraft:acacia_stairs>,
   <minecraft:dark_oak_stairs>,
   <minecraft:sandstone_stairs>,
   <minecraft:stone_brick_stairs>,
   <minecraft:stone_stairs>,
   <minecraft:red_sandstone_stairs>,
   // Doors
   <minecraft:wooden_door>,
   <minecraft:spruce_door>,
   <minecraft:birch_door>,
   <minecraft:jungle_door>,
   <minecraft:acacia_door>,
   <minecraft:dark_oak_door>,
   // Fence Gates
   <minecraft:fence_gate>,
   <minecraft:spruce_fence_gate>,
   <minecraft:birch_fence_gate>,
   <minecraft:jungle_fence_gate>,
   <minecraft:dark_oak_fence_gate>,
   <minecraft:acacia_fence_gate>,
   // Gates
   <minecraft:fence>,
   <minecraft:spruce_fence>,
   <minecraft:birch_fence>,
   <minecraft:jungle_fence>,
   <minecraft:dark_oak_fence>,
   <minecraft:acacia_fence>,
   // Ores
   <minecraft:gold_ore>,
   <minecraft:iron_ore>,
   <minecraft:coal_ore>,
   <minecraft:lapis_ore>,
   <minecraft:diamond_ore>,
   <minecraft:redstone_ore>,
   <minecraft:emerald_ore>,
   <minecraft:quartz_ore>,
   // Food
   <minecraft:apple>,
   <minecraft:bread>,
   <minecraft:porkchop>,
   <minecraft:cooked_porkchop>,
   <minecraft:fish>,
   <minecraft:fish:1>,
   <minecraft:fish:2>,
   <minecraft:fish:3>,
   <minecraft:cooked_fish>,
   <minecraft:cooked_fish:1>,
   <minecraft:cake>,
   <minecraft:cookie>,
   <minecraft:melon>,
   <minecraft:beef>,
   <minecraft:cooked_beef>,
   <minecraft:chicken>,
   <minecraft:cooked_chicken>,
   <minecraft:carrot>,
   <minecraft:potato>,
   <minecraft:baked_potato>,
   <minecraft:poisonous_potato>,
   <minecraft:pumpkin_pie>,
   <minecraft:rabbit>,
   <minecraft:cooked_rabbit>,
   <minecraft:mutton>,
   <minecraft:cooked_mutton>,
   <minecraft:beetroot>,
   <minecraft:double_plant:2>,
   // Tools
   <minecraft:diamond_pickaxe>,
   <minecraft:golden_pickaxe>,
   <minecraft:iron_pickaxe>,
   <minecraft:diamond_shovel>,
   <minecraft:golden_shovel>,
   <minecraft:iron_shovel>,
   <minecraft:diamond_sword>,
   <minecraft:golden_sword>,
   <minecraft:iron_sword>,
   <minecraft:diamond_axe>,
   <minecraft:golden_axe>,
   <minecraft:iron_axe>,
   <minecraft:iron_hoe>,
   <minecraft:diamond_hoe>,
   <minecraft:golden_hoe>,
   <minecraft:wooden_sword>,
   <minecraft:wooden_pickaxe>,
   <minecraft:wooden_axe>,
   <minecraft:wooden_shovel>,
   <minecraft:wooden_hoe>,
   <minecraft:stone_sword>,
   <minecraft:stone_pickaxe>,
   <minecraft:stone_axe>,
   <minecraft:stone_shovel>,
   <minecraft:stone_hoe>,
   <minecraft:shears>,
   // Armor
   <minecraft:diamond_leggings>,
   <minecraft:diamond_boots>,
   <minecraft:diamond_chestplate>,
   <minecraft:diamond_helmet>,
   <minecraft:golden_helmet>,
   <minecraft:golden_chestplate>,
   <minecraft:golden_leggings>,
   <minecraft:golden_boots>,
   <minecraft:iron_helmet>,
   <minecraft:iron_chestplate>,
   <minecraft:iron_leggings>,
   <minecraft:iron_boots>,
   <minecraft:chainmail_helmet>,
   <minecraft:chainmail_chestplate>,
   <minecraft:chainmail_leggings>,
   <minecraft:chainmail_boots>,
   // Boats
   <minecraft:boat>,
   <minecraft:spruce_boat>,
   <minecraft:birch_boat>,
   <minecraft:jungle_boat>,
   <minecraft:acacia_boat>,
   <minecraft:dark_oak_boat>,
   // Nether
   <minecraft:nether_wart>,
   <minecraft:netherrack>,
   <minecraft:nether_brick>,
   <minecraft:nether_brick_stairs>,
   <minecraft:stone_slab:6>,
   <minecraft:nether_wart_block>,
   <minecraft:red_nether_brick>,
   <minecraft:nether_brick_fence>,
   <minecraft:netherbrick>,
   // End
   <minecraft:white_shulker_box>,
   <minecraft:orange_shulker_box>,
   <minecraft:magenta_shulker_box>,
   <minecraft:light_blue_shulker_box>,
   <minecraft:yellow_shulker_box>,
   <minecraft:lime_shulker_box>,
   <minecraft:pink_shulker_box>,
   <minecraft:gray_shulker_box>,
   <minecraft:silver_shulker_box>,
   <minecraft:cyan_shulker_box>,
   <minecraft:purple_shulker_box>,
   <minecraft:blue_shulker_box>,
   <minecraft:brown_shulker_box>,
   <minecraft:green_shulker_box>,
   <minecraft:red_shulker_box>,
   <minecraft:black_shulker_box>,
   // Other
   <minecraft:crafting_table>,
   <minecraft:furnace>,
   <minecraft:chest>,
   <minecraft:trapped_chest>,
   <minecraft:stone_pressure_plate>,
   <minecraft:wooden_pressure_plate>,
   <minecraft:wooden_button>,
   <minecraft:stone_button>,
   <minecraft:trapdoor>,
   <minecraft:reeds>,
   <minecraft:book>,
   <minecraft:vine>,
   <minecraft:waterlily>,
   <minecraft:golden_horse_armor>,
   <minecraft:diamond_horse_armor>,
   <minecraft:iron_trapdoor>
];

val RemoveRecipe as IItemStack[] = [
   <minecraft:leather_helmet>,
   <minecraft:leather_chestplate>,
   <minecraft:leather_leggings>,
   <minecraft:leather_boots>,
   <minecraft:bucket>,
   <minecraft:enchanting_table>,
   <minecraft:name_tag>,
   <minecraft:daylight_detector>,
   <minecraft:comparator>
];

val RemoveRecipesByName = [
   "minecraft:stone_pressure_plate",
   "minecraft:light_weighted_pressure_plate",
   "minecraft:bone_meal_from_bone",
   "minecraft:iron_door",
   "minecraft:tripwire_hook",
   "minecraft:stick",
   "minecraft:diamond_block",
   "minecraft:sign"
] as string[];

val RemoveRecipeFurnace as IItemStack[] = [
   <minecraft:dye:2>,
   <minecraft:stone>,
   <minecraft:gold_nugget>,
   <minecraft:netherbrick>
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

// Удаление рецептов
for item in RemoveRecipe{
   recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveRecipesByName{
   recipes.removeByRecipeName(item);
}

// Удаление рецептов печи
for item in RemoveRecipeFurnace {
   furnace.remove(item);
}

// Удаление рецептов печи по паттерну
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:diamond>, <minecraft:diamond_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);

// Верстак
assembler.findRecipe(6, [<ore:logWood>.firstItem, <minecraft:flint>], null).remove();

// Печь
assembler.findRecipe(7, [<ore:stoneCobble>.firstItem * 8, <minecraft:flint>, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

// Деревянная нажимная плита
assembler.findRecipe(7, [<ore:plankWood>.firstItem * 2, <ore:springIron>.firstItem], null).remove();

// Каменная нажимная плита
assembler.findRecipe(7, [<minecraft:stone_slab> * 2, <ore:springIron>.firstItem], null).remove();

// Деревянный люк
assembler.findRecipe(4, [<ore:plankWood>.firstItem * 3, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Железный люк
assembler.findRecipe(16, [<ore:plateIron>.firstItem * 4, <minecraft:trapdoor>], null).remove();

// Сноп сена
packer.findRecipe(2, [<minecraft:wheat> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// Сундук
assembler.findRecipe(4, [<metaitem:plateWood> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

// Земля с гравием
mixer.findRecipe(4, [<minecraft:gravel:0>, <minecraft:dirt:0>], null).remove();

// Замшелые камни
// Mossy Stone Bricks
assembler.findRecipe(1, [<minecraft:stonebrick:0>, <minecraft:vine:0>], null).remove();
// Moss Stone
assembler.findRecipe(1, [<chisel:cobblestone:0>, <minecraft:vine:0>], null).remove();

// Стены
// Cobblestone Wall
assembler.findRecipe(7, [<minecraft:cobblestone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 6})], null).remove();
// Mossy Cobblestone Wall
assembler.findRecipe(7, [<minecraft:mossy_cobblestone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 6})], null).remove();

// Обычный песок
// Chiseled Sandstone
laser_engraver.findRecipe(16, [<minecraft:sandstone:2>, <metaitem:lensGlass>], null).remove();
// Sandstone
// assembler.findRecipe(4, [<minecraft:sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Sandstone
compressor.findRecipe(2, [<minecraft:sand:0> * 4], null).remove();
// Sand
forge_hammer.findRecipe(16, [<minecraft:gravel:0>], null).remove();
// Sand
forge_hammer.findRecipe(2, [<minecraft:sandstone:0>], null).remove();
// Smooth Sandstone
assembler.findRecipe(4, [<minecraft:sandstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Sandstone Stairs
assembler.findRecipe(1, [<minecraft:sandstone:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Красный песок
// Red Sandstone
compressor.findRecipe(2, [<minecraft:sand:1> * 4], null).remove();
// Smooth Red Sandstone
assembler.findRecipe(4, [<minecraft:red_sandstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Red Sand
forge_hammer.findRecipe(2, [<minecraft:red_sandstone:0>], null).remove();
// Chiseled Red Sandstone
laser_engraver.findRecipe(16, [<minecraft:red_sandstone:2>, <metaitem:lensGlass>], null).remove();
// Red Sandstone
// assembler.findRecipe(4, [<minecraft:red_sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Деревянные ступени
// Oak Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Spruce Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:1> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Birch Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:2> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Jungle Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:3> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Acacia Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:4> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Dark Oak Wood Stairs
assembler.findRecipe(1, [<minecraft:planks:5> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Полублоки
// Stone Slab
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:lubricant>]).remove();
// Stone Slab
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:distilled_water> * 3]).remove();
// Stone Slab
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:water> * 4]).remove();
// Sandstone Slab
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:lubricant>]).remove();
// Sandstone Slab
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:distilled_water> * 3]).remove();
// Sandstone Slab
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:water> * 4]).remove();
// Cobblestone Slab
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:lubricant>]).remove();
// Cobblestone Slab
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:distilled_water> * 3]).remove();
// Cobblestone Slab
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:water> * 4]).remove();
// Stone Bricks Slab
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:lubricant>]).remove();
// Stone Bricks Slab
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:distilled_water> * 3]).remove();
// Stone Bricks Slab
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:water> * 4]).remove();
// Red Sandstone Slab
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:lubricant>]).remove();
// Red Sandstone Slab
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:distilled_water> * 3]).remove();
// Red Sandstone Slab
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:water> * 4]).remove();

// Заборы
// Oak Fence
assembler.findRecipe(4, [<minecraft:planks:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Spruce Fence
assembler.findRecipe(4, [<minecraft:planks:1>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Birch Fence
assembler.findRecipe(4, [<minecraft:planks:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Jungle Fence
assembler.findRecipe(4, [<minecraft:planks:3>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Acacia Fence
assembler.findRecipe(4, [<minecraft:planks:4>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Dark Oak Fence
assembler.findRecipe(4, [<minecraft:planks:5>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Гранит
// Polished Granite
autoclave.findRecipe(7, [<minecraft:stone:1>], [<liquid:water> * 200]).remove();
// Polished Granite
autoclave.findRecipe(7, [<minecraft:stone:1>], [<liquid:distilled_water> * 36]).remove();

// Андезит
// Polished Andesite
autoclave.findRecipe(7, [<minecraft:stone:5>], [<liquid:water> * 200]).remove();
// Polished Andesite
autoclave.findRecipe(7, [<minecraft:stone:5>], [<liquid:distilled_water> * 36]).remove();

// Диорит
// Polished Diorite
autoclave.findRecipe(7, [<minecraft:stone:3>], [<liquid:distilled_water> * 36]).remove();
// Polished Diorite
autoclave.findRecipe(7, [<minecraft:stone:3>], [<liquid:water> * 200]).remove();

// Калитки
// Oak Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:0> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Spruce Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:1> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Birch Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:2> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Jungle Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:3> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Acacia Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:4> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Dark Oak Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:5> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

// Каменные кирпичи
forge_hammer.findRecipe(16, [<chisel:stonebrick:0>], null).remove();
// Stone Bricks
assembler.findRecipe(4, [<minecraft:stone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 4})], null).remove();
// Cracked Stone Bricks
forge_hammer.findRecipe(2, [<minecraft:stonebrick:0>], null).remove();
// Chiseled Stone Bricks
laser_engraver.findRecipe(16, [<minecraft:stone:0>, <metaitem:lensGlass>], null).remove();

// Каменные кнопки
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:lubricant>]).remove();
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:distilled_water> * 3]).remove();
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:water> * 4]).remove();

// Деревянные кнопки
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:lubricant>]).remove();
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:distilled_water> * 3]).remove();
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:water> * 4]).remove();

// Двери
// Oak Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:0> * 4], [<liquid:iron> * 16]).remove();
// Spruce Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:1> * 4], [<liquid:iron> * 16]).remove();
// Birch Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:2> * 4], [<liquid:iron> * 16]).remove();
// Jungle Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:3> * 4], [<liquid:iron> * 16]).remove();
// Acacia Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:4> * 4], [<liquid:iron> * 16]).remove();
// Dark Oak Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:5> * 4], [<liquid:iron> * 16]).remove();

// Раздатчик
assembler.findRecipe(30, [<minecraft:cobblestone:0> * 2, <metaitem:ringIron>, <metaitem:springIron> * 2, <metaitem:gearSmallIron> * 2, <metaitem:stickRedAlloy>, <minecraft:string:0>], null).remove();

// Кусочки мяса
// Small Pile of Mince Meat
macerator.findRecipe(2, [<minecraft:porkchop:0>], null).remove();
// Small Pile of Mince Meat
macerator.findRecipe(2, [<minecraft:beef:0>], null).remove();
// Small Pile of Mince Meat
macerator.findRecipe(2, [<minecraft:fish:0>], null).remove();
// Small Pile of Mince Meat
macerator.findRecipe(2, [<minecraft:rabbit:0>], null).remove();
// Mince Meat
macerator.findRecipe(2, [<minecraft:chicken:0>], null).remove();
// Mince Meat
macerator.findRecipe(2, [<minecraft:mutton:0>], null).remove();

// Гравий -> Каменная пыль, Кремний
macerator.findRecipe(2, [<minecraft:gravel:0>], null).remove();
sifter.findRecipe(16, [<minecraft:gravel:0>], null).remove();

// Стойка для брони
assembler.findRecipe(7, [<minecraft:stone_slab:0>, <minecraft:stick:0> * 6], null).remove();

// Воронка
assembler.findRecipe(2, [<minecraft:chest:0>, <metaitem:plateIron> * 5], null).remove();
assembler.findRecipe(2, [<minecraft:trapped_chest:0>, <metaitem:plateWroughtIron> * 5], null).remove();

// Булыжник
assembler.findRecipe(1, [<minecraft:mossy_cobblestone:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
forge_hammer.findRecipe(16, [<chisel:cobblestone:0>], null).remove();

// Удаление переработки кирпичей
assembler.findRecipe(1, [<minecraft:stonebrick:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Базальтовый булыжник
compressor.findRecipe(2, [<metaitem:plateStone> * 9], null).remove();

// Базальтовая земля
macerator.findRecipe(2, [<metaitem:bio_chaff>], null).remove();

// Гравий
forge_hammer.findRecipe(16, [<ore:cobblestone>.firstItem], null);

// Item Brick
alloy_smelter.findRecipe(2, [<minecraft:clay_ball:0>, <metaitem:shape.mold.ingot>], null);

// Книжные полки
assembler.findRecipe(4, [<metaitem:plateWood> * 6, <minecraft:book:0> * 3], null).remove();
extractor.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
arc_furnace.findRecipe(30, [<minecraft:bookshelf:0>], [<liquid:oxygen>]).remove();
macerator.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();

// Песок
centrifuge.findRecipe(30, [<minecraft:sand:1>], null).remove();
centrifuge.findRecipe(5, [<gregtech:ore_oilsands_0:0>], null).remove();

// Нефть из песка душ
centrifuge.findRecipe(80, [<minecraft:soul_sand:0>], null).remove();

// Гелий из эндстоуна
centrifuge.findRecipe(20, [<metaitem:dustEndstone>], null).remove();

// Гриб из мицелия
centrifuge.findRecipe(30, [<minecraft:mycelium:0>], null).remove();

// Песок -> Кварцитовая пыль
macerator.findRecipe(2, [<minecraft:sand>], null).remove();

// Ферментированный паучий глаз
mixer.findRecipe(7, [<minecraft:sugar:0>, <minecraft:red_mushroom:0>, <minecraft:spider_eye:0>], null).remove();

// Тростник -> Сахар
macerator.findRecipe(2, [<minecraft:reeds:0>], null).remove();

// Тростник -> Бумага (Вода)
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:water> * 100]).remove();

// Тростник -> Бумага (Дист. Вода)
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:distilled_water> * 100]).remove();

// Саженцы -> Палки
lathe.findRecipe(7, [<minecraft:sapling:0>], null).remove();

// Полублок -> Миска
lathe.findRecipe(7, [<minecraft:wooden_slab:0>], null).remove();

// Крюк
assembler.findRecipe(4, [<minecraft:stick:0> * 2, <metaitem:ringWroughtIron> * 2], null).remove();
assembler.findRecipe(4, [<minecraft:stick:0> * 2, <metaitem:ringIron> * 2], null).remove();

// Проигрыватель
assembler.findRecipe(16, [<metaitem:boltDiamond>, <metaitem:gearIron>, <metaitem:ringIron>, <metaitem:plateWood> * 4, <minecraft:noteblock:0> * 2], null).remove();

// Котёл
assembler.findRecipe(4, [<metaitem:plateIron> * 7, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Компас
assembler.findRecipe(4, [<minecraft:redstone:0>, <metaitem:plateIron> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Нажимная пластина из железа
assembler.findRecipe(16, [<metaitem:springSteel>, <metaitem:plateIron>], null).remove();

// Вагонетка
assembler.findRecipe(4, [<metaitem:plateIron> * 3, <metaitem:ringIron> * 4], null).remove();

// Железные прутья
assembler.findRecipe(4, [<metaitem:stickIron> * 3, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Железная дверь
assembler.findRecipe(7, [<minecraft:iron_bars:0>, <metaitem:plateIron> * 4], [<liquid:steel> * 16]).remove();

// Ведро
bender.findRecipe(4, [<metaitem:plateIron> * 3, <metaitem:circuit.integrated>.withTag({Configuration: 12})], null).remove();

// Поршень
assembler.findRecipe(7, [<metaitem:stickIron>, <metaitem:gearSmallIron>, <tfc:slab/wood/maclura:0>, <chisel:cobblestone:0>], [<liquid:red_alloy> * 144]).remove();

// Разбор железного люка
arc_furnace.findRecipe(30, [<minecraft:iron_trapdoor:0>], [<liquid:oxygen> * 56]).remove();
macerator.findRecipe(2, [<minecraft:iron_trapdoor:0>], null).remove();

// Fermented Spider Eye
mixer.findRecipe(7, [<minecraft:sugar:0>, <minecraft:brown_mushroom:0>, <minecraft:spider_eye:0>], null).remove();

// Red Nether Brick
alloy_smelter.findRecipe(4, [<minecraft:netherbrick:0> * 2, <minecraft:nether_wart:0> * 2], null).remove();

// Nether Wart Block
packer.findRecipe(2, [<minecraft:nether_wart:0> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// Nether Brick
alloy_smelter.findRecipe(2, [<metaitem:dustNetherrack>, <metaitem:shape.mold.ingot>], null).remove();
extractor.findRecipe(2, [<minecraft:nether_brick:0>], null).remove();

// Nether Brick Slab
cutter.findRecipe(7, [<minecraft:nether_brick:0>], [<liquid:lubricant>]).remove();
cutter.findRecipe(7, [<minecraft:nether_brick:0>], [<liquid:distilled_water> * 3]).remove();
cutter.findRecipe(7, [<minecraft:nether_brick:0>], [<liquid:water> * 4]).remove();

// Netherrack Dust
macerator.findRecipe(2, [<minecraft:netherrack:0>], null).remove();
macerator.findRecipe(2, [<minecraft:nether_brick_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:6>], null).remove();

// Lava * 250
// extractor.findRecipe(140, [<minecraft:netherrack:0>], null).remove();

// Nether Brick
compressor.findRecipe(2, [<minecraft:netherbrick:0> * 4], null).remove();

// Nether Brick Fence
assembler.findRecipe(4, [<minecraft:nether_brick:0>, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Nether Brick Stairs
assembler.findRecipe(1, [<minecraft:nether_brick:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Раскрафт ванильного верстака
macerator.findRecipe(2, [<minecraft:crafting_table:0>], null).remove();

// Исправление дюпа палок
recipes.remove(<minecraft:stick>);
