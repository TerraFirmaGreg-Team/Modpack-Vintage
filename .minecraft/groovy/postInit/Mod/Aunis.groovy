
// if (isLoaded("aunis")) {

// // --- Добавление рецептов


// // Звездные врата: Млечный путь
// // Основа
// // star_forge.recipeBuilder()
// // 	.circuitMeta(6)
// // 	.inputs(
// // 		metaitem('ingotTrinaquadalloy') * 6, 
// // 		item('aunis:fragment_stargate_milkyway') * 3, 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_blue'), 
// // 		item('aunis:circuit_control_naquadah'))
// // 	.outputs(item('aunis:stargate_milkyway_base_block'))
// // 	.duration(4000).EUt(130880).buildAndRegister()
// // // Кольцо
// // star_forge.recipeBuilder()
// // 	.circuitMeta(7)
// // 	.inputs(
// // 		metaitem('ingotTrinaquadalloy') * 2, 
// // 		item('aunis:fragment_stargate_milkyway') * 2, 
// // 		item('aunis:crystal_red'))
// // 	.outputs(item('aunis:stargate_milkyway_member_block:6'))
// // 	.duration(2000).EUt(120880).buildAndRegister()
// // // Шеврон
// // star_forge.recipeBuilder()
// // 	.circuitMeta(8)
// // 	.inputs(
// // 		metaitem('ingotTrinaquadalloy') * 4, 
// // 		item('aunis:fragment_stargate_milkyway') * 2, 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_yellow'), 
// // 		item('gregtech:transparent_casing') * 4)
// // 	.outputs(item('aunis:stargate_milkyway_member_block:14'))
// // 	.duration(2000).EUt(130880).buildAndRegister()
// // // Фрагмент врат
// // star_forge.recipeBuilder()
// // 	.circuitMeta(9)
// // 	.inputs(
// // 		metaitem('plateDenseTrinaquadalloy') * 9,
// // 		ore('batteryUv'))
// // 	.outputs(item('aunis:fragment_stargate_milkyway') * 2)
// // 	.duration(2000).EUt(121880).buildAndRegister()

// // // Звездные врата: Пегас
// // // Основа
// // star_forge.recipeBuilder()
// // 	.circuitMeta(6)
// // 	.inputs(
// // 		metaitem('ingotUraniumRhodiumDinaquadide') * 6, 
// // 		item('aunis:fragment_stargate_pegasus') * 3, 
// // 		item('aunis:crystal_yellow'), 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_blue'), 
// // 		item('aunis:circuit_control_naquadah'))
// // 	.outputs(item('aunis:stargate_pegasus_base_block'))
// // 	.duration(4500).EUt(130880).buildAndRegister()
// // // Кольцо
// // star_forge.recipeBuilder()
// // 	.circuitMeta(7)
// // 	.inputs(
// // 		metaitem('ingotUraniumRhodiumDinaquadide') * 2, 
// // 		item('aunis:fragment_stargate_pegasus') * 2, 
// // 		item('aunis:crystal_blue'))
// // 	.outputs(item('aunis:stargate_pegasus_member_block:6'))
// // 	.duration(2500).EUt(120880).buildAndRegister()
// // // Шеврон
// // star_forge.recipeBuilder()
// // 	.circuitMeta(8)
// // 	.inputs(
// // 		metaitem('ingotUraniumRhodiumDinaquadide') * 4, 
// // 		item('aunis:fragment_stargate_pegasus') * 2, 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_blue'), 
// // 		item('gregtech:transparent_casing') * 4)
// // 	.outputs(item('aunis:stargate_pegasus_member_block:14'))
// // 	.duration(2500).EUt(130880).buildAndRegister()
// // // Фрагмент врат
// // star_forge.recipeBuilder()
// // 	.circuitMeta(9)
// // 	.inputs(
// // 		metaitem('plateDenseTrinaquadalloy') * 3,
// // 		metaitem('plateDenseTrinium') * 3)
// // 	.outputs(item('aunis:fragment_stargate_pegasus') * 2)
// // 	.duration(2000).EUt(121880).buildAndRegister()

