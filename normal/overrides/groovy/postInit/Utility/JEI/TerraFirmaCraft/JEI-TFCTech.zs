#priority 980

import mods.jei.JEI
import crafttweaker.item.IItemStack
import mods.terrafirmacraft.Welding
import mods.terrafirmacraft.Anvil
import mods.terrafirmacraft.Barrel
import mods.tfctech.WireDrawing


// --- Массивы

def (RemoveAndHide) = [
   // Long Rods
   item('tfctech:metal/bismuth_bronze_long_rod'),
   item('tfctech:metal/bismuth_long_rod'),
   item('tfctech:metal/black_bronze_long_rod'),
   item('tfctech:metal/black_steel_long_rod'),
   item('tfctech:metal/blue_steel_long_rod'),
   item('tfctech:metal/brass_long_rod'),
   item('tfctech:metal/bronze_long_rod'),
   item('tfctech:metal/copper_long_rod'),
   item('tfctech:metal/gold_long_rod'),
   item('tfctech:metal/lead_long_rod'),
   item('tfctech:metal/nickel_long_rod'),
   item('tfctech:metal/pig_iron_long_rod'),
   item('tfctech:metal/platinum_long_rod'),
   item('tfctech:metal/red_steel_long_rod'),
   item('tfctech:metal/rose_gold_long_rod'),
   item('tfctech:metal/silver_long_rod'),
   item('tfctech:metal/steel_long_rod'),
   item('tfctech:metal/sterling_silver_long_rod'),
   item('tfctech:metal/tin_long_rod'),
   item('tfctech:metal/wrought_iron_long_rod'),
   item('tfctech:metal/zinc_long_rod'),
   // Rods
   item('tfctech:metal/bismuth_bronze_rod'),
   item('tfctech:metal/bismuth_rod'),
   item('tfctech:metal/black_bronze_rod'),
   item('tfctech:metal/black_steel_rod'),
   item('tfctech:metal/blue_steel_rod'),
   item('tfctech:metal/brass_rod'),
   item('tfctech:metal/copper_rod'),
   item('tfctech:metal/gold_rod'),
   item('tfctech:metal/lead_rod'),
   item('tfctech:metal/bronze_rod'),
   item('tfctech:metal/nickel_rod'),
   item('tfctech:metal/pig_iron_rod'),
   item('tfctech:metal/platinum_rod'),
   item('tfctech:metal/red_steel_rod'),
   item('tfctech:metal/rose_gold_rod'),
   item('tfctech:metal/steel_rod'),
   item('tfctech:metal/silver_rod'),
   item('tfctech:metal/sterling_silver_rod'),
   item('tfctech:metal/tin_rod'),
   item('tfctech:metal/wrought_iron_rod'),
   item('tfctech:metal/zinc_rod'),
   // Bolts
   item('tfctech:metal/bismuth_bolt'),
   item('tfctech:metal/bismuth_bronze_bolt'),
   item('tfctech:metal/black_bronze_bolt'),
   item('tfctech:metal/black_steel_bolt'),
   item('tfctech:metal/blue_steel_bolt'),
   item('tfctech:metal/brass_bolt'),
   item('tfctech:metal/bronze_bolt'),
   item('tfctech:metal/copper_bolt'),
   item('tfctech:metal/gold_bolt'),
   item('tfctech:metal/lead_bolt'),
   item('tfctech:metal/nickel_bolt'),
   item('tfctech:metal/pig_iron_bolt'),
   item('tfctech:metal/platinum_bolt'),
   item('tfctech:metal/red_steel_bolt'),
   item('tfctech:metal/rose_gold_bolt'),
   item('tfctech:metal/silver_bolt'),
   item('tfctech:metal/steel_bolt'),
   item('tfctech:metal/sterling_silver_bolt'),
   item('tfctech:metal/tin_bolt'),
   item('tfctech:metal/wrought_iron_bolt'),
   item('tfctech:metal/zinc_bolt'),
   // Screws
   item('tfctech:metal/bismuth_bronze_screw'),
   item('tfctech:metal/bismuth_screw'),
   item('tfctech:metal/black_bronze_screw'),
   item('tfctech:metal/black_steel_screw'),
   item('tfctech:metal/blue_steel_screw'),
   item('tfctech:metal/brass_screw'),
   item('tfctech:metal/bronze_screw'),
   item('tfctech:metal/copper_screw'),
   item('tfctech:metal/gold_screw'),
   item('tfctech:metal/lead_screw'),
   item('tfctech:metal/nickel_screw'),
   item('tfctech:metal/pig_iron_screw'),
   item('tfctech:metal/platinum_screw'),
   item('tfctech:metal/red_steel_screw'),
   item('tfctech:metal/rose_gold_screw'),
   item('tfctech:metal/silver_screw'),
   item('tfctech:metal/steel_screw'),
   item('tfctech:metal/sterling_silver_screw'),
   item('tfctech:metal/tin_screw'),
   item('tfctech:metal/wrought_iron_screw'),
   item('tfctech:metal/zinc_screw'),
   // Rackwheels
   item('tfctech:metal/copper_rackwheel'),
   item('tfctech:metal/gold_rackwheel'),
   item('tfctech:metal/lead_rackwheel'),
   item('tfctech:metal/rose_gold_rackwheel'),
   item('tfctech:metal/silver_rackwheel'),
   item('tfctech:metal/tin_rackwheel'),
   item('tfctech:metal/sterling_silver_rackwheel'),
   item('tfctech:metal/pig_iron_rackwheel'),
   item('tfctech:metal/platinum_rackwheel'),
   item('tfctech:metal/bismuth_bronze_rackwheel'),
   item('tfctech:metal/brass_rackwheel'),
   // Rackwheel pieces
   item('tfctech:metal/platinum_rackwheel_piece'),
   item('tfctech:metal/pig_iron_rackwheel_piece'),
   item('tfctech:metal/sterling_silver_rackwheel_piece'),
   item('tfctech:metal/tin_rackwheel_piece'),
   item('tfctech:metal/silver_rackwheel_piece'),
   item('tfctech:metal/rose_gold_rackwheel_piece'),
   item('tfctech:metal/lead_rackwheel_piece'),
   item('tfctech:metal/gold_rackwheel_piece'),
   item('tfctech:metal/copper_rackwheel_piece'),
   item('tfctech:metal/bismuth_bronze_rackwheel_piece'),
   item('tfctech:metal/brass_rackwheel_piece'),
   // Gears
   item('tfctech:metal/sterling_silver_gear'),
   item('tfctech:metal/tin_gear'),
   item('tfctech:metal/silver_gear'),
   item('tfctech:metal/rose_gold_gear'),
   item('tfctech:metal/lead_gear'),
   item('tfctech:metal/gold_gear'),
   item('tfctech:metal/copper_gear'),
   item('tfctech:metal/brass_gear'),
   item('tfctech:metal/bismuth_bronze_gear'),
   item('tfctech:metal/steel_gear'),
   item('tfctech:metal/wrought_iron_gear'),
   item('tfctech:metal/zinc_gear'),
   item('tfctech:metal/nickel_gear'),
   item('tfctech:metal/bronze_gear'),
   item('tfctech:metal/black_bronze_gear'),
   item('tfctech:metal/bismuth_gear'),
   item('tfctech:metal/black_steel_gear'),
   item('tfctech:metal/blue_steel_gear'),
   item('tfctech:metal/platinum_gear'),
   item('tfctech:metal/pig_iron_gear'),
   item('tfctech:metal/red_steel_gear'),
   // Strips
   item('tfctech:metal/bismuth_strip'),
   item('tfctech:metal/bismuth_bronze_strip'),
   item('tfctech:metal/black_bronze_strip'),
   item('tfctech:metal/brass_strip'),
   item('tfctech:metal/bronze_strip'),
   item('tfctech:metal/rose_gold_strip'),
   item('tfctech:metal/zinc_strip'),
   item('tfctech:metal/sterling_silver_strip'),
   item('tfctech:metal/pig_iron_strip'),
   item('tfctech:metal/blue_steel_strip'),
   item('tfctech:metal/red_steel_strip'),
   // Wires - Stage Final
   item('tfctech:metal/tin_wire:0'),
   item('tfctech:metal/silver_wire:0'),
   item('tfctech:metal/rose_gold_wire:0'),
   item('tfctech:metal/lead_wire:0'),
   item('tfctech:metal/gold_wire:0'),
   item('tfctech:metal/brass_wire:0'),
   item('tfctech:metal/black_bronze_wire:0'),
   item('tfctech:metal/bismuth_bronze_wire:0'),
   item('tfctech:metal/bismuth_wire:0'),
   item('tfctech:metal/red_steel_wire:0'),
   item('tfctech:metal/blue_steel_wire:0'),
   item('tfctech:metal/black_steel_wire:0'),
   item('tfctech:metal/platinum_wire:0'),
   item('tfctech:metal/steel_wire:0'),
   item('tfctech:metal/pig_iron_wire:0'),
   item('tfctech:metal/wrought_iron_wire:0'),
   item('tfctech:metal/sterling_silver_wire:0'),
   item('tfctech:metal/zinc_wire:0'),
   item('tfctech:metal/nickel_wire:0'),
   item('tfctech:metal/copper_wire:0'),
   // Wires - Stage 1
   item('tfctech:metal/bismuth_wire:4'),
   item('tfctech:metal/bismuth_bronze_wire:4'),
   item('tfctech:metal/black_bronze_wire:4'),
   item('tfctech:metal/brass_wire:4'),
   item('tfctech:metal/bronze_wire:4'),
   item('tfctech:metal/rose_gold_wire:4'),
   item('tfctech:metal/zinc_wire:4'),
   item('tfctech:metal/sterling_silver_wire:4'),
   item('tfctech:metal/wrought_iron_wire:4'),
   item('tfctech:metal/pig_iron_wire:4'),
   item('tfctech:metal/blue_steel_wire:4'),
   item('tfctech:metal/red_steel_wire:4'),
   // Other
   item('tfctech:powder/potash'),
   item('tfctech:metal/iron_tongs')
]

