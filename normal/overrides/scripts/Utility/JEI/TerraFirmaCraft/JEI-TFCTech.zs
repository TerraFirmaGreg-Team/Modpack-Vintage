#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.tfctech.WireDrawing;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
   // Long Rods
   <tfctech:metal/bismuth_bronze_long_rod>,
   <tfctech:metal/bismuth_long_rod>,
   <tfctech:metal/black_bronze_long_rod>,
   <tfctech:metal/black_steel_long_rod>,
   <tfctech:metal/blue_steel_long_rod>,
   <tfctech:metal/brass_long_rod>,
   <tfctech:metal/bronze_long_rod>,
   <tfctech:metal/copper_long_rod>,
   <tfctech:metal/gold_long_rod>,
   <tfctech:metal/lead_long_rod>,
   <tfctech:metal/nickel_long_rod>,
   <tfctech:metal/pig_iron_long_rod>,
   <tfctech:metal/platinum_long_rod>,
   <tfctech:metal/red_steel_long_rod>,
   <tfctech:metal/rose_gold_long_rod>,
   <tfctech:metal/silver_long_rod>,
   <tfctech:metal/steel_long_rod>,
   <tfctech:metal/sterling_silver_long_rod>,
   <tfctech:metal/tin_long_rod>,
   <tfctech:metal/wrought_iron_long_rod>,
   <tfctech:metal/zinc_long_rod>,
   // Rods
   <tfctech:metal/bismuth_bronze_rod>,
   <tfctech:metal/bismuth_rod>,
   <tfctech:metal/black_bronze_rod>,
   <tfctech:metal/black_steel_rod>,
   <tfctech:metal/blue_steel_rod>,
   <tfctech:metal/brass_rod>,
   <tfctech:metal/copper_rod>,
   <tfctech:metal/gold_rod>,
   <tfctech:metal/lead_rod>,
   <tfctech:metal/bronze_rod>,
   <tfctech:metal/nickel_rod>,
   <tfctech:metal/pig_iron_rod>,
   <tfctech:metal/platinum_rod>,
   <tfctech:metal/red_steel_rod>,
   <tfctech:metal/rose_gold_rod>,
   <tfctech:metal/steel_rod>,
   <tfctech:metal/silver_rod>,
   <tfctech:metal/sterling_silver_rod>,
   <tfctech:metal/tin_rod>,
   <tfctech:metal/wrought_iron_rod>,
   <tfctech:metal/zinc_rod>,
   // Bolts
   <tfctech:metal/bismuth_bolt>,
   <tfctech:metal/bismuth_bronze_bolt>,
   <tfctech:metal/black_bronze_bolt>,
   <tfctech:metal/black_steel_bolt>,
   <tfctech:metal/blue_steel_bolt>,
   <tfctech:metal/brass_bolt>,
   <tfctech:metal/bronze_bolt>,
   <tfctech:metal/copper_bolt>,
   <tfctech:metal/gold_bolt>,
   <tfctech:metal/lead_bolt>,
   <tfctech:metal/nickel_bolt>,
   <tfctech:metal/pig_iron_bolt>,
   <tfctech:metal/platinum_bolt>,
   <tfctech:metal/red_steel_bolt>,
   <tfctech:metal/rose_gold_bolt>,
   <tfctech:metal/silver_bolt>,
   <tfctech:metal/steel_bolt>,
   <tfctech:metal/sterling_silver_bolt>,
   <tfctech:metal/tin_bolt>,
   <tfctech:metal/wrought_iron_bolt>,
   <tfctech:metal/zinc_bolt>,
   // Screws
   <tfctech:metal/bismuth_bronze_screw>,
   <tfctech:metal/bismuth_screw>,
   <tfctech:metal/black_bronze_screw>,
   <tfctech:metal/black_steel_screw>,
   <tfctech:metal/blue_steel_screw>,
   <tfctech:metal/brass_screw>,
   <tfctech:metal/bronze_screw>,
   <tfctech:metal/copper_screw>,
   <tfctech:metal/gold_screw>,
   <tfctech:metal/lead_screw>,
   <tfctech:metal/nickel_screw>,
   <tfctech:metal/pig_iron_screw>,
   <tfctech:metal/platinum_screw>,
   <tfctech:metal/red_steel_screw>,
   <tfctech:metal/rose_gold_screw>,
   <tfctech:metal/silver_screw>,
   <tfctech:metal/steel_screw>,
   <tfctech:metal/sterling_silver_screw>,
   <tfctech:metal/tin_screw>,
   <tfctech:metal/wrought_iron_screw>,
   <tfctech:metal/zinc_screw>,
   // Rackwheels
   <tfctech:metal/copper_rackwheel>,
   <tfctech:metal/gold_rackwheel>,
   <tfctech:metal/lead_rackwheel>,
   <tfctech:metal/rose_gold_rackwheel>,
   <tfctech:metal/silver_rackwheel>,
   <tfctech:metal/tin_rackwheel>,
   <tfctech:metal/sterling_silver_rackwheel>,
   <tfctech:metal/pig_iron_rackwheel>,
   <tfctech:metal/platinum_rackwheel>,
   <tfctech:metal/bismuth_bronze_rackwheel>,
   <tfctech:metal/brass_rackwheel>,
   // Rackwheel pieces
   <tfctech:metal/platinum_rackwheel_piece>,
   <tfctech:metal/pig_iron_rackwheel_piece>,
   <tfctech:metal/sterling_silver_rackwheel_piece>,
   <tfctech:metal/tin_rackwheel_piece>,
   <tfctech:metal/silver_rackwheel_piece>,
   <tfctech:metal/rose_gold_rackwheel_piece>,
   <tfctech:metal/lead_rackwheel_piece>,
   <tfctech:metal/gold_rackwheel_piece>,
   <tfctech:metal/copper_rackwheel_piece>,
   <tfctech:metal/bismuth_bronze_rackwheel_piece>,
   <tfctech:metal/brass_rackwheel_piece>,
   // Gears
   <tfctech:metal/sterling_silver_gear>,
   <tfctech:metal/tin_gear>,
   <tfctech:metal/silver_gear>,
   <tfctech:metal/rose_gold_gear>,
   <tfctech:metal/lead_gear>,
   <tfctech:metal/gold_gear>,
   <tfctech:metal/copper_gear>,
   <tfctech:metal/brass_gear>,
   <tfctech:metal/bismuth_bronze_gear>,
   <tfctech:metal/steel_gear>,
   <tfctech:metal/wrought_iron_gear>,
   <tfctech:metal/zinc_gear>,
   <tfctech:metal/nickel_gear>,
   <tfctech:metal/bronze_gear>,
   <tfctech:metal/black_bronze_gear>,
   <tfctech:metal/bismuth_gear>,
   <tfctech:metal/black_steel_gear>,
   <tfctech:metal/blue_steel_gear>,
   <tfctech:metal/platinum_gear>,
   <tfctech:metal/pig_iron_gear>,
   <tfctech:metal/red_steel_gear>,
   // Strips
   <tfctech:metal/bismuth_strip>,
   <tfctech:metal/bismuth_bronze_strip>,
   <tfctech:metal/black_bronze_strip>,
   <tfctech:metal/brass_strip>,
   <tfctech:metal/bronze_strip>,
   <tfctech:metal/rose_gold_strip>,
   <tfctech:metal/zinc_strip>,
   <tfctech:metal/sterling_silver_strip>,
   <tfctech:metal/pig_iron_strip>,
   <tfctech:metal/blue_steel_strip>,
   <tfctech:metal/red_steel_strip>,
   // Wires - Stage Final
   <tfctech:metal/tin_wire:0>,
   <tfctech:metal/silver_wire:0>,
   <tfctech:metal/rose_gold_wire:0>,
   <tfctech:metal/lead_wire:0>,
   <tfctech:metal/gold_wire:0>,
   <tfctech:metal/brass_wire:0>,
   <tfctech:metal/black_bronze_wire:0>,
   <tfctech:metal/bismuth_bronze_wire:0>,
   <tfctech:metal/bismuth_wire:0>,
   <tfctech:metal/red_steel_wire:0>,
   <tfctech:metal/blue_steel_wire:0>,
   <tfctech:metal/black_steel_wire:0>,
   <tfctech:metal/platinum_wire:0>,
   <tfctech:metal/steel_wire:0>,
   <tfctech:metal/pig_iron_wire:0>,
   <tfctech:metal/wrought_iron_wire:0>,
   <tfctech:metal/sterling_silver_wire:0>,
   <tfctech:metal/zinc_wire:0>,
   <tfctech:metal/nickel_wire:0>,
   <tfctech:metal/copper_wire:0>,
   // Wires - Stage 1
   <tfctech:metal/bismuth_wire:4>,
   <tfctech:metal/bismuth_bronze_wire:4>,
   <tfctech:metal/black_bronze_wire:4>,
   <tfctech:metal/brass_wire:4>,
   <tfctech:metal/bronze_wire:4>,
   <tfctech:metal/rose_gold_wire:4>,
   <tfctech:metal/zinc_wire:4>,
   <tfctech:metal/sterling_silver_wire:4>,
   <tfctech:metal/wrought_iron_wire:4>,
   <tfctech:metal/pig_iron_wire:4>,
   <tfctech:metal/blue_steel_wire:4>,
   <tfctech:metal/red_steel_wire:4>,
   // Other
   <tfctech:powder/potash>,
   <tfctech:metal/iron_tongs>
];

