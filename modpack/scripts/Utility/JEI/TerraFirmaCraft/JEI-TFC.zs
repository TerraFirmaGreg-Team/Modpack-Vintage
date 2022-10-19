#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.Welding;
import mods.horsepower.Grindstone;
import mods.firmalife.Oven;

// --- Массивы

val RemoveAndHide as IItemStack[] = [
	// Nuggets
	<tfc:metal/nugget/bismuth>,
	<tfc:metal/nugget/bismuth_bronze>,
	<tfc:metal/nugget/black_bronze>,
	<tfc:metal/nugget/brass>,
	<tfc:metal/nugget/bronze>,
	<tfc:metal/nugget/copper>,
	<tfc:metal/nugget/gold>,
	<tfc:metal/nugget/lead>,
	<tfc:metal/nugget/nickel>,
	<tfc:metal/nugget/rose_gold>,
	<tfc:metal/nugget/silver>,
	<tfc:metal/nugget/tin>,
	<tfc:metal/nugget/zinc>,
	<tfc:metal/nugget/sterling_silver>,
	<tfc:metal/nugget/pig_iron>,
	<tfc:metal/nugget/steel>,
	<tfc:metal/nugget/platinum>,
	<tfc:metal/nugget/black_steel>,
	<tfc:metal/nugget/blue_steel>,
	<tfc:metal/nugget/red_steel>,
	<tfc:metal/nugget/wrought_iron>,
	// Dusts
	<tfc:metal/dust/bismuth>,
	<tfc:metal/dust/bismuth_bronze>,
	<tfc:metal/dust/black_bronze>,
	<tfc:metal/dust/brass>,
	<tfc:metal/dust/bronze>,
	<tfc:metal/dust/copper>,
	<tfc:metal/dust/gold>,
	<tfc:metal/dust/lead>,
	<tfc:metal/dust/nickel>,
	<tfc:metal/dust/rose_gold>,
	<tfc:metal/dust/silver>,
	<tfc:metal/dust/tin>,
	<tfc:metal/dust/zinc>,
	<tfc:metal/dust/sterling_silver>,
	<tfc:metal/dust/pig_iron>,
	<tfc:metal/dust/steel>,
	<tfc:metal/dust/platinum>,
	<tfc:metal/dust/black_steel>,
	<tfc:metal/dust/blue_steel>,
	<tfc:metal/dust/red_steel>,
	<tfc:metal/dust/wrought_iron>,
	// Ingot
	<tfc:metal/ingot/bismuth>,
	<tfc:metal/ingot/bismuth_bronze>,
	<tfc:metal/ingot/black_bronze>,
	<tfc:metal/ingot/brass>,
	<tfc:metal/ingot/bronze>,
	<tfc:metal/ingot/copper>,
	<tfc:metal/ingot/gold>,
	<tfc:metal/ingot/lead>,
	<tfc:metal/ingot/nickel>,
	<tfc:metal/ingot/rose_gold>,
	<tfc:metal/ingot/silver>,
	<tfc:metal/ingot/tin>,
	<tfc:metal/ingot/zinc>,
	<tfc:metal/ingot/sterling_silver>,
	// <tfc:metal/ingot/pig_iron>,
	<tfc:metal/ingot/steel>,
	<tfc:metal/ingot/platinum>,
	<tfc:metal/ingot/black_steel>,
	<tfc:metal/ingot/blue_steel>,
	<tfc:metal/ingot/red_steel>,
	// <tfc:metal/ingot/wrought_iron>,
	// Plate
	<tfc:metal/sheet/bismuth>,
	<tfc:metal/sheet/bismuth_bronze>,
	<tfc:metal/sheet/black_bronze>,
	<tfc:metal/sheet/brass>,
	<tfc:metal/sheet/bronze>,
	<tfc:metal/sheet/copper>,
	<tfc:metal/sheet/gold>,
	<tfc:metal/sheet/lead>,
	<tfc:metal/sheet/nickel>,
	<tfc:metal/sheet/rose_gold>,
	<tfc:metal/sheet/silver>,
	<tfc:metal/sheet/tin>,
	<tfc:metal/sheet/zinc>,
	<tfc:metal/sheet/sterling_silver>,
	<tfc:metal/sheet/pig_iron>,
	<tfc:metal/sheet/steel>,
	<tfc:metal/sheet/platinum>,
	<tfc:metal/sheet/black_steel>,
	<tfc:metal/sheet/blue_steel>,
	<tfc:metal/sheet/red_steel>,
	// <tfc:metal/sheet/wrought_iron>,
	// Double Ingots
	<tfc:metal/double_ingot/pig_iron>,
	// Double Plates
	<tfc:metal/double_sheet/bismuth>,
	<tfc:metal/double_sheet/bismuth_bronze>,
	<tfc:metal/double_sheet/black_bronze>,
	<tfc:metal/double_sheet/brass>,
	<tfc:metal/double_sheet/bronze>,
	<tfc:metal/double_sheet/copper>,
	<tfc:metal/double_sheet/gold>,
	<tfc:metal/double_sheet/lead>,
	<tfc:metal/double_sheet/nickel>,
	<tfc:metal/double_sheet/rose_gold>,
	<tfc:metal/double_sheet/silver>,
	<tfc:metal/double_sheet/tin>,
	<tfc:metal/double_sheet/zinc>,
	<tfc:metal/double_sheet/sterling_silver>,
	<tfc:metal/double_sheet/wrought_iron>,
	<tfc:metal/double_sheet/pig_iron>,
	<tfc:metal/double_sheet/platinum>,
	<tfc:metal/double_sheet/steel>,
	<tfc:metal/double_sheet/black_steel>,
	<tfc:metal/double_sheet/blue_steel>,
	<tfc:metal/double_sheet/red_steel>,
	// Scrap
	<tfc:metal/scrap/bismuth>,
	<tfc:metal/scrap/bismuth_bronze>,
	<tfc:metal/scrap/black_bronze>,
	<tfc:metal/scrap/brass>,
	<tfc:metal/scrap/bronze>,
	<tfc:metal/scrap/copper>,
	<tfc:metal/scrap/gold>,
	<tfc:metal/scrap/lead>,
	<tfc:metal/scrap/nickel>,
	<tfc:metal/scrap/rose_gold>,
	<tfc:metal/scrap/silver>,
	<tfc:metal/scrap/tin>,
	<tfc:metal/scrap/zinc>,
	<tfc:metal/scrap/sterling_silver>,
	<tfc:metal/scrap/wrought_iron>,
	<tfc:metal/scrap/pig_iron>,
	<tfc:metal/scrap/steel>,
	<tfc:metal/scrap/platinum>,
	<tfc:metal/scrap/black_steel>,
	<tfc:metal/scrap/blue_steel>,
	<tfc:metal/scrap/red_steel>,
	// Trapdoors
	<tfc:metal/trapdoor/pig_iron>,
	// Small Ores
	<tfc:ore/native_copper:*>,
	<tfc:ore/native_gold:*>,
	<tfc:ore/native_platinum:*>,
	<tfc:ore/hematite:*>,
	<tfc:ore/native_silver:*>,
	<tfc:ore/cassiterite:*>,
	<tfc:ore/galena:*>,
	<tfc:ore/bismuthinite:*>,
	<tfc:ore/garnierite:*>,
	<tfc:ore/malachite:*>,
	<tfc:ore/magnetite:*>,
	<tfc:ore/limonite:*>,
	<tfc:ore/sphalerite:*>,
	<tfc:ore/tetrahedrite:*>,
	<tfc:ore/halite:*>,
	// Fake Rods
	<tfc:metal/rod/gold>,
	<tfc:metal/rod/wrought_iron>,
	<tfc:metal/rod/steel>,
	// Pickaxe
	<tfc:metal/pick/bismuth_bronze>,
	<tfc:metal/pick/black_bronze>,
	<tfc:metal/pick/bronze>,
	<tfc:metal/pick/copper>,
	<tfc:metal/pick/wrought_iron>,
	<tfc:metal/pick/steel>,
	<tfc:metal/pick/black_steel>,
	<tfc:metal/pick/blue_steel>,
	<tfc:metal/pick/red_steel>,
	// Pickaxe Heads
	<tfc:metal/pick_head/bismuth_bronze>,
	<tfc:metal/pick_head/black_bronze>,
	<tfc:metal/pick_head/bronze>,
	<tfc:metal/pick_head/copper>,
	<tfc:metal/pick_head/wrought_iron>,
	<tfc:metal/pick_head/steel>,
	<tfc:metal/pick_head/black_steel>,
	<tfc:metal/pick_head/blue_steel>,
	<tfc:metal/pick_head/red_steel>,
	// Axe
	<tfc:metal/axe/bismuth_bronze>,
	<tfc:metal/axe/black_bronze>,
	<tfc:metal/axe/bronze>,
	<tfc:metal/axe/copper>,
	<tfc:metal/axe/wrought_iron>,
	<tfc:metal/axe/steel>,
	<tfc:metal/axe/black_steel>,
	<tfc:metal/axe/blue_steel>,
	<tfc:metal/axe/red_steel>,
	// Axe Heads
	<tfc:metal/axe_head/bismuth_bronze>,
	<tfc:metal/axe_head/black_bronze>,
	<tfc:metal/axe_head/bronze>,
	<tfc:metal/axe_head/copper>,
	<tfc:metal/axe_head/wrought_iron>,
	<tfc:metal/axe_head/steel>,
	<tfc:metal/axe_head/black_steel>,
	<tfc:metal/axe_head/blue_steel>,
	<tfc:metal/axe_head/red_steel>,
	// Shovel
	<tfc:metal/shovel/bismuth_bronze>,
	<tfc:metal/shovel/black_bronze>,
	<tfc:metal/shovel/bronze>,
	<tfc:metal/shovel/copper>,
	<tfc:metal/shovel/wrought_iron>,
	<tfc:metal/shovel/steel>,
	<tfc:metal/shovel/black_steel>,
	<tfc:metal/shovel/blue_steel>,
	<tfc:metal/shovel/red_steel>,
	// Shovel Heads
	<tfc:metal/shovel_head/bismuth_bronze>,
	<tfc:metal/shovel_head/black_bronze>,
	<tfc:metal/shovel_head/bronze>,
	<tfc:metal/shovel_head/copper>,
	<tfc:metal/shovel_head/wrought_iron>,
	<tfc:metal/shovel_head/steel>,
	<tfc:metal/shovel_head/black_steel>,
	<tfc:metal/shovel_head/blue_steel>,
	<tfc:metal/shovel_head/red_steel>,
	// Hoe
	<tfc:metal/hoe/bismuth_bronze>,
	<tfc:metal/hoe/black_bronze>,
	<tfc:metal/hoe/bronze>,
	<tfc:metal/hoe/copper>,
	<tfc:metal/hoe/wrought_iron>,
	<tfc:metal/hoe/steel>,
	<tfc:metal/hoe/black_steel>,
	<tfc:metal/hoe/blue_steel>,
	<tfc:metal/hoe/red_steel>,
	// Hoe Heads
	<tfc:metal/hoe_head/bismuth_bronze>,
	<tfc:metal/hoe_head/black_bronze>,
	<tfc:metal/hoe_head/bronze>,
	<tfc:metal/hoe_head/copper>,
	<tfc:metal/hoe_head/wrought_iron>,
	<tfc:metal/hoe_head/steel>,
	<tfc:metal/hoe_head/black_steel>,
	<tfc:metal/hoe_head/blue_steel>,
	<tfc:metal/hoe_head/red_steel>,
	// Sword
	<tfc:metal/sword/bismuth_bronze>,
	<tfc:metal/sword/black_bronze>,
	<tfc:metal/sword/bronze>,
	<tfc:metal/sword/copper>,
	<tfc:metal/sword/wrought_iron>,
	<tfc:metal/sword/steel>,
	<tfc:metal/sword/black_steel>,
	<tfc:metal/sword/blue_steel>,
	<tfc:metal/sword/red_steel>,
	// Sword Blades
	<tfc:metal/sword_blade/bismuth_bronze>,
	<tfc:metal/sword_blade/black_bronze>,
	<tfc:metal/sword_blade/bronze>,
	<tfc:metal/sword_blade/copper>,
	<tfc:metal/sword_blade/wrought_iron>,
	<tfc:metal/sword_blade/steel>,
	<tfc:metal/sword_blade/black_steel>,
	<tfc:metal/sword_blade/blue_steel>,
	<tfc:metal/sword_blade/red_steel>,
	// Hammers
	<tfc:metal/hammer/copper>,
	<tfc:metal/hammer/bismuth_bronze>,
	<tfc:metal/hammer/bronze>,
	<tfc:metal/hammer/black_bronze>,
	<tfc:metal/hammer/wrought_iron>,
	<tfc:metal/hammer/steel>,
	<tfc:metal/hammer/black_steel>,
	<tfc:metal/hammer/blue_steel>,
	<tfc:metal/hammer/red_steel>,
	// Hammers Heads
	<tfc:metal/hammer_head/copper>,
	<tfc:metal/hammer_head/red_steel>,
	<tfc:metal/hammer_head/blue_steel>,
	<tfc:metal/hammer_head/black_steel>,
	<tfc:metal/hammer_head/steel>,
	<tfc:metal/hammer_head/wrought_iron>,
	<tfc:metal/hammer_head/bronze>,
	<tfc:metal/hammer_head/black_bronze>,
	<tfc:metal/hammer_head/bismuth_bronze>,
	// Saw
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/red_steel>,
	// Saw Heads
	<tfc:metal/saw_blade/copper>,
	<tfc:metal/saw_blade/bronze>,
	<tfc:metal/saw_blade/black_bronze>,
	<tfc:metal/saw_blade/bismuth_bronze>,
	<tfc:metal/saw_blade/red_steel>,
	<tfc:metal/saw_blade/blue_steel>,
	<tfc:metal/saw_blade/black_steel>,
	<tfc:metal/saw_blade/steel>,
	<tfc:metal/saw_blade/wrought_iron>,
	// Knife
	<tfc:metal/knife/copper>,
	<tfc:metal/knife/bismuth_bronze>,
	<tfc:metal/knife/bronze>,
	<tfc:metal/knife/black_bronze>,
	<tfc:metal/knife/wrought_iron>,
	<tfc:metal/knife/steel>,
	<tfc:metal/knife/black_steel>,
	<tfc:metal/knife/blue_steel>,
	<tfc:metal/knife/red_steel>,
	// Knife Heads
	<tfc:metal/knife_blade/bismuth_bronze>,
	<tfc:metal/knife_blade/black_bronze>,
	<tfc:metal/knife_blade/bronze>,
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/wrought_iron>,
	<tfc:metal/knife_blade/steel>,
	<tfc:metal/knife_blade/black_steel>,
	<tfc:metal/knife_blade/blue_steel>,
	<tfc:metal/knife_blade/red_steel>,
	// Scythe
	<tfc:metal/scythe/bismuth_bronze>,
	<tfc:metal/scythe/black_bronze>,
	<tfc:metal/scythe/bronze>,
	<tfc:metal/scythe/copper>,
	<tfc:metal/scythe/wrought_iron>,
	<tfc:metal/scythe/steel>,
	<tfc:metal/scythe/black_steel>,
	<tfc:metal/scythe/blue_steel>,
	<tfc:metal/scythe/red_steel>,
	// Scythe Heads
	<tfc:metal/scythe_blade/bismuth_bronze>,
	<tfc:metal/scythe_blade/black_bronze>,
	<tfc:metal/scythe_blade/bronze>,
	<tfc:metal/scythe_blade/copper>,
	<tfc:metal/scythe_blade/wrought_iron>,
	<tfc:metal/scythe_blade/steel>,
	<tfc:metal/scythe_blade/black_steel>,
	<tfc:metal/scythe_blade/blue_steel>,
	<tfc:metal/scythe_blade/red_steel>,
	// Gems [Hidden]
	<tfc:gem/beryl:*>,
	<tfc:gem/agate:*>,
	<tfc:gem/tourmaline:*>,
	<tfc:gem/jade:*>,
	<tfc:gem/jasper:*>,
	// Gems [Unhidden]
	<tfc:gem/amethyst:*>,
	<tfc:gem/emerald:*>,
	<tfc:gem/diamond:*>,
	<tfc:gem/garnet:*>,
	<tfc:gem/opal:*>,
	<tfc:gem/ruby:*>,
	<tfc:gem/sapphire:*>,
	<tfc:gem/topaz:*>,
	// Ores
	<tfc:ore/serpentine>,
	<tfc:ore/sylvite>,
	<tfc:ore/borax>,
	<tfc:ore/olivine>,
	<tfc:ore/lapis_lazuli>,
	<tfc:ore/small/native_copper>,
	<tfc:ore/small/native_gold>,
	<tfc:ore/small/native_platinum>,
	<tfc:ore/small/hematite>,
	<tfc:ore/small/native_silver>,
	<tfc:ore/small/cassiterite>,
	<tfc:ore/small/galena>,
	<tfc:ore/small/bismuthinite>,
	<tfc:ore/small/garnierite>,
	<tfc:ore/small/malachite>,
	<tfc:ore/small/magnetite>,
	<tfc:ore/small/limonite>,
	<tfc:ore/small/sphalerite>,
	<tfc:ore/small/tetrahedrite>,
	<tfc:ore/kaolinite>,
	<tfc:ore/gypsum>,
	<tfc:ore/satinspar>,
	<tfc:ore/selenite>,
	<tfc:ore/kimberlite>,
	<tfc:ore/petrified_wood>,
	<tfc:ore/sulfur>,
	<tfc:ore/jet>,
	<tfc:ore/microcline>,
	<tfc:ore/pitchblende>,
	<tfc:ore/cinnabar>,
	<tfc:ore/cryolite>,
	<tfc:ore/saltpeter>,
	// Powder
	<tfc:powder/saltpeter>,
	<tfc:powder/salt>,
	<tfc:powder/sulfur>,
	<tfc:powder/lapis_lazuli>,
	<tfc:powder/limonite>,
	<tfc:powder/malachite>,
	<tfc:powder/charcoal>,
	<tfc:powder/hematite>,
	// Other
	<tfc:ore/graphite>,
	<tfc:ore/bituminous_coal>,
	<tfc:ore/lignite>,
	<tfc:sluice>,
	<tfc:powder/coke>,
	<tfc:metal/bucket/blue_steel>,
	// Dups
	<tfc:wood/sapling/joshua_tree>,
	<tfc:wood/log/joshua_tree>
];