def (RemoveRecipe) = [
	item('tfctech:wire_draw_bench'),
   item('tfctech:smeltery_firebox'),
   item('tfctech:smeltery_cauldron'),
   item('tfctech:electric_forge'),
   item('tfctech:metal/copper_inductor'),
   item('tfctech:induction_crucible'),
   item('tfctech:wiredraw/winch'),
   item('tfctech:latex/vulcanizing_agents'),
   // Strips
   item('tfctech:metal/bismuth_strip'),
	item('tfctech:metal/bismuth_bronze_strip'),
	item('tfctech:metal/black_bronze_strip'),
	item('tfctech:metal/brass_strip'),
	item('tfctech:metal/bronze_strip'),
	item('tfctech:metal/copper_strip'),
	item('tfctech:metal/gold_strip'),
	item('tfctech:metal/lead_strip'),
	item('tfctech:metal/nickel_strip'),
	item('tfctech:metal/rose_gold_strip'),
	item('tfctech:metal/silver_strip'),
	item('tfctech:metal/tin_strip'),
	item('tfctech:metal/zinc_strip'),
	item('tfctech:metal/sterling_silver_strip'),
	item('tfctech:metal/wrought_iron_strip'),
	item('tfctech:metal/pig_iron_strip'),
	item('tfctech:metal/steel_strip'),
	item('tfctech:metal/platinum_strip'),
	item('tfctech:metal/black_steel_strip'),
	item('tfctech:metal/blue_steel_strip'),
	item('tfctech:metal/red_steel_strip'),
]

