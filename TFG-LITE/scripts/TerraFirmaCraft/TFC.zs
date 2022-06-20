import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.horsepower.Grindstone;

import mods.firmalife.Oven;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.LeatherKnapping;

// --- Массивы

val AllClays = <minecraft:clay_ball> | <tfcflorae:ceramics/earthenware/earthenware_clay> | <tfcflorae:ceramics/kaolinite/kaolinite_clay> | <tfcflorae:ceramics/stoneware/stoneware_clay>;

val RemoveItemRecipesByName = [
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
	"tfc:blast_furnace"
] as string[];

val RemoveRecipesInBarrel = [
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
	"tfc:concrete_black"
] as string[];

val RemoveItemsFromQuern as IItemStack[] = [
	<tfc:gem/diamond:2>,
	<tfc:powder/fertilizer>,
	<tfc:powder/malachite>,
	<tfc:powder/limonite>,
	<tfc:ore/gypsum>,
	<tfc:powder/hematite>,
	<minecraft:redstone> * 8,
	<tfc:powder/flux> * 6,
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Удаление рецептов цемента из бочки
for item in RemoveRecipesInBarrel {
    recipes.removeByRecipeName(item);
}

// Удаление неиспользуемых рецептов из Quern
for item in RemoveItemsFromQuern {
    Quern.removeRecipe(item);
}

// Удаление некоторых рецептов PigIron
Welding.removeRecipe(<tfc:metal/double_ingot/pig_iron>);
Anvil.removeRecipe(<tfc:metal/trapdoor/pig_iron>);

// Удаление рецептов сундуков
for item in TFC_Chests {
    recipes.remove(item);
}

// Удаление рецептов лодок
for item in TFC_Boats {
    recipes.remove(item);
}

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

// --- Добавление рецептов

// Регистрация металла
ItemRegistry.registerItemMetal(<tfc:metal/bucket/red_steel>, "WROUGHT_IRON", 144, true);

// Новые рецепты ковки GT мечей
Anvil.addRecipe("tfg/tfc/sword_blade/copper", <ore:ingotDoubleCopper>, <metaitem:toolHeadSwordCopper>, 1, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/bismuth_bronze", <ore:ingotDoubleBismuthBronze>, <metaitem:toolHeadSwordBismuthBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/black_bronze", <ore:ingotDoubleBlackBronze>, <metaitem:toolHeadSwordBlackBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/bronze", <ore:ingotDoubleBronze>, <metaitem:toolHeadSwordBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/wrought_iron", <ore:ingotDoubleWroughtIron>, <metaitem:toolHeadSwordWroughtIron>, 3, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/steel", <ore:ingotDoubleSteel>, <metaitem:toolHeadSwordSteel>, 4, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/black_steel", <ore:ingotDoubleBlackSteel>, <metaitem:toolHeadSwordBlackSteel>, 5, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/blue_steel", <ore:ingotDoubleBlueSteel>, <metaitem:toolHeadSwordBlueSteel>, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sword_blade/red_steel", <ore:ingotDoubleRedSteel>, <metaitem:toolHeadSwordRedSteel>, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

// Новые рецепты ковки GT кирок
Anvil.addRecipe("tfg/tfc/pick_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadPickaxeCopper>, 1, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadPickaxeBismuthBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadPickaxeBlackBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadPickaxeBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadPickaxeWroughtIron>, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadPickaxeSteel>, 4, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadPickaxeBlackSteel>, 5, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadPickaxeBlueSteel>, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg/tfc/pick_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadPickaxeRedSteel>, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");

// Новые рецепты ковки GT топоров
Anvil.addRecipe("tfg/tfc/axe_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadAxeCopper>, 1, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadAxeBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadAxeBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadAxeBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadAxeWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadAxeSteel>, 4, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadAxeBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadAxeBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/axe_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadAxeRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");

// Новые рецепты ковки GT лопат
Anvil.addRecipe("tfg/tfc/shovel_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadShovelCopper>, 1, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadShovelBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadShovelBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadShovelBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadShovelWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadShovelSteel>, 4, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadShovelBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadShovelBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfg/tfc/shovel_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadShovelRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST");

// Новые рецепты ковки GT мотыг
Anvil.addRecipe("tfg/tfc/hoe_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadHoeCopper>, 1, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadHoeBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadHoeBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadHoeBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadHoeWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadHoeSteel>, 4, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadHoeBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadHoeBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hoe_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadHoeRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

// Новые рецепты ковки GT пил
Anvil.addRecipe("tfg/tfc/saw_blade/copper", <metaitem:ingotCopper>, <metaitem:toolHeadSawCopper>, 1, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadSawBismuthBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadSawBlackBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadSawBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadSawWroughtIron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/steel", <metaitem:ingotSteel>, <metaitem:toolHeadSawSteel>, 4, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadSawBlackSteel>, 5, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadSawBlueSteel>, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg/tfc/saw_blade/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadSawRedSteel>, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");

// Новые рецепты ковки GT молотков
Anvil.addRecipe("tfg/tfc/hammer_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadHammerCopper>, 1, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadHammerBismuthBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadHammerBlackBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadHammerBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadHammerWroughtIron>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadHammerSteel>, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadHammerBlackSteel>, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadHammerBlueSteel>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/hammer_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadHammerRedSteel>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

// Новые рецепты ковки GT ножей
Anvil.addRecipe("tfg/tfc/knife_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadKnifeCopper>, 1, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadKnifeBismuthBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadKnifeBlackBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadKnifeBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadKnifeWroughtIron>, 3, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadKnifeSteel>, 4, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadKnifeBlackSteel>, 5, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadKnifeBlueSteel>, 6, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/knife_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadKnifeRedSteel>, 6, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "DRAW_THIRD_LAST");

// Новые рецепты ковки GT кос
Anvil.addRecipe("tfg/tfc/sense_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadSenseCopper>, 1, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadSenseBismuthBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadSenseBlackBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadSenseBronze>, 2, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadSenseWroughtIron>, 3, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadSenseSteel>, 4, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadSenseBlackSteel>, 5, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadSenseBlueSteel>, 6, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/sense_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadSenseRedSteel>, 6, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");

// Крафт голов напильков GT
Anvil.addRecipe("tfg/tfc/file_head/copper", <metaitem:ingotCopper>, <metaitem:toolHeadFileCopper>, 1, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/bronze", <metaitem:ingotBronze>, <metaitem:toolHeadFileBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:toolHeadFileBismuthBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:toolHeadFileBlackBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:toolHeadFileWroughtIron>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg/tfc/file_head/steel", <metaitem:ingotSteel>, <metaitem:toolHeadFileSteel>, 4, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/black_steel", <metaitem:ingotBlackSteel>, <metaitem:toolHeadFileBlackSteel>, 5, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/red_steel", <metaitem:ingotRedSteel>, <metaitem:toolHeadFileRedSteel>, 6, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg/tfc/file_head/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:toolHeadFileBlueSteel>, 6, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

// Крафт ножниц
Welding.addRecipe("tfg/tfc/shears/copper", <metaitem:toolHeadKnifeCopper>, <metaitem:toolHeadKnifeCopper>, <tfc:metal/shears/copper>, 1);
Welding.addRecipe("tfg/tfc/shears/bronze", <metaitem:toolHeadKnifeBronze>, <metaitem:toolHeadKnifeBronze>, <tfc:metal/shears/bronze>, 2);
Welding.addRecipe("tfg/tfc/shears/bismuth_bronze", <metaitem:toolHeadKnifeBismuthBronze>, <metaitem:toolHeadKnifeBismuthBronze>, <tfc:metal/shears/bismuth_bronze>, 2);
Welding.addRecipe("tfg/tfc/shears/black_bronze", <metaitem:toolHeadKnifeBlackBronze>, <metaitem:toolHeadKnifeBlackBronze>, <tfc:metal/shears/black_bronze>, 2);
Welding.addRecipe("tfg/tfc/shears/wrought_iron", <metaitem:toolHeadKnifeWroughtIron>, <metaitem:toolHeadKnifeWroughtIron>, <tfc:metal/shears/wrought_iron>, 3);
Welding.addRecipe("tfg/tfc/shears/steel", <metaitem:toolHeadKnifeSteel>, <metaitem:toolHeadKnifeSteel>, <tfc:metal/shears/steel>, 4);
Welding.addRecipe("tfg/tfc/shears/black_steel", <metaitem:toolHeadKnifeBlackSteel>, <metaitem:toolHeadKnifeBlackSteel>, <tfc:metal/shears/black_steel>, 5);
Welding.addRecipe("tfg/tfc/shears/red_steel", <metaitem:toolHeadKnifeRedSteel>, <metaitem:toolHeadKnifeRedSteel>, <tfc:metal/shears/red_steel>, 6);
Welding.addRecipe("tfg/tfc/shears/blue_steel", <metaitem:toolHeadKnifeBlueSteel>, <metaitem:toolHeadKnifeBlueSteel>, <tfc:metal/shears/blue_steel>, 6);

// --- Унификация пластин
Anvil.addRecipe("tfg/tfc/plate/bismuth", <metaitem:ingotBismuth>, <metaitem:plateBismuth>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/bismuth_bronze", <metaitem:ingotBismuthBronze>, <metaitem:plateBismuthBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/black_bronze", <metaitem:ingotBlackBronze>, <metaitem:plateBlackBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/brass", <metaitem:ingotBrass>, <metaitem:plateBrass>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/bronze", <metaitem:ingotBronze>, <metaitem:plateBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/copper", <metaitem:ingotCopper>, <metaitem:plateCopper>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/gold", <minecraft:gold_ingot>, <metaitem:plateGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/lead", <metaitem:ingotLead>, <metaitem:plateLead>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/nickel", <metaitem:ingotNickel>, <metaitem:plateNickel>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/rose_gold", <metaitem:ingotRoseGold>, <metaitem:plateRoseGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/silver", <metaitem:ingotSilver>, <metaitem:plateSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/tin", <metaitem:ingotTin>, <metaitem:plateTin>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/zinc", <metaitem:ingotZinc>, <metaitem:plateZinc>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/sterling_silver", <metaitem:ingotSterlingSilver>, <metaitem:plateSterlingSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/wrought_iron", <metaitem:ingotWroughtIron>, <metaitem:plateWroughtIron>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/steel", <metaitem:ingotSteel>, <metaitem:plateSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/platinum", <metaitem:ingotPlatinum>, <metaitem:platePlatinum>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/black_steel", <metaitem:ingotBlackSteel>, <metaitem:plateBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/blue_steel", <metaitem:ingotBlueSteel>, <metaitem:plateBlueSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfg/tfc/plate/red_steel", <metaitem:ingotRedSteel>, <metaitem:plateRedSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация двойных пластин
Welding.addRecipe("tfg/tfc/double_plate/bismuth", <metaitem:plateBismuth>, <metaitem:plateBismuth>, <metaitem:plateDoubleBismuth>, 1);
Welding.addRecipe("tfg/tfc/double_plate/bismuth_bronze", <metaitem:plateBismuthBronze>, <metaitem:plateBismuthBronze>, <metaitem:plateDoubleBismuthBronze>, 2);
Welding.addRecipe("tfg/tfc/double_plate/black_bronze", <metaitem:plateBlackBronze>, <metaitem:plateBlackBronze>, <metaitem:plateDoubleBlackBronze>, 2);
Welding.addRecipe("tfg/tfc/double_plate/brass", <metaitem:plateBrass>, <metaitem:plateBrass>, <metaitem:plateDoubleBrass>, 1);
Welding.addRecipe("tfg/tfc/double_plate/bronze", <metaitem:plateBronze>, <metaitem:plateBronze>, <metaitem:plateDoubleBronze>, 2);
Welding.addRecipe("tfg/tfc/double_plate/copper", <metaitem:plateCopper>, <metaitem:plateCopper>, <metaitem:plateDoubleCopper>, 1);
Welding.addRecipe("tfg/tfc/double_plate/gold", <metaitem:plateGold>, <metaitem:plateGold>, <metaitem:plateDoubleGold>, 1);
Welding.addRecipe("tfg/tfc/double_plate/lead", <metaitem:plateLead>, <metaitem:plateLead>, <metaitem:plateDoubleLead>, 1);
Welding.addRecipe("tfg/tfc/double_plate/nickel", <metaitem:plateNickel>, <metaitem:plateNickel>, <metaitem:plateDoubleNickel>, 1);
Welding.addRecipe("tfg/tfc/double_plate/rose_gold", <metaitem:plateRoseGold>, <metaitem:plateRoseGold>, <metaitem:plateDoubleRoseGold>, 1);
Welding.addRecipe("tfg/tfc/double_plate/silver", <metaitem:plateSilver>, <metaitem:plateSilver>, <metaitem:plateDoubleSilver>, 1);
Welding.addRecipe("tfg/tfc/double_plate/tin", <metaitem:plateTin>, <metaitem:plateTin>, <metaitem:plateDoubleTin>, 1);
Welding.addRecipe("tfg/tfc/double_plate/zinc", <metaitem:plateZinc>, <metaitem:plateZinc>, <metaitem:plateDoubleZinc>, 1);
Welding.addRecipe("tfg/tfc/double_plate/sterling_silver", <metaitem:plateSterlingSilver>, <metaitem:plateSterlingSilver>, <metaitem:plateDoubleSterlingSilver>, 1);
Welding.addRecipe("tfg/tfc/double_plate/wrought_iron", <metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:plateDoubleWroughtIron>, 3);
Welding.addRecipe("tfg/tfc/double_plate/steel", <metaitem:plateSteel>, <metaitem:plateSteel>, <metaitem:plateDoubleSteel>, 4);
Welding.addRecipe("tfg/tfc/double_plate/platinum", <metaitem:platePlatinum>, <metaitem:platePlatinum>, <metaitem:plateDoublePlatinum>, 5);
Welding.addRecipe("tfg/tfc/double_plate/black_steel", <metaitem:plateBlackSteel>, <metaitem:plateBlackSteel>, <metaitem:plateDoubleBlackSteel>, 5);
Welding.addRecipe("tfg/tfc/double_plate/blue_steel", <metaitem:plateBlueSteel>, <metaitem:plateBlueSteel>, <metaitem:plateDoubleBlueSteel>, 6);
Welding.addRecipe("tfg/tfc/double_plate/red_steel", <metaitem:plateRedSteel>, <metaitem:plateRedSteel>, <metaitem:plateDoubleRedSteel>, 6);

//  Унификация высокоуглеродной стали
Anvil.addRecipe("tfg/tfc/high_carbon_steel", <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_steel>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Унификация высокоуглеродной черной стали
Welding.addRecipe("tfg/tfc/high_carbon_black_steel", <tfc:metal/ingot/weak_steel>, <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_black_steel>, 3);

// Унификация высокоуглеродной красной стали
Welding.addRecipe("tfg/tfc/high_carbon_red_steel", <tfc:metal/ingot/weak_red_steel>, <metaitem:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_red_steel>, 4);

// Унификация высокоуглеродной синей стали
Welding.addRecipe("tfg/tfc/high_carbon_blue_steel", <tfc:metal/ingot/weak_blue_steel>, <metaitem:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_blue_steel>, 4);

// Унификация стали
Anvil.addRecipe("tfg/tfc/steel_ingot", <tfc:metal/ingot/high_carbon_steel>, <metaitem:ingotSteel>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Унификация черной стали
Anvil.addRecipe("tfg/tfc/black_steel_ingot", <tfc:metal/ingot/high_carbon_black_steel>, <metaitem:ingotBlackSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Унификация красной стали
Anvil.addRecipe("tfg/tfc/red_steel_ingot", <tfc:metal/ingot/high_carbon_red_steel>, <metaitem:ingotRedSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Унификация синей стали
Anvil.addRecipe("tfg/tfc/blue_steel_ingot", <tfc:metal/ingot/high_carbon_blue_steel>, <metaitem:ingotBlueSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Унификация каолинита(Mica)
Quern.addRecipe("tfg/tfc/quern_mica_to_kaolinite", <metaitem:dustMica>, <tfc:powder/kaolinite> * 2);
Grindstone.add(<metaitem:dustMica>, <tfc:powder/kaolinite> * 4, 10, false);

// Унификация графита
Quern.addRecipe("tfg/tfc/quern_graphite_to_graphite", <metaitem:dustGraphite>, <tfc:powder/graphite> * 2);
Grindstone.add(<metaitem:dustGraphite>, <tfc:powder/graphite> * 4, 10, false);

// Унификация соли
Quern.addRecipe("tfg/tfc/quern_saltrock_to_salt", <tfc:rock/rocksalt>, <metaitem:dustSalt> * 4);
Grindstone.add(<tfc:rock/rocksalt>, <metaitem:dustSalt> * 8, 10, false);

// Обшивка доменной печи
Welding.addRecipe("tfg/tfc/blast_furnace_cladding", <metaitem:plateWroughtIron>, <metaitem:plateCopper>, <tfc:metal/sheet/wrought_iron>, 3);

// Ведро из красной стали
Anvil.addRecipe("tfg/tfc/bucket/red_steel", <metaitem:plateWroughtIron>, <tfc:metal/bucket/red_steel>, 3, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

// Гриль
Anvil.addRecipe("tfg/tfc/grill", <metaitem:plateDoubleWroughtIron>, <tfc:wrought_iron_grill>, 3, "general", "DRAW_ANY", "PUNCH_LAST", "PUNCH_NOT_LAST");

// Железная дверь
Anvil.addRecipe("tfg/tfc/iron_door", <metaitem:plateDoubleWroughtIron>, <minecraft:iron_door>, 3, "general", "HIT_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");

// Iron Bars x8
Anvil.addRecipe("tfg/tfc/iron_bars", <metaitem:plateWroughtIron>, <minecraft:iron_bars> * 8, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

// Iron Bars x16
Anvil.addRecipe("tfg/tfc/iron_bars_double", <metaitem:plateDoubleWroughtIron>, <minecraft:iron_bars> * 16, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

// Unfinished Wrought Iron Ingot -> Wrought Iron Ingot
Anvil.addRecipe("tfg/tfc/wrought_iron_to_wrought_iron", <tfc:metal/ingot/wrought_iron>, <metaitem:ingotWroughtIron>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Ром
Barrel.addRecipe("tfg/tfc/rum", <minecraft:sugar>, <liquid:hot_water> * 500, <liquid:rum> * 500, 72);

// Липкая резина
Barrel.addRecipe("tfg/tfc/sticky_resin", <tfctech:latex/rubber_mix>, <liquid:latex> * 250, <metaitem:rubber_drop>, 6);

// Flux в молотилке
Quern.addRecipe("tfg/tfc/flux_rock_to_flux", <ore:rockFlux>, <tfc:powder/flux> * 2);

// Фикс палок из люмбера
recipes.addShapeless("tfg/tfc/stick_from_lumber", <minecraft:stick> * 6, [<ore:lumber>, <ore:gtce.tool.saws>]);

// Контроллер доменной печи
recipes.addShaped("tfg/tfc/blast_furnace", <tfc:blast_furnace>, [
	[<ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>],
    [<ore:plateDoubleIronAny>, <tfc:crucible>, <ore:plateDoubleIronAny>],
    [<ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>]]);

// Огнеупорная глина
recipes.addShaped("tfg/tfc/fire_clay", <tfc:ceramics/fire_clay>, [
	[<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>],
	[<tfc:powder/graphite>, AllClays, <tfc:powder/graphite>],
	[<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>]]);

// TFC Resin --> Sticky resin
furnace.addRecipe(<metaitem:rubber_drop>, <tfc:plants/resin>);

// Рецепты для всех сырых камней
for item in TFC_Raws {
    rock_breaker.recipeBuilder()
    	.notConsumable(item)
    	.outputs(item)
    	.duration(16).EUt(32).buildAndRegister();
}

// Сырой камень -> Булыжник
for i, TFC_Cobbles in TFC_Cobbles {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Raws[i]])
    	.outputs(TFC_Cobbles)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой камень -> Гладкий
for i, TFC_Smooths in TFC_Smooths {
    laser_engraver.recipeBuilder()
    	.inputs([TFC_Raws[i]])
		.notConsumable(<ore:craftingLensGlass>)
    	.outputs(TFC_Smooths)
    	.duration(200).EUt(30).buildAndRegister();
}

// Булыжник -> Гравий
for i, TFC_Gravel in TFC_Gravel {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Gravel)
    	.duration(200).EUt(7).buildAndRegister();
}

// Гравий -> Песок
for i, TFC_Sands in TFC_Sands {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Gravel[i]])
    	.outputs(TFC_Sands)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Блоки кирпичей
for i, TFC_Bricks_Block in TFC_Bricks_Block {
    assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Item[i] * 4])
		.circuit(4)
		.fluidInputs([<liquid:concrete> * 100])
    	.outputs(TFC_Bricks_Block * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Блоки кирпичей
for i, TFC_Mud_Bricks_Block in TFC_Mud_Bricks_Block {
    assembler.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Item[i] * 4])
		.circuit(4)
		.fluidInputs([<liquid:concrete> * 100])
    	.outputs(TFC_Mud_Bricks_Block * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Булыжник -> Полублок
for i, TFC_Slabs_Cobble in TFC_Slabs_Cobble {
    cutter.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Slabs_Cobble * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Булыжник -> Ступенька
for i, TFC_Stairs_Cobble in TFC_Stairs_Cobble {
    assembler.recipeBuilder()
    	.inputs([TFC_Cobbles[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Cobble * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Полублок
for i, TFC_Slabs_Bricks in TFC_Slabs_Bricks {
    cutter.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i]])
    	.outputs(TFC_Slabs_Bricks * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Ступенька
for i, TFC_Stairs_Bricks in TFC_Stairs_Bricks {
    assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Bricks * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Гладкий блок -> Полублок
for i, TFC_Slabs_Smooth in TFC_Slabs_Smooth {
    cutter.recipeBuilder()
    	.inputs([TFC_Smooths[i]])
    	.outputs(TFC_Slabs_Smooth * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Гладкий блок -> Ступенька
for i, TFC_Stairs_Smooth in TFC_Stairs_Smooth {
    assembler.recipeBuilder()
    	.inputs([TFC_Smooths[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Smooth * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой блок -> Полублок
for i, TFC_Raw_Slabs in TFC_Raw_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Raws[i]])
    	.outputs(TFC_Raw_Slabs * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой блок -> Ступенька
for i, TFC_Raw_Stairs in TFC_Raw_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Raws[i] * 6])
		.circuit(7)
    	.outputs(TFC_Raw_Stairs * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Полублок
for i, TFC_Mud_Bricks_Slabs in TFC_Mud_Bricks_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Block[i]])
    	.outputs(TFC_Mud_Bricks_Slabs * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Ступенька
for i, TFC_Mud_Bricks_Stairs in TFC_Mud_Bricks_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Block[i] * 6])
		.circuit(7)
    	.outputs(TFC_Mud_Bricks_Stairs)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой камень -> Нажимные каменные пластины
for i, TFC_Stone_Pressure_Plates in TFC_Stone_Pressure_Plates {
    assembler.recipeBuilder()
    	.inputs([TFC_Raws[i] * 2, <metaitem:springIron>])
    	.outputs(TFC_Stone_Pressure_Plates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Нажимные каменные пластины -> Кнопки
for i, TFC_Stone_Buttons in TFC_Stone_Buttons {
    cutter.recipeBuilder()
    	.inputs([TFC_Stone_Pressure_Plates[i] * 6])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Stone_Buttons * 12)
    	.duration(200).EUt(7).buildAndRegister();
}

// Дерево -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
    cutter.recipeBuilder()
    	.inputs([TFC_Logs[i]])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Lumber * 16, <metaitem:dustWood> * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
    cutter.recipeBuilder()
    	.inputs([TFC_Planks[i]])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Lumber * 8, <metaitem:dustWood> * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Пиломатериалы -> Доски
for i, TFC_Planks in TFC_Planks {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 4])
		.circuit(3)
    	.outputs(TFC_Planks)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Полу-блоки
for i, TFC_Slabs in TFC_Slabs {
	assembler.recipeBuilder()
    	.inputs([TFC_Planks[i]])
		.circuit(6)
    	.outputs(TFC_Slabs * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Ступеньки
for i, TFC_Stairs in TFC_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Нажимные деревянные пластины
for i, TFC_Pressure_Plates in TFC_Pressure_Plates {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <metaitem:springIron>])
		.circuit(4)
    	.outputs(TFC_Pressure_Plates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Нажимные деревянные пластины -> Кнопки
for i, TFC_Buttons in TFC_Buttons {
    cutter.recipeBuilder()
    	.inputs([TFC_Pressure_Plates[i] * 6])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Buttons * 12)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Забор
for i, TFC_Fences in TFC_Fences {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <minecraft:stick> * 2])
		.circuit(1)
    	.outputs(TFC_Fences * 8)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Калитка
for i, TFC_Fence_Gates in TFC_Fence_Gates {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <minecraft:stick> * 3])
		.circuit(2)
    	.outputs(TFC_Fence_Gates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Забор из бревен
for i, TFC_Fence_Log in TFC_Fence_Log {
    assembler.recipeBuilder()
    	.inputs([TFC_Logs[i + 83] * 2, <minecraft:stick> * 3])
		.circuit(1)
    	.outputs(TFC_Fence_Log * 8)
    	.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Калитка из бревен
for i, TFC_Fence_Gates_Log in TFC_Fence_Gates_Log {
    assembler.recipeBuilder()
    	.inputs([TFC_Logs[i] * 2, <minecraft:stick> * 3])
		.circuit(2)
    	.outputs(TFC_Fence_Gates_Log * 8)
    	.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Опоры
for i, TFC_Supports in TFC_Supports {
    assembler.recipeBuilder()
    	.inputs([TFC_Logs[i] * 2])
		.circuit(7)
    	.outputs(TFC_Supports * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Двери
for i, TFC_Doors in TFC_Doors {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 6])
		.circuit(8)
    	.outputs(TFC_Doors * 2)
    	.duration(350).EUt(4).buildAndRegister();
}

// Люки
for i, TFC_Trapdoors in TFC_Trapdoors {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 6])
		.circuit(9)
    	.outputs(TFC_Trapdoors * 3)
    	.duration(320).EUt(4).buildAndRegister();
}

// Железные люки
for i, TFC_Metal_Trapdoors in TFC_Metal_Trapdoors  {
    assembler.recipeBuilder()
    	.inputs([GT_TFC_Doubled_Plates[i]])
		.circuit(9)
    	.outputs(TFC_Metal_Trapdoors)
    	.duration(205).EUt(8).buildAndRegister();
}

// Книжные полки
for i, TFC_Bookshelfs in TFC_Bookshelfs {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 6, <minecraft:book> * 3])
		.circuit(10)
    	.outputs(TFC_Bookshelfs)
    	.duration(400).EUt(4).buildAndRegister();
}

// Верстаки
for i, TFC_Workbenchs in TFC_Workbenchs {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 4])
		.circuit(11)
    	.outputs(TFC_Workbenchs)
    	.duration(250).EUt(4).buildAndRegister();
}

// Сундуки
for i, TFC_Chests in TFC_Chests {
	recipes.addShaped("tfg/tfc/chest_" + i, TFC_Chests, [
		[TFC_Lumber[i], TFC_Lumber[i], TFC_Lumber[i]],
		[TFC_Lumber[i], null, TFC_Lumber[i]],
		[TFC_Lumber[i], TFC_Lumber[i], TFC_Lumber[i]]]);
	
	assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 8])
		.circuit(12)
    	.outputs(TFC_Chests)
    	.duration(280).EUt(4).buildAndRegister();
}

// Прялки
for i, TFC_Looms in TFC_Looms {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 7, <minecraft:stick>])
		.circuit(13)
    	.outputs(TFC_Looms)
    	.duration(210).EUt(4).buildAndRegister();
}

// Полка для инструментов
for i, TFC_ToolRacks in TFC_ToolRacks  {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 6])
		.circuit(14)
    	.outputs(TFC_ToolRacks)
    	.duration(205).EUt(4).buildAndRegister();
}

// Бочки
var NumArray as int[] = [];
for i in 83 .. 107 {
	NumArray += i;
}

for i, TFC_Barrels in TFC_Barrels  {
    for j in NumArray
	{
		if (i != j) {
			assembler.recipeBuilder()
				.inputs([TFC_Lumber[i] * 7])
				.circuit(15)
				.outputs(TFC_Barrels)
				.duration(205).EUt(4).buildAndRegister();
		}
	}
}

// Лодки
for i, TFC_Boats in TFC_Boats  {
    recipes.addShaped("tfg/tfc/boat_" + i,TFC_Boats, [
		[<gregtech:meta_screw:*>, <gregtech:meta_screw:*>, <gregtech:meta_screw:*>],
		[TFC_Lumber[i], <metaitem:rubber_drop>, TFC_Lumber[i]],
		[TFC_Lumber[i], TFC_Lumber[i], TFC_Lumber[i]]]);
	
	assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 5, <metaitem:rubber_drop>, <gregtech:meta_screw:*> * 3])
		.circuit(16)
    	.outputs(TFC_Boats)
    	.duration(270).EUt(4).buildAndRegister();
}



// --- Furnace recipes for TFC items
// Хавка
for i, TFC_Cooked_Meat in TFC_Cooked_Meat {
    furnace.addRecipe(TFC_Cooked_Meat, TFC_Raw_Meat[i]);
}

// Керамика
for i, TFC_Fired_Ceramics in TFC_Fired_Ceramics {
    furnace.addRecipe(TFC_Fired_Ceramics, TFC_Unfired_Ceramics[i]);
}

// Macerator recipes for Quern/Grindstone recipes
for i, TFC_QuernToMaceratorOutput in TFC_QuernToMaceratorOutput {
    macerator.recipeBuilder()
    	.inputs(TFC_QuernToMaceratorInput[i])
    	.outputs(TFC_QuernToMaceratorOutput * 2)
    	.duration(50).EUt(2).buildAndRegister();
}

// Переработка TFC камня в ресурсы

// Breccia
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustBreccia> * 3)
	.chancedOutput(<metaitem:dustSmallSilicon>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyLithium>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 16)
	.duration(450).EUt(64).buildAndRegister();

// - Catlinite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustCatlinite> * 3)
	.chancedOutput(<metaitem:dustSmallSodium>, 6700, 700)
	.chancedOutput(<metaitem:dustTinySilicon>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 24)
	.duration(450).EUt(64).buildAndRegister();

// - Chalk
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustChalk> * 3)
	.chancedOutput(<metaitem:dustSmallCalcium>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallCarbon>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 24)
	.duration(450).EUt(64).buildAndRegister();

// - Chert
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustChert> * 3)
	.chancedOutput(<metaitem:dustSmallSilicon>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 5700, 700)
	.fluidOutputs(<liquid:oxygen> * 24)
	.duration(450).EUt(64).buildAndRegister();

// - Claystone
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustClaystone> * 3)
	.chancedOutput(<metaitem:dustTinyAluminium>, 6700, 700)
	.chancedOutput(<metaitem:dustTinySilicon>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyBandedIron>, 6700, 700)
	.fluidOutputs(<liquid:oxygen> * 5)
	.duration(450).EUt(64).buildAndRegister();

// - Conglomerate
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustConglomerate> * 3)
	.chancedOutput(<metaitem:dustSmallBandedIron>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallSilicon>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallTricalciumPhosphate>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 5)
	.duration(450).EUt(64).buildAndRegister();

// - Dacite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustDacite> * 3)
	.chancedOutput(<metaitem:dustSodium>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallCalcium>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallSiliconDioxide>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallAluminium>, 3700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 12)
	.duration(450).EUt(64).buildAndRegister();

// - Dolomite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustDolomite> * 3)
	.chancedOutput(<metaitem:dustSmallMagnesium>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallCalcium>, 5700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 16)
	.duration(450).EUt(64).buildAndRegister();

// - Gabbro
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustGabbro> * 3)
	.chancedOutput(<metaitem:dustSmallTitanium>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallIron>, 3700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 24)
	.duration(450).EUt(64).buildAndRegister();

// - Gneiss
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustGneiss> * 3)
	.chancedOutput(<metaitem:dustSmallQuartzite>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallBiotite>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 2)
	.duration(450).EUt(64).buildAndRegister();

// - Komatiite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustKomatiite> * 3)
	.chancedOutput(<metaitem:dustSmallManganese>, 8700, 700)
	.fluidOutputs(<liquid:oxygen> * 12)
	.duration(450).EUt(64).buildAndRegister();

// - Limestone
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustLimestone> * 3)
	.chancedOutput(<metaitem:dustSmallCalcium>, 8700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 36)
	.duration(450).EUt(64).buildAndRegister();