val RemoveRecipesByName = [
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
] as string[];

val RemoveItemsQuern as IItemStack[] = [
	<tfc:gem/diamond:2>,
	<tfc:powder/fertilizer>,
	<tfc:powder/malachite>,
	<tfc:powder/limonite>,
	<tfc:ore/gypsum>,
	<tfc:powder/hematite>,
	<minecraft:redstone> * 8,
	<tfc:powder/flux> * 6
];


// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipesByName{
   recipes.removeByRecipeName(item);
}

// Удаление неиспользуемых рецептов из Quern
for item in RemoveItemsQuern {
   Quern.removeRecipe(item);
}

// Удаление рецептов сундуков
for item in TFC_Chests {
   recipes.remove(item);
}

// Удаление рецептов лодок
for item in TFC_Boats {
   recipes.remove(item);
}

// Удаление некоторых рецептов PigIron
Welding.removeRecipe(<tfc:metal/double_ingot/pig_iron>);
Anvil.removeRecipe(<tfc:metal/trapdoor/pig_iron>);

// Унификация высокоуглеродной стали
Anvil.removeRecipe(<tfc:metal/ingot/high_carbon_steel>);

// Унификация высокоуглеродной черной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_black_steel>);

// Унификация высокоуглеродной красной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_red_steel>);