val RemoveRecipe as IItemStack[] = [
	<tfctech:wire_draw_bench>,
   <tfctech:smeltery_firebox>,
   <tfctech:smeltery_cauldron>,
   <tfctech:electric_forge>,
   <tfctech:metal/copper_inductor>,
   <tfctech:induction_crucible>,
   <tfctech:wiredraw/winch>,
   <tfctech:latex/vulcanizing_agents>,
   // Strips
   <tfctech:metal/bismuth_strip>,
	<tfctech:metal/bismuth_bronze_strip>,
	<tfctech:metal/black_bronze_strip>,
	<tfctech:metal/brass_strip>,
	<tfctech:metal/bronze_strip>,
	<tfctech:metal/copper_strip>,
	<tfctech:metal/gold_strip>,
	<tfctech:metal/lead_strip>,
	<tfctech:metal/nickel_strip>,
	<tfctech:metal/rose_gold_strip>,
	<tfctech:metal/silver_strip>,
	<tfctech:metal/tin_strip>,
	<tfctech:metal/zinc_strip>,
	<tfctech:metal/sterling_silver_strip>,
	<tfctech:metal/wrought_iron_strip>,
	<tfctech:metal/pig_iron_strip>,
	<tfctech:metal/steel_strip>,
	<tfctech:metal/platinum_strip>,
	<tfctech:metal/black_steel_strip>,
	<tfctech:metal/blue_steel_strip>,
	<tfctech:metal/red_steel_strip>,
];