// // // Звездные врата: Вселенная
// // // Основа
// // star_forge.recipeBuilder()
// // 	.circuitMeta(6)
// // 	.inputs(
// // 		metaitem('ingotEnrichedNaquadahTriniumEuropiumDuranide') * 6, 
// // 		item('aunis:fragment_stargate_universe') * 2, 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_blue'), 
// // 		item('aunis:circuit_control_naquadah'))
// // 	.outputs(item('aunis:stargate_universe_base_block'))
// // 	.duration(4000).EUt(520880).buildAndRegister()
// // // Кольцо
// // star_forge.recipeBuilder()
// // 	.circuitMeta(7)
// // 	.inputs(
// // 		metaitem('ingotEnrichedNaquadahTriniumEuropiumDuranide') * 2, 
// // 		item('aunis:fragment_stargate_universe') * 4, 
// // 		item('aunis:crystal_red'))
// // 	.outputs(item('aunis:stargate_universe_member_block:6'))
// // 	.duration(2000).EUt(500880).buildAndRegister()
// // // Шеврон
// // star_forge.recipeBuilder()
// // 	.circuitMeta(8)
// // 	.inputs(
// // 		metaitem('ingotEnrichedNaquadahTriniumEuropiumDuranide') * 4, 
// // 		item('aunis:fragment_stargate_universe') * 4, 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_yellow'), 
// // 		item('gregtech:transparent_casing:1') * 4)
// // 	.outputs(item('aunis:stargate_universe_member_block:14'))
// // 	.duration(2000).EUt(520880).buildAndRegister()
// // // Фрагмент врат
// // star_forge.recipeBuilder()
// // 	.circuitMeta(9)
// // 	.inputs(
// // 		metaitem('plateDenseEnrichedNaquadahTriniumEuropiumDuranide') * 9,
// // 		metaitem('plateDenseTrinium') * 3)
// // 	.outputs(item('aunis:fragment_stargate_universe') * 2)
// // 	.duration(2000).EUt(121880).buildAndRegister()

// // // Конденсатор
// // star_forge.recipeBuilder()
// // 	.circuitMeta(10)
// // 	.inputs(
// // 		metaitem('battery_buffer.uv.16') * 4, 
// // 		item('aunis:crystal_red') * 4, 
// // 		metaitem('plateTrinaquadalloy') * 6)
// // 	.outputs(item('aunis:capacitor_block_empty'))
// // 	.duration(2000).EUt(130880).buildAndRegister()
// canner.recipeBuilder()
// 	.inputs(item('aunis:capacitor_block_empty'))
// 	.fluidInputs(fluid('silicon_molten_red') * 6440)
// 	.outputs(item('aunis:capacitor_block'))
// 	.duration(1000).EUt(12290).buildAndRegister()

// // Смеси
// // Эндер смесь
// fusion_reactor.recipeBuilder()
// 	.fluidInputs(fluid('silicon') * 32)
// 	.fluidInputs(fluid('americium') * 32)
//  	.fluidOutputs(fluid('silicon_molten_ender') * 64)
// 	.EUToStart(350000000)
// 	.duration(100).EUt(420290).buildAndRegister()
// // Световая смесь
// fusion_reactor.recipeBuilder()
// 	.fluidInputs(fluid('silicon') * 32)
// 	.fluidInputs(fluid('glowstone') * 32)
//  	.fluidOutputs(fluid('silicon_molten_yellow') * 64)
// 	.EUToStart(350000000)
// 	.duration(100).EUt(420290).buildAndRegister()
// // Телепортационная смесь
// fusion_reactor.recipeBuilder()
// 	.fluidInputs(fluid('silicon') * 32)
// 	.fluidInputs(fluid('blue_alloy') * 32)
//  	.fluidOutputs(fluid('silicon_molten_blue') * 64)
// 	.EUToStart(350000000)
// 	.duration(100).EUt(420290).buildAndRegister()
// // Энергетическа смесь
// fusion_reactor.recipeBuilder()
// 	.fluidInputs(fluid('silicon') * 32)
// 	.fluidInputs(fluid('redstone') * 32)
//  	.fluidOutputs(fluid('silicon_molten_red') * 64)
// 	.EUToStart(350000000)
// 	.duration(100).EUt(420290).buildAndRegister()

// // Семя кристалла
// // autoclave.recipeBuilder()
// // 	.inputs(item('appliedenergistics2:crystal_seed', 1200).withNbt([progress: 1200]))
// // 	.fluidInputs(fluid('silicon') * 2440)
// //  	.chancedOutput(item('aunis:crystal_fragment') * 1, 7000, 500)
// // 	.duration(1000).EUt(1090).buildAndRegister()

