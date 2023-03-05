

// // --- Массивы

// def removeAndHide = [
//    // Blocks
//    item('minecraft:stone:*'),
//    item('minecraft:grass'),
//    item('minecraft:gravel'),
//    item('minecraft:dirt:*'),
//    item('minecraft:cobblestone'),
//    item('minecraft:sand:*'),
//    item('minecraft:stonebrick'),
//    item('minecraft:stonebrick:1'),
//    item('minecraft:stonebrick:2'),
//    item('minecraft:stonebrick:3'),
//    item('minecraft:mossy_cobblestone'),
//    item('minecraft:bookshelf'),
//    item('minecraft:sandstone'),
//    item('minecraft:sandstone:1'),
//    item('minecraft:sandstone:2'),
//    item('minecraft:red_sandstone'),
//    item('minecraft:red_sandstone:1'),
//    item('minecraft:red_sandstone:2'),
//    // Logs
//    item('minecraft:log:*'),
//    item('minecraft:log2:*'),
//    // Planks
//    item('minecraft:planks:*'),
//    // Slabs
//    item('minecraft:wooden_slab:*'),
//    item('minecraft:stone_slab'),
//    item('minecraft:stone_slab:1'),
//    item('minecraft:stone_slab:3'),
//    item('minecraft:stone_slab:5'),
//    item('minecraft:stone_slab2'),
//    // Stairs
//    item('minecraft:oak_stairs'),
//    item('minecraft:spruce_stairs'),
//    item('minecraft:birch_stairs'),
//    item('minecraft:jungle_stairs'),
//    item('minecraft:acacia_stairs'),
//    item('minecraft:dark_oak_stairs'),
//    item('minecraft:sandstone_stairs'),
//    item('minecraft:stone_brick_stairs'),
//    item('minecraft:stone_stairs'),
//    item('minecraft:red_sandstone_stairs'),
//    // Doors
//    item('minecraft:wooden_door'),
//    item('minecraft:spruce_door'),
//    item('minecraft:birch_door'),
//    item('minecraft:jungle_door'),
//    item('minecraft:acacia_door'),
//    item('minecraft:dark_oak_door'),
//    // Fence Gates
//    item('minecraft:fence_gate'),
//    item('minecraft:spruce_fence_gate'),
//    item('minecraft:birch_fence_gate'),
//    item('minecraft:jungle_fence_gate'),
//    item('minecraft:dark_oak_fence_gate'),
//    item('minecraft:acacia_fence_gate'),
//    // Gates
//    item('minecraft:fence'),
//    item('minecraft:spruce_fence'),
//    item('minecraft:birch_fence'),
//    item('minecraft:jungle_fence'),
//    item('minecraft:dark_oak_fence'),
//    item('minecraft:acacia_fence'),
//    // Ores
//    item('minecraft:gold_ore'),
//    item('minecraft:iron_ore'),
//    item('minecraft:coal_ore'),
//    item('minecraft:lapis_ore'),
//    item('minecraft:diamond_ore'),
//    item('minecraft:redstone_ore'),
//    item('minecraft:emerald_ore'),
//    item('minecraft:quartz_ore'),
//    // Food
//    item('minecraft:apple'),
//    item('minecraft:bread'),
//    item('minecraft:porkchop'),
//    item('minecraft:cooked_porkchop'),
//    item('minecraft:fish:*'),
//    item('minecraft:cooked_fish:*'),
//    item('minecraft:cake'),
//    item('minecraft:cookie'),
//    item('minecraft:melon'),
//    item('minecraft:beef'),
//    item('minecraft:cooked_beef'),
//    item('minecraft:chicken'),
//    item('minecraft:cooked_chicken'),
//    item('minecraft:carrot'),
//    item('minecraft:potato'),
//    item('minecraft:baked_potato'),
//    item('minecraft:poisonous_potato'),
//    item('minecraft:pumpkin_pie'),
//    item('minecraft:rabbit'),
//    item('minecraft:cooked_rabbit'),
//    item('minecraft:mutton'),
//    item('minecraft:cooked_mutton'),
//    item('minecraft:beetroot'),
//    item('minecraft:double_plant:2'),
//    // Tools
//    item('minecraft:diamond_pickaxe'),
//    item('minecraft:golden_pickaxe'),
//    item('minecraft:iron_pickaxe'),
//    item('minecraft:diamond_shovel'),
//    item('minecraft:golden_shovel'),
//    item('minecraft:iron_shovel'),
//    item('minecraft:diamond_sword'),
//    item('minecraft:golden_sword'),
//    item('minecraft:iron_sword'),
//    item('minecraft:diamond_axe'),
//    item('minecraft:golden_axe'),
//    item('minecraft:iron_axe'),
//    item('minecraft:iron_hoe'),
//    item('minecraft:diamond_hoe'),
//    item('minecraft:golden_hoe'),
//    item('minecraft:wooden_sword'),
//    item('minecraft:wooden_pickaxe'),
//    item('minecraft:wooden_axe'),
//    item('minecraft:wooden_shovel'),
//    item('minecraft:wooden_hoe'),
//    item('minecraft:stone_sword'),
//    item('minecraft:stone_pickaxe'),
//    item('minecraft:stone_axe'),
//    item('minecraft:stone_shovel'),
//    item('minecraft:stone_hoe'),
//    item('minecraft:shears'),
//    // Armor
//    item('minecraft:diamond_leggings'),
//    item('minecraft:diamond_boots'),
//    item('minecraft:diamond_chestplate'),
//    item('minecraft:diamond_helmet'),
//    item('minecraft:golden_helmet'),
//    item('minecraft:golden_chestplate'),
//    item('minecraft:golden_leggings'),
//    item('minecraft:golden_boots'),
//    item('minecraft:iron_helmet'),
//    item('minecraft:iron_chestplate'),
//    item('minecraft:iron_leggings'),
//    item('minecraft:iron_boots'),
//    item('minecraft:chainmail_helmet'),
//    item('minecraft:chainmail_chestplate'),
//    item('minecraft:chainmail_leggings'),
//    item('minecraft:chainmail_boots'),
//    // Boats
//    item('minecraft:boat'),
//    item('minecraft:spruce_boat'),
//    item('minecraft:birch_boat'),
//    item('minecraft:jungle_boat'),
//    item('minecraft:acacia_boat'),
//    item('minecraft:dark_oak_boat'),
//    // Nether
//    item('minecraft:nether_wart'),
//    item('minecraft:netherrack'),
//    item('minecraft:nether_brick'),
//    item('minecraft:nether_brick_stairs'),
//    item('minecraft:stone_slab:6'),
//    item('minecraft:nether_wart_block'),
//    item('minecraft:red_nether_brick'),
//    item('minecraft:nether_brick_fence'),
//    item('minecraft:netherbrick'),
//    // End
//    item('minecraft:white_shulker_box'),
//    item('minecraft:orange_shulker_box'),
//    item('minecraft:magenta_shulker_box'),
//    item('minecraft:light_blue_shulker_box'),
//    item('minecraft:yellow_shulker_box'),
//    item('minecraft:lime_shulker_box'),
//    item('minecraft:pink_shulker_box'),
//    item('minecraft:gray_shulker_box'),
//    item('minecraft:silver_shulker_box'),
//    item('minecraft:cyan_shulker_box'),
//    item('minecraft:purple_shulker_box'),
//    item('minecraft:blue_shulker_box'),
//    item('minecraft:brown_shulker_box'),
//    item('minecraft:green_shulker_box'),
//    item('minecraft:red_shulker_box'),
//    item('minecraft:black_shulker_box'),
//    // Other
//    item('minecraft:crafting_table'),
//    item('minecraft:furnace'),
//    item('minecraft:chest'),
//    item('minecraft:trapped_chest'),
//    item('minecraft:stone_pressure_plate'),
//    item('minecraft:wooden_pressure_plate'),
//    item('minecraft:wooden_button'),
//    item('minecraft:stone_button'),
//    item('minecraft:trapdoor'),
//    item('minecraft:reeds'),
//    item('minecraft:book'),
//    item('minecraft:vine'),
//    item('minecraft:waterlily'),
//    item('minecraft:golden_horse_armor'),
//    item('minecraft:diamond_horse_armor'),
//    item('minecraft:iron_trapdoor')
// ]

