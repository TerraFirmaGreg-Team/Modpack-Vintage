
public class arrayVanila {


	// - All Glass Panes Array
	static glassPanes = [
		item('minecraft:stained_glass_pane'),
		item('minecraft:stained_glass_pane:1'),
		item('minecraft:stained_glass_pane:2'),
		item('minecraft:stained_glass_pane:3'),
		item('minecraft:stained_glass_pane:4'),
		item('minecraft:stained_glass_pane:5'),
		item('minecraft:stained_glass_pane:6'),
		item('minecraft:stained_glass_pane:7'),
		item('minecraft:stained_glass_pane:8'),
		item('minecraft:stained_glass_pane:9'),
		item('minecraft:stained_glass_pane:10'),
		item('minecraft:stained_glass_pane:11'),
		item('minecraft:stained_glass_pane:12'),
		item('minecraft:stained_glass_pane:13'),
		item('minecraft:stained_glass_pane:14'),
		item('minecraft:stained_glass_pane:15')
	]
	
	// - All liquid dye Array
	static colorLiquid = [
		fluid('dye_white'),
		fluid('dye_orange'),
		fluid('dye_magenta'),
		fluid('dye_light_blue'),
		fluid('dye_yellow'),
		fluid('dye_lime'),
		fluid('dye_pink'),
		fluid('dye_gray'),
		fluid('dye_light_gray'),
		fluid('dye_cyan'),
		fluid('dye_purple'),
		fluid('dye_blue'),
		fluid('dye_brown'),
		fluid('dye_green'),
		fluid('dye_red'),
		fluid('dye_black')
	]
	
