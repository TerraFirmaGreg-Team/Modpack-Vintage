#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Quern
import mods.terrafirmacraft.Anvil
import mods.terrafirmacraft.Heating
import mods.terrafirmacraft.Barrel
import mods.terrafirmacraft.Welding
import mods.terrafirmacraft.StoneKnapping
import mods.horsepower.Grindstone
import mods.firmalife.Oven

// --- Массивы

def (RemoveAndHide) = [
	// Nuggets
	item('tfc:metal/nugget/bismuth'),
	item('tfc:metal/nugget/bismuth_bronze'),
	item('tfc:metal/nugget/black_bronze'),
	item('tfc:metal/nugget/brass'),
	item('tfc:metal/nugget/bronze'),
	item('tfc:metal/nugget/copper'),
	item('tfc:metal/nugget/gold'),
	item('tfc:metal/nugget/lead'),
	item('tfc:metal/nugget/nickel'),
	item('tfc:metal/nugget/rose_gold'),
	item('tfc:metal/nugget/silver'),
	item('tfc:metal/nugget/tin'),
	item('tfc:metal/nugget/zinc'),
	item('tfc:metal/nugget/sterling_silver'),
	item('tfc:metal/nugget/pig_iron'),
	item('tfc:metal/nugget/steel'),
	item('tfc:metal/nugget/platinum'),
	item('tfc:metal/nugget/black_steel'),
	item('tfc:metal/nugget/blue_steel'),
	item('tfc:metal/nugget/red_steel'),
	item('tfc:metal/nugget/wrought_iron'),
	// Dusts
	item('tfc:metal/dust/bismuth'),
	item('tfc:metal/dust/bismuth_bronze'),
	item('tfc:metal/dust/black_bronze'),
	item('tfc:metal/dust/brass'),
	item('tfc:metal/dust/bronze'),
	item('tfc:metal/dust/copper'),
	item('tfc:metal/dust/gold'),
	item('tfc:metal/dust/lead'),
	item('tfc:metal/dust/nickel'),
	item('tfc:metal/dust/rose_gold'),
	item('tfc:metal/dust/silver'),
	item('tfc:metal/dust/tin'),
	item('tfc:metal/dust/zinc'),
	item('tfc:metal/dust/sterling_silver'),
	item('tfc:metal/dust/pig_iron'),
	item('tfc:metal/dust/steel'),
	item('tfc:metal/dust/platinum'),
	item('tfc:metal/dust/black_steel'),
	item('tfc:metal/dust/blue_steel'),
	item('tfc:metal/dust/red_steel'),
	item('tfc:metal/dust/wrought_iron'),
	// Ingot
	item('tfc:metal/ingot/bismuth'),
	item('tfc:metal/ingot/bismuth_bronze'),
	item('tfc:metal/ingot/black_bronze'),
	item('tfc:metal/ingot/brass'),
	item('tfc:metal/ingot/bronze'),
	item('tfc:metal/ingot/copper'),
	item('tfc:metal/ingot/gold'),
	item('tfc:metal/ingot/lead'),
	item('tfc:metal/ingot/nickel'),
	item('tfc:metal/ingot/rose_gold'),
	item('tfc:metal/ingot/silver'),
	item('tfc:metal/ingot/tin'),
	item('tfc:metal/ingot/zinc'),
	item('tfc:metal/ingot/sterling_silver'),
	// item('tfc:metal/ingot/pig_iron'),
	item('tfc:metal/ingot/steel'),
	item('tfc:metal/ingot/platinum'),
	item('tfc:metal/ingot/black_steel'),
	item('tfc:metal/ingot/blue_steel'),
	item('tfc:metal/ingot/red_steel'),
	// item('tfc:metal/ingot/wrought_iron'),
	// Plate
	item('tfc:metal/sheet/bismuth'),
	item('tfc:metal/sheet/bismuth_bronze'),
	item('tfc:metal/sheet/black_bronze'),
	item('tfc:metal/sheet/brass'),
	item('tfc:metal/sheet/bronze'),
	item('tfc:metal/sheet/copper'),
	item('tfc:metal/sheet/gold'),
	item('tfc:metal/sheet/lead'),
	item('tfc:metal/sheet/nickel'),
	item('tfc:metal/sheet/rose_gold'),
	item('tfc:metal/sheet/silver'),
	item('tfc:metal/sheet/tin'),
	item('tfc:metal/sheet/zinc'),
	item('tfc:metal/sheet/sterling_silver'),
	item('tfc:metal/sheet/pig_iron'),
	item('tfc:metal/sheet/steel'),
	item('tfc:metal/sheet/platinum'),
	item('tfc:metal/sheet/black_steel'),
	item('tfc:metal/sheet/blue_steel'),
	item('tfc:metal/sheet/red_steel'),
	// item('tfc:metal/sheet/wrought_iron'),
	// Double Ingots
	item('tfc:metal/double_ingot/pig_iron'),
	// Double Plates
	item('tfc:metal/double_sheet/bismuth'),
	item('tfc:metal/double_sheet/bismuth_bronze'),
	item('tfc:metal/double_sheet/black_bronze'),
	item('tfc:metal/double_sheet/brass'),
	item('tfc:metal/double_sheet/bronze'),
	item('tfc:metal/double_sheet/copper'),
	item('tfc:metal/double_sheet/gold'),
	item('tfc:metal/double_sheet/lead'),
	item('tfc:metal/double_sheet/nickel'),
	item('tfc:metal/double_sheet/rose_gold'),
	item('tfc:metal/double_sheet/silver'),
	item('tfc:metal/double_sheet/tin'),
	item('tfc:metal/double_sheet/zinc'),
	item('tfc:metal/double_sheet/sterling_silver'),
	item('tfc:metal/double_sheet/wrought_iron'),
	item('tfc:metal/double_sheet/pig_iron'),
	item('tfc:metal/double_sheet/platinum'),
	item('tfc:metal/double_sheet/steel'),
	item('tfc:metal/double_sheet/black_steel'),
	item('tfc:metal/double_sheet/blue_steel'),
	item('tfc:metal/double_sheet/red_steel'),
	// Scrap
	item('tfc:metal/scrap/bismuth'),
	item('tfc:metal/scrap/bismuth_bronze'),
	item('tfc:metal/scrap/black_bronze'),
	item('tfc:metal/scrap/brass'),
	item('tfc:metal/scrap/bronze'),
	item('tfc:metal/scrap/copper'),
	item('tfc:metal/scrap/gold'),
	item('tfc:metal/scrap/lead'),
	item('tfc:metal/scrap/nickel'),
	item('tfc:metal/scrap/rose_gold'),
	item('tfc:metal/scrap/silver'),
	item('tfc:metal/scrap/tin'),
	item('tfc:metal/scrap/zinc'),
	item('tfc:metal/scrap/sterling_silver'),
	item('tfc:metal/scrap/wrought_iron'),
	item('tfc:metal/scrap/pig_iron'),
	item('tfc:metal/scrap/steel'),
	item('tfc:metal/scrap/platinum'),
	item('tfc:metal/scrap/black_steel'),
	item('tfc:metal/scrap/blue_steel'),
	item('tfc:metal/scrap/red_steel'),
	// Trapdoors
	item('tfc:metal/trapdoor/pig_iron'),
	// Small Ores
	item('tfc:ore/native_copper:*'),
	item('tfc:ore/native_gold:*'),
	item('tfc:ore/native_platinum:*'),
	item('tfc:ore/hematite:*'),
	item('tfc:ore/native_silver:*'),
	item('tfc:ore/cassiterite:*'),
	item('tfc:ore/galena:*'),
	item('tfc:ore/bismuthinite:*'),
	item('tfc:ore/garnierite:*'),
	item('tfc:ore/malachite:*'),
	item('tfc:ore/magnetite:*'),
	item('tfc:ore/limonite:*'),
	item('tfc:ore/sphalerite:*'),
	item('tfc:ore/tetrahedrite:*'),
	item('tfc:ore/halite:*'),
	// Fake Rods
	item('tfc:metal/rod/gold'),
	item('tfc:metal/rod/wrought_iron'),
	item('tfc:metal/rod/steel'),
	// Pickaxe
	item('tfc:metal/pick/bismuth_bronze'),
	item('tfc:metal/pick/black_bronze'),
	item('tfc:metal/pick/bronze'),
	item('tfc:metal/pick/copper'),
	item('tfc:metal/pick/wrought_iron'),
	item('tfc:metal/pick/steel'),
	item('tfc:metal/pick/black_steel'),
	item('tfc:metal/pick/blue_steel'),
	item('tfc:metal/pick/red_steel'),
	// Pickaxe Heads
	item('tfc:metal/pick_head/bismuth_bronze'),
	item('tfc:metal/pick_head/black_bronze'),
	item('tfc:metal/pick_head/bronze'),
	item('tfc:metal/pick_head/copper'),
	item('tfc:metal/pick_head/wrought_iron'),
	item('tfc:metal/pick_head/steel'),
	item('tfc:metal/pick_head/black_steel'),
	item('tfc:metal/pick_head/blue_steel'),
	item('tfc:metal/pick_head/red_steel'),
	// Axe
	item('tfc:metal/axe/bismuth_bronze'),
	item('tfc:metal/axe/black_bronze'),
	item('tfc:metal/axe/bronze'),
	item('tfc:metal/axe/copper'),
	item('tfc:metal/axe/wrought_iron'),
	item('tfc:metal/axe/steel'),
	item('tfc:metal/axe/black_steel'),
	item('tfc:metal/axe/blue_steel'),
	item('tfc:metal/axe/red_steel'),
	// Axe Heads
	item('tfc:metal/axe_head/bismuth_bronze'),
	item('tfc:metal/axe_head/black_bronze'),
	item('tfc:metal/axe_head/bronze'),
	item('tfc:metal/axe_head/copper'),
	item('tfc:metal/axe_head/wrought_iron'),
	item('tfc:metal/axe_head/steel'),
	item('tfc:metal/axe_head/black_steel'),
	item('tfc:metal/axe_head/blue_steel'),
	item('tfc:metal/axe_head/red_steel'),
	// Shovel
	item('tfc:metal/shovel/bismuth_bronze'),
	item('tfc:metal/shovel/black_bronze'),
	item('tfc:metal/shovel/bronze'),
	item('tfc:metal/shovel/copper'),
	item('tfc:metal/shovel/wrought_iron'),
	item('tfc:metal/shovel/steel'),
	item('tfc:metal/shovel/black_steel'),
	item('tfc:metal/shovel/blue_steel'),
	item('tfc:metal/shovel/red_steel'),
	// Shovel Heads
	item('tfc:metal/shovel_head/bismuth_bronze'),
	item('tfc:metal/shovel_head/black_bronze'),
	item('tfc:metal/shovel_head/bronze'),
	item('tfc:metal/shovel_head/copper'),
	item('tfc:metal/shovel_head/wrought_iron'),
	item('tfc:metal/shovel_head/steel'),
	item('tfc:metal/shovel_head/black_steel'),
	item('tfc:metal/shovel_head/blue_steel'),
	item('tfc:metal/shovel_head/red_steel'),
	// Hoe
	item('tfc:metal/hoe/bismuth_bronze'),
	item('tfc:metal/hoe/black_bronze'),
	item('tfc:metal/hoe/bronze'),
	item('tfc:metal/hoe/copper'),
	item('tfc:metal/hoe/wrought_iron'),
	item('tfc:metal/hoe/steel'),
	item('tfc:metal/hoe/black_steel'),
	item('tfc:metal/hoe/blue_steel'),
	item('tfc:metal/hoe/red_steel'),
	// Hoe Heads
	item('tfc:metal/hoe_head/bismuth_bronze'),
	item('tfc:metal/hoe_head/black_bronze'),
	item('tfc:metal/hoe_head/bronze'),
	item('tfc:metal/hoe_head/copper'),
	item('tfc:metal/hoe_head/wrought_iron'),
	item('tfc:metal/hoe_head/steel'),
	item('tfc:metal/hoe_head/black_steel'),
	item('tfc:metal/hoe_head/blue_steel'),
	item('tfc:metal/hoe_head/red_steel'),
	// Sword
	item('tfc:metal/sword/bismuth_bronze'),
	item('tfc:metal/sword/black_bronze'),
	item('tfc:metal/sword/bronze'),
	item('tfc:metal/sword/copper'),
	item('tfc:metal/sword/wrought_iron'),
	item('tfc:metal/sword/steel'),
	item('tfc:metal/sword/black_steel'),
	item('tfc:metal/sword/blue_steel'),
	item('tfc:metal/sword/red_steel'),
	// Sword Blades
	item('tfc:metal/sword_blade/bismuth_bronze'),
	item('tfc:metal/sword_blade/black_bronze'),
	item('tfc:metal/sword_blade/bronze'),
	item('tfc:metal/sword_blade/copper'),
	item('tfc:metal/sword_blade/wrought_iron'),
	item('tfc:metal/sword_blade/steel'),
	item('tfc:metal/sword_blade/black_steel'),
	item('tfc:metal/sword_blade/blue_steel'),
	item('tfc:metal/sword_blade/red_steel'),
	// Hammers
	item('tfc:metal/hammer/copper'),
	item('tfc:metal/hammer/bismuth_bronze'),
	item('tfc:metal/hammer/bronze'),
	item('tfc:metal/hammer/black_bronze'),
	item('tfc:metal/hammer/wrought_iron'),
	item('tfc:metal/hammer/steel'),
	item('tfc:metal/hammer/black_steel'),
	item('tfc:metal/hammer/blue_steel'),
	item('tfc:metal/hammer/red_steel'),
	// Hammers Heads
	item('tfc:metal/hammer_head/copper'),
	item('tfc:metal/hammer_head/red_steel'),
	item('tfc:metal/hammer_head/blue_steel'),
	item('tfc:metal/hammer_head/black_steel'),
	item('tfc:metal/hammer_head/steel'),
	item('tfc:metal/hammer_head/wrought_iron'),
	item('tfc:metal/hammer_head/bronze'),
	item('tfc:metal/hammer_head/black_bronze'),
	item('tfc:metal/hammer_head/bismuth_bronze'),
	// Saw
	item('tfc:metal/saw/copper'),
	item('tfc:metal/saw/bismuth_bronze'),
	item('tfc:metal/saw/bronze'),
	item('tfc:metal/saw/black_bronze'),
	item('tfc:metal/saw/wrought_iron'),
	item('tfc:metal/saw/steel'),
	item('tfc:metal/saw/black_steel'),
	item('tfc:metal/saw/blue_steel'),
	item('tfc:metal/saw/red_steel'),
	// Saw Heads
	item('tfc:metal/saw_blade/copper'),
	item('tfc:metal/saw_blade/bronze'),
	item('tfc:metal/saw_blade/black_bronze'),
	item('tfc:metal/saw_blade/bismuth_bronze'),
	item('tfc:metal/saw_blade/red_steel'),
	item('tfc:metal/saw_blade/blue_steel'),
	item('tfc:metal/saw_blade/black_steel'),
	item('tfc:metal/saw_blade/steel'),
	item('tfc:metal/saw_blade/wrought_iron'),
	// Knife
	item('tfc:metal/knife/copper'),
	item('tfc:metal/knife/bismuth_bronze'),
	item('tfc:metal/knife/bronze'),
	item('tfc:metal/knife/black_bronze'),
	item('tfc:metal/knife/wrought_iron'),
	item('tfc:metal/knife/steel'),
	item('tfc:metal/knife/black_steel'),
	item('tfc:metal/knife/blue_steel'),
	item('tfc:metal/knife/red_steel'),
	// Knife Heads
	item('tfc:metal/knife_blade/bismuth_bronze'),
	item('tfc:metal/knife_blade/black_bronze'),
	item('tfc:metal/knife_blade/bronze'),
	item('tfc:metal/knife_blade/copper'),
	item('tfc:metal/knife_blade/wrought_iron'),
	item('tfc:metal/knife_blade/steel'),
	item('tfc:metal/knife_blade/black_steel'),
	item('tfc:metal/knife_blade/blue_steel'),
	item('tfc:metal/knife_blade/red_steel'),
	// Scythe
	item('tfc:metal/scythe/bismuth_bronze'),
	item('tfc:metal/scythe/black_bronze'),
	item('tfc:metal/scythe/bronze'),
	item('tfc:metal/scythe/copper'),
	item('tfc:metal/scythe/wrought_iron'),
	item('tfc:metal/scythe/steel'),
	item('tfc:metal/scythe/black_steel'),
	item('tfc:metal/scythe/blue_steel'),
	item('tfc:metal/scythe/red_steel'),
	// Scythe Heads
	item('tfc:metal/scythe_blade/bismuth_bronze'),
	item('tfc:metal/scythe_blade/black_bronze'),
	item('tfc:metal/scythe_blade/bronze'),
	item('tfc:metal/scythe_blade/copper'),
	item('tfc:metal/scythe_blade/wrought_iron'),
	item('tfc:metal/scythe_blade/steel'),
	item('tfc:metal/scythe_blade/black_steel'),
	item('tfc:metal/scythe_blade/blue_steel'),
	item('tfc:metal/scythe_blade/red_steel'),
	// Gems [Hidden]
	item('tfc:gem/beryl:*'),
	item('tfc:gem/agate:*'),
	item('tfc:gem/tourmaline:*'),
	item('tfc:gem/jade:*'),
	item('tfc:gem/jasper:*'),
	// Gems [Unhidden]
	item('tfc:gem/amethyst:*'),
	item('tfc:gem/emerald:*'),
	item('tfc:gem/diamond:*'),
	item('tfc:gem/garnet:*'),
	item('tfc:gem/opal:*'),
	item('tfc:gem/ruby:*'),
	item('tfc:gem/sapphire:*'),
	item('tfc:gem/topaz:*'),
	// Ores
	item('tfc:ore/serpentine'),
	item('tfc:ore/sylvite'),
	item('tfc:ore/borax'),
	item('tfc:ore/olivine'),
	item('tfc:ore/lapis_lazuli'),
	item('tfc:ore/small/native_copper'),
	item('tfc:ore/small/native_gold'),
	item('tfc:ore/small/native_platinum'),
	item('tfc:ore/small/hematite'),
	item('tfc:ore/small/native_silver'),
	item('tfc:ore/small/cassiterite'),
	item('tfc:ore/small/galena'),
	item('tfc:ore/small/bismuthinite'),
	item('tfc:ore/small/garnierite'),
	item('tfc:ore/small/malachite'),
	item('tfc:ore/small/magnetite'),
	item('tfc:ore/small/limonite'),
	item('tfc:ore/small/sphalerite'),
	item('tfc:ore/small/tetrahedrite'),
	item('tfc:ore/kaolinite'),
	item('tfc:ore/gypsum'),
	item('tfc:ore/satinspar'),
	item('tfc:ore/selenite'),
	item('tfc:ore/kimberlite'),
	item('tfc:ore/petrified_wood'),
	item('tfc:ore/sulfur'),
	item('tfc:ore/jet'),
	item('tfc:ore/microcline'),
	item('tfc:ore/pitchblende'),
	item('tfc:ore/cinnabar'),
	item('tfc:ore/cryolite'),
	item('tfc:ore/saltpeter'),
	// Powder
	item('tfc:powder/saltpeter'),
	item('tfc:powder/salt'),
	item('tfc:powder/sulfur'),
	item('tfc:powder/lapis_lazuli'),
	item('tfc:powder/limonite'),
	item('tfc:powder/malachite'),
	item('tfc:powder/charcoal'),
	item('tfc:powder/hematite'),
	// Other
	item('tfc:ore/graphite'),
	item('tfc:ore/bituminous_coal'),
	item('tfc:ore/lignite'),
	item('tfc:sluice'),
	item('tfc:powder/coke'),
	item('tfc:metal/bucket/blue_steel'),
	// Dups
	item('tfc:wood/sapling/joshua_tree'),
	item('tfc:wood/log/joshua_tree'),
	// Stone Tools
	item('tfc:stone/knife/metamorphic'),
	item('tfc:stone/knife/sedimentary'),
	item('tfc:stone/knife/igneous_extrusive'),
	item('tfc:stone/knife/igneous_intrusive'),
	item('tfc:stone/axe/igneous_extrusive'),
	item('tfc:stone/axe/sedimentary'),
	item('tfc:stone/axe/metamorphic'),
	item('tfc:stone/axe/igneous_intrusive'),
	item('tfc:stone/hammer/igneous_extrusive'),
	item('tfc:stone/hammer/metamorphic'),
	item('tfc:stone/hammer/sedimentary'),
	item('tfc:stone/hammer/igneous_intrusive'),
	item('tfc:stone/hoe/metamorphic'),
	item('tfc:stone/hoe/sedimentary'),
	item('tfc:stone/hoe/igneous_extrusive'),
	item('tfc:stone/hoe/igneous_intrusive'),
	item('tfc:stone/shovel/metamorphic'),
	item('tfc:stone/shovel/sedimentary'),
	item('tfc:stone/shovel/igneous_extrusive'),
	item('tfc:stone/shovel/igneous_intrusive'),
	item('tfc:stone/javelin/igneous_intrusive'),
	item('tfc:stone/javelin/igneous_extrusive'),
	item('tfc:stone/javelin/sedimentary'),
	item('tfc:stone/javelin/metamorphic'),
	// Stone Tool Heads
	item('tfc:stone/axe_head/igneous_extrusive'),
	item('tfc:stone/axe_head/sedimentary'),
	item('tfc:stone/axe_head/metamorphic'),
	item('tfc:stone/axe_head/igneous_intrusive'),
	item('tfc:stone/knife_head/metamorphic'),
	item('tfc:stone/knife_head/sedimentary'),
	item('tfc:stone/knife_head/igneous_extrusive'),
	item('tfc:stone/knife_head/igneous_intrusive'),
	item('tfc:stone/hammer_head/igneous_intrusive'),
	item('tfc:stone/hammer_head/igneous_extrusive'),
	item('tfc:stone/hammer_head/sedimentary'),
	item('tfc:stone/hammer_head/metamorphic'),
	item('tfc:stone/hoe_head/metamorphic'),
	item('tfc:stone/hoe_head/sedimentary'),
	item('tfc:stone/hoe_head/igneous_extrusive'),
	item('tfc:stone/hoe_head/igneous_intrusive'),
	item('tfc:stone/shovel_head/metamorphic'),
	item('tfc:stone/shovel_head/sedimentary'),
	item('tfc:stone/shovel_head/igneous_extrusive'),
	item('tfc:stone/shovel_head/igneous_intrusive'),
	item('tfc:stone/javelin_head/igneous_intrusive'),
	item('tfc:stone/javelin_head/igneous_extrusive'),
	item('tfc:stone/javelin_head/sedimentary'),
	item('tfc:stone/javelin_head/metamorphic'),
	// Flint Tools
	item('tfcflorae:tools/flint/axe/flint'),
	item('tfcflorae:tools/flint/hoe/flint'),
	item('tfcflorae:tools/flint/javelin/flint'),
	item('tfcflorae:tools/flint/knife/flint'),
	item('tfcflorae:tools/flint/shovel/flint'),
	// Flint Tool Heads
	item('tfcflorae:tools/flint/axe_head/flint'),
	item('tfcflorae:tools/flint/shovel_head/flint'),
	item('tfcflorae:tools/flint/javelin_head/flint'),
	item('tfcflorae:tools/flint/knife_head/flint'),
	item('tfcflorae:tools/flint/hoe_head/flint')
]


