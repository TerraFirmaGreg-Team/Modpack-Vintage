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
val Alabaster as IItemStack[] = [
	<tfc:alabaster/raw/white>,
	<tfc:alabaster/raw/orange>,
	<tfc:alabaster/raw/magenta>,
	<tfc:alabaster/raw/light_blue>,
	<tfc:alabaster/raw/yellow>,
	<tfc:alabaster/raw/lime>,
	<tfc:alabaster/raw/pink>,
	<tfc:alabaster/raw/gray>,
	<tfc:alabaster/raw/silver>,
	<tfc:alabaster/raw/cyan>,
	<tfc:alabaster/raw/purple>,
	<tfc:alabaster/raw/blue>,
	<tfc:alabaster/raw/brown>,
	<tfc:alabaster/raw/green>,
	<tfc:alabaster/raw/red>,
	<tfc:alabaster/raw/black>
];

val AlabasterBricks as IItemStack[] = [
	<tfc:alabaster/bricks/white>,
	<tfc:alabaster/bricks/orange>,
	<tfc:alabaster/bricks/magenta>,
	<tfc:alabaster/bricks/light_blue>,
	<tfc:alabaster/bricks/yellow>,
	<tfc:alabaster/bricks/lime>,
	<tfc:alabaster/bricks/pink>,
	<tfc:alabaster/bricks/gray>,
	<tfc:alabaster/bricks/silver>,
	<tfc:alabaster/bricks/cyan>,
	<tfc:alabaster/bricks/purple>,
	<tfc:alabaster/bricks/blue>,
	<tfc:alabaster/bricks/brown>,
	<tfc:alabaster/bricks/green>,
	<tfc:alabaster/bricks/red>,
	<tfc:alabaster/bricks/black>
];

val AlabasterPolished as IItemStack[] = [
	<tfc:alabaster/polished/white>,
	<tfc:alabaster/polished/orange>,
	<tfc:alabaster/polished/magenta>,
	<tfc:alabaster/polished/light_blue>,
	<tfc:alabaster/polished/yellow>,
	<tfc:alabaster/polished/lime>,
	<tfc:alabaster/polished/pink>,
	<tfc:alabaster/polished/gray>,
	<tfc:alabaster/polished/silver>,
	<tfc:alabaster/polished/cyan>,
	<tfc:alabaster/polished/purple>,
	<tfc:alabaster/polished/blue>,
	<tfc:alabaster/polished/brown>,
	<tfc:alabaster/polished/green>,
	<tfc:alabaster/polished/red>,
	<tfc:alabaster/polished/black>
];


// --- Добавление рецептов

// Регистрация металла
ItemRegistry.registerItemMetal(<tfc:metal/bucket/red_steel>, "WROUGHT_IRON", 144, true);

// Ковка монет
Anvil.addRecipe("tfg/gt/copper_coin", <metaitem:plateCopper>, <metaitem:credit.copper>, 1, "tools", "HIT_LAST", "HIT_LAST", "HIT_LAST");
Anvil.addRecipe("tfg/gt/gold_coin", <metaitem:plateGold>, <metaitem:credit.gold>, 2, "tools", "HIT_LAST", "HIT_LAST", "HIT_LAST");
Anvil.addRecipe("tfg/gt/silver_coin", <metaitem:plateSilver>, <metaitem:credit.silver>, 3, "tools", "HIT_LAST", "HIT_LAST", "HIT_LAST");
Anvil.addRecipe("tfg/gt/cupronickel_coin", <metaitem:plateCupronickel>, <metaitem:credit.cupronickel>, 3, "tools", "HIT_LAST", "HIT_LAST", "HIT_LAST");

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

// Ром
Barrel.addRecipe("tfg/tfc/rum", <minecraft:sugar>, <liquid:hot_water> * 500, <liquid:rum> * 500, 72);

// Липкая резина
Barrel.addRecipe("tfg/tfc/sticky_resin", <tfctech:latex/rubber_mix>, <liquid:latex> * 250, <metaitem:rubber_drop>, 6);

// Алабастер
Barrel.addRecipe("tfg/tfc/alabaster", <metaitem:dustGypsum> * 2, <liquid:limewater> * 250, <tfc:alabaster/raw/plain>, 6);