// - Mudstone
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustMudstone> * 3)
	.chancedOutput(<metaitem:dustSmallClay>, 8700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 46)
	.duration(450).EUt(64).buildAndRegister();

// - Novaculite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustNovaculite> * 3)
	.chancedOutput(<metaitem:dustSmallSiliconDioxide>, 8700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 46)
	.duration(450).EUt(64).buildAndRegister();

// - Peridotite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustPeridotite> * 3)
	.chancedOutput(<metaitem:dustOlivine>, 5700, 700)
	.chancedOutput(<metaitem:dustTinyAluminium>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 12)
	.duration(450).EUt(64).buildAndRegister();

// - Phyllite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustPhyllite> * 3)
	.chancedOutput(<metaitem:dustSmallQuartzite>, 5700, 700)
	.chancedOutput(<metaitem:dustSmallCalciumChloride>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 2)
	.duration(450).EUt(64).buildAndRegister();

// - Porphyry
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustPorphyry> * 3)
	.chancedOutput(<metaitem:dustSmallSodium>, 9500, 700)
	.chancedOutput(<metaitem:dustSmallQuartzite>, 8700, 700)
	.chancedOutput(<metaitem:dustSmallCalcium>, 1700, 700)
	.duration(450).EUt(64).buildAndRegister();