// def removeRecipe = [
//    item('minecraft:leather_helmet'),
//    item('minecraft:leather_chestplate'),
//    item('minecraft:leather_leggings'),
//    item('minecraft:leather_boots'),
//    item('minecraft:bucket'),
//    item('minecraft:enchanting_table'),
//    item('minecraft:name_tag'),
//    item('minecraft:daylight_detector'),
//    item('minecraft:comparator')
// ]

// def removeRecipesByName = [
//    "minecraft:stone_pressure_plate",
//    "minecraft:light_weighted_pressure_plate",
//    "minecraft:bone_meal_from_bone",
//    "minecraft:iron_door",
//    "minecraft:tripwire_hook",
//    "minecraft:stick",
//    "minecraft:diamond_block",
//    "minecraft:sign"
// ]

// def removeRecipeFurnace = [
//    item('minecraft:dye:2'),
//    item('minecraft:stone'),
//    item('minecraft:gold_nugget'),
//    item('minecraft:netherbrick')
// ]


// // --- Удаление рецептов

// for (item in removeAndHide) {
//    mods.jei.removeAndHide(item)
// }

// // Удаление рецептов
// for (item in removeRecipe) {
//    crafting.removeByOutput(item)
// }

// // Поименное удаление рецептов
// for (item in removeRecipesByName) {
//    crafting.remove(item)
// }