def (RemoveRecipeWireDrawing) = [
	// Wires, no GT
   item('tfctech:metal/bismuth_wire:0'),
   item('tfctech:metal/bismuth_wire:1'),
   item('tfctech:metal/bismuth_wire:2'),
   item('tfctech:metal/bismuth_wire:3'),
   item('tfctech:metal/bismuth_bronze_wire:0'),
   item('tfctech:metal/bismuth_bronze_wire:1'),
   item('tfctech:metal/bismuth_bronze_wire:2'),
   item('tfctech:metal/bismuth_bronze_wire:3'),
   item('tfctech:metal/black_bronze_wire:0'),
   item('tfctech:metal/black_bronze_wire:1'),
   item('tfctech:metal/black_bronze_wire:2'),
   item('tfctech:metal/black_bronze_wire:3'),
   item('tfctech:metal/brass_wire:0'),
   item('tfctech:metal/brass_wire:1'),
   item('tfctech:metal/brass_wire:2'),
   item('tfctech:metal/brass_wire:3'),
   item('tfctech:metal/bronze_wire:0'),
   item('tfctech:metal/bronze_wire:1'),
   item('tfctech:metal/bronze_wire:2'),
   item('tfctech:metal/bronze_wire:3'),
   item('tfctech:metal/rose_gold_wire:0'),
   item('tfctech:metal/rose_gold_wire:1'),
   item('tfctech:metal/rose_gold_wire:2'),
   item('tfctech:metal/rose_gold_wire:3'),
   item('tfctech:metal/wrought_iron_wire:0'),
   item('tfctech:metal/wrought_iron_wire:1'),
   item('tfctech:metal/wrought_iron_wire:2'),
   item('tfctech:metal/wrought_iron_wire:3'),
   item('tfctech:metal/pig_iron_wire:0'),
   item('tfctech:metal/pig_iron_wire:1'),
   item('tfctech:metal/pig_iron_wire:2'),
   item('tfctech:metal/pig_iron_wire:3'),
   item('tfctech:metal/blue_steel_wire:0'),
   item('tfctech:metal/blue_steel_wire:1'),
   item('tfctech:metal/blue_steel_wire:2'),
   item('tfctech:metal/blue_steel_wire:3'),
   item('tfctech:metal/red_steel_wire:0'),
   item('tfctech:metal/red_steel_wire:1'),
   item('tfctech:metal/red_steel_wire:2'),
   item('tfctech:metal/red_steel_wire:3'),
   item('tfctech:metal/zinc_wire:0'),
   item('tfctech:metal/zinc_wire:1'),
   item('tfctech:metal/zinc_wire:2'),
   item('tfctech:metal/zinc_wire:3'),
   item('tfctech:metal/sterling_silver_wire:0'),
   item('tfctech:metal/sterling_silver_wire:1'),
   item('tfctech:metal/sterling_silver_wire:2'),
   item('tfctech:metal/sterling_silver_wire:3'),
   // Wires, GT
   item('tfctech:metal/copper_wire'),
   item('tfctech:metal/gold_wire'),
   item('tfctech:metal/lead_wire'),
   item('tfctech:metal/nickel_wire'),
   item('tfctech:metal/silver_wire'),
   item('tfctech:metal/tin_wire'),
   item('tfctech:metal/steel_wire'),
   item('tfctech:metal/platinum_wire'),
   item('tfctech:metal/black_steel_wire')
]

