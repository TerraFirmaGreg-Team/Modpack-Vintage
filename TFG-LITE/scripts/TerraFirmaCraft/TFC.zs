import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.LeatherKnapping;

val AllClays = <minecraft:clay_ball> | <tfcflorae:ceramics/earthenware/earthenware_clay> | <tfcflorae:ceramics/kaolinite/kaolinite_clay> | <tfcflorae:ceramics/stoneware/stoneware_clay>;

// --- Removing Recipes

// Удаление рецептов
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
	"tfc:fire_clay"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// Удаление рецептов из бочки
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
for item in RemoveRecipesInBarrel {
    recipes.removeByRecipeName(item);
}

// Удаление неиспользуемых рецептов из Quern
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
for item in RemoveItemsFromQuern {
    Quern.removeRecipe(item);
}

// Удаление рецептов ковки палок TFC
val TFC_Rods as IItemStack[] = [
	<tfc:metal/rod/gold> * 2,
	<tfc:metal/rod/wrought_iron> * 2,
	<tfc:metal/rod/steel> * 2
];
for item in TFC_Rods {
    Anvil.removeRecipe(item);
}

// Удаление рецептов ковки голов
for item in All_Metal_Heads_From_TFC {
    Anvil.removeRecipe(item);
}

// Удаление рецептов ковки пластин
for item in TFC_Sheets {
    Anvil.removeRecipe(item);
}

// Удаление рецептов сварки двойных пластин
for item in TFC_Double_Sheets {
    Welding.removeRecipe(item);
}

// Удаление некоторых рецептов PigIron
Welding.removeRecipe(<tfc:metal/double_ingot/pig_iron>);
Anvil.removeRecipe(<tfc:metal/trapdoor/pig_iron>);

// --- Adding Recipes