val RemoveRecipeWireDrawing as IItemStack[] = [
	// Wires, no GT
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
   // Wires, GT
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

val RemoveRecipeAnvil as IItemStack[] = [
   // Wires - Stage 1
   <tfctech:metal/bismuth_wire:4>,
   <tfctech:metal/bismuth_bronze_wire:4>,
   <tfctech:metal/black_bronze_wire:4>,
   <tfctech:metal/brass_wire:4>,
   <tfctech:metal/bronze_wire:4>,
   <tfctech:metal/rose_gold_wire:4>,
   <tfctech:metal/zinc_wire:4>,
   <tfctech:metal/sterling_silver_wire:4>,
   <tfctech:metal/wrought_iron_wire:4>,
   <tfctech:metal/pig_iron_wire:4>,
   <tfctech:metal/blue_steel_wire:4>,
   <tfctech:metal/red_steel_wire:4>,
   // Draw Plates
   <tfctech:metal/iron_draw_plate>,
   <tfctech:metal/steel_draw_plate>,
   <tfctech:metal/black_steel_draw_plate>,
   // Blowpipes
   <tfctech:metal/wrought_iron_blowpipe>,
   <tfctech:metal/steel_blowpipe>,
   <tfctech:metal/black_steel_blowpipe>,
   <tfctech:metal/blue_steel_blowpipe>,
   <tfctech:metal/red_steel_blowpipe>,
   // Other
   <tfctech:metal/iron_tongs>,
   <tfctech:metal/iron_bowl_mount>,
   // Long
   <tfctech:metal/bismuth_long_rod>,
	<tfctech:metal/bismuth_bronze_long_rod>,
	<tfctech:metal/black_bronze_long_rod>,
	<tfctech:metal/brass_long_rod>,
	<tfctech:metal/bronze_long_rod>,
	<tfctech:metal/copper_long_rod>,
	<tfctech:metal/gold_long_rod>,
	<tfctech:metal/lead_long_rod>,
	<tfctech:metal/nickel_long_rod>,
	<tfctech:metal/rose_gold_long_rod>,
	<tfctech:metal/silver_long_rod>,
	<tfctech:metal/tin_long_rod>,
	<tfctech:metal/zinc_long_rod>,
	<tfctech:metal/sterling_silver_long_rod>,
	<tfctech:metal/wrought_iron_long_rod>,
	<tfctech:metal/pig_iron_long_rod>,
	<tfctech:metal/steel_long_rod>,
	<tfctech:metal/platinum_long_rod>,
	<tfctech:metal/black_steel_long_rod>,
	<tfctech:metal/blue_steel_long_rod>,
	<tfctech:metal/red_steel_long_rod>
];

val RemoveRecipeWelding as IItemStack[] = [
   // Gears
   <tfctech:metal/sterling_silver_gear>,
   <tfctech:metal/tin_gear>,
   <tfctech:metal/silver_gear>,
   <tfctech:metal/rose_gold_gear>,
   <tfctech:metal/lead_gear>,
   <tfctech:metal/gold_gear>,
   <tfctech:metal/copper_gear>,
   <tfctech:metal/brass_gear>,
   <tfctech:metal/bismuth_bronze_gear>,
   <tfctech:metal/steel_gear>,
   <tfctech:metal/wrought_iron_gear>,
   <tfctech:metal/zinc_gear>,
   <tfctech:metal/nickel_gear>,
   <tfctech:metal/bronze_gear>,
   <tfctech:metal/black_bronze_gear>,
   <tfctech:metal/bismuth_gear>,
   <tfctech:metal/black_steel_gear>,
   <tfctech:metal/blue_steel_gear>,
   <tfctech:metal/platinum_gear>,
   <tfctech:metal/pig_iron_gear>,
   <tfctech:metal/red_steel_gear>
];

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

for item in RemoveRecipe {
   recipes.remove(item);
}

for item in RemoveRecipeWireDrawing {
   WireDrawing.removeRecipe(item);
}

// Удаление рецептов ковки
for item in RemoveRecipeAnvil {
   Anvil.removeRecipe(item);
}

// Удаление рецептов сварки
for item in RemoveRecipeWelding {
   Welding.removeRecipe(item);
}

recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");
recipes.removeByRecipeName("tfctech:devices/fridge");

// Резина
Barrel.removeRecipe(<tfctech:latex/rubber_mix> * 6);