def (RemoveRecipesByName) = [
   	"tfc:vanilla/redstone/observer",
	"tfc:vanilla/tnt",
	"tfc:vanilla/flint_and_steel",
	"tfc:vanilla/compass",
	"tfc:vanilla/redstone/redstone_lamp",
	"tfc:vanilla/redstone/piston",
	"tfc:vanilla/redstone/flawless_daylight_detector",
	"tfc:vanilla/redstone/exquisite_daylight_detector",
	"tfc:vanilla/redstone/daylight_detector",
	"tfc:vanilla/redstone/redstone_repeater",
	"tfc:vanilla/redstone/redstone_comparator",
	"tfc:vanilla/redstone/steel_hopper",
	"tfc:vanilla/redstone/hopper",
	"tfc:vanilla/pressure_plate/heavy_weighted_pressure_plate",
	"tfc:vanilla/rail/steel_minecraft",
	"tfc:vanilla/rail/minecraft",
	"tfc:vanilla/lapis_lazuli_block",
	"tfc:vanilla/ladder",
	"tfc:vanilla/painting",
	"tfc:vanilla/item_frame",
	"tfc:vanilla/piston",
	"tfc:vanilla/rail/powered_rail",
	"tfc:vanilla/rail/steel_detector_rail",
	"tfc:vanilla/rail/detector_rail",
	"tfc:vanilla/rail/rail",
	"tfc:vanilla/rail/steel_rail",
	"tfc:vanilla/rail/activator_rail",
	"tfc:vanilla/rail/steel_activator_rail",
	"tfc:vanilla/rail/minecart",
	"tfc:vanilla/rail/steel_minecart",
	"tfc:ceramics/unfired_fire_clay_recycle/fire_brick",
	"tfc:paper",
	"tfc:fire_clay",
	"tfc:vanilla/cauldron",
	"tfc:blast_furnace",
	"tfc:alabaster_brick",
	// Concrete
	"tfc:concrete_white",
	"tfc:concrete_orange",
	"tfc:concrete_magenta",
	"tfc:concrete_light_blue",
	"tfc:concrete_yellow",
	"tfc:concrete_lime",
	"tfc:concrete_pink",
	"tfc:concrete_gray",
	"tfc:concrete_light_gray",
	"tfc:concrete_cyan",
	"tfc:concrete_purple",
	"tfc:concrete_blue",
	"tfc:concrete_brown",
	"tfc:concrete_green",
	"tfc:concrete_red",
	"tfc:concrete_black",
	// Alabaster
	"tfc:plain_alabaster"
] as string[]