// - Rhyolite
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustRhyolite> * 3)
	.chancedOutput(<metaitem:dustSiliconDioxide>, 8700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 100, 100)
	.duration(450).EUt(64).buildAndRegister();

// - Sandstone
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustSandstone> * 3)
	.chancedOutput(<metaitem:dustTinyCalcium>, 6700, 700)
	.chancedOutput(<metaitem:dustTinyAluminium>, 3700, 700)
	.chancedOutput(<metaitem:dustTinySilicon>, 1700, 700)
	.fluidOutputs(<liquid:oxygen> * 6)
	.duration(450).EUt(64).buildAndRegister();

// - Schist
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustSchist> * 3)
	.chancedOutput(<metaitem:dustSmallMica>, 6700, 700)
	.chancedOutput(<metaitem:dustSmallTalc>, 5700, 700)
	.chancedOutput(<metaitem:dustSmallGraphite>, 3700, 700)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 3700, 700)
	.fluidOutputs(<liquid:oxygen> * 12)
	.duration(450).EUt(64).buildAndRegister();

// - Shale
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustShale> * 3)
	.chancedOutput(<metaitem:dustSodium>, 9500, 500)
	.chancedOutput(<metaitem:dustTinyMetalMixture>, 1500, 500)
	.fluidOutputs(<liquid:oxygen> * 16)
	.duration(450).EUt(64).buildAndRegister();