// // // Выращивание кристалов
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_fragment'))
// // 	.fluidInputs(fluid('silicon_molten_ender') * 2440)
// //  	.chancedOutput(item('aunis:crystal_ender') * 1, 8000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_fragment'))
// // 	.fluidInputs(fluid('silicon_molten_yellow') * 2440)
// //  	.chancedOutput(item('aunis:crystal_yellow') * 1, 8000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_fragment'))
// // 	.fluidInputs(fluid('silicon_molten_blue') * 2440)
// //  	.chancedOutput(item('aunis:crystal_blue') * 1, 8000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_fragment'))
// // 	.fluidInputs(fluid('silicon_molten_red') * 2440)
// //  	.chancedOutput(item('aunis:crystal_red') * 1, 8000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_fragment'))
// // 	.fluidInputs(fluid('molten.stellite_100') * 2440)
// //  	.chancedOutput(item('aunis:crystal_white') * 1, 8000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()
// // autoclave.recipeBuilder()
// // 	.inputs(item('aunis:crystal_white'))
// // 	.fluidInputs(fluid('silicon_molten_ender') * 4740)
// //  	.chancedOutput(item('aunis:crystal_blue_pegasus') * 1, 6000, 250)
// // 	.duration(1000).EUt(13290).buildAndRegister()


// // Лучевой передатчик
// // star_forge.recipeBuilder()
// // 	.circuitMeta(14)
// // 	.inputs(
// // 		metaitem('gearNaquadahAlloy') * 2,
// // 		item('gregtech:transparent_casing'),
// // 		item('aunis:circuit_control_naquadah'), 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_blue'))
// // 	.fluidInputs([fluid('molten.incoloy_ma_956') * 1000])
// // 	.outputs(item('aunis:beamer_block'))
// // 	.duration(200).EUt(282000).buildAndRegister()

// // Портативное устройство древних
// crafting.addShapeless("tfg/aunis/universe_dialer", item('aunis:universe_dialer'), [item('aunis:universe_dialer', 1), item('galacticraftcore:space_glass_clear')])
// assembly_line.recipeBuilder()
// 	.inputs(
// 		item('aunis:crystal_yellow'),  
// 		ore('circuitLuv') * 9,
// 		item('aunis:circuit_control_naquadah'),
// 		item('galacticraftcore:space_glass_clear'),
// 		metaitem('plateNaquadahAlloy') * 5)
// 	.fluidInputs(
// 		fluid('molten.incoloy_ma_956') * 164, 
// 		fluid('molten.hssg') * 432)
// 	.outputs(item('aunis:universe_dialer'))
// 	.duration(1800).EUt(18100).buildAndRegister()

// // БКК
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		metaitem('gearSmallNaquadahAlloy') * 12, 
// // 		ore('circuitLuv') * 2, 
// // 		item('aunis:crystal_red') * 3)
// // 	.fluidInputs([fluid('glass') * 18000])
// // 	.outputs(item('aunis:dhd_brb'))
// // 	.duration(300).EUt(1880).buildAndRegister()
// // // БСК
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		metaitem('gearSmallNaquadahAlloy') * 12, 
// // 		ore('circuitZpm') * 2, 
// // 		item('aunis:crystal_blue') * 3)
// // 	.fluidInputs([fluid('glass') * 18000])
// // 	.outputs(item('aunis:dhd_bbb'))
// // 	.duration(300).EUt(1880).buildAndRegister()

// // // Держатель кристалла
// // star_forge.recipeBuilder()
// // 	.circuitMeta(4)
// // 	.inputs(
// // 		metaitem('foilNaquadahAlloy') * 8, 
// // 		item('aunis:crystal_red') * 3)
// // 	.outputs(item('aunis:holder_crystal'))
// // 	.duration(200).EUt(1880).buildAndRegister()
// // // Держатель кристалла Пегаса
// // star_forge.recipeBuilder()
// // 	.circuitMeta(4)
// // 	.inputs(
// // 		metaitem('foilEuropium') * 8, 
// // 		item('aunis:crystal_ender') * 3)
// // 	.outputs(item('aunis:holder_crystal_pegasus'))
// // 	.duration(200).EUt(4880).buildAndRegister()