// // Удаление рецептов печи
// // for (item in RemoveRecipeFurnace) {
// //    furnace.removeByInput(item)
// // }

// // // Удаление рецептов печи по паттерну
// // furnace.removeByInput(item('minecraft:coal'), item('minecraft:coal_ore'))
// // furnace.removeByInput(item('minecraft:iron_ingot'), item('minecraft:iron_ore'))
// // furnace.removeByInput(item('minecraft:gold_ingot'), item('minecraft:gold_ore'))
// // furnace.removeByInput(item('minecraft:redstone'), item('minecraft:redstone_ore'))
// // furnace.removeByInput(item('minecraft:diamond'), item('minecraft:diamond_ore'))
// // furnace.removeByInput(item('minecraft:emerald'), item('minecraft:emerald_ore'))

// // Верстак
// assembler.removeByInput(6, [ore('logWood'), item('minecraft:flint')], null)

// // Печь
// assembler.removeByInput(7, [item('minecraft:mossy_cobblestone', 32767) * 8, item('minecraft:flint'), metaitem('circuit.integrated').withNbt([Configuration: 8])], null)


// // Деревянная нажимная плита
// assembler.removeByInput(7, [ore('plankWood').firstItem * 2, ore('springIron').firstItem], null)

// // Каменная нажимная плита
// assembler.removeByInput(7, [item('minecraft:stone_slab') * 2, ore('springIron').firstItem], null)

// // Деревянный люк
// assembler.removeByInput(4, [ore('plankWood').firstItem * 3, metaitem('circuit.integrated').withNbt([Configuration: 3])], null)

// // Железный люк
// // assembler.removeByInput(16, [metaitem('plateIron') * 4, item('minecraft:trapdoor')], null)

// // Сноп сена
// packer.removeByInput(2, [item('minecraft:wheat') * 9, metaitem('circuit.integrated').withNbt([Configuration: 9])], null)

// // Сундук
// // Chest * 1
// assembler.removeByInput(4, [metaitem('plateWood') * 8, metaitem('circuit.integrated').withNbt([Configuration: 8])], null)

// assembler.removeByInput(4, [metaitem('plateWood') * 8, metaitem('circuit.integrated').withNbt([Configuration: 8])], null)

// // Земля с гравием
// mixer.removeByInput(4, [item('minecraft:gravel:0'), item('minecraft:dirt:0')], null)

// // Замшелые камни
// // Mossy Stone Bricks
// assembler.removeByInput(1, [item('minecraft:stonebrick:0'), item('minecraft:vine:0')], null)
// // Moss Stone
// assembler.removeByInput(1, [item('chisel:cobblestone:0'), item('minecraft:vine:0')], null)