def (RemoveRecipeAnvil) = [
   // Wires - Stage 1
   item('tfctech:metal/bismuth_wire:4'),
   item('tfctech:metal/bismuth_bronze_wire:4'),
   item('tfctech:metal/black_bronze_wire:4'),
   item('tfctech:metal/brass_wire:4'),
   item('tfctech:metal/bronze_wire:4'),
   item('tfctech:metal/rose_gold_wire:4'),
   item('tfctech:metal/zinc_wire:4'),
   item('tfctech:metal/sterling_silver_wire:4'),
   item('tfctech:metal/wrought_iron_wire:4'),
   item('tfctech:metal/pig_iron_wire:4'),
   item('tfctech:metal/blue_steel_wire:4'),
   item('tfctech:metal/red_steel_wire:4'),
   // Draw Plates
   item('tfctech:metal/iron_draw_plate'),
   item('tfctech:metal/steel_draw_plate'),
   item('tfctech:metal/black_steel_draw_plate'),
   // Blowpipes
   item('tfctech:metal/wrought_iron_blowpipe'),
   item('tfctech:metal/steel_blowpipe'),
   item('tfctech:metal/black_steel_blowpipe'),
   item('tfctech:metal/blue_steel_blowpipe'),
   item('tfctech:metal/red_steel_blowpipe'),
   // Other
   item('tfctech:metal/iron_tongs'),
   item('tfctech:metal/iron_bowl_mount'),
   // Long
   item('tfctech:metal/bismuth_long_rod'),
	item('tfctech:metal/bismuth_bronze_long_rod'),
	item('tfctech:metal/black_bronze_long_rod'),
	item('tfctech:metal/brass_long_rod'),
	item('tfctech:metal/bronze_long_rod'),
	item('tfctech:metal/copper_long_rod'),
	item('tfctech:metal/gold_long_rod'),
	item('tfctech:metal/lead_long_rod'),
	item('tfctech:metal/nickel_long_rod'),
	item('tfctech:metal/rose_gold_long_rod'),
	item('tfctech:metal/silver_long_rod'),
	item('tfctech:metal/tin_long_rod'),
	item('tfctech:metal/zinc_long_rod'),
	item('tfctech:metal/sterling_silver_long_rod'),
	item('tfctech:metal/wrought_iron_long_rod'),
	item('tfctech:metal/pig_iron_long_rod'),
	item('tfctech:metal/steel_long_rod'),
	item('tfctech:metal/platinum_long_rod'),
	item('tfctech:metal/black_steel_long_rod'),
	item('tfctech:metal/blue_steel_long_rod'),
	item('tfctech:metal/red_steel_long_rod')
]