// // DHD
// assembly_line.recipeBuilder()
// 	.inputs(
// 		ore('batteryLuv') * 4,  
// 		ore('circuitLuv') * 9,
// 		ore('lampButton') * 38,
// 		item('aunis:circuit_control_naquadah') * 4, 
// 		item('aunis:dhd_brb'), 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_red'), 
// 		item('aunis:holder_crystal'), 
// 		metaitem('plateDenseNaquadahAlloy') * 3,
// 		metaitem('plateDenseNaquadahAlloy') * 3)
// 	.fluidInputs(
// 		fluid('molten.incoloy_ma_956') * 6864, 
// 		fluid('molten.hssg') * 4432)
// 	.outputs(item('aunis:dhd_block'))
// 	.duration(1800).EUt(128100).buildAndRegister()
// // DHD Пегаса
// assembly_line.recipeBuilder()
// 	.inputs(
// 		ore('batteryLuv') * 4,  
// 		ore('circuitLuv') * 9,
// 		ore('lampButton') * 38,
// 		item('aunis:circuit_control_naquadah') * 4, 
// 		item('aunis:dhd_bbb'), 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_blue'), 
// 		item('aunis:holder_crystal_pegasus'), 
// 		metaitem('plateDenseNaquadahAlloy') * 3, 
// 		metaitem('plateDenseNaquadahAlloy') * 3)
// 	.fluidInputs(
// 		fluid('molten.incoloy_ma_956') * 6864, 
// 		fluid('molten.hssg') * 4432)
// 	.outputs(item('aunis:dhd_pegasus_block'))
// 	.duration(1800).EUt(183100).buildAndRegister()

// // Контрольный кристал DHD
// // star_forge.recipeBuilder()
// // 	.circuitMeta(12)
// // 	.inputs(
// // 		item('aunis:crystal_red') * 4,
// // 		ore('batteryLuv') * 2)
// // 	.fluidInputs(fluid('silicon_molten_red') * 544)
// // 	.outputs(item('aunis:crystal_control_dhd'))
// // 	.duration(2000).EUt(130880).buildAndRegister()
// // // Контрольный кристал DHD Пегаса
// // star_forge.recipeBuilder()
// // 	.circuitMeta(12)
// // 	.inputs(
// // 		item('aunis:circuit_control_naquadah'),
// // 		item('aunis:crystal_blue'),
// // 		item('aunis:crystal_ender'),
// // 		item('aunis:crystal_red'),
// // 		metaitem('dustNaquadah') * 4)
// // 	.fluidInputs(fluid('silicon_molten_blue') * 544)
// // 	.outputs(item('aunis:crystal_control_pegasus_dhd'))
// // 	.duration(2000).EUt(130880).buildAndRegister()

// // // Символьный кристалл наборного устройства
// // star_forge.recipeBuilder()
// // 	.circuitMeta(4)
// // 	.inputs(
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:circuit_control_crystal'),
// // 		item('aunis:crystal_ender'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_dhd'))
// // 	.duration(1000).EUt(15880).buildAndRegister()

// // // Символьный кристалл звездных врат
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:circuit_control_crystal'), 
// // 		item('aunis:crystal_blue'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_stargate'))
// // 	.duration(1000).EUt(15880).buildAndRegister()

// // // Символьный кристалл Млечного пути
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:circuit_control_crystal'), 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_blue'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_milkyway'))
// // 	.duration(1000).EUt(15880).buildAndRegister()

// // // Символьный кристалл Пегаса
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		item('aunis:crystal_blue'), 
// // 		item('aunis:circuit_control_crystal'), 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_blue'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_pegasus'))
// // 	.duration(1000).EUt(60880).buildAndRegister()

// // // Символьный кристалл Вселенной
// // star_forge.recipeBuilder()
// // 	.circuitMeta(5)
// // 	.inputs(
// // 		item('aunis:crystal_yellow'), 
// // 		item('aunis:circuit_control_naquadah'), 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_white'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_universe'))
// // 	.duration(1000).EUt(130880).buildAndRegister()

// // // Символьный кристалл колец
// // star_forge.recipeBuilder()
// // 	.circuitMeta(6)
// // 	.inputs(
// // 		item('aunis:crystal_yellow'), 
// // 		item('aunis:circuit_control_crystal'), 
// // 		item('aunis:crystal_red'), 
// // 		item('aunis:crystal_white'))
// // 	.fluidInputs([fluid('glass') * 4000])
// // 	.outputs(item('aunis:crystal_glyph_goauld'))
// // 	.duration(100).EUt(10880).buildAndRegister()

