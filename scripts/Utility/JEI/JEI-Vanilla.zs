#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;

// --- Массивы

val removeRecipeFurnace as IItemStack[] = [
   <minecraft:dye:2>,
   <minecraft:stone>,
   <minecraft:gold_nugget>,
   <minecraft:netherbrick>
];


// --- Удаление рецептов

// Удаление рецептов печи
for item in removeRecipeFurnace {
   furnace.remove(item);
}

// Удаление рецептов печи по паттерну
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:diamond>, <minecraft:diamond_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);



// Замшелые камни
// Mossy Stone Bricks
assembler.findRecipe(1, [<minecraft:stonebrick:0>, <minecraft:vine:0>], null).remove();

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
//macerator.findRecipe(2, [<minecraft:porkchop:0>], null).remove();
// Small Pile of Mince Meat
// macerator.findRecipe(2, [<minecraft:beef:0>], null).remove();
// // Small Pile of Mince Meat
// macerator.findRecipe(2, [<minecraft:fish:0>], null).remove();
// // Small Pile of Mince Meat
// macerator.findRecipe(2, [<minecraft:rabbit:0>], null).remove();
// // Mince Meat
// macerator.findRecipe(2, [<minecraft:chicken:0>], null).remove();
// // Mince Meat
// macerator.findRecipe(2, [<minecraft:mutton:0>], null).remove();

// Гравий -> Каменная пыль, Кремний
macerator.findRecipe(2, [<minecraft:gravel:0>], null).remove();
sifter.findRecipe(16, [<minecraft:gravel:0>], null).remove();

// Стойка для брони
assembler.findRecipe(7, [<minecraft:stone_slab:0>, <minecraft:stick:0> * 6], null).remove();

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


// Поршень
assembler.findRecipe(7, [<metaitem:stickIron>, <metaitem:gearSmallIron>, <tfc:slab/wood/maclura:0>, <chisel:cobblestone:0>], [<liquid:red_alloy> * 144]).remove();

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

// Исправление дюпа палок
recipes.remove(<minecraft:stick>);
