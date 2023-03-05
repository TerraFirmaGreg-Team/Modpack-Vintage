

// --- Массивы

def removeAndHide = [
	// Наквадах
	item('jsg:naquadah_ore'),
	item('jsg:naquadah_ore_stone'),
	item('jsg:naquadah_raw'),
	item('jsg:naquadah_raw_dust'),
	item('jsg:naquadah_raw_nugget'),
	item('jsg:naquadah_dust'),
	item('jsg:naquadah_nugget'),
	item('jsg:naquadah_impure'),
	item('jsg:naquadah_purified'),
	item('jsg:naquadah_block'),
	item('jsg:naquadah_block_raw'),
	item('jsg:naquadah_alloy'),
	item('jsg:naquadah_alloy_raw'),
	item('jsg:gear_naquadah_raw'),
	item('jsg:gear_naquadah'),
	item('jsg:plate_naquadah_raw'),
	item('jsg:plate_naquadah'),
	// Триниум
	item('jsg:trinium_ore'),
	item('jsg:trinium_block'),
	item('jsg:trinium_ingot'),
	item('jsg:trinium_impure'),
	item('jsg:trinium_purified'),
	item('jsg:trinium_raw'),
	item('jsg:trinium_dust'),
	item('jsg:trinium_nugget'),
	item('jsg:gear_trinium'),
	// Титан
	item('jsg:titanium_ore'),
	item('jsg:titanium_block'),
	item('jsg:titanium_ingot'),
	item('jsg:titanium_impure'),
	item('jsg:titanium_purified'),
	item('jsg:titanium_raw'),
	item('jsg:titanium_dust'),
	item('jsg:titanium_nugget'),
	item('jsg:gear_titanium'),
	item('jsg:plate_titanium'),
	item('jsg:plate_trinium'),
	// Врата (Орлин)
	item('jsg:stargate_orlin_member_block'),
	item('jsg:stargate_orlin_base_block'),
	// Разное
	item('jsg:tokra_crystal_block'),
	item('jsg:page_mysterious_milkyway'),
	item('jsg:page_mysterious_pegasus'),
	item('jsg:page_mysterious_universe'),
	item('jsg:crystal_control_dhd'),
	item('jsg:crystal_fragment'),
	item('jsg:wrench').withNbt([damage: 0]),
	item('jsg:screwdriver').withNbt([damage: 0]),
	item('jsg:pcb_fabricator_block'),
	item('jsg:ore_washing_machine_block'),
	item('jsg:zpm_slot_block'),
	// item('jsg:platform_rings_block'),
	// item('jsg:staff'),
	// item('jsg:zat')
]

// --- Удаление рецептов

for (item in removeAndHide) {
	mods.jei.removeAndHide(item)
}

// crafting.removeByOutputByMod("jsg")

crafting.removeByOutput(item('jsg:universe_dialer'))