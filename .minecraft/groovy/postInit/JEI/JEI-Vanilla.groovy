

// --- Массивы

def hideCategory = [
    "minecraft.anvil"
]

def removeAndHide = [
   // Blocks
   item('minecraft:stone:*'),
   item('minecraft:grass'),
   item('minecraft:gravel'),
   item('minecraft:dirt:*'),
   item('minecraft:cobblestone'),
   item('minecraft:sand:*'),
   item('minecraft:stonebrick:*'),
   item('minecraft:mossy_cobblestone'),
   item('minecraft:bookshelf'),
   item('minecraft:sandstone:*'),
   item('minecraft:red_sandstone:*'),
   // Logs
   item('minecraft:log:*'),
   item('minecraft:log2:*'),
   // Planks
   item('minecraft:planks:*'),
   // Slabs
   item('minecraft:wooden_slab:*'),
   item('minecraft:stone_slab:*'),
   item('minecraft:stone_slab2'),
   // Stairs
   item('minecraft:oak_stairs'),
   item('minecraft:spruce_stairs'),
   item('minecraft:birch_stairs'),
   item('minecraft:jungle_stairs'),
   item('minecraft:acacia_stairs'),
   item('minecraft:dark_oak_stairs'),
   item('minecraft:sandstone_stairs'),
   item('minecraft:stone_brick_stairs'),
   item('minecraft:stone_stairs'),
   item('minecraft:red_sandstone_stairs'),
   // Doors
   item('minecraft:wooden_door'),
   item('minecraft:spruce_door'),
   item('minecraft:birch_door'),
   item('minecraft:jungle_door'),
   item('minecraft:acacia_door'),
   item('minecraft:dark_oak_door'),
   // Fence Gates
   item('minecraft:fence_gate'),
   item('minecraft:spruce_fence_gate'),
   item('minecraft:birch_fence_gate'),
   item('minecraft:jungle_fence_gate'),
   item('minecraft:dark_oak_fence_gate'),
   item('minecraft:acacia_fence_gate'),
   // Gates
   item('minecraft:fence'),
   item('minecraft:spruce_fence'),
   item('minecraft:birch_fence'),
   item('minecraft:jungle_fence'),
   item('minecraft:dark_oak_fence'),
   item('minecraft:acacia_fence'),
   // Ores
   item('minecraft:gold_ore'),
   item('minecraft:iron_ore'),
   item('minecraft:coal_ore'),
   item('minecraft:lapis_ore'),
   item('minecraft:diamond_ore'),
   item('minecraft:redstone_ore'),
   item('minecraft:emerald_ore'),
   item('minecraft:quartz_ore'),
   // Food
   item('minecraft:apple'),
   item('minecraft:bread'),
   item('minecraft:porkchop'),
   item('minecraft:cooked_porkchop'),
   item('minecraft:fish:*'),
   item('minecraft:cooked_fish:*'),
   item('minecraft:cake'),
   item('minecraft:cookie'),
   item('minecraft:melon'),
   item('minecraft:beef'),
   item('minecraft:cooked_beef'),
   item('minecraft:chicken'),
   item('minecraft:cooked_chicken'),
   item('minecraft:carrot'),
   item('minecraft:potato'),
   item('minecraft:baked_potato'),
   item('minecraft:poisonous_potato'),
   item('minecraft:pumpkin_pie'),
   item('minecraft:rabbit'),
   item('minecraft:cooked_rabbit'),
   item('minecraft:mutton'),
   item('minecraft:cooked_mutton'),
   item('minecraft:beetroot'),
   item('minecraft:double_plant:2'),
   // Tools
   item('minecraft:diamond_pickaxe'),
   item('minecraft:golden_pickaxe'),
   item('minecraft:iron_pickaxe'),
   item('minecraft:diamond_shovel'),
   item('minecraft:golden_shovel'),
   item('minecraft:iron_shovel'),
   item('minecraft:diamond_sword'),
   item('minecraft:golden_sword'),
   item('minecraft:iron_sword'),
   item('minecraft:diamond_axe'),
   item('minecraft:golden_axe'),
   item('minecraft:iron_axe'),
   item('minecraft:iron_hoe'),
   item('minecraft:diamond_hoe'),
   item('minecraft:golden_hoe'),
   item('minecraft:wooden_sword'),
   item('minecraft:wooden_pickaxe'),
   item('minecraft:wooden_axe'),
   item('minecraft:wooden_shovel'),
   item('minecraft:wooden_hoe'),
   item('minecraft:stone_sword'),
   item('minecraft:stone_pickaxe'),
   item('minecraft:stone_axe'),
   item('minecraft:stone_shovel'),
   item('minecraft:stone_hoe'),
   item('minecraft:shears'),
   // Armor
   item('minecraft:diamond_leggings'),
   item('minecraft:diamond_boots'),
   item('minecraft:diamond_chestplate'),
   item('minecraft:diamond_helmet'),
   item('minecraft:golden_helmet'),
   item('minecraft:golden_chestplate'),
   item('minecraft:golden_leggings'),
   item('minecraft:golden_boots'),
   item('minecraft:iron_helmet'),
   item('minecraft:iron_chestplate'),
   item('minecraft:iron_leggings'),
   item('minecraft:iron_boots'),
   item('minecraft:chainmail_helmet'),
   item('minecraft:chainmail_chestplate'),
   item('minecraft:chainmail_leggings'),
   item('minecraft:chainmail_boots'),
   // Boats
   item('minecraft:boat'),
   item('minecraft:spruce_boat'),
   item('minecraft:birch_boat'),
   item('minecraft:jungle_boat'),
   item('minecraft:acacia_boat'),
   item('minecraft:dark_oak_boat'),
   // Nether
   item('minecraft:nether_wart'),
   item('minecraft:netherrack'),
   item('minecraft:nether_brick'),
   item('minecraft:nether_brick_stairs'),
   item('minecraft:stone_slab:6'),
   item('minecraft:nether_wart_block'),
   item('minecraft:red_nether_brick'),
   item('minecraft:nether_brick_fence'),
   item('minecraft:netherbrick'),
   // End
   item('minecraft:white_shulker_box'),
   item('minecraft:orange_shulker_box'),
   item('minecraft:magenta_shulker_box'),
   item('minecraft:light_blue_shulker_box'),
   item('minecraft:yellow_shulker_box'),
   item('minecraft:lime_shulker_box'),
   item('minecraft:pink_shulker_box'),
   item('minecraft:gray_shulker_box'),
   item('minecraft:silver_shulker_box'),
   item('minecraft:cyan_shulker_box'),
   item('minecraft:purple_shulker_box'),
   item('minecraft:blue_shulker_box'),
   item('minecraft:brown_shulker_box'),
   item('minecraft:green_shulker_box'),
   item('minecraft:red_shulker_box'),
   item('minecraft:black_shulker_box'),
   // Other
   item('minecraft:crafting_table'),
   item('minecraft:furnace'),
   item('minecraft:chest'),
   item('minecraft:trapped_chest'),
   item('minecraft:stone_pressure_plate'),
   item('minecraft:wooden_pressure_plate'),
   item('minecraft:wooden_button'),
   item('minecraft:stone_button'),
   item('minecraft:trapdoor'),
   item('minecraft:reeds'),
   item('minecraft:book'),
   item('minecraft:vine'),
   item('minecraft:waterlily'),
   item('minecraft:golden_horse_armor'),
   item('minecraft:diamond_horse_armor'),
   item('minecraft:iron_trapdoor')
]

def removeRecipe = [
//    item('minecraft:leather_helmet'),
//    item('minecraft:leather_chestplate'),
//    item('minecraft:leather_leggings'),
//    item('minecraft:leather_boots'),
   item('minecraft:bucket'),
   item('minecraft:enchanting_table'),
   item('minecraft:name_tag'),
   // item('minecraft:daylight_detector'),
   // item('minecraft:comparator')
]

def removeRecipesByName = [
   "minecraft:stone_pressure_plate",
   "minecraft:light_weighted_pressure_plate",
   "minecraft:bone_meal_from_bone",
   "minecraft:iron_door",
   "minecraft:tripwire_hook",
   "minecraft:stick",
   "minecraft:diamond_block",
   "minecraft:sign"
]

// --- Удаление рецептов

for(item in hideCategory) {
    mods.jei.hideCategory(item)
}

for (item in removeAndHide) {
   mods.jei.removeAndHide(item)
}

// Удаление рецептов
for (item in removeRecipe) {
   crafting.removeByOutput(item)
}

// Поименное удаление рецептов
for (item in removeRecipesByName) {
   crafting.remove(item)
}