// Flux в молотилке
Quern.addRecipe("tfg/tfc/flux_rock_to_flux", <ore:rockFlux>, <tfc:powder/flux> * 2);

// Фикс палок из люмбера
recipes.addShapeless("tfg/tfc/stick_from_lumber", <minecraft:stick> * 6, [<ore:lumber>, <ore:gtce.tool.saws>]);

// Alabaster Bricks
recipes.addShapeless("tfg/tfc/alabaster_bricks", <tfc:alabaster_brick> * 4, [<metaitem:dustGypsum>, <ore:gtce.tool.files>]);

// Cladding
alloy_smelter.recipeBuilder()
	.inputs(<metaitem:plateWroughtIron>, <metaitem:plateCopper>)
	.outputs(<tfc:metal/sheet/wrought_iron>)
	.duration(400).EUt(2).buildAndRegister();

// Контроллер доменной печи
recipes.addShaped("tfg/tfc/blast_furnace", <tfc:blast_furnace>, [
	[<ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>],
	[<ore:plateDoubleIronAny>, <tfc:crucible>, <ore:plateDoubleIronAny>],
	[<ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>, <ore:plateDoubleIronAny>]]);

// Огнеупорная глина
recipes.addShaped("tfg/tfc/fire_clay", <tfc:ceramics/fire_clay>, [
	[<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>],
	[<tfc:powder/graphite>, <ore:clay>, <tfc:powder/graphite>],
	[<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>]]);

// TFC Resin --> Sticky resin
furnace.addRecipe(<metaitem:rubber_drop>, <tfc:plants/resin>);

// Сырой камень -> Сырой камень
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

// 
for i, GT_Dusts_For_Raw_Stones in GT_Dusts_For_Raw_Stones {
	// Raw Block
	macerator.recipeBuilder()
		.inputs(TFC_Raws[i])
		.outputs(GT_Dusts_For_Raw_Stones * 3)
		.duration(100).EUt(4).buildAndRegister();

	// Raw Stairs
	macerator.recipeBuilder()
		.inputs(TFC_Raw_Stairs[i])
		.outputs(GT_Dusts_For_Raw_Stones * 2)
		.duration(100).EUt(4).buildAndRegister();

	// Raw Slab
	macerator.recipeBuilder()
		.inputs(TFC_Raw_Slabs[i])
		.outputs(GT_Dusts_For_Raw_Stones * 1)
		.duration(100).EUt(4).buildAndRegister();

	// Smooth Block
	macerator.recipeBuilder()
		.inputs(TFC_Smooths[i])
		.outputs(GT_Dusts_For_Raw_Stones * 3)
		.duration(100).EUt(4).buildAndRegister();

	// Smooth Stairs
	macerator.recipeBuilder()
		.inputs(TFC_Stairs_Smooth[i])
		.outputs(GT_Dusts_For_Raw_Stones * 2)
		.duration(100).EUt(4).buildAndRegister();

	// Smooth Slab
	macerator.recipeBuilder()
		.inputs(TFC_Slabs_Smooth[i])
		.outputs(GT_Dusts_For_Raw_Stones * 1)
		.duration(100).EUt(4).buildAndRegister();

	// Cobble Block
	macerator.recipeBuilder()
		.inputs(TFC_Cobbles[i])
		.outputs(GT_Dusts_For_Raw_Stones * 3)
		.duration(100).EUt(4).buildAndRegister();

	// Cobble Stairs
	macerator.recipeBuilder()
		.inputs(TFC_Stairs_Cobble[i])
		.outputs(GT_Dusts_For_Raw_Stones * 2)
		.duration(100).EUt(4).buildAndRegister();

	// Cobble Slab
	macerator.recipeBuilder()
		.inputs(TFC_Slabs_Cobble[i])
		.outputs(GT_Dusts_For_Raw_Stones * 1)
		.duration(100).EUt(4).buildAndRegister();
}

// Дерево -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
	
	cutter.recipeBuilder()
		.inputs([TFC_Logs[i]])
		.fluidInputs([<liquid:lubricant> * 1])
		.outputs(TFC_Lumber * 16, <metaitem:dustWood> * 2)
		.duration(200).EUt(7).buildAndRegister();
	
	saw_mill.recipeBuilder()
		.circuit(1)
		.inputs([TFC_Logs[i]])
		.fluidInputs([<liquid:lubricant> * 1000])
		.outputs(
			TFC_Lumber * 64, 
			<metaitem:dustWood> * 8)
		.duration(450)
		.EUt(32)
		.buildAndRegister();
}