// // Стены
// // Cobblestone Wall
// assembler.removeByInput(7, [item('minecraft:cobblestone:0'), metaitem('circuit.integrated').withNbt([Configuration: 6])], null)
// // Mossy Cobblestone Wall
// assembler.removeByInput(7, [item('minecraft:mossy_cobblestone:0'), metaitem('circuit.integrated').withNbt([Configuration: 6])], null)

// // Обычный песок
// // Chiseled Sandstone
// laser_engraver.removeByInput(16, [item('minecraft:sandstone:2'), metaitem('lensGlass')], null)
// // Sandstone
// // assembler.removeByInput(4, [item('minecraft:sandstone:2'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)

// // Sandstone
// compressor.removeByInput(2, [item('minecraft:sand:0') * 4], null)
// // Sand
// forge_hammer.removeByInput(16, [item('minecraft:gravel:0')], null)
// // Sand
// forge_hammer.removeByInput(2, [item('minecraft:sandstone:0')], null)
// // Smooth Sandstone
// assembler.removeByInput(4, [item('minecraft:sandstone:0'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Sandstone Stairs
// assembler.removeByInput(1, [item('minecraft:sandstone:0') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)

// // Красный песок
// // Red Sandstone
// compressor.removeByInput(2, [item('minecraft:sand:1') * 4], null)
// // Smooth Red Sandstone
// assembler.removeByInput(4, [item('minecraft:red_sandstone:0'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Red Sand
// forge_hammer.removeByInput(2, [item('minecraft:red_sandstone:0')], null)
// // Chiseled Red Sandstone
// laser_engraver.removeByInput(16, [item('minecraft:red_sandstone:2'), metaitem('lensGlass')], null)
// // Red Sandstone
// // assembler.removeByInput(4, [item('minecraft:red_sandstone:2'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)

// // Деревянные ступени
// // Oak Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:0') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// // Spruce Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:1') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// // Birch Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:2') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// // Jungle Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:3') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// // Acacia Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:4') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// // Dark Oak Wood Stairs
// assembler.removeByInput(1, [item('minecraft:planks:5') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)

// // Полублоки
// // Stone Slab
// cutter.removeByInput(7, [item('minecraft:stone:0')], [fluid('lubricant')])
// // Stone Slab
// cutter.removeByInput(7, [item('minecraft:stone:0')], [fluid('distilled_water') * 3])
// // Stone Slab
// cutter.removeByInput(7, [item('minecraft:stone:0')], [fluid('water') * 4])
// // Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:sandstone:0')], [fluid('lubricant')])
// // Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:sandstone:0')], [fluid('distilled_water') * 3])
// // Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:sandstone:0')], [fluid('water') * 4])
// // Cobblestone Slab
// cutter.removeByInput(7, [item('minecraft:cobblestone:0')], [fluid('lubricant')])
// // Cobblestone Slab
// cutter.removeByInput(7, [item('minecraft:cobblestone:0')], [fluid('distilled_water') * 3])
// // Cobblestone Slab
// cutter.removeByInput(7, [item('minecraft:cobblestone:0')], [fluid('water') * 4])
// // Stone Bricks Slab
// cutter.removeByInput(7, [item('minecraft:stonebrick:0')], [fluid('lubricant')])
// // Stone Bricks Slab
// cutter.removeByInput(7, [item('minecraft:stonebrick:0')], [fluid('distilled_water') * 3])
// // Stone Bricks Slab
// cutter.removeByInput(7, [item('minecraft:stonebrick:0')], [fluid('water') * 4])
// // Red Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:red_sandstone:0')], [fluid('lubricant')])
// // Red Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:red_sandstone:0')], [fluid('distilled_water') * 3])
// // Red Sandstone Slab
// cutter.removeByInput(7, [item('minecraft:red_sandstone:0')], [fluid('water') * 4])