// - Siltstone
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustSiltstone> * 3)
	.chancedOutput(<metaitem:dustCertusQuartz>, 6700, 700)
	.chancedOutput(<metaitem:dustQuartzite>, 5700, 700)
	.fluidOutputs(<liquid:oxygen> * 2)
	.duration(450).EUt(64).buildAndRegister();

// - Slate
electrolyzer.recipeBuilder()
	.inputs(<metaitem:dustSlate> * 3)
	.chancedOutput(<metaitem:dustSmallMetalMixture>, 6700, 700)
	.fluidOutputs(<liquid:oxygen> * 4)
	.duration(450).EUt(64).buildAndRegister();

// Цемент из тфк --> цемент разных цветов
// White Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_white> * 144]).outputs(<minecraft:concrete_powder> * 4).duration(15).EUt(7).buildAndRegister();
// Orange Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_orange> * 144]).outputs(<minecraft:concrete_powder:1> * 4).duration(15).EUt(7).buildAndRegister();
// Magenta Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_magenta> * 144]).outputs(<minecraft:concrete_powder:2> * 4).duration(15).EUt(7).buildAndRegister();
// Light Blue Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_light_blue> * 144]).outputs(<minecraft:concrete_powder:3> * 4).duration(15).EUt(7).buildAndRegister();	
// Yellow Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_yellow> * 144]).outputs(<minecraft:concrete_powder:4> * 4).duration(15).EUt(7).buildAndRegister();	
// Lime Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_lime> * 144]).outputs(<minecraft:concrete_powder:5> * 4).duration(15).EUt(7).buildAndRegister();	
// Pink Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_pink> * 144]).outputs(<minecraft:concrete_powder:6> * 4).duration(15).EUt(7).buildAndRegister();	
// Gray Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_gray> * 144]).outputs(<minecraft:concrete_powder:7> * 4).duration(15).EUt(7).buildAndRegister();
// Light Gray Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_light_gray> * 144]).outputs(<minecraft:concrete_powder:8> * 4).duration(15).EUt(7).buildAndRegister();
// Cyan Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_cyan> * 144]).outputs(<minecraft:concrete_powder:9> * 4).duration(15).EUt(7).buildAndRegister();
// Purple Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_purple> * 144]).outputs(<minecraft:concrete_powder:10> * 4).duration(15).EUt(7).buildAndRegister();
// Blue Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_blue> * 144]).outputs(<minecraft:concrete_powder:11> * 4).duration(15).EUt(7).buildAndRegister();
// Brown Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_brown> * 144]).outputs(<minecraft:concrete_powder:12> * 4).duration(15).EUt(7).buildAndRegister();
// Green Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_green> * 144]).outputs(<minecraft:concrete_powder:13> * 4).duration(15).EUt(7).buildAndRegister();
// Red Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_red> * 144]).outputs(<minecraft:concrete_powder:14> * 4).duration(15).EUt(7).buildAndRegister();
// Black Concrete Powder * 8
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_black> * 144]).outputs(<minecraft:concrete_powder:15> * 4).duration(15).EUt(7).buildAndRegister();

