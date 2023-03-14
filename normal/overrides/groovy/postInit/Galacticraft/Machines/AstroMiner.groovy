import gregtech.api.metatileentity.multiblock.CleanroomType


// Майнер
assembly_line.recipeBuilder()
	.inputs(item('galacticraftplanets:item_basic_mars:3') * 8)
	.inputs(item('galacticraftplanets:item_basic_asteroids:5') * 3)
	.inputs(item('galacticraftplanets:orion_drive') * 5)
	.inputs(item('galacticraftcore:steel_pole') * 4)
	.inputs(item('galacticraftplanets:item_basic_asteroids:8'))
	.inputs(metaitem('wafer.glowstone') * 4)
	.inputs(metaitem('crate.titanium') * 4)
	.inputs(metaitem('electric.motor.ev') * 4)
	.inputs(item('galacticraftplanets:beam_receiver'))
	.inputs(metaitem('astro.miner.computer'))
	.fluidInputs(fluid('black_steel') * 9216)
	.fluidInputs(fluid('aluminium') * 4608)
	.fluidInputs(fluid('bronze') * 4608)
	.outputs(item('galacticraftplanets:astro_miner'))
	.duration(1200).EUt(4096).buildAndRegister()

// Ракетный компьютер
assembler.recipeBuilder()
	.circuitMeta(3)
	.inputs(
		item('opencomputers:case2'),
		metaitem('wafer.glowstone'),
		ore('circuitLuv'),
		metaitem('emitter.iv'),
		metaitem('sensor.iv'),
		item('galacticraftplanets:item_basic_asteroids:5'))
	.fluidInputs(fluid('soldering_alloy') * 1152)
	.outputs(metaitem('astro.miner.computer'))
	.cleanroom(CleanroomType.CLEANROOM)
	.duration(600).EUt(7680).buildAndRegister()

// Основания астрономического шахтера
crafting.addShaped("tfg/gc/miner_base", item('galacticraftplanets:miner_base'), [
   [metaitem('plateDenseDesh'), metaitem('crate.stainless_steel'), metaitem('plateDenseDesh')],
   [item('galacticraftplanets:item_basic_asteroids:8'), metaitem('frameTungsten'), item('galacticraftplanets:item_basic_asteroids:8')],
   [metaitem('plateDenseDesh'), metaitem('battery_buffer.luv.16'), metaitem('plateDenseDesh')]])

// Схема
laser_engraver.recipeBuilder()
	.inputs(metaitem('schematic.blank'))
   .notConsumable(metaitem('glass_lens.brown'))
	.outputs(item('galacticraftplanets:schematic:2'))
   .cleanroom(CleanroomType.CLEANROOM)
	.duration(9000).EUt(1024).buildAndRegister()