// Унификация высокоуглеродной синей стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_blue_steel>);

// Унификация стали
Anvil.removeRecipe(<tfc:metal/ingot/steel>);

// Унификация черной стали
Anvil.removeRecipe(<tfc:metal/ingot/black_steel>);

// Унификация красной стали
Anvil.removeRecipe(<tfc:metal/ingot/red_steel>);

// Унификация синей стали
Anvil.removeRecipe(<tfc:metal/ingot/blue_steel>);

// Унификация каолинита(Mica)
Quern.removeRecipe(<tfc:powder/kaolinite> * 4);
Heating.removeRecipe(<tfc:powder/kaolinite>);
Oven.removeRecipe(<tfc:powder/kaolinite>);
Grindstone.remove(<tfc:powder/kaolinite> * 6);

// Унификация графита
Quern.removeRecipe(<tfc:powder/graphite> * 4);
Grindstone.remove(<tfc:powder/graphite> * 6);

// Унификация серы
Quern.removeRecipe(<tfc:powder/sulfur> * 4);
Grindstone.remove(<tfc:powder/sulfur> * 8);

// Унификация ляписа
Quern.removeRecipe(<tfc:powder/lapis_lazuli> * 4);
Grindstone.remove(<tfc:powder/lapis_lazuli> * 8);