// // Заборы
// // Oak Fence
// assembler.removeByInput(4, [item('minecraft:planks:0'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Spruce Fence
// assembler.removeByInput(4, [item('minecraft:planks:1'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Birch Fence
// assembler.removeByInput(4, [item('minecraft:planks:2'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Jungle Fence
// assembler.removeByInput(4, [item('minecraft:planks:3'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Acacia Fence
// assembler.removeByInput(4, [item('minecraft:planks:4'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)
// // Dark Oak Fence
// assembler.removeByInput(4, [item('minecraft:planks:5'), metaitem('circuit.integrated').withNbt([Configuration: 1])], null)

// // Гранит
// // Polished Granite
// autoclave.removeByInput(7, [item('minecraft:stone:1')], [fluid('water') * 200])
// // Polished Granite
// autoclave.removeByInput(7, [item('minecraft:stone:1')], [fluid('distilled_water') * 36])

// // Андезит
// // Polished Andesite
// autoclave.removeByInput(7, [item('minecraft:stone:5')], [fluid('water') * 200])
// // Polished Andesite
// autoclave.removeByInput(7, [item('minecraft:stone:5')], [fluid('distilled_water') * 36])

// // Диорит
// // Polished Diorite
// autoclave.removeByInput(7, [item('minecraft:stone:3')], [fluid('distilled_water') * 36])
// // Polished Diorite
// autoclave.removeByInput(7, [item('minecraft:stone:3')], [fluid('water') * 200])

// // Калитки
// // Oak Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:0') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)
// // Spruce Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:1') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)
// // Birch Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:2') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)
// // Jungle Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:3') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)
// // Acacia Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:4') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)
// // Dark Oak Fence Gate * 1
// assembler.removeByInput(4, [item('minecraft:planks:5') * 2, item('minecraft:stick:0') * 2, metaitem('circuit.integrated').withNbt([Configuration: 2])], null)

// // Каменные кирпичи
// forge_hammer.removeByInput(16, [item('chisel:stonebrick:0')], null)
// // Stone Bricks
// assembler.removeByInput(4, [item('minecraft:stone:0'), metaitem('circuit.integrated').withNbt([Configuration: 4])], null)
// // Cracked Stone Bricks
// forge_hammer.removeByInput(2, [item('minecraft:stonebrick:0')], null)
// // Chiseled Stone Bricks
// laser_engraver.removeByInput(16, [item('minecraft:stone:0'), metaitem('lensGlass')], null)

// // Каменные кнопки
// cutter.removeByInput(7, [item('minecraft:stone_pressure_plate:0')], [fluid('lubricant')])
// cutter.removeByInput(7, [item('minecraft:stone_pressure_plate:0')], [fluid('distilled_water') * 3])
// cutter.removeByInput(7, [item('minecraft:stone_pressure_plate:0')], [fluid('water') * 4])

// // Деревянные кнопки
// cutter.removeByInput(7, [item('minecraft:wooden_pressure_plate:0')], [fluid('lubricant')])
// cutter.removeByInput(7, [item('minecraft:wooden_pressure_plate:0')], [fluid('distilled_water') * 3])
// cutter.removeByInput(7, [item('minecraft:wooden_pressure_plate:0')], [fluid('water') * 4])

// // Двери
// // Oak Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:0') * 4], [fluid('iron') * 16])
// // Spruce Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:1') * 4], [fluid('iron') * 16])
// // Birch Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:2') * 4], [fluid('iron') * 16])
// // Jungle Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:3') * 4], [fluid('iron') * 16])
// // Acacia Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:4') * 4], [fluid('iron') * 16])
// // Dark Oak Door * 1
// assembler.removeByInput(4, [item('minecraft:trapdoor:0'), item('minecraft:planks:5') * 4], [fluid('iron') * 16])

// // Раздатчик
// assembler.removeByInput(30, [item('minecraft:cobblestone:0') * 2, metaitem('ringIron'), metaitem('springIron') * 2, metaitem('gearSmallIron') * 2, metaitem('stickRedAlloy'), item('minecraft:string:0')], null)