def (RemoveItemsQuern) = [
	item('tfc:gem/diamond:2'),
	item('tfc:powder/fertilizer'),
	item('tfc:powder/malachite'),
	item('tfc:powder/limonite'),
	item('tfc:ore/gypsum'),
	item('tfc:powder/hematite'),
	item('minecraft:redstone') * 8,
	item('tfc:powder/flux') * 6
]


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

for item in RemoveRecipesByName{
   crafting.removeByOutputByRecipeName(item)
}

// Удаление неиспользуемых рецептов из Quern
for item in RemoveItemsQuern {
   Quern.removeRecipe(item)
}

// Удаление рецептов сундуков
for item in TFC_Chests {
   crafting.removeByOutput(item)
}

// Удаление рецептов лодок
for item in TFC_Boats {
   crafting.removeByOutput(item)
}

// Удаление некоторых рецептов PigIron
Welding.removeRecipe(item('tfc:metal/double_ingot/pig_iron'))
Anvil.removeRecipe(item('tfc:metal/trapdoor/pig_iron'))

// Унификация высокоуглеродной стали
Anvil.removeRecipe(item('tfc:metal/ingot/high_carbon_steel'))

// Унификация высокоуглеродной черной стали
Welding.removeRecipe(item('tfc:metal/ingot/high_carbon_black_steel'))