// Унификация древесный уголь
Quern.removeRecipe(<tfc:powder/charcoal> * 4);
Grindstone.remove(<tfc:powder/charcoal> * 8);

// Унификация соли
Quern.removeRecipe(<tfc:powder/salt>);
Grindstone.remove(<tfc:powder/salt>);

// Унификация сальпетера
Quern.removeRecipe(<tfc:powder/saltpeter>);
Grindstone.remove(<tfc:powder/saltpeter>);

// Ром
Barrel.removeRecipe(<liquid:rum> * 500);

// Удаление рецептов цемента 4х песок + 4х гравий без словаря руд
// White Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_white> * 144]).remove();
// Orange Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_orange> * 144]).remove();
// Magenta Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_magenta> * 144]).remove();
// Light Blue Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_light_blue> * 144]).remove();
// Yellow Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_yellow> * 144]).remove();
// Lime Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_lime> * 144]).remove();
// Pink Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_pink> * 144]).remove();
// Gray Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_gray> * 144]).remove();
// Light Gray Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_light_gray> * 144]).remove();
// Cyan Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_cyan> * 144]).remove();
// Purple Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_purple> * 144]).remove();
// Blue Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_blue> * 144]).remove();
// Brown Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_brown> * 144]).remove();
// Green Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_green> * 144]).remove();
// Red Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_red> * 144]).remove();
// Black Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_black> * 144]).remove();

// Лассо
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball:0>], null).remove();

// Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand> * 8], null).remove();