// // Транспортные кольца: Goa'uld
// assembly_line.recipeBuilder()
// 	.inputs(
// 		item('aunis:crystal_red'),
// 		item('aunis:crystal_ender'),
// 		item('aunis:crystal_yellow'),
// 		item('aunis:crystal_blue'),
// 		item('aunis:fragment_transportrings_goauld') * 3,
// 		item('aunis:circuit_control_naquadah') * 2)
// 	.fluidInputs(fluid('naquadah_alloy') * 1000)
// 	.outputs(item('aunis:transportrings_goauld_block'))
// 	.duration(200).EUt(2800).buildAndRegister()
// // Фрагмент транспортных колец: Goa'uld
// assembler.recipeBuilder()
// 	.inputs(
// 		metaitem('plateDenseTitanium') * 3,
// 		metaitem('plateDenseTitanium') * 3)
// 	.fluidInputs(fluid('glass') * 4000)
// 	.outputs(item('aunis:fragment_transportrings_goauld'))
// 	.duration(200).EUt(1880).buildAndRegister()

// // Транспортные кольца: Ori
// assembly_line.recipeBuilder()
// 	.inputs(
// 		item('aunis:crystal_red'), 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_yellow'), 
// 		item('aunis:crystal_blue'), 
// 		item('aunis:fragment_transportrings_ori') * 3, 
// 		item('aunis:circuit_control_naquadah') * 2)
// 	.fluidInputs(fluid('trinium') * 1000)
// 	.outputs(item('aunis:transportrings_ori_block'))
// 	.duration(200).EUt(2800).buildAndRegister()

// // Фрагмент транспортных колец: Ori
// assembler.recipeBuilder()
// 	.inputs(
// 		metaitem('plateDenseTrinium') * 3,
// 		metaitem('plateDenseTrinium') * 3)
// 	.fluidInputs(fluid('glass') * 4000)
// 	.outputs(item('aunis:fragment_transportrings_ori'))
// 	.duration(200).EUt(1880).buildAndRegister()

// // Транспортные кольца: Ancientу
// assembly_line.recipeBuilder()
// 	.inputs(
// 		item('aunis:crystal_red'), 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_yellow'), 
// 		item('aunis:crystal_blue'), 
// 		item('aunis:fragment_transportrings_ancient') * 3, 
// 		item('aunis:circuit_control_naquadah') * 2)
// 	.fluidInputs(fluid('trinium') * 1000)
// 	.outputs(item('aunis:transportrings_ancient_block'))
// 	.duration(200).EUt(2800).buildAndRegister()
// // Фрагмент транспортных колец: Ancientу
// assembler.recipeBuilder()
// 	.circuitMeta(3)
// 	.inputs(
// 		metaitem('plateDenseTrinium') * 3,
// 		metaitem('plateDenseTitanium') * 3)
// 	.fluidInputs(fluid('glass') * 4000)
// 	.outputs(item('aunis:fragment_transportrings_ancient'))
// 	.duration(200).EUt(1880).buildAndRegister()

// // Панель транспортных колец
// assembly_line.recipeBuilder()
// 	.inputs(
// 		metaitem('gearSmallNaquadahAlloy') * 2, 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:circuit_control_naquadah'), 
// 		item('projectred-illumination:light_button') * 9)
// 	.fluidInputs(fluid('gold') * 4000)
// 	.outputs(item('aunis:transportrings_controller_goauld_block'))
// 	.duration(200).EUt(980).buildAndRegister()

// // Основа управляющей микросхемы
// circuit_assembler.recipeBuilder()
// 	.inputs(
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_red'), 
// 		item('aunis:crystal_yellow'), 
// 		item('aunis:crystal_blue'))
// 	.fluidInputs(fluid('glass') * 4000)
// 	.outputs(item('aunis:circuit_control_base'))
// 	.duration(200).EUt(15880).buildAndRegister()

// // // Кристальная управляющая микросхема
// // star_forge.recipeBuilder()
// // 	.circuitMeta(13)
// // 	.inputs(
// // 		metaitem('foilNaquadahAlloy') * 9, 
// // 		item('aunis:circuit_control_naquadah') * 4, 
// // 		item('aunis:crystal_ender'), 
// // 		item('aunis:crystal_yellow'), 
// // 		item('aunis:crystal_blue'))
// // 	.fluidInputs([fluid('molten.incoloy_ma_956') * 1000])
// // 	.outputs(item('aunis:circuit_control_crystal'))
// // 	.duration(200).EUt(280000).buildAndRegister()