// Унификация высокоуглеродной красной стали
Welding.removeRecipe(item('tfc:metal/ingot/high_carbon_red_steel'))

// Унификация высокоуглеродной синей стали
Welding.removeRecipe(item('tfc:metal/ingot/high_carbon_blue_steel'))

// Унификация стали
Anvil.removeRecipe(item('tfc:metal/ingot/steel'))

// Унификация черной стали
Anvil.removeRecipe(item('tfc:metal/ingot/black_steel'))

// Унификация красной стали
Anvil.removeRecipe(item('tfc:metal/ingot/red_steel'))

// Унификация синей стали
Anvil.removeRecipe(item('tfc:metal/ingot/blue_steel'))

// Унификация каолинита(Mica)
Quern.removeRecipe(item('tfc:powder/kaolinite') * 4)
Heating.removeRecipe(item('tfc:powder/kaolinite'))
Oven.removeRecipe(item('tfc:powder/kaolinite'))
Grindstone.remove(item('tfc:powder/kaolinite') * 6)

// Унификация графита
Quern.removeRecipe(item('tfc:powder/graphite') * 4)
Grindstone.remove(item('tfc:powder/graphite') * 6)

// Унификация серы
Quern.removeRecipe(item('tfc:powder/sulfur') * 4)
Grindstone.remove(item('tfc:powder/sulfur') * 8)

