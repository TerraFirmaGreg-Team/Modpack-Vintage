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
	<jsg:page_mysterious>,
	<jsg:platform_rings_block>,
	<jsg:staff>,
	<jsg:zat>
];

// --- Удаление рецептов

for item in RemoveAndHide {
   JEI.removeAndHide(item);
}

recipes.removeByMod("jsg");

recipes.remove(<jsg:universe_dialer>.withTag({mode: 0 as byte, saved: [], serverSideEnabledFastDial: 0 as byte, selected: 0 as byte, switchState: 1 as byte}));