#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<jsg:naquadah_ore>,
	<jsg:naquadah_ore_stone>,
	<jsg:naquadah_shard>,
	<jsg:naquadah_block>,
	<jsg:naquadah_block_raw>,
	<jsg:naquadah_alloy>,
	<jsg:naquadah_alloy_raw>,
	<jsg:trinium_ore>,
	<jsg:trinium_block>,
	<jsg:trinium_ingot>,
	<jsg:titanium_ore>,
	<jsg:titanium_block>,
	<jsg:titanium_ingot>,
	// Врата (Орлин)
	<jsg:stargate_orlin_member_block>,
	<jsg:stargate_orlin_base_block>,
	// Universe wip
	// <jsg:invisible_block>,
	// <jsg:stargate_universe_base_block>,
	// <jsg:stargate_universe_member_block:6>,
	// <jsg:stargate_universe_member_block:14>,
	// <jsg:stargate_orlin_member_block>,
	// <jsg:stargate_orlin_base_block>,
	// <jsg:universe_dialer>,
	// <jsg:universe_ring_fragment>,
	// <jsg:crystal_white>,
	// <jsg:naquadah_alloy_raw>,
	// <jsg:naquadah_alloy>,
	// <jsg:crystal_glyph_universe>,
	// <jsg:crystal_glyph_pegasus>
];

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

recipes.removeByMod("jsg");