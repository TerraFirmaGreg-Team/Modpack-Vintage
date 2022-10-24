# TFCTech

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Barrel;
import mods.tfctech.WireDrawing;
import crafttweaker.item.IItemStack;

print("Initializing 'TFCTech'...");


// Удаление рецептов из NEI 
var items = [<tfctech:latex/rubber_mix>, <tfctech:latex/rubber>, <tfctech:metal/bismuth_strip>, <tfctech:metal/bismuth_rackwheel_piece>, <tfctech:metal/bismuth_rackwheel>, <tfctech:metal/bismuth_gear>, <tfctech:metal/bismuth_wire:*>, <tfctech:metal/bismuth_long_rod>, <tfctech:metal/bismuth_rod>, <tfctech:metal/bismuth_bolt>, <tfctech:metal/bismuth_screw>, <tfctech:metal/bismuth_bronze_strip>, <tfctech:metal/bismuth_bronze_rackwheel_piece>, <tfctech:metal/bismuth_bronze_rackwheel>, <tfctech:metal/bismuth_bronze_gear>, <tfctech:metal/bismuth_bronze_wire:*>, <tfctech:metal/bismuth_bronze_long_rod>, <tfctech:metal/bismuth_bronze_rod>, <tfctech:metal/bismuth_bronze_bolt>, <tfctech:metal/bismuth_bronze_screw>, <tfctech:metal/black_bronze_strip>, <tfctech:metal/black_bronze_rackwheel_piece>, <tfctech:metal/black_bronze_rackwheel>, <tfctech:metal/black_bronze_gear>, <tfctech:metal/black_bronze_wire:*>, <tfctech:metal/black_bronze_long_rod>, <tfctech:metal/black_bronze_rod>, <tfctech:metal/black_bronze_bolt>, <tfctech:metal/black_bronze_screw>, <tfctech:metal/bronze_strip>, <tfctech:metal/bronze_gear>, <tfctech:metal/bronze_wire:*>, <tfctech:metal/bronze_long_rod>, <tfctech:metal/bronze_rod>, <tfctech:metal/bronze_bolt>, <tfctech:metal/bronze_screw>, <tfctech:metal/brass_strip>, <tfctech:metal/brass_rackwheel_piece>, <tfctech:metal/brass_rackwheel>, <tfctech:metal/brass_gear>, <tfctech:metal/brass_wire:*>, <tfctech:metal/brass_long_rod>, <tfctech:metal/brass_rod>, <tfctech:metal/brass_bolt>, <tfctech:metal/brass_screw>, <tfctech:metal/copper_rackwheel_piece>, <tfctech:metal/copper_rackwheel>, <tfctech:metal/copper_gear>, <tfctech:metal/copper_wire>, <tfctech:metal/copper_long_rod>, <tfctech:metal/copper_rod>, <tfctech:metal/copper_bolt>, <tfctech:metal/copper_screw>, <tfctech:metal/gold_rackwheel_piece>, <tfctech:metal/gold_rackwheel>, <tfctech:metal/gold_gear>, <tfctech:metal/gold_wire>, <tfctech:metal/gold_long_rod>, <tfctech:metal/gold_rod>, <tfctech:metal/gold_bolt>, <tfctech:metal/gold_screw>, <tfctech:metal/rose_gold_strip>, <tfctech:metal/rose_gold_rackwheel_piece>, <tfctech:metal/rose_gold_rackwheel>, <tfctech:metal/rose_gold_gear>, <tfctech:metal/rose_gold_wire:*>, <tfctech:metal/rose_gold_long_rod>, <tfctech:metal/rose_gold_rod>, <tfctech:metal/rose_gold_bolt>, <tfctech:metal/rose_gold_screw>, <tfctech:metal/brass_sleeve>, <tfctech:metal/lead_rackwheel_piece>, <tfctech:metal/lead_rackwheel>, <tfctech:metal/lead_gear>, <tfctech:metal/lead_wire>, <tfctech:metal/lead_long_rod>, <tfctech:metal/lead_rod>, <tfctech:metal/lead_bolt>, <tfctech:metal/lead_screw>, <tfctech:metal/nickel_rackwheel_piece>, <tfctech:metal/nickel_rackwheel>, <tfctech:metal/nickel_gear>, <tfctech:metal/nickel_wire>, <tfctech:metal/nickel_long_rod>, <tfctech:metal/nickel_rod>, <tfctech:metal/nickel_bolt>, <tfctech:metal/nickel_screw>, <tfctech:metal/silver_rackwheel_piece>, <tfctech:metal/silver_rackwheel>, <tfctech:metal/silver_gear>, <tfctech:metal/silver_wire>, <tfctech:metal/silver_long_rod>, <tfctech:metal/silver_rod>, <tfctech:metal/silver_bolt>, <tfctech:metal/silver_screw>, <tfctech:metal/sterling_silver_strip>, <tfctech:metal/sterling_silver_rackwheel_piece>, <tfctech:metal/sterling_silver_rackwheel>, <tfctech:metal/sterling_silver_gear>, <tfctech:metal/sterling_silver_wire:*>, <tfctech:metal/sterling_silver_long_rod>, <tfctech:metal/sterling_silver_rod>, <tfctech:metal/sterling_silver_bolt>, <tfctech:metal/sterling_silver_screw>, <tfctech:metal/tin_rackwheel_piece>, <tfctech:metal/tin_rackwheel>, <tfctech:metal/tin_gear>, <tfctech:metal/tin_wire>, <tfctech:metal/tin_long_rod>, <tfctech:metal/tin_rod>, <tfctech:metal/tin_bolt>, <tfctech:metal/tin_screw>, <tfctech:metal/zinc_rackwheel_piece>, <tfctech:metal/zinc_rackwheel>, <tfctech:metal/zinc_gear>, <tfctech:metal/zinc_wire:*>, <tfctech:metal/zinc_long_rod>, <tfctech:metal/zinc_rod>, <tfctech:metal/zinc_bolt>, <tfctech:metal/zinc_screw>, <tfctech:metal/wrought_iron_rackwheel_piece>, <tfctech:metal/wrought_iron_rackwheel>, <tfctech:metal/wrought_iron_gear>, <tfctech:metal/wrought_iron_wire:*>, <tfctech:metal/wrought_iron_long_rod>, <tfctech:metal/wrought_iron_rod>, <tfctech:metal/wrought_iron_bolt>, <tfctech:metal/wrought_iron_screw>, <tfctech:metal/pig_iron_strip>, <tfctech:metal/pig_iron_rackwheel_piece>, <tfctech:metal/pig_iron_rackwheel>, <tfctech:metal/pig_iron_gear>, <tfctech:metal/pig_iron_wire:*>, <tfctech:metal/pig_iron_long_rod>, <tfctech:metal/pig_iron_rod>, <tfctech:metal/pig_iron_bolt>, <tfctech:metal/pig_iron_screw>, <tfctech:metal/steel_rackwheel_piece>, <tfctech:metal/steel_rackwheel>, <tfctech:metal/steel_gear>, <tfctech:metal/steel_wire>, <tfctech:metal/steel_long_rod>, <tfctech:metal/steel_rod>, <tfctech:metal/steel_bolt>, <tfctech:metal/steel_screw>, <tfctech:metal/zinc_strip>, <tfctech:metal/black_steel_gear>, <tfctech:metal/black_steel_wire>, <tfctech:metal/black_steel_long_rod>, <tfctech:metal/black_steel_rod>, <tfctech:metal/black_steel_bolt>, <tfctech:metal/black_steel_screw>, <tfctech:metal/blue_steel_strip>, <tfctech:metal/blue_steel_rackwheel_piece>, <tfctech:metal/blue_steel_rackwheel>, <tfctech:metal/blue_steel_gear>, <tfctech:metal/blue_steel_wire:*>, <tfctech:metal/blue_steel_long_rod>, <tfctech:metal/blue_steel_rod>, <tfctech:metal/blue_steel_bolt>, <tfctech:metal/blue_steel_screw>, <tfctech:metal/red_steel_strip>, <tfctech:metal/red_steel_rackwheel_piece>, <tfctech:metal/red_steel_rackwheel>, <tfctech:metal/red_steel_gear>, <tfctech:metal/red_steel_wire:*>, <tfctech:metal/red_steel_long_rod>, <tfctech:metal/red_steel_rod>, <tfctech:metal/red_steel_bolt>, <tfctech:metal/red_steel_screw>, <tfctech:metal/platinum_rackwheel_piece>, <tfctech:metal/platinum_rackwheel>, <tfctech:metal/platinum_gear>, <tfctech:metal/platinum_wire>, <tfctech:metal/platinum_long_rod>, <tfctech:metal/platinum_rod>, <tfctech:metal/platinum_bolt>, <tfctech:metal/platinum_screw>, <tfctech:powder/potash>, <tfctech:powder/wood>, <tfctech:powder/ash>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

// Удаление старых рецептов из станка по волочению проволки
val RemoveDrawingRecipes as IItemStack[] = [
    <tfctech:metal/bismuth_wire:0>,
    <tfctech:metal/bismuth_wire:1>,
    <tfctech:metal/bismuth_wire:2>,
    <tfctech:metal/bismuth_wire:3>,
    <tfctech:metal/bismuth_bronze_wire:0>,
    <tfctech:metal/bismuth_bronze_wire:1>,
    <tfctech:metal/bismuth_bronze_wire:2>,
    <tfctech:metal/bismuth_bronze_wire:3>,
    <tfctech:metal/black_bronze_wire:0>,
    <tfctech:metal/black_bronze_wire:1>,
    <tfctech:metal/black_bronze_wire:2>,
    <tfctech:metal/black_bronze_wire:3>,
    <tfctech:metal/brass_wire:0>,
    <tfctech:metal/brass_wire:1>,
    <tfctech:metal/brass_wire:2>,
    <tfctech:metal/brass_wire:3>,
    <tfctech:metal/bronze_wire:0>,
    <tfctech:metal/bronze_wire:1>,
    <tfctech:metal/bronze_wire:2>,
    <tfctech:metal/bronze_wire:3>,
    <tfctech:metal/rose_gold_wire:0>,
    <tfctech:metal/rose_gold_wire:1>,
    <tfctech:metal/rose_gold_wire:2>,
    <tfctech:metal/rose_gold_wire:3>,
    <tfctech:metal/wrought_iron_wire:0>,
    <tfctech:metal/wrought_iron_wire:1>,
    <tfctech:metal/wrought_iron_wire:2>,
    <tfctech:metal/wrought_iron_wire:3>,
    <tfctech:metal/pig_iron_wire:0>,
    <tfctech:metal/pig_iron_wire:1>,
    <tfctech:metal/pig_iron_wire:2>,
    <tfctech:metal/pig_iron_wire:3>,
    <tfctech:metal/blue_steel_wire:0>,
    <tfctech:metal/blue_steel_wire:1>,
    <tfctech:metal/blue_steel_wire:2>,
    <tfctech:metal/blue_steel_wire:3>,
    <tfctech:metal/red_steel_wire:0>,
    <tfctech:metal/red_steel_wire:1>,
    <tfctech:metal/red_steel_wire:2>,
    <tfctech:metal/red_steel_wire:3>,
    <tfctech:metal/zinc_wire:0>,
    <tfctech:metal/zinc_wire:1>,
    <tfctech:metal/zinc_wire:2>,
    <tfctech:metal/zinc_wire:3>,
    <tfctech:metal/sterling_silver_wire:0>,
    <tfctech:metal/sterling_silver_wire:1>,
    <tfctech:metal/sterling_silver_wire:2>,
    <tfctech:metal/sterling_silver_wire:3>,
    <tfctech:metal/copper_wire>,
    <tfctech:metal/gold_wire>,
    <tfctech:metal/lead_wire>,
    <tfctech:metal/nickel_wire>,
    <tfctech:metal/silver_wire>,
    <tfctech:metal/tin_wire>,
    <tfctech:metal/steel_wire>,
    <tfctech:metal/platinum_wire>,
    <tfctech:metal/black_steel_wire>
];
for item in RemoveDrawingRecipes {
    WireDrawing.removeRecipe(item);
}

// Новые рецепты для станка по волочению проволки
WireDrawing.addRecipe("tfg:tfctech/wire_copper", <tfctech:metal/copper_wire:1>, 3, <metaitem:wireGtSingleCopper>, 0xFFA6B525);
WireDrawing.addRecipe("tfg:tfctech/wire_gold", <tfctech:metal/gold_wire:1>, 3, <metaitem:wireGtSingleGold>, 0xFFc2bb30);
WireDrawing.addRecipe("tfg:tfctech/wire_lead", <tfctech:metal/lead_wire:1>, 3, <metaitem:wireGtSingleLead>, 0xFF593f73);
WireDrawing.addRecipe("tfg:tfctech/wire_nickel", <tfctech:metal/nickel_wire:1>, 3, <metaitem:wireGtSingleNickel>, 0xFFb79bd4);
WireDrawing.addRecipe("tfg:tfctech/wire_silver", <tfctech:metal/silver_wire:1>, 3, <metaitem:wireGtSingleSilver>, 0xFFbfbfbf);
WireDrawing.addRecipe("tfg:tfctech/wire_tin", <tfctech:metal/tin_wire:1>, 3, <metaitem:wireGtSingleTin>, 0xFF666666);
WireDrawing.addRecipe("tfg:tfctech/wire_steel", <tfctech:metal/steel_wire:1>, 4, <metaitem:wireGtSingleSteel>, 0xFF4d4d4d);
WireDrawing.addRecipe("tfg:tfctech/wire_platinum", <tfctech:metal/platinum_wire:1>, 5, <metaitem:wireGtSinglePlatinum>, 0xFFbabf88);
WireDrawing.addRecipe("tfg:tfctech/wire_black_steel", <tfctech:metal/black_steel_wire:1>, 5, <metaitem:wireGtSingleBlackSteel>, 0xFF292929);

// Удаление старого рецепта крафта резиновой смеси
Barrel.removeRecipe(<tfctech:latex/rubber_mix> * 6, null);

// Получение жидкого латекса в бочке
Barrel.addRecipe("TFG_rubber_mass_1", <tfc:wood/log/hevea> * 8, <liquid:hot_water> * 4000, null, <liquid:latex> * 1000, 8);

// Получение сырой резиновой массы в бочке
Barrel.addRecipe("TFG_rubber_mass_2", <liquid:latex> * 1000, <metaitem:dustRawRubber> * 10, 8);

// Получение резиновой массы в бочке
Barrel.addRecipe("TFG_rubber_mass_3", <tfctech:latex/vulcanizing_agents> * 1, <liquid:latex> * 100, <metaitem:dustRubber> * 1, 4);

// Крафт шестерни из грега на наковальне
// Из черной стали
Welding.removeRecipe(<tfctech:metal/black_steel_gear>);
Welding.addRecipe("TFG_gearBlackSteel", <tfctech:metal/black_steel_rackwheel>, <tfctech:metal/steel_sleeve>, <metaitem:gearBlackSteel>, 5);
// Из бронзы
Welding.removeRecipe(<tfctech:metal/bronze_gear>);
Welding.addRecipe("TFG_gearBronze", <tfctech:metal/bronze_rackwheel>, <tfctech:metal/tin_sleeve>, <metaitem:gearBronze>, 2);

// Новый крафт холодильника
recipes.remove(<tfctech:fridge>);
recipes.addShaped(<tfctech:fridge>,
	[[<ore:plateDoubleSilver>, <immersiveengineering:metal_decoration0:7>, <ore:plateDoubleSilver>],
	[<ore:plateDoubleSilver>, <ore:plateDoubleWroughtIron>, <ore:plateDoubleSilver>],
	[<ore:plateDoubleSilver>, <immersiveengineering:metal_decoration0:5>, <ore:plateDoubleSilver>]]);

// Новый крафт индуктора
recipes.remove(<tfctech:metal/copper_inductor>);
recipes.addShaped(<tfctech:metal/copper_inductor>,
	[[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>],
	[<ore:wireGtSingleCopper>, null, <ore:wireGtSingleCopper>],
	[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>]]);

// Новый крафт электрической кузни
recipes.remove(<tfctech:electric_forge>);
recipes.addShaped(<tfctech:electric_forge>,
	[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>],
	[<tfctech:metal/copper_inductor>, <immersiveengineering:stone_decoration:2>, <tfctech:metal/copper_inductor>],
	[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

// Новый крафт индукционного тигеля
recipes.remove(<tfctech:induction_crucible>);
recipes.addShaped(<tfctech:induction_crucible>,
	[[<ore:plateSteel>, null, <ore:plateSteel>],
	[<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>],
	[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);

// Удаление крафтов прутов на наковальне
Anvil.removeRecipe(<tfctech:metal/wrought_iron_long_rod>);
Anvil.removeRecipe(<tfctech:metal/steel_long_rod>);
Anvil.removeRecipe(<tfctech:metal/black_steel_long_rod>);

// Крафт железных стержней на наковальне
Anvil.addRecipe("TFG_stickLong_1", <ore:ingotWroughtIron>, <metaitem:stickLongWroughtIron>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_stickLong_2", <ore:ingotSteel>, <metaitem:stickLongSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("TFG_stickLong_3", <ore:ingotBlackSteel>, <metaitem:stickLongBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// Поташ (оксид калия)
recipes.remove(<tfctech:powder/potash>);
recipes.addShapeless(<ore:dustPotash>.firstItem * 4, 
	[<tfctech:pot_potash>]);

// Получение древесных опилок
Quern.addRecipe("TFG_dustWood", <ore:lumber>, <metaitem:dustWood>);

// Удаление крафта золы
Heating.removeRecipe(<tfctech:powder/ash>);

// Регистрация древесных опилок для обработки на костре
ItemRegistry.registerItemHeat(<metaitem:dustWood>, 0.5, 2000, false);
// Регистрация пепла для обработки на костре
ItemRegistry.registerItemHeat(<metaitem:dustAsh>, 0.5, 2000, false);

// Получение пепла
Heating.addRecipe("TFG_dustAsh_1", <gregtech:meta_dust:1617>, <gregtech:meta_dust:254>, 800, 2000);

// Получение поташа
furnace.addRecipe(<tfctech:pot_potash>, <tfctech:pot_ash>);

// Обжарка форм в печке
furnace.addRecipe(<tfctech:ceramics/mold/sleeve>, <tfctech:ceramics/unfired/sleeve>);
furnace.addRecipe(<tfctech:ceramics/mold/rackwheel_piece>, <tfctech:ceramics/unfired/rackwheel_piece>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_pane>, <tfctech:ceramics/unfired/glass_pane>);
furnace.addRecipe(<tfctech:ceramics/mold/glass_block>, <tfctech:ceramics/unfired/glass_block>);

// Получение извести
furnace.addRecipe(<tfctech:powder/lime>, <ore:rockFlux>);
// Получение негашаной извести
furnace.addRecipe(<gregtech:meta_dust:360>, <tfctech:powder/lime>);


print("Initialized 'TFCTech'");