// // Кусочки мяса
// // Small Pile of Mince Meat
// //macerator.removeByInput(2, [item('minecraft:porkchop:0')], null)
// // Small Pile of Mince Meat
// // macerator.removeByInput(2, [item('minecraft:beef:0')], null)
// // // Small Pile of Mince Meat
// // macerator.removeByInput(2, [item('minecraft:fish:0')], null)
// // // Small Pile of Mince Meat
// // macerator.removeByInput(2, [item('minecraft:rabbit:0')], null)
// // // Mince Meat
// // macerator.removeByInput(2, [item('minecraft:chicken:0')], null)
// // // Mince Meat
// // macerator.removeByInput(2, [item('minecraft:mutton:0')], null)

// // Гравий -') Каменная пыль, Кремний
// macerator.removeByInput(2, [item('minecraft:gravel:0')], null)
// sifter.removeByInput(16, [item('minecraft:gravel:0')], null)

// // Стойка для брони
// assembler.removeByInput(7, [item('minecraft:stone_slab:0'), item('minecraft:stick:0') * 6], null)

// // Воронка
// assembler.removeByInput(2, [item('minecraft:chest:0'), metaitem('plateIron') * 5], null)
// assembler.removeByInput(2, [item('minecraft:trapped_chest:0'), metaitem('plateWroughtIron') * 5], null)

// // Булыжник
// assembler.removeByInput(1, [item('minecraft:mossy_cobblestone:0') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)
// forge_hammer.removeByInput(16, [item('chisel:cobblestone:0')], null)

// // Удаление переработки кирпичей
// assembler.removeByInput(1, [item('minecraft:stonebrick:0') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)

// // Базальтовый булыжник
// compressor.removeByInput(2, [metaitem('plateStone') * 9], null)

// // Базальтовая земля
// macerator.removeByInput(2, [metaitem('bio_chaff')], null)

// // Гравий
// forge_hammer.removeByInput(16, [ore('cobblestone').firstItem], null)

// // Item Brick
// alloy_smelter.removeByInput(2, [item('minecraft:clay_ball:0'), metaitem('shape.mold.ingot')], null)

// // Книжные полки
// assembler.removeByInput(4, [metaitem('plateWood') * 6, item('minecraft:book:0') * 3], null)
// extractor.removeByInput(2, [item('minecraft:bookshelf:0')], null)
// //arc_furnace.removeByInput(30, [item('minecraft:bookshelf:0')], [fluid('oxygen')])
// //macerator.removeByInput(2, [item('minecraft:bookshelf:0')], null)

// // Песок
// centrifuge.removeByInput(30, [item('minecraft:sand:1')], null)
// centrifuge.removeByInput(5, [item('gregtech:ore_oilsands_0:0')], null)

// // Нефть из песка душ
// centrifuge.removeByInput(80, [item('minecraft:soul_sand:0')], null)

// // Гелий из эндстоуна
// centrifuge.removeByInput(20, [metaitem('dustEndstone')], null)

// // Гриб из мицелия
// centrifuge.removeByInput(30, [item('minecraft:mycelium:0')], null)

// // Песок -') Кварцитовая пыль
// macerator.removeByInput(2, [item('minecraft:sand')], null)

// // Ферментированный паучий глаз
// mixer.removeByInput(7, [item('minecraft:sugar:0'), item('minecraft:red_mushroom:0'), item('minecraft:spider_eye:0')], null)

// // Тростник -') Сахар
// macerator.removeByInput(2, [item('minecraft:reeds:0')], null)

// // Тростник -') Бумага (Вода)
// chemical_bath.removeByInput(7, [item('minecraft:reeds:0')], [fluid('water') * 100])

// // Тростник -') Бумага (Дист. Вода)
// chemical_bath.removeByInput(7, [item('minecraft:reeds:0')], [fluid('distilled_water') * 100])

// // Саженцы -') Палки
// lathe.removeByInput(7, [item('minecraft:sapling:0')], null)

// // Полублок -') Миска
// lathe.removeByInput(7, [item('minecraft:wooden_slab:0')], null)

// // Крюк
// assembler.removeByInput(4, [item('minecraft:stick:0') * 2, metaitem('ringWroughtIron') * 2], null)
// assembler.removeByInput(4, [item('minecraft:stick:0') * 2, metaitem('ringIron') * 2], null)