// Quern - GT ore --> GT crushed ore
// - Copper
Quern.addRecipe("TFG_ChunkToCrushedOre_Copper", <metaitem:oreChunkCopper>, <metaitem:crushedCopper> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Malachite", <metaitem:oreChunkMalachite>, <metaitem:crushedMalachite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Tetrahedrite", <metaitem:oreChunkTetrahedrite>, <metaitem:crushedTetrahedrite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Bornite", <metaitem:oreChunkBornite>, <metaitem:crushedBornite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Chalcopyrite", <metaitem:oreChunkChalcopyrite>, <metaitem:crushedChalcopyrite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Chalcocite", <metaitem:oreChunkChalcocite>, <metaitem:crushedChalcocite> * 2);
// - Tin
Quern.addRecipe("TFG_ChunkToCrushedOre_Tin", <metaitem:oreChunkTin>, <metaitem:crushedTin> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Cassiterite", <metaitem:oreChunkCassiterite>, <metaitem:crushedCassiterite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_CassiteriteSand", <metaitem:oreChunkCassiteriteSand>, <metaitem:crushedCassiteriteSand> * 2);
// - Iron
Quern.addRecipe("TFG_ChunkToCrushedOre_Iron", <metaitem:oreChunkIron>, <metaitem:crushedIron> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Pyrite", <metaitem:oreChunkPyrite>, <metaitem:crushedPyrite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_YellowLimonite", <metaitem:oreChunkYellowLimonite>, <metaitem:crushedYellowLimonite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Magnetite", <metaitem:oreChunkMagnetite>, <metaitem:crushedMagnetite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_BrownLimonite", <metaitem:oreChunkBrownLimonite>, <metaitem:crushedBrownLimonite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_BandedIron", <metaitem:oreChunkBandedIron>, <metaitem:crushedBandedIron> * 2);
// - Nickel
Quern.addRecipe("TFG_ChunkToCrushedOre_Nickel", <metaitem:oreChunkNickel>, <metaitem:crushedNickel> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Garnierite", <metaitem:oreChunkGarnierite>, <metaitem:crushedGarnierite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Pentlandite", <metaitem:oreChunkPentlandite>, <metaitem:crushedPentlandite> * 2);
// - Galena
Quern.addRecipe("TFG_ChunkToCrushedOre_Galena", <metaitem:oreChunkGalena>, <metaitem:crushedGalena> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Lead", <metaitem:oreChunkLead>, <metaitem:crushedLead> * 2);
// - Other
Quern.addRecipe("TFG_ChunkToCrushedOre_Gold", <metaitem:oreChunkGold>, <metaitem:crushedGold> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Silver", <metaitem:oreChunkSilver>, <metaitem:crushedSilver> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Sphalerite", <metaitem:oreChunkSphalerite>, <metaitem:crushedSphalerite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Sulfur", <metaitem:oreChunkSulfur>, <metaitem:crushedSulfur> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_RockSalt", <metaitem:oreChunkRockSalt>, <metaitem:crushedRockSalt> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Graphite", <metaitem:oreChunkGraphite>, <metaitem:crushedGraphite> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Mica", <metaitem:oreChunkMica>, <metaitem:crushedMica> * 2);
Quern.addRecipe("TFG_ChunkToCrushedOre_Bismuth", <metaitem:oreChunkBismuth>, <metaitem:crushedBismuth> * 2);

// Новые рецепты ковки GT мечей
Anvil.addRecipe("TFG_sword_blade/Copper", <ore:ingotDoubleCopper>, <metaitem:toolHeadSwordCopper>, 1, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/BismuthBronze", <ore:ingotDoubleBismuthBronze>, <metaitem:toolHeadSwordBismuthBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/BlackBronze", <ore:ingotDoubleBlackBronze>, <metaitem:toolHeadSwordBlackBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/Bronze", <ore:ingotDoubleBronze>, <metaitem:toolHeadSwordBronze>, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/WroughtIron", <ore:ingotDoubleWroughtIron>, <metaitem:toolHeadSwordWroughtIron>, 3, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/Steel", <ore:ingotDoubleSteel>, <metaitem:toolHeadSwordSteel>, 4, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/BlackSteel", <ore:ingotDoubleBlackSteel>, <metaitem:toolHeadSwordBlackSteel>, 5, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/BlueSteel", <ore:ingotDoubleBlueSteel>, <metaitem:toolHeadSwordBlueSteel>, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_sword_blade/RedSteel", <ore:ingotDoubleRedSteel>, <metaitem:toolHeadSwordRedSteel>, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

// Новые рецепты ковки GT кирок
Anvil.addRecipe("TFG_pick_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadPickaxeCopper>, 1, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadPickaxeBismuthBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadPickaxeBlackBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadPickaxeBronze>, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadPickaxeWroughtIron>, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadPickaxeSteel>, 4, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadPickaxeBlackSteel>, 5, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadPickaxeBlueSteel>, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("TFG_pick_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadPickaxeRedSteel>, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");

// Новые рецепты ковки GT топоров
Anvil.addRecipe("TFG_axe_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadAxeCopper>, 1, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadAxeBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadAxeBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadAxeBronze>, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadAxeWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadAxeSteel>, 4, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadAxeBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadAxeBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("TFG_axe_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadAxeRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");

// Новые рецепты ковки GT лопат
Anvil.addRecipe("TFG_shovel_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadShovelCopper>, 1, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadShovelBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadShovelBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadShovelBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadShovelWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadShovelSteel>, 4, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadShovelBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadShovelBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("TFG_shovel_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadShovelRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST");

// Новые рецепты ковки GT мотыг
Anvil.addRecipe("TFG_hoe_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadHoeCopper>, 1, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadHoeBismuthBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadHoeBlackBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadHoeBronze>, 2, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadHoeWroughtIron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadHoeSteel>, 4, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadHoeBlackSteel>, 5, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadHoeBlueSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("TFG_hoe_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadHoeRedSteel>, 6, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");

// Новые рецепты ковки GT пил
Anvil.addRecipe("TFG_saw_blade/Copper", <ore:ingotCopper>, <metaitem:toolHeadSawCopper>, 1, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadHammerBismuthBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadHammerBlackBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/Bronze", <ore:ingotBronze>, <metaitem:toolHeadHammerBronze>, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadHammerWroughtIron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/Steel", <ore:ingotSteel>, <metaitem:toolHeadHammerSteel>, 4, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadHammerBlackSteel>, 5, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadHammerBlueSteel>, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("TFG_saw_blade/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadHammerRedSteel>, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");

// Новые рецепты ковки GT молотков
Anvil.addRecipe("TFG_hammer_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadHammerCopper>, 1, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadHammerBismuthBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadHammerBlackBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadHammerBronze>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadHammerWroughtIron>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadHammerSteel>, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadHammerBlackSteel>, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadHammerBlueSteel>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("TFG_hammer_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadHammerRedSteel>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

// Крафт голов напильков GT
Anvil.addRecipe("TFG_file_head/Copper", <ore:ingotCopper>, <metaitem:toolHeadFileCopper>, 1, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/Bronze", <ore:ingotBronze>, <metaitem:toolHeadFileBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/BismuthBronze", <ore:ingotBismuthBronze>, <metaitem:toolHeadFileBismuthBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/BlackBronze", <ore:ingotBlackBronze>, <metaitem:toolHeadFileBlackBronze>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/BlackSteel", <ore:ingotBlackSteel>, <metaitem:toolHeadFileBlackSteel>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/RedSteel", <ore:ingotRedSteel>, <metaitem:toolHeadFileRedSteel>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/BlueSteel", <ore:ingotBlueSteel>, <metaitem:toolHeadFileBlueSteel>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/Steel", <ore:ingotSteel>, <metaitem:toolHeadFileSteel>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("TFG_file_head/WroughtIron", <ore:ingotWroughtIron>, <metaitem:toolHeadFileWroughtIron>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

// Ведра и красной и синей стали
Anvil.removeRecipe(<tfc:metal/bucket/blue_steel>);
Anvil.removeRecipe(<tfc:metal/bucket/red_steel>);
Anvil.addRecipe("TFG_bucket/BlueSteel", <ore:plateBlueSteel>, <tfc:metal/bucket/blue_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("TFG_bucket/RedSteel", <ore:plateRedSteel>, <tfc:metal/bucket/red_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

// Гриль
Anvil.removeRecipe(<tfc:wrought_iron_grill>);
Anvil.addRecipe("TFG_Grill", <ore:plateDoubleWroughtIron>, <tfc:wrought_iron_grill>, 3, "general", "DRAW_ANY", "PUNCH_LAST", "PUNCH_NOT_LAST");

// Железная дверь
Anvil.removeRecipe(<minecraft:iron_door>);
Anvil.addRecipe("TFG_Iron_Door", <ore:plateDoubleWroughtIron>, <minecraft:iron_door>, 3, "general", "HIT_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");

// Iron Bars x8
Anvil.removeRecipe(<minecraft:iron_bars> * 8);
Anvil.addRecipe("TFG_Iron_Bars_1", <ore:plateWroughtIron>, <minecraft:iron_bars> * 8, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

// Iron Bars x16
Anvil.removeRecipe(<minecraft:iron_bars> * 16);
Anvil.addRecipe("TFG_Iron_Bars_2", <ore:plateDoubleWroughtIron>, <minecraft:iron_bars> * 16, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

// Unfinished Wrought Iron Ingot -> Wrought Iron Ingot
Anvil.addRecipe("TFG_WroughtIron_To_WroughtIron", <tfc:metal/ingot/wrought_iron>, <metaitem:ingotWroughtIron>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Ром
Barrel.removeRecipe(<liquid:rum> * 500);
Barrel.addRecipe("TFG_rum", <minecraft:sugar>, <liquid:hot_water> * 500, <liquid:rum> * 500, 72);

// Липкая резина
Barrel.addRecipe("TFG_sticky_resin", <tfctech:latex/rubber_mix>, <liquid:latex> * 250, <metaitem:rubber_drop>, 6);

// Flux в молотилке
Quern.addRecipe("TFG_flux_rock_to_flux", <ore:rockFlux>, <tfc:powder/flux> * 2);

// Фикс палок из люмбера
recipes.addShapeless(<ore:stickWood>.firstItem * 6, [<ore:lumber>, <ore:gtce.tool.saws>]);

// Огнеупорная глина
recipes.addShaped(<tfc:ceramics/fire_clay>,
[[<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>],
 [<tfc:powder/graphite>, AllClays, <tfc:powder/graphite>],
 [<tfc:powder/kaolinite>, <tfc:powder/graphite>, <tfc:powder/kaolinite>]]);

// TFC Resin --> Sticky resin
furnace.addRecipe(<metaitem:rubber_drop>, <tfc:plants/resin>);

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

//Булыжник -> Ступенька
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

//Гладкий блок -> Ступенька
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

//Сырой блок -> Ступенька
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
    	.outputs(TFC_Lumber * 16, <ore:dustWood>.firstItem * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Пиломатериалы -> Доски
for i, TFC_Planks in TFC_Planks {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 3])
		.circuit(3)
    	.outputs(TFC_Planks)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Полу-блоки
for i, TFC_Slabs in TFC_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Planks[i]])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Slabs * 2, <ore:dustWood>.firstItem * 2)
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
    	.inputs([TFC_Planks[i]])
		.circuit(1)
    	.outputs(TFC_Fences * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Калитка
for i, TFC_Fence_Gates in TFC_Fence_Gates {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <minecraft:stick> * 2])
		.circuit(2)
    	.outputs(TFC_Fence_Gates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Калитка из бревен
for i, TFC_Fence_Gates_Log in TFC_Fence_Gates_Log {
    assembler.recipeBuilder()
    	.inputs([TFC_Logs[i], <minecraft:stick> * 2])
		.circuit(2)
    	.outputs(TFC_Fence_Gates_Log * 8)
    	.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Опоры
for i, TFC_Supports in TFC_Supports {
    cutter.recipeBuilder()
    	.inputs([TFC_Logs[i] * 2])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Supports * 16)
    	.duration(200).EUt(7).buildAndRegister();
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

//Цемент из тфк --> цемент разных цветов
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
LeatherKnapping.addRecipe("tfg:lead", <minecraft:lead>, "XXXXX", "X XXX", "X X X", "X   X", "XXXXX");
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball:0>], null).remove();
assembler.recipeBuilder()
	.inputs(<ore:string> * 2, <ore:leather>)
	.outputs(<minecraft:lead>)
	.duration(250).EUt(2).buildAndRegister();

// Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand> * 8], null).remove();
electrolyzer.recipeBuilder()
	.inputs(<ore:sandSilica> * 8)
	.outputs(<ore:dustSiliconDioxide>.firstItem)
	.duration(150).EUt(26).buildAndRegister();

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

// Исправление рецептов ванильных блоков в автоген рецептах GT на тфк
// Cobblestone * 1
forge_hammer.findRecipe(16, [<chisel:stonebrick:0>], null).remove();
