#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	// Наквадах
	<jsg:naquadah_ore>,
	<jsg:naquadah_ore_stone>,
	<jsg:naquadah_raw>,
	<jsg:naquadah_raw_dust>,
	<jsg:naquadah_raw_nugget>,
	<jsg:naquadah_dust>,
	<jsg:naquadah_nugget>,
	<jsg:naquadah_impure>,
	<jsg:naquadah_purified>,
	<jsg:naquadah_block>,
	<jsg:naquadah_block_raw>,
	<jsg:naquadah_alloy>,
	<jsg:naquadah_alloy_raw>,
	// Триниум
	<jsg:trinium_ore>,
	<jsg:trinium_block>,
	<jsg:trinium_ingot>,
	<jsg:trinium_impure>,
	<jsg:trinium_purified>,
	<jsg:trinium_raw>,
	<jsg:trinium_dust>,
	<jsg:trinium_nugget>,
	// Титан
	<jsg:titanium_ore>,
	<jsg:titanium_block>,
	<jsg:titanium_ingot>,
	<jsg:titanium_impure>,
	<jsg:titanium_purified>,
	<jsg:titanium_raw>,
	<jsg:titanium_dust>,
	<jsg:titanium_nugget>,
	// Врата (Орлин)
	<jsg:stargate_orlin_member_block>,
	<jsg:stargate_orlin_base_block>,
	// Разное
	<jsg:tokra_crystal_block>,
	<jsg:page_mysterious_milkyway>,
	<jsg:page_mysterious_pegasus>,
	<jsg:page_mysterious_universe>,
	// <jsg:platform_rings_block>,
	// <jsg:staff>,
	// <jsg:zat>
];

// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

// recipes.removeByMod("jsg");

recipes.remove(<jsg:universe_dialer>.withTag({mode: 0 as byte, saved: [], serverSideEnabledFastDial: 0 as byte, selected: 0 as byte, switchState: 1 as byte}));