// Переработка тфк еды в метан
// Мясо
centrifuge.recipeBuilder().inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane>*72).duration(40).EUt(5).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane>*144).duration(40).EUt(5).buildAndRegister();
// Фрукты
centrifuge.recipeBuilder().inputs(<ore:categoryFruit>).fluidOutputs(<liquid:methane>*48).duration(40).EUt(5).buildAndRegister();
// Овощи
centrifuge.recipeBuilder().inputs(<ore:categoryVegetable>).fluidOutputs(<liquid:methane>*62).duration(40).EUt(5).buildAndRegister();
// Крупы
centrifuge.recipeBuilder().inputs(<ore:categoryGrain>).fluidOutputs(<liquid:methane>*44).duration(40).EUt(5).buildAndRegister();
// Хлеб
centrifuge.recipeBuilder().inputs(<ore:categoryBread>).fluidOutputs(<liquid:methane>*26).duration(40).EUt(5).buildAndRegister();

// Переработка слитков
// Первичная
forge_hammer.recipeBuilder().inputs(<ore:ingotUnfinishedWroughtIron>).outputs(<ore:ingotWroughtIron>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:ingotPigIron>).outputs(<ore:ingotHighCarbonSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:ingotHighCarbonSteel>).outputs(<ore:ingotSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:ingotHighCarbonBlueSteel>).outputs(<ore:ingotBlueSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:ingotHighCarbonRedSteel>).outputs(<ore:ingotRedSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:ingotHighCarbonBlackSteel>).outputs(<ore:ingotBlackSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
// Вторичная
alloy_smelter.recipeBuilder().inputs(<ore:ingotWeakBlueSteel>, <ore:ingotBlackSteel>).outputs(<ore:ingotHighCarbonBlueSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
alloy_smelter.recipeBuilder().inputs(<ore:ingotWeakRedSteel>, <ore:ingotBlackSteel>).outputs(<ore:ingotHighCarbonRedSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
alloy_smelter.recipeBuilder().inputs(<ore:ingotWeakSteel>, <ore:ingotPigIron>).outputs(<ore:ingotHighCarbonBlackSteel>.firstItem).duration(100).EUt(2).buildAndRegister();

// Рецепты для льда
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:fresh_water> * 1000).outputs(<minecraft:ice>).duration(1500).EUt(256).buildAndRegister();
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:salt_water> * 1000).outputs(<tfc:sea_ice>).duration(1500).EUt(256).buildAndRegister();
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:fresh_water> * 2000).outputs(<minecraft:packed_ice>).duration(1500).EUt(512).buildAndRegister();