// Дерево -> Пиломатериалы (Для эвкалипта)
for TFC_EucaliptusLogs in TFC_EucaliptusLogs {
	
	cutter.recipeBuilder()
		.inputs([TFC_EucaliptusLogs])
		.fluidInputs([<liquid:lubricant> * 1])
		.outputs(<tfc:wood/lumber/eucalyptus> * 16, <metaitem:dustWood> * 2)
		.duration(200).EUt(7).buildAndRegister();

	saw_mill.recipeBuilder()
		.circuit(1)
		.inputs([TFC_EucaliptusLogs])
		.fluidInputs([<liquid:lubricant> * 1000])
		.outputs(
			<tfc:wood/lumber/eucalyptus> * 64, 
			<metaitem:dustWood> * 8)
		.duration(450)
		.EUt(32)
		.buildAndRegister();
}

// Доски -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
	cutter.recipeBuilder()
		.inputs([TFC_Planks[i]])
		.fluidInputs([<liquid:lubricant> * 1])
		.outputs(TFC_Lumber * 4)
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
		.inputs(
			TFC_Logs[i + 83] * 2, 
			<minecraft:stick> * 3)
		.circuit(1)
		.outputs(TFC_Fence_Log * 8)
		.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Калитка из бревен
for i, TFC_Fence_Gates_Log in TFC_Fence_Gates_Log {
	assembler.recipeBuilder()
		.inputs(
			TFC_Logs[i] * 2, 
			<minecraft:stick> * 3)
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
		.inputs([GT_TFC_Plates[i]])
		.circuit(22)
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
	if (!(NumArray has i)) {
		assembler.recipeBuilder()
			.inputs([TFC_Lumber[i] * 7])
			.circuit(15)
			.outputs(TFC_Barrels)
			.duration(205).EUt(4).buildAndRegister();
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
	//furnace.addRecipe(TFC_Fired_Ceramics, TFC_Unfired_Ceramics[i]);
}

// Spindle
furnace.addRecipe(<tfc:ceramics/fired/spindle>, <tfc:ceramics/unfired/spindle>);

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
centrifuge.recipeBuilder().circuit(1).inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane> * 72).duration(40).EUt(5).buildAndRegister();
centrifuge.recipeBuilder().circuit(2).inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane> * 144).duration(40).EUt(5).buildAndRegister();
// Фрукты
centrifuge.recipeBuilder().circuit(3).inputs(<ore:categoryFruit>).fluidOutputs(<liquid:methane> * 48).duration(40).EUt(5).buildAndRegister();
// Овощи
centrifuge.recipeBuilder().circuit(4).inputs(<ore:categoryVegetable>).fluidOutputs(<liquid:methane> * 62).duration(40).EUt(5).buildAndRegister();
// Крупы
centrifuge.recipeBuilder().circuit(5).inputs(<ore:categoryGrain>).fluidOutputs(<liquid:methane> * 44).duration(40).EUt(5).buildAndRegister();
// Хлеб
centrifuge.recipeBuilder().circuit(6).inputs(<ore:categoryBread>).fluidOutputs(<liquid:methane> * 26).duration(40).EUt(5).buildAndRegister();

// Переработка слитков
// Первичная
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
// vacuum_freezer.recipeBuilder().fluidInputs(<liquid:fresh_water> * 2000).outputs(<minecraft:packed_ice>).duration(1500).EUt(512).buildAndRegister();

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
		.duration(2000).EUt(80).buildAndRegister();

	greenhouse.recipeBuilder()
		.inputs([TFC_Saplings, <metaitem:fertilizer> * 4])
		.circuit(2)
		.fluidInputs([<liquid:distilled_water> * 1000])
		.outputs([TFC_Logs[i] * 16, TFC_Saplings])
		.chancedOutput(TFC_Saplings.withAmount(2), 5000, 0)
		.duration(1500).EUt(80).buildAndRegister();

}