def (RemoveRecipeWelding) = [
   // Gears
   item('tfctech:metal/sterling_silver_gear'),
   item('tfctech:metal/tin_gear'),
   item('tfctech:metal/silver_gear'),
   item('tfctech:metal/rose_gold_gear'),
   item('tfctech:metal/lead_gear'),
   item('tfctech:metal/gold_gear'),
   item('tfctech:metal/copper_gear'),
   item('tfctech:metal/brass_gear'),
   item('tfctech:metal/bismuth_bronze_gear'),
   item('tfctech:metal/steel_gear'),
   item('tfctech:metal/wrought_iron_gear'),
   item('tfctech:metal/zinc_gear'),
   item('tfctech:metal/nickel_gear'),
   item('tfctech:metal/bronze_gear'),
   item('tfctech:metal/black_bronze_gear'),
   item('tfctech:metal/bismuth_gear'),
   item('tfctech:metal/black_steel_gear'),
   item('tfctech:metal/blue_steel_gear'),
   item('tfctech:metal/platinum_gear'),
   item('tfctech:metal/pig_iron_gear'),
   item('tfctech:metal/red_steel_gear')
]

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item)
}

for item in RemoveRecipe {
   crafting.removeByOutput(item)
}

for item in RemoveRecipeWireDrawing {
   WireDrawing.removeRecipe(item)
}

// Удаление рецептов ковки
for item in RemoveRecipeAnvil {
   Anvil.removeRecipe(item)
}

// Удаление рецептов сварки
for item in RemoveRecipeWelding {
   Welding.removeRecipe(item)
}

crafting.removeByOutputByRecipeName("tfctech:glassworking/pot_potash")
crafting.removeByOutputByRecipeName("tfctech:glassworking/pot_ash")
crafting.removeByOutputByRecipeName("tfctech:devices/fridge")

// Резина
Barrel.removeRecipe(item('tfctech:latex/rubber_mix') * 6)