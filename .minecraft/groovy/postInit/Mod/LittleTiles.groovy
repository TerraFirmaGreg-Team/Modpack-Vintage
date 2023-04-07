import preinit.Function

if (isLoaded("littletiles")) {

	// --- Добавление рецептов

	// Little Blueprint
	crafting.addShaped("tfg/littletiles/recipe_advanced", item('littletiles:recipeadvanced'), [
		[ore('paper'), ore('paper'), ore('paper')],
		[ore('paper'), ore('dyeBlue'), ore('paper')],
		[ore('paper'), item('minecraft:redstone'), ore('paper')]])

	// Little Saw
	crafting.addShaped("tfg/littletiles/saw", item('littletiles:saw'), [
		[null, null, metaitem('stickLapis')],
		[null, metaitem('toolHeadSawWroughtIron'), null],
		[item('minecraft:stick'), null, null]])

	// Little Backpack
	crafting.addShaped("tfg/littletiles/container", item('littletiles:container'), [
		[null, item('minecraft:dye:4'), null],
		[ore('leather'), item('travelersbackpack:travelers_backpack'), ore('leather')],
		[null, ore('leather'), null]])

	// Little Wrench
	crafting.addShaped("tfg/littletiles/wrench", item('littletiles:wrench'), [
		[ore('toolHammer').transform(Function.setToolDamage), ore('plateIronAny'), ore('toolFile').transform(Function.	setToolDamage)],
		[null, metaitem('stickLapis'), null],
		[null, metaitem('stickLapis'), null]])

	// Little Hammer
	crafting.addShaped("tfg/littletiles/hammer", item('littletiles:hammer'), [
		[ore('plateIronAny'), ore('plateIronAny'), ore('plateIronAny')],
		[ore('toolHammer').transform(Function.setToolDamage), metaitem('stickLapis'), ore('toolFile').transform	(Function.setToolDamage)],
		[null, metaitem('stickLapis'), null]])

	// Little Chisel
	crafting.addShaped("tfg/littletiles/chisel", item('littletiles:chisel'), [
		[ore('toolHammer').transform(Function.setToolDamage), ore('plateIronAny'), ore('toolFile').transform(Function.	setToolDamage)],
		[null, ore('plateIronAny'), null],
		[null, metaitem('stickLapis'), null]])

	// Little ColorTube
	crafting.addShaped("tfg/littletiles/colortube", item('littletiles:colortube'), [
		[ore('clothHighQuality'), ore('clothHighQuality'), ore('clothHighQuality')],
		[null, metaitem('stickLapis'), null],
		[null, metaitem('stickLapis'), null]])

	// Little Gloves
	crafting.addShaped("tfg/littletiles/grabber", item('littletiles:grabber'), [
		[null, ore('leather'), null],
		[ore('leather'), metaitem('plateLapis'), ore('leather')],
		[null, ore('leather'), null]])

	// Little Exporter
	crafting.addShaped("tfg/littletiles/premade/exporter", item('littletiles:premade').withNbt([structure: [id: 	"exporter"]]), [
		[ore('lumber'), item('galacticraftcore:grating'), ore('lumber')],
		[ore('plateIronAny'), item('littletiles:recipeadvanced'), ore('plateIronAny')],
		[ore('plateIronAny'), metaitem('wireGtSingleRedAlloy'), ore('plateIronAny')]])

	// Little Importer
	crafting.addShaped("tfg/littletiles/premade/importer", item('littletiles:premade').withNbt([structure: [id: 	"importer"]]), [
		[ore('lumber'), ore('paneGlass'), ore('lumber')],
		[ore('plateIronAny'), item('littletiles:recipeadvanced'), ore('plateIronAny')],
		[ore('plateIronAny'), metaitem('wireGtSingleRedAlloy'), ore('plateIronAny')]])

	// Little StructureBuilder
	crafting.addShaped("tfg/littletiles/premade/structure_builder", item('littletiles:premade').withNbt([structure: 	[id: "structure_builder"]]), [
		[item('minecraft:concrete:15'), item('minecraft:concrete:15'), item('minecraft:concrete:15')],
		[item('minecraft:concrete:15'), metaitem('wireGtSingleRedAlloy'), item('minecraft:concrete:15')],
		[item('minecraft:concrete:15'), ore('lumber'), item('minecraft:concrete:15')]])

	// Little Blank-o-matic
	crafting.addShaped("tfg/littletiles/premade/blankomatic", item('littletiles:premade').withNbt([structure: [id: 	"blankomatic"]]), [
		[ore('lumber'), ore('plateIronAny'), ore('lumber')],
		[ore('lumber'), item('littletiles:colortube'), ore('lumber')],
		[ore('lumber'), null, ore('lumber')]])

	// Little Workbench
	crafting.addShaped("tfg/littletiles/premade/workbench", item('littletiles:premade').withNbt([structure: [id: 	"workbench"]]), [
		[ore('lumber'), ore('workbench'), ore('lumber')],
		[ore('lumber'), item('littletiles:wrench'), ore('lumber')],
		[ore('lumber'), null, ore('lumber')]])

	// Signal Converter
	crafting.addShaped("tfg/littletiles/premade/signal_converter", item('littletiles:signal_converter'), [
		[null, item('minecraft:redstone'), null],
		[null, ore('cobblestone'), null],
		[null, null, null]])
}