// Унификация ляписа
Quern.removeRecipe(item('tfc:powder/lapis_lazuli') * 4)
Grindstone.remove(item('tfc:powder/lapis_lazuli') * 8)

// Унификация древесный уголь
Quern.removeRecipe(item('tfc:powder/charcoal') * 4)
Grindstone.remove(item('tfc:powder/charcoal') * 8)

// Унификация соли
Quern.removeRecipe(item('tfc:powder/salt'))
Grindstone.remove(item('tfc:powder/salt'))

// Унификация сальпетера
Quern.removeRecipe(item('tfc:powder/saltpeter'))
Grindstone.remove(item('tfc:powder/saltpeter'))

// Ром
Barrel.removeRecipe(fluid('rum') * 500)

// Удаление рецептов цемента 4х песок + 4х гравий без словаря руд
// White Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_white') * 144]).remove()
// Orange Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_orange') * 144]).remove()
// Magenta Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_magenta') * 144]).remove()
// Light Blue Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_light_blue') * 144]).remove()
// Yellow Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_yellow') * 144]).remove()
// Lime Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_lime') * 144]).remove()
// Pink Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_pink') * 144]).remove()
// Gray Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_gray') * 144]).remove()
// Light Gray Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_light_gray') * 144]).remove()
// Cyan Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_cyan') * 144]).remove()
// Purple Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_purple') * 144]).remove()
// Blue Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_blue') * 144]).remove()
// Brown Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_brown') * 144]).remove()
// Green Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_green') * 144]).remove()
// Red Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_red') * 144]).remove()
// Black Concrete Powder * 8
mixer.findRecipe(7, [item('minecraft:sand:0') * 4, item('minecraft:gravel:0') * 4], [fluid('dye_black') * 144]).remove()