// Seeds -> AnyPlant (Greenhouse)
for i, All_Seeds in All_Seeds {
	greenhouse.recipeBuilder()
		.notConsumable([All_Seeds])
		.circuit(1)
		.inputs([<metaitem:fertilizer> * 2])
		.fluidInputs([<liquid:fresh_water> * 1000])
		.outputs([All_Plants[i] * 2])
		.duration(1500).EUt(80).buildAndRegister();

	greenhouse.recipeBuilder()
		.notConsumable([All_Seeds])
		.circuit(2)
		.inputs([<metaitem:fertilizer> * 2])
		.fluidInputs([<liquid:distilled_water> * 1000])
		.outputs([All_Plants[i] * 2])
		.chancedOutput(All_Plants[i].withAmount(2), 7500, 0)
		.duration(1000).EUt(80).buildAndRegister();
}


// Lumber -> dustWood
for i, TFC_Logs in TFC_Logs {
	saw_mill.recipeBuilder()
		.circuit(2)
		.inputs([TFC_Lumber[i]])
		.fluidInputs([<liquid:lubricant> * 1000])
		.outputs(
			<metaitem:dustWood> * 48,
			<metaitem:dustSmallWood> * 32)
		.duration(400).EUt(12).buildAndRegister();
}

// Hide Raw Small -> Hide Soaked Small
mixer.recipeBuilder()
	.inputs(<tfc:hide/raw/small>)
	.fluidInputs(<liquid:limewater> * 100)
	.circuit(16)
	.outputs(<tfc:hide/soaked/small>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Raw Medium -> Hide Soaked Medium
mixer.recipeBuilder()
	.inputs(<tfc:hide/raw/medium>)
	.fluidInputs(<liquid:limewater> * 200)
	.circuit(16)
	.outputs(<tfc:hide/soaked/medium>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Raw Large -> Hide Soaked Large
mixer.recipeBuilder()
	.inputs(<tfc:hide/raw/large>)
	.fluidInputs(<liquid:limewater> * 300)
	.circuit(16)
	.outputs(<tfc:hide/soaked/large>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Soaked Small -> Hide Scraped Small
assembler.recipeBuilder()
	.inputs(<tfc:hide/soaked/small>)
	.circuit(16)
	.outputs(<tfc:hide/scraped/small>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Soaked Medium -> Hide Scraped Medium
assembler.recipeBuilder()
	.inputs(<tfc:hide/soaked/medium>)
	.circuit(16)
	.outputs(<tfc:hide/scraped/medium>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Soaked Large -> Hide Scraped Large
assembler.recipeBuilder()
	.inputs(<tfc:hide/soaked/large>)
	.circuit(16)
	.outputs(<tfc:hide/scraped/large>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Scrapped Small -> Hide Prepared Small
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/small>)
	.fluidInputs(<liquid:fresh_water> * 100)
	.circuit(16)
	.outputs(<tfc:hide/prepared/small>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Scrapped Medium -> Hide Prepared Medium
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/medium>)
	.fluidInputs(<liquid:fresh_water> * 200)
	.circuit(16)
	.outputs(<tfc:hide/prepared/medium>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Scrapped Large -> Hide Prepared Large
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/large>)
	.fluidInputs(<liquid:fresh_water> * 300)
	.circuit(16)
	.outputs(<tfc:hide/prepared/large>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Prepared Small -> Leather
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/small>)
	.fluidInputs(<liquid:tannin> * 100)
	.circuit(16)
	.outputs(<minecraft:leather>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Prepared Medium -> Leather
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/medium>)
	.fluidInputs(<liquid:tannin> * 200)
	.circuit(16)
	.outputs(<minecraft:leather>)
	.duration(150).EUt(2).buildAndRegister();

// Hide Prepared Large -> Leather
mixer.recipeBuilder()
	.inputs(<tfc:hide/scraped/large>)
	.fluidInputs(<liquid:tannin> * 300)
	.circuit(16)
	.outputs(<minecraft:leather>)
	.duration(150).EUt(2).buildAndRegister();

// WoodTannin -> Liquid Tanin
mixer.recipeBuilder()
	.inputs(<ore:logWoodTannin>)
	.fluidInputs(<liquid:fresh_water> * 1000)
	.circuit(16)
	.fluidOutputs(<liquid:tannin> * 16000)
	.duration(150).EUt(2).buildAndRegister();

// BoneMeal -> Primitive Glue
mixer.recipeBuilder()
	.inputs(<minecraft:dye:15>)
	.fluidInputs(<liquid:limewater> * 500)
	.circuit(16)
	.outputs(<tfc:glue>)
	.duration(150).EUt(2).buildAndRegister();

// Primitive Glue -> GT Glue
centrifuge.recipeBuilder()
	.inputs(<tfc:glue>)
	.fluidOutputs(<liquid:glue> * 10)
	.duration(150).EUt(2).buildAndRegister();

// Jute -> Jute Fiber
mixer.recipeBuilder()
	.inputs(<tfc:crop/product/jute>)
	.fluidInputs(<liquid:fresh_water> * 100)
	.circuit(16)
	.outputs(<tfc:crop/product/jute_fiber> * 2)
	.duration(150).EUt(2).buildAndRegister();

// Sand -> Mortar
mixer.recipeBuilder()
	.inputs(<ore:sand>)
	.fluidInputs(<liquid:limewater> * 50)
	.circuit(16)
	.outputs(<tfc:mortar> * 32)
	.duration(150).EUt(2).buildAndRegister();

// Wood Ash - > Lye
mixer.recipeBuilder()
	.inputs(<tfc:wood_ash>)
	.fluidInputs(<liquid:hot_water> * 125)
	.circuit(16)
	.fluidOutputs(<liquid:lye> * 125)
	.duration(150).EUt(2).buildAndRegister();

// Salt Water -> Brine
mixer.recipeBuilder()
	.fluidInputs([<liquid:salt_water> * 9000, <liquid:vinegar> * 1000])
	.circuit(16)
	.fluidOutputs(<liquid:brine> * 10000)
	.duration(150).EUt(2).buildAndRegister();

// Soy Milk -> Vinegar Milk
mixer.recipeBuilder()
	.fluidInputs([<liquid:soy_milk> * 9000, <liquid:vinegar> * 1000])
	.circuit(16)
	.fluidOutputs(<liquid:milk_vinegar> * 10000)
	.duration(150).EUt(2).buildAndRegister();

// Flux -> Limewater
mixer.recipeBuilder()
	.inputs(<tfc:powder/flux>)
	.fluidInputs(<liquid:fresh_water> * 500)
	.circuit(16)
	.fluidOutputs(<liquid:limewater> * 500)
	.duration(150).EUt(2).buildAndRegister();

// Gypsum -> Alabaster
mixer.recipeBuilder()
	.inputs(<metaitem:dustGypsum> * 2)
	.fluidInputs(<liquid:limewater> * 100)
	.circuit(16)
	.outputs(<tfc:alabaster/raw/plain>)
	.duration(150).EUt(2).buildAndRegister();

// Powderkeg
assembler.recipeBuilder()
	.inputs(<minecraft:gunpowder>, <ore:barrel>, <ore:dyeRed>)
	.circuit(16)
	.outputs(<tfc:powderkeg>)
	.duration(150).EUt(2).buildAndRegister();

// Kaolinite Dust
macerator.recipeBuilder()
	.inputs(<metaitem:dustMica>)
	.outputs(<tfc:powder/kaolinite> * 6)
	.duration(100).EUt(2).buildAndRegister();

// Flux Dust
macerator.recipeBuilder()
	.inputs(<ore:rockFlux>)
	.outputs(<tfc:powder/flux> * 6)
	.duration(100).EUt(2).buildAndRegister();

// Graphite Dust
macerator.recipeBuilder()
	.inputs(<metaitem:dustGraphite>)
	.outputs(<tfc:powder/graphite> * 6)
	.duration(100).EUt(2).buildAndRegister();

// Alabaster -> Colored Alabaster
for i, Alabaster in Alabaster {
	chemical_bath.recipeBuilder()
		.inputs(<tfc:alabaster/raw/plain>)
		 .fluidInputs([colorLiquid[i] * 18])
		.outputs(Alabaster)
		.duration(20).EUt(7).buildAndRegister();
}

// Smooth Alabaster -> Colored Smooth Alabaster
for i, AlabasterPolished in AlabasterPolished {
	chemical_bath.recipeBuilder()
		.inputs(<tfc:alabaster/polished/plain>)
		 .fluidInputs([colorLiquid[i] * 18])
		.outputs(AlabasterPolished)
		.duration(20).EUt(7).buildAndRegister();
}

// Bricks Alabaster -> Colored Bricks Alabaster
for i, AlabasterBricks in AlabasterBricks {
	chemical_bath.recipeBuilder()
		.inputs(<tfc:alabaster/bricks/plain>)
		 .fluidInputs([colorLiquid[i] * 18])
		.outputs(AlabasterBricks)
		.duration(20).EUt(7).buildAndRegister();
}

// Any Alabaster Raw -> Alabaster Plain
chemical_bath.recipeBuilder()
		.inputs(<ore:alabasterRaw>)
		 .fluidInputs([<liquid:chlorine> * 20])
		.outputs(<tfc:alabaster/raw/plain>)
		.duration(20).EUt(7).buildAndRegister();

// Any Alabaster Polished -> Alabaster Polished
chemical_bath.recipeBuilder()
		.inputs(<ore:alabasterPolished>)
		 .fluidInputs([<liquid:chlorine> * 20])
		.outputs(<tfc:alabaster/polished/plain>)
		.duration(20).EUt(7).buildAndRegister();

// Any Alabaster Bricks -> Alabaster Bricks
chemical_bath.recipeBuilder()
		.inputs(<ore:alabasterBricks>)
		 .fluidInputs([<liquid:chlorine> * 20])
		.outputs(<tfc:alabaster/bricks/plain>)
		.duration(20).EUt(7).buildAndRegister();

// Milk -> Curdled Milk
mixer.recipeBuilder()
	.inputs(<firmalife:rennet>)
	.fluidInputs(<liquid:milk> * 2000)
	.circuit(16)
	.fluidOutputs(<liquid:milk_curdled> * 2000)
	.duration(150).EUt(2).buildAndRegister();

// Yak Milk -> Curdled Yak Milk
mixer.recipeBuilder()
	.inputs(<firmalife:rennet>)
	.fluidInputs(<liquid:yak_milk> * 2000)
	.circuit(16)
	.fluidOutputs(<liquid:curdled_yak_milk> * 2000)
	.duration(150).EUt(2).buildAndRegister();

// Goat Milk -> Curdled Goat Milk
mixer.recipeBuilder()
	.inputs(<firmalife:rennet>)
	.fluidInputs(<liquid:goat_milk> * 2000)
	.circuit(16)
	.fluidOutputs(<liquid:curdled_goat_milk> * 2000)
	.duration(150).EUt(2).buildAndRegister();

// Zebu Milk -> Curdled Milk
mixer.recipeBuilder()
	.inputs(<firmalife:rennet>)
	.fluidInputs(<liquid:zebu_milk> * 2000)
	.circuit(16)
	.fluidOutputs(<liquid:milk_curdled> * 2000)
	.duration(150).EUt(2).buildAndRegister();

// Kaolinite -> Kaolinite Clay
mixer.recipeBuilder()
	.inputs(<tfc:powder/kaolinite>)
	.fluidInputs(<liquid:fresh_water> * 100)
	.circuit(16)
	.outputs(<tfcflorae:ceramics/kaolinite/kaolinite_clay>)
	.duration(150).EUt(2).buildAndRegister();

// Milk Curd -> Gouda Wheel
mixer.recipeBuilder()
	.inputs(<firmalife:milk_curd> * 3)
	.fluidInputs(<liquid:salt_water> * 750)
	.circuit(16)
	.outputs(<firmalife:gouda_wheel>)
	.duration(150).EUt(2).buildAndRegister();

// Goat Curd -> Feta Wheel
mixer.recipeBuilder()
	.inputs(<firmalife:goat_curd> * 3)
	.fluidInputs(<liquid:salt_water> * 750)
	.circuit(16)
	.outputs(<firmalife:feta_wheel>)
	.duration(150).EUt(2).buildAndRegister();

// Yak Curd -> Shosha Wheel
mixer.recipeBuilder()
	.inputs(<firmalife:yak_curd> * 3)
	.fluidInputs(<liquid:salt_water> * 750)
	.circuit(16)
	.outputs(<firmalife:shosha_wheel>)
	.duration(150).EUt(2).buildAndRegister();

// Wiremill recipes for yarn from fibers
for i, fibresArray in fibresArray {
	wiremill.recipeBuilder()
		.inputs(fibresArray)
		.outputs([stringsArray[i] * 12])
		.duration(20).EUt(7).buildAndRegister();
}