// Различные крафты для лассо
LeatherKnapping.addRecipe("tfg/tfc/lead", <minecraft:lead>, "XXXXX", "X XXX", "X X X", "X   X", "XXXXX");
assembler.recipeBuilder()
	.inputs(<ore:string> * 2, <ore:leather>)
	.outputs(<minecraft:lead>)
	.duration(250).EUt(2).buildAndRegister();

// Песок --> Диоксид кремния
electrolyzer.recipeBuilder()
	.inputs(<ore:sandSilica> * 8)
	.outputs(<metaitem:dustSiliconDioxide>)
	.duration(150).EUt(26).buildAndRegister();

// Разбор книжных полок
arc_furnace.recipeBuilder()
	.inputs(<ore:bookshelf>)
	.outputs(<metaitem:dustTinyAsh> * 16)
	.duration(1).EUt(30).buildAndRegister();
macerator.recipeBuilder()
	.inputs(<ore:bookshelf>)
	.outputs(<metaitem:dustPaper> * 9, <metaitem:dustWood> * 6)
	.duration(196).EUt(2).buildAndRegister();

// Рецепты теплой воды
fluid_heater.recipeBuilder()
	.circuit(5)
	.fluidInputs(<liquid:fresh_water> * 100)
	.fluidOutputs(<liquid:hot_water> * 100)
	.duration(600).EUt(2).buildAndRegister();
