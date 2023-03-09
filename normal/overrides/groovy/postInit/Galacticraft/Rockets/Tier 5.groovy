import gregtech.api.metatileentity.multiblock.CleanroomType


// --- Массивы

def rocket = [
	item('extraplanets:item_tier5_rocket'),
	item('extraplanets:item_tier5_rocket:1'),
	item('extraplanets:item_tier5_rocket:2'),
	item('extraplanets:item_tier5_rocket:3'),
]
def crate = [
	metaitem('plateAluminium'),
   metaitem('crate.aluminium'),
   metaitem('crate.stainless_steel'),
   metaitem('crate.titanium')
]



// --- Добавление рецептов

for (int i = 0; i < rocket.size(); i++) {
// Ракета
assembly_line.recipeBuilder()
	.inputs(item('extraplanets:nose_cone_tier5'))
	.inputs(metaitem('rocket.body.tier.5') * 12)
	.inputs(item('extraplanets:tier5_items:2') * 6)
	.inputs(item('extraplanets:tier5_items:1') * 4)
	.inputs(item('extraplanets:tier5_items') * 4)
	.inputs(item('galacticraftcore:oil_canister_partial:1001') * 32)
	.inputs(metaitem('lander.tier.3'))
	.inputs(metaitem('electric.motor.zpm') * 4)
	.inputs(metaitem('emitter.zpm') * 4)
	.inputs(ore('circuitZpm') * 8)
	.inputs(crate[i] * 15)
	.inputs(metaitem('rocket.control.computer.tier.5'))
	.inputs(item('extraplanets:schematic_tier5'))
	.fluidInputs(fluid('americium') * 9216)
	.fluidInputs(fluid('soldering_alloy') * 4608)
	.fluidInputs(fluid('europium') * 4608)
	.outputs(rocket[i])
	.duration(1200).EUt(65536).buildAndRegister()
}
// Ракетный компьютер
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('opencomputers:case2'),
		item('opencomputers:keyboard'),
		item('opencomputers:screen2'),
		metaitem('emitter.zpm'),
		metaitem('sensor.zpm'),
		item('extraplanets:tier5_items:3'))
	.fluidInputs(fluid('soldering_alloy') * 1728)
	.outputs(metaitem('rocket.control.computer.tier.5'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(600).EUt(65536).buildAndRegister()
// Головоной обтекатель
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('extraplanets:nose_cone_tier4'),
		item('extraplanets:tier5_items:3') * 4,
		metaitem('sensor.zpm') * 2,
		metaitem('screwTungstenSteel') * 4)
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(item('extraplanets:nose_cone_tier5'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(600).EUt(65536).buildAndRegister()
// Корпус
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('extraplanets:tier5_items:3') * 2,
		metaitem('voltage_coil.zpm') * 2,
		metaitem('field.generator.zpm'))
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(metaitem('rocket.body.tier.5'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(300).EUt(65536).buildAndRegister()
// Стабилизаторы
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('extraplanets:tier5_items:3') * 2,
		item('extraplanets:tier4_items:3') * 2,
		metaitem('screwRuridit') * 4)
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(item('extraplanets:tier5_items:2'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(300).EUt(65536).buildAndRegister()
// Ракетные двигатели
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('extraplanets:tier5_items:3') * 5,
		item('galacticraftplanets:item_basic_asteroids:1') * 2,
		item('galacticraftcore:engine:1') * 2,
		metaitem('electric.pump.zpm') * 4,
		metaitem('cableGtSingleAnnealedCopper') * 16)
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(item('extraplanets:tier5_items'))
	.duration(300).EUt(65536).buildAndRegister()
// Ускорители
assembler.recipeBuilder()
	.circuitMeta(5)
	.inputs(
		item('galacticraftcore:engine:1'),
		item('extraplanets:tier5_items:3') * 4,
		metaitem('plateDenseIce') * 3)
	.fluidInputs(fluid('soldering_alloy') * 288)
	.outputs(item('extraplanets:tier5_items:1'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(600).EUt(65536).buildAndRegister()
// Сплав сверх-прочных пластин
assembly_line.recipeBuilder()
	.inputs(
		item('extraplanets:tier4_items:3'),
		metaitem('plateDenseAmericium') * 4,
		metaitem('plateDenseAmericium') * 4,
		metaitem('boltEuropium') * 8)
	.fluidInputs(fluid('indium') * 72)
	.outputs(metaitem('alloy.ingot.tier.5'))
	.duration(300).EUt(65536).buildAndRegister()
// Сверх-прочные пластины
implosion_compressor.recipeBuilder()
	.inputs(metaitem('alloy.ingot.tier.5'))
	.outputs(
      item('extraplanets:tier5_items:3'),
      metaitem('dustTinyEuropium') * 5)
	.explosivesAmount(30)
	.duration(20).EUt(30).buildAndRegister()
// Схема ракеты
laser_engraver.recipeBuilder()
	.inputs(metaitem('schematic.blank'))
	.notConsumable(metaitem('glass_lens.yellow'))
	.outputs(item('extraplanets:schematic_tier5'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(9000).EUt(65536).buildAndRegister()