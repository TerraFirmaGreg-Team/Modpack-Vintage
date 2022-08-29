import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Массивы

val TFCMushrooms = <tfc:plants/amanita> | <tfc:plants/porcini>;

val ItemsToRemove as IItemStack[] = [
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

val RemoveItemRecipesByName = [
    "minecraft:stone_pressure_plate",
    "minecraft:light_weighted_pressure_plate",
    "minecraft:bone_meal_from_bone",
    "minecraft:iron_door",
    "minecraft:tripwire_hook",
    "minecraft:stick",
    "minecraft:diamond_block",
    "minecraft:sign"
] as string[];

val ItemsToRemoveFromFurnace as IItemStack[] = [
    <minecraft:dye:2>,
    <minecraft:stone>,
    <minecraft:gold_nugget>,
    <minecraft:netherbrick>
];

// --- Удаление рецептов

// Удаление рецептов
for item in ItemsToRemove{
    recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Удаление рецептов печи
for item in ItemsToRemoveFromFurnace {
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
assembler.findRecipe(4, [<minecraft:sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
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
assembler.findRecipe(4, [<minecraft:red_sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

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

// Lava * 250
extractor.findRecipe(140, [<minecraft:netherrack:0>], null).remove();

// Netherrack Dust
macerator.findRecipe(2, [<minecraft:netherrack:0>], null).remove();
macerator.findRecipe(2, [<minecraft:nether_brick_stairs:0>], null).remove();
macerator.findRecipe(2, [<minecraft:stone_slab:6>], null).remove();

// Nether Brick
compressor.findRecipe(2, [<minecraft:netherbrick:0> * 4], null).remove();

// Nether Brick Fence
assembler.findRecipe(4, [<minecraft:nether_brick:0>, <metaitem:circuit.integrated>.withTag({Configuration: 3})], null).remove();

// Nether Brick Stairs
assembler.findRecipe(1, [<minecraft:nether_brick:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Раскрафт ванильного верстака
macerator.findRecipe(2, [<minecraft:crafting_table:0>], null).remove();

// --- Добавление рецептов

// Регистрация металла
ItemRegistry.registerItemMetal(<minecraft:iron_bars>, "WROUGHT_IRON", 18, true);
ItemRegistry.registerItemMetal(<minecraft:bucket>, "BLUE_STEEL", 144, true);

// Register Food Stats for TFC
ItemRegistry.registerFood(<minecraft:mushroom_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 0, 0);
ItemRegistry.registerFood(<minecraft:rabbit_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 1.0, 0);
ItemRegistry.registerFood(<minecraft:beetroot_soup>, 4, 22, 2.0, 2.0, 0, 3.0, 0, 0, 0);

// Водная хрень
recipes.addShapeless("tfg/vanilla/prismarine/block_raw_0", <minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless("tfg/vanilla/prismarine/block_raw_1", <minecraft:prismarine>, [<ore:blockQuartz>, <ore:dyeCyan>]);
recipes.addShapeless("tfg/vanilla/prismarine/bricks", <minecraft:prismarine:1> * 4, [<ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>]);
recipes.addShapeless("tfg/vanilla/prismarine/sea_lantern", <minecraft:sea_lantern>, [<ore:glowstone>, <ore:dyeCyan>]);
recipes.addShapeless("tfg/vanilla/prismarine/dark", <minecraft:prismarine:2>, [<ore:blockPrismarine>, <ore:dyeBlack>]);

// Табличка
recipes.addShaped("tfg/vanilla/sign", <minecraft:sign>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [null, <ore:stickWood>, null]]);

// Раздатчик
recipes.addShaped("tfg/vanilla/dispenser", <minecraft:dispenser>, [
    [<ore:cobblestone>, <ore:ringIronAny>, <ore:cobblestone>],
    [<ore:springIronAny>, <ore:string>, <ore:springIronAny>],
    [<ore:gearSmallIronAny>, <metaitem:stickRedAlloy>, <ore:gearSmallIronAny>]]);

// Выбрасыватель
recipes.addShaped("tfg/vanilla/dropper", <minecraft:dropper>, [
    [<ore:cobblestone>, <ore:ringIronAny>, <ore:cobblestone>],
    [<ore:springSmallIronAny>, <ore:string>, <ore:springSmallIronAny>],
    [<ore:gearSmallIronAny>, <metaitem:stickRedAlloy>, <ore:gearSmallIronAny>]]);

// Наблюдатель - истинный кварц
recipes.addShaped("tfg/vanilla/observer/certus_quartz", <minecraft:observer>, [
    [<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
    [<ore:cobblestone>, <metaitem:plateCertusQuartz>, <ore:cobblestone>],
    [<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Наблюдатель - адский кварц
recipes.addShaped("tfg/vanilla/observer/nether_quartz", <minecraft:observer>, [
    [<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
    [<ore:cobblestone>, <metaitem:plateNetherQuartz>, <ore:cobblestone>],
    [<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Наблюдатель - кварцит
recipes.addShaped("tfg/vanilla/observer/quartzite", <minecraft:observer>, [
    [<ore:ringIronAny>, <ore:cobblestone>, <ore:ringIronAny>],
    [<ore:cobblestone>, <metaitem:plateQuartzite>, <ore:cobblestone>],
    [<ore:ringIronAny>, <metaitem:stickRedAlloy>, <ore:ringIronAny>]]);

// Железная нажимная плита
recipes.addShaped("tfg/vanilla/light_weighted_pressure_plate", <minecraft:heavy_weighted_pressure_plate>, [
    [<metaitem:screwSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:screwSteel>],
    [<ore:plateIronAny>, <metaitem:springSteel>, <ore:plateIronAny>],
    [<metaitem:screwSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:screwSteel>]]);

// Котёл
recipes.addShaped("tfg/vanilla/cauldron", <minecraft:cauldron>, [
    [<ore:plateIronAny>, null, <ore:plateIronAny>],
    [<ore:plateIronAny>, <ore:gtce.tool.hard.hammers>, <ore:plateIronAny>],
    [<ore:plateIronAny>, <ore:plateIronAny>, <ore:plateIronAny>]]);

// Воронка
recipes.addShaped("tfg/vanilla/hopper", <minecraft:hopper>, [
    [<ore:plateIronAny>, <ore:chest>, <ore:plateIronAny>],
    [<ore:plateIronAny>, <ore:gearIronAny>, <ore:plateIronAny>],
    [<ore:gtce.tool.wrenches>, <ore:plateIronAny>, <ore:gtce.tool.hard.hammers>]]);

// Наковальня
recipes.addShaped("tfg/vanilla/anvil", <minecraft:anvil>, [
    [<ore:blockIronAny>, <ore:blockIronAny>, <ore:blockIronAny>],
    [<ore:screwIronAny>, <ore:blockIronAny>, <ore:screwIronAny>],
    [<ore:plateIronAny>, <ore:blockIronAny>, <ore:plateIronAny>]]);

// Вагонетка
recipes.addShaped("tfg/vanilla/minecart", <minecraft:minecart>, [
    [<ore:ringIronAny>, <ore:gtce.tool.hard.hammers>, <ore:ringIronAny>],
    [<ore:plateIronAny>, <ore:gtce.tool.wrenches>, <ore:plateIronAny>],
    [<ore:ringIronAny>, <ore:plateIronAny>, <ore:ringIronAny>]]);

// Проигрыватель
recipes.addShaped("tfg/vanilla/jukebox", <minecraft:jukebox>, [
    [<ore:logWood>, <metaitem:screwDiamond>, <ore:logWood>],
    [<minecraft:noteblock>, <ore:ringIronAny>, <minecraft:noteblock>],
    [<ore:logWood>, <ore:gearIronAny>, <ore:logWood>]]);

// Хук
recipes.addShaped("tfg/vanilla/tripwire_hook", <minecraft:tripwire_hook>, [
    [<ore:ringIronAny>, <ore:stickWood>, <ore:ringIronAny>],
    [<ore:string>, <ore:stickWood>, <ore:string>],
    [null, <ore:string>, null]]);

// Картина
recipes.addShaped("tfg/vanilla/painting", <minecraft:painting>, [
    [<ore:string>, <ore:ringIronAny>, <ore:string>],
    [<ore:stickWood>, <ore:carpet>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Рамка
recipes.addShaped("tfg/vanilla/item_frame", <minecraft:item_frame>, [
    [<ore:string>, <ore:ringIronAny>, <ore:string>],
    [<ore:stickWood>, <ore:leather>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Лампа
recipes.addShaped("tfg/vanilla/redstone_lamp", <minecraft:redstone_lamp>, [
    [<ore:plateBrass>, <ore:stickIronAny>, <ore:plateBrass>],
    [<ore:stickIronAny>, <ore:cableGtSingleRedAlloy>, <ore:stickIronAny>],
    [<ore:plateBrass>, <ore:stickIronAny>, <ore:plateBrass>]]);

// Удочка
recipes.addShaped("tfg/vanilla/fishing_rod", <minecraft:fishing_rod>, [
    [null, null, <minecraft:stick>],
    [null, <minecraft:stick>, <ore:string>],
    [<minecraft:stick>, null, <ore:string>]]);

// Чар стол
recipes.addShaped("tfg/vanilla/enchanting_table", <minecraft:enchanting_table>, [
    [null, <minecraft:book>, null],
    [<ore:gemFlawless>, <ore:obsidian>, <ore:gemFlawless>],
    [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

// Поршень
recipes.addShaped("tfg/vanilla/piston", <minecraft:piston>, [
    [<ore:lumber>, <ore:lumber>, <ore:lumber>],
    [<ore:gearIronAny>, <ore:stickLongIronAny>, <ore:gearIronAny>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

// Книга
recipes.addShaped("tfg/vanilla/book", <minecraft:book>, [
    [<ore:string>, <ore:paper>, <ore:leather>],
    [<ore:string>, <ore:paper>, <metaitem:rubber_drop>],
    [<ore:string>, <ore:paper>, <ore:leather>]]);

// Ведро
recipes.addShaped("tfg/vanilla/iron_bucket", <minecraft:bucket>, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<metaitem:plateBlueSteel>, <tfc:metal/bucket/red_steel>.noReturn(), <metaitem:plateBlueSteel>],
    [null, <metaitem:plateBlueSteel>, null]]);

// Рычаг
recipes.addShaped("tfg/vanilla/lever", <minecraft:lever>, [
    [null, <ore:buttonStone>, null],
    [null, <ore:stickWood>, null]]);

// Бирка
recipes.addShaped("tfg/vanilla/name_tag", <minecraft:name_tag>, [
    [<ore:string>, <ore:string>, null],
    [<ore:string>, <minecraft:paper>, null],
    [<ore:string>, <ore:string>, null]]);

// Повторитель
recipes.addShaped("tfg/vanilla/repeater", <minecraft:repeater>, [
    [<ore:screwIronAny>, null, <ore:screwIronAny>],
    [<minecraft:redstone_torch>, <ore:gtce.tool.screwdrivers>, <minecraft:redstone_torch>],
    [<ore:pressurePlateStone>, <ore:stickRedAlloy>,<ore:pressurePlateStone>]]);

// Компаратор - истинный кварц
recipes.addShaped("tfg/vanilla/comparator/certus_quartz", <minecraft:comparator>, [
    [<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
    [<minecraft:redstone_torch>, <ore:plateCertusQuartz>, <minecraft:redstone_torch>],
    [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - адский кварц
recipes.addShaped("tfg/vanilla/comparator/nether_quartz", <minecraft:comparator>, [
    [<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
    [<minecraft:redstone_torch>, <ore:plateNetherQuartz>, <minecraft:redstone_torch>],
    [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - кварцит
recipes.addShaped("tfg/vanilla/comparator/quartzite", <minecraft:comparator>, [
    [<ore:screwIronAny>, <minecraft:redstone_torch>, <ore:screwIronAny>],
    [<minecraft:redstone_torch>, <ore:plateQuartzite>, <minecraft:redstone_torch>],
    [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Детектор света - истинный кварц
recipes.addShaped("tfg/vanilla/daylight_detector/certus_quartz", <minecraft:daylight_detector>, [
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, <ore:plateCertusQuartz>],
    [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - адский кварц
recipes.addShaped("tfg/vanilla/daylight_detector/nether_quartz", <minecraft:daylight_detector>, [
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>],
    [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - кварцит
recipes.addShaped("tfg/vanilla/daylight_detector/quartzite", <minecraft:daylight_detector>, [
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateQuartzite>, <ore:plateQuartzite>, <ore:plateQuartzite>],
    [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Конская броня - железо
recipes.addShaped("tfg/vanilla/horse_armor/iron", <minecraft:iron_horse_armor>, [
    [<ore:gtce.tool.hard.hammers>, <ore:gtce.tool.screwdrivers>, <tfc:metal/helmet/wrought_iron>],
    [<ore:plateIronAny>, <tfc:metal/chestplate/wrought_iron>, <ore:plateIronAny>],
    [<tfc:metal/greaves/wrought_iron>, <ore:screwIronAny>, <tfc:metal/boots/wrought_iron>]]);

// Ферментированный паучий глаз
mixer.recipeBuilder()
    .inputs(<ore:dustSugar>, TFCMushrooms, <minecraft:spider_eye>)
    .outputs(<minecraft:fermented_spider_eye>)
    .duration(300).EUt(2).buildAndRegister();

// Тростник -> Сахар
macerator.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.outputs(<minecraft:sugar>)
	.duration(300).EUt(2).buildAndRegister();

// Тростник -> Бумага (Вода)
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();

// Тростник -> Бумага (Дист. Вода)
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();

// Саженцы -> Палки
lathe.recipeBuilder()
    .inputs(<ore:treeSapling>)
    .outputs(<minecraft:stick>, <metaitem:dustTinyWood>)
    .duration(16).EUt(7).buildAndRegister();

// Полублок -> Миска
lathe.recipeBuilder()
    .inputs(<ore:slabWood>)
    .outputs(<minecraft:bowl>, <metaitem:dustTinyWood>)
    .duration(16).EUt(7).buildAndRegister();

// Раздатчик
assembler.recipeBuilder()
    .inputs(<ore:cobblestone> * 2, <ore:ringIronAny>, <ore:springIronAny> * 2, <ore:gearSmallIronAny> * 2, <metaitem:stickRedAlloy>, <ore:string>)
    .outputs(<minecraft:dispenser>)
    .duration(100).EUt(30).buildAndRegister();

// Гравий -> Каменная пыль, Кремний
macerator.recipeBuilder()
    .inputs(<ore:gravel>)
    .outputs(<metaitem:dustStone>)
    .chancedOutput(<minecraft:flint>, 100, 100)
    .duration(105).EUt(2).buildAndRegister();

// Гравий -> Каменная пыль, Кремний
sifter.recipeBuilder()
    .inputs(<ore:gravel>)
    .outputs(<minecraft:flint>)
    .chancedOutput(<minecraft:flint>, 2500, 0)
    .chancedOutput(<minecraft:flint>, 3300, 0)
    .chancedOutput(<minecraft:flint>, 6300, 0)
    .chancedOutput(<minecraft:flint>, 8300, 0)
    .chancedOutput(<minecraft:flint>, 9300, 0)
    .duration(275).EUt(16).buildAndRegister();

// Кусочки мяса
macerator.recipeBuilder()
    .inputs(<ore:categoryMeat>)
    .outputs(<metaitem:dustMeat>, <metaitem:dustTinyBone>)
    .duration(105).EUt(2).buildAndRegister();

// Коричневый гриб -> Метан
centrifuge.recipeBuilder()
    .inputs(<ore:mushroombrown>)
    .fluidOutputs([<liquid:methane> * 18])
    .duration(150).EUt(5).buildAndRegister();

// Красный гриб -> Метан
centrifuge.recipeBuilder()
    .inputs(<ore:mushroomRed>)
    .fluidOutputs([<liquid:methane> * 18])
    .duration(150).EUt(5).buildAndRegister();

// Стойка для брони
assembler.recipeBuilder()
    .inputs(<ore:slabStonePolished>, <minecraft:stick> * 6)
    .outputs(<minecraft:armor_stand>)
    .duration(100).EUt(7).buildAndRegister();

// Воронка
assembler.recipeBuilder()
    .inputs(<ore:chest>, <ore:plateIronAny> * 5, <ore:gearIronAny>)
    .outputs(<minecraft:hopper>)
    .duration(100).EUt(2).buildAndRegister();

// Базальтовый камень
compressor.recipeBuilder()
    .inputs(<metaitem:plateStone> * 9)
    .outputs(<tfc:raw/basalt>)
    .duration(300).EUt(2).buildAndRegister();

// Базальтовая земля
macerator.recipeBuilder()
    .inputs(<metaitem:bio_chaff>)
    .outputs(<tfc:dirt/basalt>)
    .duration(300).EUt(2).buildAndRegister();

// Кварцитовый песок -> Алмазы и тд.
centrifuge.recipeBuilder()
    .inputs(<tfc:sand/quartzite>)
    .chancedOutput(<metaitem:dustTinyDiamond>, 100, 100)
    .chancedOutput(<metaitem:dustIron>, 5000, 500)
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .duration(275).EUt(30).buildAndRegister();

// Нефтеносные пески -> Базальтовый песок, Нефть 
centrifuge.recipeBuilder()
    .inputs(<ore:oreOilsands>)
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .fluidOutputs([<liquid:oil> * 500])
    .duration(200).EUt(5).buildAndRegister();

// Песок -> Кварцитовая пыль
macerator.recipeBuilder()
    .inputs(<ore:sand>)
    .outputs(<metaitem:dustQuartzSand>)
    .duration(50).EUt(2).buildAndRegister();

// Крюк
assembler.recipeBuilder()
    .inputs(<ore:stickWood> * 2, <ore:ringIronAny> * 2)
    .outputs(<minecraft:tripwire_hook>)
    .duration(100).EUt(4).buildAndRegister();

// Проигрыватель
assembler.recipeBuilder()
    .inputs(<metaitem:boltDiamond>, <ore:gearIronAny>, <ore:ringIronAny>, <metaitem:plateWood> * 4, <minecraft:noteblock> * 2)
    .outputs(<minecraft:jukebox>)
    .duration(100).EUt(16).buildAndRegister();

// Поршень
assembler.recipeBuilder()
    .inputs(<ore:cobblestone>, <ore:slabWood>, <ore:gearSmallIronAny>, <ore:stickIronAny>)
    .fluidInputs([<liquid:red_alloy> * 144])
    .outputs(<minecraft:piston>)
    .duration(100).EUt(7).buildAndRegister();

// Котёл
assembler.recipeBuilder()
    .inputs(<ore:plateIronAny> * 7)
    .circuit(7)
    .outputs(<minecraft:cauldron>)
    .duration(100).EUt(4).buildAndRegister();

// Компас
assembler.recipeBuilder()
    .inputs(<metaitem:stickIronMagnetic>, <ore:plateIronAny> * 4)
    .outputs(<minecraft:compass>)
    .duration(100).EUt(4).buildAndRegister();

// Нажимная пластина из железа
assembler.recipeBuilder()
    .inputs(<metaitem:springSteel>, <ore:plateIronAny>)
    .outputs(<minecraft:heavy_weighted_pressure_plate>)
    .duration(100).EUt(16).buildAndRegister();

// Вагонетка
assembler.recipeBuilder()
    .inputs(<ore:plateIronAny> * 3, <ore:ringIronAny> * 4)
    .outputs(<minecraft:minecart>)
    .duration(100).EUt(4).buildAndRegister();

// Железные прутья
assembler.recipeBuilder()
    .inputs(<ore:stickIronAny> * 3)
    .circuit(3)
    .outputs(<minecraft:iron_bars> * 4)
    .duration(100).EUt(4).buildAndRegister();

// Железная дверь
assembler.recipeBuilder()
    .inputs(<minecraft:iron_bars>, <ore:plateIronAny> * 4)
    .fluidInputs([<liquid:steel> * 16])
    .outputs(<minecraft:iron_door>)
    .duration(100).EUt(7).buildAndRegister();

// Ведро
bender.recipeBuilder()
    .inputs(<metaitem:plateBlueSteel> * 3)
    .circuit(12)
    .outputs(<minecraft:bucket>)
    .duration(100).EUt(7).buildAndRegister();