// // Управляющая микросхема из наквадаха
// circuit_assembler.recipeBuilder()
// 	.inputs(
// 		item('aunis:circuit_control_base') * 2, 
// 		item('aunis:crystal_ender'), 
// 		item('aunis:crystal_red'),
// 		item('aunis:crystal_yellow'), 
// 		item('aunis:crystal_blue'), 
// 		ore('circuitLuv') * 4)
// 	.fluidInputs(fluid('glass') * 4000)
// 	.outputs(item('aunis:circuit_control_naquadah'))
// 	.duration(250).EUt(22080).buildAndRegister()

// // Лезвие диафрагмы (Титан)
// crafting.addShaped("tfg/aunis/iris_blade", item('aunis:iris_blade'), [
// 	[metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium'), null],
// 	[null, metaitem('plateDenseTitanium'), metaitem('plateDenseTitanium')],
// 	[null, null, metaitem('plateDenseTitanium')]])

// assembler.recipeBuilder()
// 	.inputs(item('aunis:iris_blade') * 4)
// 	.outputs(item('aunis:quad_iris_blade'))
// 	.duration(20).EUt(2900).buildAndRegister()

// // Диафрагма (Титан)
// assembler.recipeBuilder()
// 	.circuitMeta(16)
// 	.inputs(
// 		item('aunis:quad_iris_blade') * 5, 
// 		metaitem('screwTitanium') * 12, 
// 		metaitem('electric.piston.luv') * 4)
// 	.outputs(item('aunis:upgrade_iris'))
// 	.duration(420).EUt(1900).buildAndRegister()

// // Лезвие диафрагмы (Триниум)
// crafting.addShaped("tfg/aunis/iris_blade_trinium", item('aunis:iris_blade_trinium'), [[
// 	metaitem('plateDenseTrinium'), metaitem('plateDenseTrinium'), null],
// 	[null, metaitem('plateDenseTrinium'), metaitem('plateDenseTrinium')],
// 	[null, null, metaitem('plateDenseTrinium')]])

// assembler.recipeBuilder()
// 	.inputs(item('aunis:iris_blade_trinium') * 4)
// 	.outputs(item('aunis:quad_iris_blade_trinium'))
// 	.duration(20).EUt(2900).buildAndRegister()

// // Диафрагма (Триниум)
// assembler.recipeBuilder()
// 	.circuitMeta(16)
// 	.inputs(
// 		item('aunis:quad_iris_blade_trinium') * 5, 
// 		metaitem('screwTrinium') * 12, 
// 		metaitem('electric.piston.luv') * 8)
// 	.outputs(item('aunis:upgrade_iris_trinium'))
// 	.duration(420).EUt(32900).buildAndRegister()

// // Излучатель щита
// assembly_line.recipeBuilder()
// 	.inputs(
// 		item('aunis:circuit_control_naquadah'), 
// 		item('aunis:crystal_red'), 
// 		item('aunis:crystal_ender'),
// 		metaitem('field.generator.zpm') * 4,
// 		item('aunis:crystal_white'),
// 		item('aunis:circuit_control_crystal'))
// 	.fluidInputs(fluid('redstone') * 16000)
// 	.outputs(item('aunis:shield_emitter'))
// 	.duration(400).EUt(42900).buildAndRegister()

// // Щит
// assembler.recipeBuilder()
// 	.circuitMeta(16)
// 	.inputs(
// 		item('aunis:shield_emitter') * 2, 
// 		item('aunis:circuit_control_crystal'), 
// 		item('aunis:crystal_blue') * 2,
// 		metaitem('field.generator.zpm') * 3)
// 	.outputs(item('aunis:upgrade_shield'))
// 	.duration(420).EUt(112900).buildAndRegister()

// // GDO
// assembler.recipeBuilder()
// 	.circuitMeta(16)
// 	.inputs(
// 		item('aunis:crystal_red'), 
// 		item('galacticraftcore:space_glass_clear'),
// 		ore('lampButton') * 9, 
// 		item('aunis:crystal_blue') * 2,
// 		metaitem('sensor.iv') * 2,
// 		ore('circuitLuv') * 2,
// 		metaitem('energy.module'))
// 	.fluidInputs(fluid('iron') * 2100)
// 	.outputs(item('aunis:gdo'))
// 	.duration(420).EUt(112900).buildAndRegister()
// }