	// static All_Metal_Heads_From_TFC = [
	// 	// Pickaxe Heads
	// 	item('tfc:metal/pick_head/bismuth_bronze'),
	// 	item('tfc:metal/pick_head/black_bronze'),
	// 	item('tfc:metal/pick_head/bronze'),
	// 	item('tfc:metal/pick_head/copper'),
	// 	item('tfc:metal/pick_head/wrought_iron'),
	// 	item('tfc:metal/pick_head/steel'),
	// 	item('tfc:metal/pick_head/black_steel'),
	// 	item('tfc:metal/pick_head/blue_steel'),
	// 	item('tfc:metal/pick_head/red_steel'),
	// 	// Axe Heads
	// 	item('tfc:metal/axe_head/bismuth_bronze'),
	// 	item('tfc:metal/axe_head/black_bronze'),
	// 	item('tfc:metal/axe_head/bronze'),
	// 	item('tfc:metal/axe_head/copper'),
	// 	item('tfc:metal/axe_head/wrought_iron'),
	// 	item('tfc:metal/axe_head/steel'),
	// 	item('tfc:metal/axe_head/black_steel'),
	// 	item('tfc:metal/axe_head/blue_steel'),
	// 	item('tfc:metal/axe_head/red_steel'),
	// 	// Sword Blades
	// 	item('tfc:metal/sword_blade/bismuth_bronze'),
	// 	item('tfc:metal/sword_blade/black_bronze'),
	// 	item('tfc:metal/sword_blade/bronze'),
	// 	item('tfc:metal/sword_blade/copper'),
	// 	item('tfc:metal/sword_blade/wrought_iron'),
	// 	item('tfc:metal/sword_blade/steel'),
	// 	item('tfc:metal/sword_blade/black_steel'),
	// 	item('tfc:metal/sword_blade/blue_steel'),
	// 	item('tfc:metal/sword_blade/red_steel'),
	// 	// Shovel
	// 	/*
	// 	item('tfc:metal/shovel/bismuth_bronze'),
	// 	item('tfc:metal/shovel/black_bronze'),
	// 	item('tfc:metal/shovel/bronze'),
	// 	item('tfc:metal/shovel/copper'),
	// 	item('tfc:metal/shovel/wrought_iron'),
	// 	item('tfc:metal/shovel/steel'),
	// 	item('tfc:metal/shovel/black_steel'),
	// 	item('tfc:metal/shovel/blue_steel'),
	// 	item('tfc:metal/shovel/red_steel'),*/
	// 	// Shovel Heads
	// 	item('tfc:metal/shovel_head/bismuth_bronze'),
	// 	item('tfc:metal/shovel_head/black_bronze'),
	// 	item('tfc:metal/shovel_head/bronze'),
	// 	item('tfc:metal/shovel_head/copper'),
	// 	item('tfc:metal/shovel_head/wrought_iron'),
	// 	item('tfc:metal/shovel_head/steel'),
	// 	item('tfc:metal/shovel_head/black_steel'),
	// 	item('tfc:metal/shovel_head/blue_steel'),
	// 	item('tfc:metal/shovel_head/red_steel'),
	// 	// Scythe Heads
	// 	item('tfc:metal/scythe_blade/bismuth_bronze'),
	// 	item('tfc:metal/scythe_blade/black_bronze'),
	// 	item('tfc:metal/scythe_blade/bronze'),
	// 	item('tfc:metal/scythe_blade/copper'),
	// 	item('tfc:metal/scythe_blade/wrought_iron'),
	// 	item('tfc:metal/scythe_blade/steel'),
	// 	item('tfc:metal/scythe_blade/black_steel'),
	// 	item('tfc:metal/scythe_blade/blue_steel'),
	// 	item('tfc:metal/scythe_blade/red_steel'),
	// 	// Hoe
	// 	/*
	// 	item('tfc:metal/hoe/bismuth_bronze'),
	// 	item('tfc:metal/hoe/black_bronze'),
	// 	item('tfc:metal/hoe/bronze'),
	// 	item('tfc:metal/hoe/copper'),
	// 	item('tfc:metal/hoe/wrought_iron'),
	// 	item('tfc:metal/hoe/steel'),
	// 	item('tfc:metal/hoe/black_steel'),
	// 	item('tfc:metal/hoe/blue_steel'),
	// 	item('tfc:metal/hoe/red_steel'),*/
	// 	// Hoe Heads
	// 	item('tfc:metal/hoe_head/bismuth_bronze'),
	// 	item('tfc:metal/hoe_head/black_bronze'),
	// 	item('tfc:metal/hoe_head/bronze'),
	// 	item('tfc:metal/hoe_head/copper'),
	// 	item('tfc:metal/hoe_head/wrought_iron'),
	// 	item('tfc:metal/hoe_head/steel'),
	// 	item('tfc:metal/hoe_head/black_steel'),
	// 	item('tfc:metal/hoe_head/blue_steel'),
	// 	item('tfc:metal/hoe_head/red_steel'),
	// 	// Hammers Heads
	// 	item('tfc:metal/hammer_head/copper'),
	// 	item('tfc:metal/hammer_head/red_steel'),
	// 	item('tfc:metal/hammer_head/blue_steel'),
	// 	item('tfc:metal/hammer_head/black_steel'),
	// 	item('tfc:metal/hammer_head/steel'),
	// 	item('tfc:metal/hammer_head/wrought_iron'),
	// 	item('tfc:metal/hammer_head/bronze'),
	// 	item('tfc:metal/hammer_head/black_bronze'),
	// 	item('tfc:metal/hammer_head/bismuth_bronze'),
	// 	// Saw Heads
	// 	item('tfc:metal/saw_blade/copper'),
	// 	item('tfc:metal/saw_blade/bronze'),
	// 	item('tfc:metal/saw_blade/black_bronze'),
	// 	item('tfc:metal/saw_blade/bismuth_bronze'),
	// 	item('tfc:metal/saw_blade/red_steel'),
	// 	item('tfc:metal/saw_blade/blue_steel'),
	// 	item('tfc:metal/saw_blade/black_steel'),
	// 	item('tfc:metal/saw_blade/steel'),
	// 	item('tfc:metal/saw_blade/wrought_iron'),
	// 	// Knife Heads
	// 	item('tfc:metal/knife_blade/bismuth_bronze'),
	// 	item('tfc:metal/knife_blade/black_bronze'),
	// 	item('tfc:metal/knife_blade/bronze'),
	// 	item('tfc:metal/knife_blade/copper'),
	// 	item('tfc:metal/knife_blade/wrought_iron'),
	// 	item('tfc:metal/knife_blade/steel'),
	// 	item('tfc:metal/knife_blade/black_steel'),
	// 	item('tfc:metal/knife_blade/blue_steel'),
	// 	item('tfc:metal/knife_blade/red_steel')
	// ]	
}