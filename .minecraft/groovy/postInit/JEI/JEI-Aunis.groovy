
if (isLoaded("aunis")) {

	//--- Массивы

	def removeAndHide = [
		// Руда
		item('aunis:naquadah_ore'),
		item('aunis:naquadah_ore_stone'),
		item('aunis:naquadah_shard'),
		item('aunis:naquadah_block'),
		item('aunis:naquadah_alloy_raw'),
		item('aunis:naquadah_alloy'),

		item('aunis:invisible_block'),
		item('aunis:page_mysterious'),
		// Ад
		item('aunis:stargate_orlin_member_block'),
		item('aunis:stargate_orlin_base_block'),
		// Universe wip
		// item('aunis:stargate_universe_base_block'),
		// item('aunis:stargate_universe_member_block:6'),
		// item('aunis:stargate_universe_member_block:14'),
		
		// item('aunis:universe_dialer'),
		// item('aunis:universe_ring_fragment'),
		// item('aunis:crystal_white'),
		// item('aunis:crystal_glyph_universe'),
		// item('aunis:crystal_glyph_pegasus')
	]

	// --- Удаление рецептов

	for (item in removeAndHide) {
		mods.jei.removeAndHide(item)
	}
}