fluid_heater.recipeBuilder()
	.circuit(6)
	.fluidInputs(<liquid:water> * 100)
	.fluidOutputs(<liquid:hot_water> * 100)
	.duration(600).EUt(2).buildAndRegister();

// Рецепты свежей воды
vacuum_freezer.recipeBuilder()
	.fluidInputs(<liquid:hot_water> * 100)
	.fluidOutputs(<liquid:fresh_water> * 100)
	.duration(1000).EUt(128).buildAndRegister();
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:water> * 100)
	.circuit(5)
	.fluidOutputs(<liquid:fresh_water> * 100)
	.duration(750).EUt(32).buildAndRegister();

// Saplings -> Logs + Saplings (Greenhouse)

for i, TFC_Saplings in TFC_Saplings {
  
	greenhouse.recipeBuilder()
		.inputs([TFC_Saplings, <metaitem:fertilizer> * 4])
		.circuit(1)
		.fluidInputs([<liquid:fresh_water> * 1000])
		.outputs([TFC_Logs[i] * 16, TFC_Saplings])
		.chancedOutput(TFC_Saplings, 5000, 0)
		.duration(2000)
		.EUt(80)
		.buildAndRegister();

	greenhouse.recipeBuilder()
		.inputs([TFC_Saplings, <metaitem:fertilizer> * 4])
		.circuit(2)
		.fluidInputs([<liquid:distilled_water> * 1000])
		.outputs([TFC_Logs[i] * 16, TFC_Saplings])
		.chancedOutput(TFC_Saplings.withAmount(2), 5000, 0)
		.duration(1500)
		.EUt(80)
		.buildAndRegister();

}

