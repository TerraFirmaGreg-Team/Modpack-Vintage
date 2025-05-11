// MODS_LOADED: minecraft
// ---- Удаление рецептов


def removeRecipe = [
//    item('minecraft:leather_helmet'),
//    item('minecraft:leather_chestplate'),
//    item('minecraft:leather_leggings'),
//    item('minecraft:leather_boots'),
item('minecraft:bucket'),
// item('minecraft:enchanting_table'),
item('minecraft:name_tag'),
item('minecraft:book'),
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

def removeByInputFurnace = [
  item('minecraft:coal_ore'),
  item('minecraft:iron_ore'),
  item('minecraft:gold_ore'),
  item('minecraft:redstone_ore'),
  item('minecraft:diamond_ore'),
  item('minecraft:emerald_ore'),
  item('minecraft:stone')
]

def removeByOutputFurnace = [
  item('minecraft:gold_nugget'),
  item('minecraft:netherbrick'),
  item('minecraft:dye', 2)
]


// Удаление рецептов
for (item in removeRecipe) {
  crafting.removeByOutput(item)
}

// Поименное удаление рецептов
for (item in removeRecipesByName) {
  crafting.remove(item)
}

// Удаление рецептов печи по входу
for (item in removeByInputFurnace) {
  furnace.removeByInput(item)
}

// Удаление рецептов печи по выходу
for (item in removeByOutputFurnace) {
  furnace.removeByOutput(item)
}


// // Crafting Table * 1
// mods.gregtech.assembler.removeByInput(6, [item('tfc:wood/log/marblewood'), item('minecraft:flint')], null)

// // Furnace * 1
// mods.gregtech.assembler.removeByInput(7, [item('minecraft:mossy_cobblestone', 32767) * 8, item('minecraft:flint'), metaitem('circuit.integrated').withNbt(["Configuration": 8])], null)

// // Wooden Pressure Plate * 2
// mods.gregtech.assembler.removeByInput(7, [metaitem('springIron'), metaitem('plateWood') * 2], null)

// // Stone Pressure Plate * 2
// mods.gregtech.assembler.removeByInput(7, [metaitem('springIron'), item('minecraft:stone_slab') * 2], null)

// // Iron Trapdoor * 1
// mods.gregtech.assembler.removeByInput(16, [metaitem('plateIron') * 4, metaitem('circuit.integrated').withNbt(["Configuration": 4])], null)

// // Hay Bale * 1
// mods.gregtech.packer.removeByInput(2, [item('minecraft:wheat') * 9, metaitem('circuit.integrated').withNbt(["Configuration": 9])], null)

// // Chest * 1
// mods.gregtech.assembler.removeByInput(4, [metaitem('plateWood') * 8, metaitem('circuit.integrated').withNbt(["Configuration": 8])], null)

// // Coarse Dirt * 2
// mods.gregtech.mixer.removeByInput(4, [item('minecraft:gravel'), item('minecraft:dirt')], null)

// // Moss Stone * 1
// mods.gregtech.assembler.removeByInput(1, [item('chisel:cobblestone'), item('minecraft:vine')], null)

// // Cobblestone Wall * 1
// mods.gregtech.assembler.removeByInput(7, [item('minecraft:cobblestone'), metaitem('circuit.integrated').withNbt(["Configuration": 6])], null)

// // Mossy Cobblestone Wall * 1
// mods.gregtech.assembler.removeByInput(7, [item('minecraft:mossy_cobblestone'), metaitem('circuit.integrated').withNbt(["Configuration": 6])], null)

// // Chiseled Sandstone * 1
// mods.gregtech.laser_engraver.removeByInput(16, [item('minecraft:sandstone', 2), metaitem('lensGlass')], null)

// // Smooth Sandstone * 1
// mods.gregtech.assembler.removeByInput(4, [item('minecraft:sandstone'), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)

// // Sandstone * 1
// mods.gregtech.compressor.removeByInput(2, [item('minecraft:sand') * 4], null)

// // Sand * 1
// mods.gregtech.forge_hammer.removeByInput(16, [item('minecraft:gravel')], null)

// // Sand * 1
// mods.gregtech.forge_hammer.removeByInput(2, [item('minecraft:sandstone')], null)

// // Wood Pulp * 2
// mods.gregtech.macerator.removeByInput(2, [item('minecraft:crafting_table')], null)

// // Iron Door * 1
// mods.gregtech.assembler.removeByInput(16, [metaitem('plateIron') * 6, metaitem('circuit.integrated').withNbt(["Configuration": 6])], null)

// // Iron Bars * 4
// mods.gregtech.assembler.removeByInput(4, [metaitem('stickIron') * 3, metaitem('circuit.integrated').withNbt(["Configuration": 3])], null)

// // Weighted Pressure Plate (Heavy) * 1
// mods.gregtech.assembler.removeByInput(16, [metaitem('springSteel'), metaitem('plateIron')], null)

// // Blue Steel Bucket * 1
// mods.gregtech.bender.removeByInput(4, [metaitem('plateIron') * 3, metaitem('circuit.integrated').withNbt(["Configuration": 12])], null)

// // Iron Dust * 4
// mods.gregtech.macerator.removeByInput(2, [item('minecraft:iron_trapdoor')], null)
// mods.gregtech.arc_furnace.removeByInput(30, [item('minecraft:iron_trapdoor')], [fluid('oxygen') * 224])

// // Bookshelf * 1
// mods.gregtech.assembler.removeByInput(4, [metaitem('plateWood') * 6, item('minecraft:book') * 3], null)

// // Book * 3
// mods.gregtech.extractor.removeByInput(2, [item('minecraft:bookshelf')], null)

// // Chad * 9
// mods.gregtech.macerator.removeByInput(2, [item('minecraft:bookshelf')], null)

// // Tiny Pile of Ashes * 16
// mods.gregtech.arc_furnace.removeByInput(30, [item('minecraft:bookshelf')], [fluid('oxygen') * 21])

// // Minecart * 1
// mods.gregtech.assembler.removeByInput(4, [metaitem('plateIron') * 3, metaitem('ringIron') * 4], null)

// // Воронка
// mods.gregtech.assembler.removeByInput(2, [item('tfc:wood/chest_trap/fever'), metaitem('plateIron') * 5, metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
// mods.gregtech.assembler.removeByInput(2, [item('tfc:wood/chest_trap/fever'), metaitem('plateWroughtIron') * 5, metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)

// // Redstone Lamp * 1
// mods.gregtech.assembler.removeByInput(1, [item('minecraft:redstone') * 4, item('minecraft:glowstone_dust') * 4], null)

// // Glowstone Dust * 4
// mods.gregtech.macerator.removeByInput(2, [item('minecraft:redstone_lamp')], null)

// // Heavy Oil * 2000
// //mods.gregtech.centrifuge.removeByInput(30, [item('gregtech:ore_oilsands_0')], null)
// mods.gregtech.centrifuge.removeByInput(30, [item('minecraft:mycelium')], null)
// // Helium * 120
// mods.gregtech.centrifuge.removeByInput(20, [metaitem('dustEndstone')], null)
// // Oil * 80
// mods.gregtech.centrifuge.removeByInput(80, [item('minecraft:soul_sand')], null)

// Mossy Stone Bricks * 1
mods.gregtech.assembler.removeByInput(1, [item('minecraft:stonebrick'), item('minecraft:vine')], null)
// Stone Brick Stairs * 4
mods.gregtech.assembler.removeByInput(1, [metaitem('circuit.integrated').withNbt(["Configuration": 7]), item('minecraft:stonebrick') * 6], null)
// Stone Bricks Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:stonebrick')], [fluid('water') * 4])
// Stone Bricks Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:stonebrick')], [fluid('distilled_water') * 3])
// Stone Bricks Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:stonebrick')], [fluid('lubricant')])
// Cracked Stone Bricks * 1
mods.gregtech.forge_hammer.removeByInput(2, [item('minecraft:stonebrick')], null)
// Stone Brick Stairs * 4
//mods.gregtech.assembler.removeByInput(1, [metaitem('circuit.integrated').withNbt(["Configuration": 7]), item('minecraft:stonebrick') * 6], null)
// Stone Brick Stairs * 4
//mods.gregtech.assembler.removeByInput(1, [metaitem('circuit.integrated').withNbt(["Configuration": 7]), item('minecraft:stonebrick') * 6], null)
// Stone Brick Stairs * 4
//mods.gregtech.assembler.removeByInput(1, [metaitem('circuit.integrated').withNbt(["Configuration": 7]), item('minecraft:stonebrick') * 6], null)
// Sandstone Stairs * 4
mods.gregtech.assembler.removeByInput(1, [metaitem('circuit.integrated').withNbt(["Configuration": 7]), item('minecraft:sandstone') * 6], null)
// Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:sandstone')], [fluid('water') * 4])
// Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:sandstone')], [fluid('distilled_water') * 3])
// Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:sandstone')], [fluid('lubricant')])
// Sandstone * 1
mods.gregtech.assembler.removeByInput(4, [item('minecraft:sandstone', 2), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
// Red Sand * 1
mods.gregtech.forge_hammer.removeByInput(2, [item('minecraft:red_sandstone')], null)
// Smooth Red Sandstone * 1
mods.gregtech.assembler.removeByInput(4, [item('minecraft:red_sandstone'), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
// Red Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:red_sandstone')], [fluid('water') * 4])
// Red Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:red_sandstone')], [fluid('distilled_water') * 3])
// Red Sandstone Slab * 2
mods.gregtech.cutter.removeByInput(7, [item('minecraft:red_sandstone')], [fluid('lubricant')])
// Red Sand * 1
//mods.gregtech.forge_hammer.removeByInput(2, [item('minecraft:red_sandstone')], null)
// Red Sand * 1
//mods.gregtech.forge_hammer.removeByInput(2, [item('minecraft:red_sandstone')], null)
// Red Sandstone * 1
mods.gregtech.assembler.removeByInput(4, [item('minecraft:red_sandstone', 2), metaitem('circuit.integrated').withNbt(["Configuration": 1])], null)
// Chiseled Red Sandstone * 1
mods.gregtech.laser_engraver.removeByInput(16, [item('minecraft:red_sandstone', 2), metaitem('lensGlass')], null)
// Stone Bricks * 1
mods.gregtech.assembler.removeByInput(4, [item('minecraft:stone'), metaitem('circuit.integrated').withNbt(["Configuration": 4])], null)