// Лассо
assembler.findRecipe(2, [item('minecraft:string:0') * 4, item('minecraft:slime_ball:0')], null).remove()

// Песок --') Диоксид кремния
electrolyzer.findRecipe(25, [item('minecraft:sand') * 8], null).remove()

// Удаление рецептов голов каменных инструментов
StoneKnapping.removeRecipe(item('tfc:stone/axe_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/axe_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/axe_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/axe_head/metamorphic'))
StoneKnapping.removeRecipe(item('tfc:stone/shovel_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/shovel_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/shovel_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/shovel_head/metamorphic'))
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/metamorphic'))
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/metamorphic'))
StoneKnapping.removeRecipe(item('tfc:stone/javelin_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/javelin_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/javelin_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/javelin_head/metamorphic'))
StoneKnapping.removeRecipe(item('tfc:stone/hammer_head/igneous_intrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/hammer_head/igneous_extrusive'))
StoneKnapping.removeRecipe(item('tfc:stone/hammer_head/sedimentary'))
StoneKnapping.removeRecipe(item('tfc:stone/hammer_head/metamorphic'))

StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/igneous_intrusive') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/igneous_extrusive') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/sedimentary') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/hoe_head/metamorphic') * 2)

StoneKnapping.removeRecipe(item('tfc:stone/knife_head/igneous_intrusive') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/igneous_extrusive') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/sedimentary') * 2)
StoneKnapping.removeRecipe(item('tfc:stone/knife_head/metamorphic') * 2)

// Удаление голов флинтовых инструментов
StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/axe_head/flint'))
StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/shovel_head/flint'))
StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/javelin_head/flint'))

StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/hoe_head/flint'))
StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/knife_head/flint'))

StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/hoe_head/flint') * 2)
StoneKnapping.removeRecipe(item('tfcflorae:tools/flint/knife_head/flint') * 2)