// Seeds -> AnyPlant (Greenhouse)
for i, All_Seeds in All_Seeds {
  
	greenhouse.recipeBuilder()
		.notConsumable([All_Seeds])
		.circuit(1)
		.inputs([<metaitem:fertilizer> * 2])
		.fluidInputs([<liquid:fresh_water> * 1000])
		.outputs([All_Plants[i] * 2])
		.duration(1500)
		.EUt(80)
		.buildAndRegister();
  
	greenhouse.recipeBuilder()
		.notConsumable([All_Seeds])
		.circuit(2)
		.inputs([<metaitem:fertilizer> * 2])
		.fluidInputs([<liquid:distilled_water> * 1000])
		.outputs([All_Plants[i] * 2])
		.chancedOutput(All_Plants[i].withAmount(2), 7500, 0)
		.duration(1000)
		.EUt(80)
		.buildAndRegister();
}


// Log -> Lumber (Saw Mill) + Lumber -> dustWood
for i, TFC_Logs in TFC_Logs {
  
	saw_mill.recipeBuilder()
		.inputs([TFC_Logs])
		.circuit(1)
		.fluidInputs([<liquid:lubricant> * 1000])
		.outputs([TFC_Lumber[i] * 64, <metaitem:dustWood> * 8])
		.duration(450)
		.EUt(32)
		.buildAndRegister();

	saw_mill.recipeBuilder()
		.inputs([TFC_Lumber[i]])
		.circuit(2)
		.fluidInputs([<liquid:lubricant> * 1000])
		.outputs([<metaitem:dustWood> * 48])
		.outputs([<metaitem:dustSmallWood> * 32])
		.duration(400)
		.EUt(12)
		.buildAndRegister();
}