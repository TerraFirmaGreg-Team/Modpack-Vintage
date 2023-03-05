import gregtech.api.metatileentity.multiblock.CleanroomType


// --- Массивы

def rocket = [
	item('extraplanets:item_tier10_electric_rocket'),
	item('extraplanets:item_tier10_electric_rocket:1'),
	item('extraplanets:item_tier10_electric_rocket:2'),
	item('extraplanets:item_tier10_electric_rocket:3'),
]
def crate = [
	metaitem('plateAluminium'),
	metaitem('crate.aluminium'),
	metaitem('crate.stainless_steel'),
	metaitem('crate.titanium')
]


// Вес и размер
// //ItemRegistry.registerItemSize(item('extraplanets:item_tier10_electric_rocket:*'), "HUGE", "VERY_HEAVY")


// --- Добавление рецептов

for (int i = 0; i < rocket.size(); i++) {
// Ракета
assembly_line.recipeBuilder()
	.inputs(item('extraplanets:nose_cone_tier10'))
	.inputs(item('extraplanets:tier10_items:2') * 8)
	.inputs(item('extraplanets:tier10_items:1') * 6)
	.inputs(item('extraplanets:tier10_items') * 5)
	.inputs(item('extraplanets:item_tier10_rocket'))
	.inputs(item('extraplanets:item_tier10_rocket'))
	.inputs(item('extraplanets:electric_parts:1'))
	.inputs(item('extraplanets:electric_parts:1'))
	.inputs(metaitem('electric.motor.opv') * 4)
	.inputs(metaitem('emitter.opv') * 4)
	.inputs(ore('circuitUhv') * 8)
	.inputs(crate[i] * 18)
	.inputs(metaitem('rocket.control.computer.tier.11'))
	.inputs(item('extraplanets:schematic_tier10_electric_rocket'))
	.fluidInputs(fluid('naquadria') * 9216)
	.fluidInputs(fluid('soldering_alloy') * 4608)
	.fluidInputs(fluid('tritanium') * 4608)
	.outputs(rocket[i])
	.duration(1200).EUt(268435456).buildAndRegister()
}
// Ракетный компьютер
assembler.recipeBuilder()
	.circuitMeta(11)
	.inputs(
		item('opencomputers:case3'),
		item('opencomputers:keyboard'),
		item('opencomputers:screen3'),
		metaitem('emitter.opv'),
		metaitem('sensor.opv'),
		item('extraplanets:tier10_items:3'))
	.fluidInputs(fluid('soldering_alloy') * 12312)
	.outputs(metaitem('rocket.control.computer.tier.11'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(600).EUt(268435456).buildAndRegister()
// Схема ракеты
laser_engraver.recipeBuilder()
	.inputs(metaitem('schematic.blank'))
	.notConsumable(metaitem('lensNetherStar'))
	.outputs(item('extraplanets:schematic_tier10_electric_rocket'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(9000).EUt(268435456).buildAndRegister()