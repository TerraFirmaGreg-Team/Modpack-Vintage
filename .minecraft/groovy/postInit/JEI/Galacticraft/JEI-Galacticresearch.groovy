

if (isLoaded("planetprogression")) {

	// --- Массивы

	def hideCategory = [
	    "galacticresearchsatellite",
	    "galacticresearchmining"
	]
	
	def removeAndHide = [
		item('planetprogression:telescope_fake_block'),
	   	item('planetprogression:block_multi'),
		item('planetprogression:satellite_builder'),
		item('planetprogression:advanced_launch_pad_full')
	]
	
	def removeRecipe = [
		item('galacticresearch:probe')
	]
	
	// --- Удаление рецептов

	for(item in hideCategory) {
    	mods.jei.hideCategory(item)
	}
	
	for (item in removeAndHide) {
	   mods.jei.removeAndHide(item)
	}
	
	for (item in removeRecipe) {
		crafting.removeByOutput(item)
	}
}