// // Проигрыватель
// assembler.removeByInput(16, [metaitem('boltDiamond'), metaitem('gearIron'), metaitem('ringIron'), metaitem('plateWood') * 4, item('minecraft:noteblock:0') * 2], null)

// // Котёл
// assembler.removeByInput(4, [metaitem('plateIron') * 7, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)

// // Компас
// assembler.removeByInput(4, [item('minecraft:redstone:0'), metaitem('plateIron') * 4, metaitem('circuit.integrated').withNbt([Configuration: 1])], null)

// // Нажимная пластина из железа
// assembler.removeByInput(16, [metaitem('springSteel'), metaitem('plateIron')], null)

// // Вагонетка
// assembler.removeByInput(4, [metaitem('plateIron') * 3, metaitem('ringIron') * 4], null)

// // Железные прутья
// assembler.removeByInput(4, [metaitem('stickIron') * 3, metaitem('circuit.integrated').withNbt([Configuration: 3])], null)

// // Железная дверь
// // assembler.removeByInput(7, [item('minecraft:iron_bars:0'), metaitem('plateIron') * 4], [fluid('steel') * 16])

// // Ведро
// bender.removeByInput(4, [metaitem('plateIron') * 3, metaitem('circuit.integrated').withNbt([Configuration: 12])], null)

// // Поршень
// assembler.removeByInput(7, [metaitem('stickIron'), metaitem('gearSmallIron'), item('tfc:slab/wood/maclura:0'), item('chisel:cobblestone:0')], [fluid('red_alloy') * 144])

// // Разбор железного люка
// //arc_furnace.removeByInput(30, [item('minecraft:iron_trapdoor:0')], [fluid('oxygen') * 56])
// //macerator.removeByInput(2, [item('minecraft:iron_trapdoor:0')], null)

// // Fermented Spider Eye
// mixer.removeByInput(7, [item('minecraft:sugar:0'), item('minecraft:brown_mushroom:0'), item('minecraft:spider_eye:0')], null)

// // Red Nether Brick
// alloy_smelter.removeByInput(4, [item('minecraft:netherbrick:0') * 2, item('minecraft:nether_wart:0') * 2], null)

// // Nether Wart Block
// packer.removeByInput(2, [item('minecraft:nether_wart:0') * 9, metaitem('circuit.integrated').withNbt([Configuration: 9])], null)

// // Nether Brick
// alloy_smelter.removeByInput(2, [metaitem('dustNetherrack'), metaitem('shape.mold.ingot')], null)
// extractor.removeByInput(2, [item('minecraft:nether_brick:0')], null)

// // Nether Brick Slab
// cutter.removeByInput(7, [item('minecraft:nether_brick:0')], [fluid('lubricant')])
// cutter.removeByInput(7, [item('minecraft:nether_brick:0')], [fluid('distilled_water') * 3])
// cutter.removeByInput(7, [item('minecraft:nether_brick:0')], [fluid('water') * 4])

// // Netherrack Dust
// macerator.removeByInput(2, [item('minecraft:netherrack:0')], null)
// macerator.removeByInput(2, [item('minecraft:nether_brick_stairs:0')], null)
// macerator.removeByInput(2, [item('minecraft:stone_slab:6')], null)

// // Lava * 250
// // extractor.removeByInput(140, [item('minecraft:netherrack:0')], null)

// // Nether Brick
// compressor.removeByInput(2, [item('minecraft:netherbrick:0') * 4], null)

// // Nether Brick Fence
// assembler.removeByInput(4, [item('minecraft:nether_brick:0'), metaitem('circuit.integrated').withNbt([Configuration: 3])], null)

// // Nether Brick Stairs
// assembler.removeByInput(1, [item('minecraft:nether_brick:0') * 6, metaitem('circuit.integrated').withNbt([Configuration: 7])], null)

// // Раскрафт ванильного верстака
// macerator.removeByInput(2, [item('minecraft:crafting_table:0')], null)

// // Исправление дюпа палок
// crafting.removeByOutput(item('minecraft:stick'))

// // Лампа
// assembler.removeByInput(1, [item('minecraft:redstone') * 4, item('minecraft:glowstone_dust') * 4], null)
