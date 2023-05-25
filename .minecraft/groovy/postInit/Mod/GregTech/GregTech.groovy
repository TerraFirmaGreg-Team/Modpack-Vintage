import postInit.Utility.Function


if (isLoaded("gregtech")) {

    // --- Добавление рецептов
    
    // Исправление переработки медной пластины
    macerator.recipeBuilder()
      .inputs(metaitem('plateCopper'))
      .outputs(metaitem('dustCopper'))
      .duration(63).EUt(2).buildAndRegister()
    
    arc_furnace.recipeBuilder()
      .inputs(metaitem('plateCopper'))
      .fluidInputs(fluid('oxygen') * 63)
      .outputs(metaitem('ingotAnnealedCopper'))
      .duration(63).EUt(30).buildAndRegister()
    
    extractor.recipeBuilder()
      .inputs(metaitem('plateCopper'))
      .fluidOutputs(fluid('copper') * 144)
      .duration(63).EUt(30).buildAndRegister()
    
    // Люк коксовой печи
    crafting.addShapeless("tfg/gregtech/coke_oven_hatch", metaitem('coke_oven_hatch'), [item('gregtech:metal_casing:8'), ore('barrel')])
    
    // Бронзовый паровой молот
    crafting.addShaped("tfg/gregtech/bronze_forge_hammer", metaitem('steam_hammer_bronze'), [
        [metaitem('pipeSmallFluidBronze'), ore('craftingPiston'), metaitem('pipeSmallFluidBronze')],
        [metaitem('pipeSmallFluidBronze'), item('gregtech:steam_casing'), metaitem('pipeSmallFluidBronze')],
        [metaitem('pipeSmallFluidBronze'), item('tfc:metal/anvil/wrought_iron'), metaitem('pipeSmallFluidBronze')]])
    
    // Стальной паровой молот
    crafting.addShaped("tfg/gregtech/steam_forge_hammer", metaitem('steam_hammer_steel'), [
        [metaitem('pipeSmallFluidSteel'), ore('craftingPiston'), metaitem('pipeSmallFluidSteel')],
        [metaitem('pipeSmallFluidSteel'), item('gregtech:steam_casing:2'), metaitem('pipeSmallFluidSteel')],
        [metaitem('pipeSmallFluidSteel'), item('tfc:metal/anvil/steel'), metaitem('pipeSmallFluidSteel')]])
    
    // Скомпрессированная глина
    crafting.addShaped("tfg/gregtech/compressed_coke_clay", metaitem('compressed.coke_clay') * 3, [
        [item('tfc:ceramics/unfired/clay_brick'), item('tfc:ceramics/unfired/clay_brick'), item('tfc:ceramics/unfired/clay_brick')],
        [ore('sand'), metaitem('wooden_form.brick'), ore('sand')],
        [ore('sand'), ore('sand'), ore('sand')]])
    
    // Деревянная форма
    crafting.addShaped("tfg/gregtech/wooden_form", metaitem('wooden_form.empty'), [
        [null, ore('lumber'), null],
        [null, ore('lumber'), null],
        [ore('toolSaw').transform(Function.setToolDamage), ore('lumber'), null]])
    
    // Бронзовый малый бойлер
    crafting.addShaped("tfg/gregtech/small_steam_coal_boiler", metaitem('steam_boiler_coal_bronze'), [
        [metaitem('plateBronze'), metaitem('plateBronze'), metaitem('plateBronze')],
        [metaitem('plateBronze'), ore('toolWrench').transform(Function.setToolDamage), metaitem('plateBronze')],
        [item('minecraft:brick_block'), item('tfc:blast_furnace'), item('minecraft:brick_block')]])
    
    // Стальной малый бойлер
    crafting.addShaped("tfg/gregtech/high_pressure_coal_boiler", metaitem('steam_boiler_coal_steel'), [
        [metaitem('plateSteel'), metaitem('plateSteel'), metaitem('plateSteel')],
        [metaitem('plateSteel'), ore('toolWrench').transform(Function.setToolDamage), metaitem('plateSteel')],
        [item('minecraft:brick_block'), item('tfc:blast_furnace'), item('minecraft:brick_block')]])
    
    // Бронзовая паровая печь
    crafting.addShaped("tfg/gregtech/steam_furnace", metaitem('steam_furnace_bronze'), [
        [metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze')],
        [metaitem('pipeSmallFluidBronze'), item('gregtech:steam_casing:1'),metaitem('pipeSmallFluidBronze')],
        [metaitem('pipeSmallFluidBronze'), item('tfc:blast_furnace'), metaitem('pipeSmallFluidBronze')]])
    
    // Бронзовый паровой сплавщик
    crafting.addShaped("tfg/gregtech/steam_alloy_smelter", metaitem('steam_alloy_smelter_bronze'), [
        [metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze')],
        [item('tfc:blast_furnace'), item('gregtech:steam_casing:1'), item('tfc:blast_furnace')],
        [metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze'), metaitem('pipeSmallFluidBronze')]])
    
    // Доменная печь
    crafting.addShaped("tfg/gregtech/ebf", metaitem('electric_blast_furnace'), [
        [item('tfc:blast_furnace'), item('tfc:blast_furnace'), item('tfc:blast_furnace')],
        [ore('circuitLv'), item('gregtech:metal_casing:2'), ore('circuitLv')],
        [metaitem('cableGtSingleTin'), ore('circuitLv'), metaitem('cableGtSingleTin')]])
    
    // Мульти-печь
    crafting.addShaped("tfg/gregtech/multi_smelter", metaitem('multi_furnace'), [
        [item('tfc:blast_furnace'), item('tfc:blast_furnace'), item('tfc:blast_furnace')],
        [ore('circuitHv'), item('gregtech:metal_casing:2'), ore('circuitHv')],
        [metaitem('cableGtSingleAnnealedCopper'), ore('circuitHv'), metaitem('cableGtSingleAnnealedCopper')]])
    
    // // Стацния создания
    crafting.addShaped("tfg/gregtech/crafting_station", metaitem('workbench'), [
        [ore('chestWood'), ore('slabWood'), ore('chestWood')],
        [ore('plankWood'), ore('craftingTableWood'), ore('plankWood')],
        [ore('plankWood'), ore('toolSaw').transform(Function.setToolDamage), ore('plankWood')]])
    
    // Обработанные доски
    crafting.addShaped("tfg/gregtech/treated_wood_planks", item('gregtech:planks', 1), [
        [ore('plankWood'), ore('plankWood'), ore('plankWood')],
        [ore('plankWood'), item('tfc:metal/bucket/red_steel').withNbt([Fluid: [FluidName: "creosote", Amount: 1000]]), ore('plankWood')],
        [ore('plankWood'), ore('plankWood'), ore('plankWood')]])
    
    // Primitive water pump deck
    crafting.addShaped("tfg/gregtech/primitive_water_pump_deck", item('gregtech:steam_casing:4') * 2, [
        [ore('screwIronAny'), ore('plankWood'), ore('screwIronAny')],
        [ore('toolScrewdriver').transform(Function.setToolDamage), ore('slabCobblestone'), ore('toolHammer').transform(Function.setToolDamage)]])
    
    // Primitive water pump hatch
    crafting.addShaped("tfg/gregtech/primitive_water_pump_hatch", metaitem('pump_hatch'), [
        [ore('screwIronAny'), ore('ringIronAny'), ore('toolScrewdriver').transform(Function.setToolDamage)],
        [ore('plankTreatedWood'), metaitem('pipeLargeFluidWood'), ore('plankTreatedWood')],
        [ore('slabCobblestone'), ore('ringIronAny'), ore('slabCobblestone')]])
    
    // Primitive water pump
    crafting.addShaped("tfg/gregtech/primitive_water_pump", metaitem('primitive_water_pump'), [
        [ore('ringIronAny'), metaitem('pipeNormalFluidWood'), ore('screwIronAny')],
        [ore('rotorIronAny'), ore('plankTreatedWood'), ore('toolScrewdriver').transform(Function.setToolDamage)],
        [ore('slabCobblestone'), metaitem('pipeLargeFluidWood'), ore('slabCobblestone')]])
    
    // Coke Oven
    crafting.addShaped("tfg/gregtech/coke_oven", metaitem('coke_oven'), [
        [item('gregtech:metal_casing:8'), ore('plateIronAny'), item('gregtech:metal_casing:8')],
        [ore('plateIronAny'), ore('toolWrench').transform(Function.setToolDamage), ore('plateIronAny')],
        [item('gregtech:metal_casing:8'), ore('plateIronAny'), item('gregtech:metal_casing:8')]])
    
    // Steam Miner
    crafting.addShaped("tfg/gregtech/steam_miner", metaitem('steam_miner'), [
        [ore('diamonds'), metaitem('pipeSmallFluidBronze'), ore('diamonds')],
        [metaitem('pipeSmallFluidBronze'), item('gregtech:steam_casing'), metaitem('pipeSmallFluidBronze')],
        [ore('craftingPiston'), metaitem('pipeSmallFluidBronze'), ore('craftingPiston')]])
    
    // Steam Macerator
    crafting.addShaped("tfg/gregtech/steam_macerator", metaitem('steam_macerator_bronze'), [
        [ore('diamonds'), metaitem('pipeNormalFluidBronze'), ore('diamonds')],
        [metaitem('pipeNormalFluidBronze'), item('gregtech:steam_casing'), metaitem('pipeNormalFluidBronze')],
        [metaitem('gearSmallBronze'), metaitem('pipeNormalFluidBronze'), metaitem('gearSmallBronze')]])
    
    // Steam Rock Breaker
    crafting.addShaped("tfg/gregtech/steam_rick_breaker", metaitem('steam_rock_breaker_bronze'), [
        [ore('craftingPiston'), metaitem('pipeSmallFluidBronze'), ore('craftingPiston')],
        [metaitem('pipeSmallFluidBronze'), item('gregtech:steam_casing'), metaitem('pipeSmallFluidBronze')],
        [ore('diamonds'), metaitem('pipeSmallFluidBronze'), ore('diamonds')]])
    
    // Firebrick GT
    crafting.addShaped("tfg/gregtech/fire_bricks", item('gregtech:metal_casing:1'), [
        [null, metaitem('plateCopper'), null],
        [metaitem('plateCopper'), item('tfc:fire_bricks'), metaitem('plateCopper')],
        [null, metaitem('plateCopper'), null]])
    
    // Quartz Sand - 1
    crafting.addShaped("tfg/gregtech/quartz_sand", metaitem('dustQuartzSand'), [
        [null, ore('sand'), null],
        [null, ore('toolMortar').transform(Function.setToolDamage), null],
        [null, null, null]])
    
    // Steam Import Bus
    crafting.addShaped("tfg/gregtech/steam_import_bus", metaitem('steam_import_bus'), [
        [null, ore('chest'), null],
        [null, item('gregtech:steam_casing'), null],
        [null, null, null]])
    
    // Steam Export Bus
    crafting.addShaped("tfg/gregtech/steam_export_bus", metaitem('steam_export_bus'), [
        [null, item('gregtech:steam_casing'), null],
        [null, ore('chest'), null],
        [null, null, null]])
    
    // Wooden Crate
    crafting.addShaped("tfg/gregtech/wooden_crate", metaitem('crate.wood'), [
        [ore('screwIronAny'), ore('plankWood'), ore('screwIronAny')],
        [ore('plankWood'), ore('toolSaw').transform(Function.setToolDamage), ore('plankWood')],
        [ore('screwIronAny'), ore('plankWood'), ore('screwIronAny')]])
    
    // Блокнот
    crafting.addShaped("tfg/gregtech/clipboard", metaitem('clipboard'), [
        [null, ore('screwIronAny'), ore('toolScrewdriver').transform(Function.setToolDamage)],
        [ore('boltIronAny'), metaitem('plateWood'), ore('boltIronAny')],
        [ore('paper'), ore('paper'), ore('paper')]])
    
    // Лук
    crafting.addShaped(item('minecraft:bow'), [
        [ore('toolHammer').transform(Function.setToolDamage), metaitem('stickLongWood'), ore('string')],
        [metaitem('stickLongWood'), ore('ringIronAny'), ore('string')],
        [ore('toolFile').transform(Function.setToolDamage), metaitem('stickLongWood'), ore('string')]])
    
    // Чаровалка
    macerator.recipeBuilder()
        .inputs(item('minecraft:enchanting_table'))
        .outputs(metaitem('dustPaper') * 9, metaitem('dustObsidian') * 3)
        .duration(135).EUt(2).buildAndRegister()
    
    // Crafting Table Cover
    assembler.recipeBuilder()
        .inputs(ore('plateIronAny'), ore('workbench'))
        .outputs(metaitem('cover.crafting'))
        .duration(400).EUt(16).buildAndRegister()
    
    // Extruder Shape (Sense Head)
    crafting.addShaped(metaitem('shape.extruder.sense'), [
        [null, null, null],
        [ore('toolHammer').transform(Function.setToolDamage), metaitem('shape.extruder.plate'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
        .inputs(metaitem('shape.empty'))
        .notConsumable(metaitem('shape.extruder.sense'))
        .outputs(metaitem('shape.extruder.sense'))
        .duration(120).EUt(22).buildAndRegister()
    
    // Mold (Knife Head)
    crafting.addShaped(metaitem('shape.mold.knife'), [
        [null, ore('toolHammer').transform(Function.setToolDamage), metaitem('shape.empty')],
        [null, null, null],
        [null, null, null]])
    forming_press.recipeBuilder()
        .inputs(metaitem('shape.empty'))
        .notConsumable(metaitem('shape.mold.knife'))
        .outputs(metaitem('shape.mold.knife'))
        .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Sword Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_sword", metaitem('shape.extruder.sword'), [
        [null,null, null],
        [null, metaitem('shape.extruder.plate'), ore('toolWireCutter').transform(Function.setToolDamage)],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.sword'))
      .outputs(metaitem('shape.extruder.sword'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Saw Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_saw", metaitem('shape.extruder.saw'), [
        [null,null, null],
        [null, metaitem('shape.extruder.plate'), null],
        [null, null, ore('toolWireCutter').transform(Function.setToolDamage)]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.saw'))
      .outputs(metaitem('shape.extruder.saw'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Hammer Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_hammer", metaitem('shape.extruder.hammer'), [
        [null, ore('toolWireCutter').transform(Function.setToolDamage), null],
        [null, metaitem('shape.extruder.ingot'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.hammer'))
      .outputs(metaitem('shape.extruder.hammer'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (File Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_file", metaitem('shape.extruder.file'), [
        [null,null, ore('toolWireCutter').transform(Function.setToolDamage)],
        [null, metaitem('shape.extruder.plate'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.file'))
      .outputs(metaitem('shape.extruder.file'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Hoe Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_hoe", metaitem('shape.extruder.hoe'), [
        [null,null, null],
        [null, metaitem('shape.extruder.ingot'), ore('toolWireCutter').transform(Function.setToolDamage)],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.hoe'))
      .outputs(metaitem('shape.extruder.hoe'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Axe Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_axe", metaitem('shape.extruder.axe'), [
        [ore('toolWireCutter').transform(Function.setToolDamage), null, null],
        [null, metaitem('shape.extruder.plate'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.axe'))
      .outputs(metaitem('shape.extruder.axe'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Shovel Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_shovel", metaitem('shape.extruder.shovel'), [
        [ore('toolWireCutter').transform(Function.setToolDamage),null, null],
        [null, metaitem('shape.extruder.plate'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.shovel'))
      .outputs(metaitem('shape.extruder.shovel'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Pickaxe Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_pickaxe", metaitem('shape.extruder.pickaxe'), [
        [null,null, ore('toolWireCutter').transform(Function.setToolDamage)],
        [null, metaitem('shape.extruder.ingot'), null],
        [null, null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.pickaxe'))
      .outputs(metaitem('shape.extruder.pickaxe'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Extruder Shape (Chisel Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_chisel", metaitem('shape.extruder.chisel'), [
        [null,null, null],
        [null, metaitem('shape.extruder.plate'), null],
        [ore('toolWireCutter').transform(Function.setToolDamage), null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.extruder.chisel'))
      .outputs(metaitem('shape.extruder.chisel'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Mold (Propick Head)
    crafting.addShaped("tfg/gregtech/shape_extruder_propick", metaitem('shape.mold.propick'), [
        [metaitem('shape.extruder.plate'),null, null],
        [null, null, null],
        [ore('toolHammer').transform(Function.setToolDamage), null, null]])
    forming_press.recipeBuilder()
      .inputs(metaitem('shape.empty'))
      .notConsumable(metaitem('shape.mold.propick'))
      .outputs(metaitem('shape.mold.propick'))
      .duration(120).EUt(22).buildAndRegister()
    
    // Растительное масло
    extractor.recipeBuilder()
        .inputs(ore('allSeeds'))
        .fluidOutputs(fluid('seed_oil') * 10)
        .EUt(2).duration(32).buildAndRegister()
    
    // Solar Panel (ULV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel') * 8,
            item('minecraft:daylight_detector') * 8,
            ore('circuitUlv') * 4,
            metaitem('plate.ultra_low_power_integrated_circuit') * 4,
            item('minecraft:glass'),
            metaitem('transformer.ulv'))
        .fluidInputs(fluid('silicon') * 2304)
        .fluidInputs(fluid('soldering_alloy') * 144)
        .outputs(metaitem('cover.solar.panel.ulv'))
        .duration(20).EUt(30720).buildAndRegister()
    
    // Solar Panel (LV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.ulv') * 4,
            metaitem('sensor.lv') * 8,
            ore('circuitLv') * 4,
            metaitem('plate.ultra_low_power_integrated_circuit') * 16,
            item('appliedenergistics2:quartz_glass'),
            metaitem('transformer.lv'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 288)
        .outputs(metaitem('cover.solar.panel.lv'))
        .duration(40).EUt(30720).buildAndRegister()
    
    // Solar Panel (MV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.lv') * 4,
            metaitem('sensor.mv') * 8,
            ore('circuitMv') * 4,
            metaitem('plate.low_power_integrated_circuit') * 4,
            item('appliedenergistics2:quartz_vibrant_glass'),
            metaitem('transformer.mv'))
        .fluidInputs(
            fluid('silicon') * 1152,
            fluid('soldering_alloy') * 576)
        .outputs(metaitem('cover.solar.panel.mv'))
        .duration(80).EUt(30720).buildAndRegister()
    
    // Solar Panel (HV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.mv') * 4,
            metaitem('sensor.hv') * 8,
            ore('circuitHv') * 4,
            metaitem('plate.low_power_integrated_circuit') * 16,
            item('appliedenergistics2:quartz_vibrant_glass'),
            metaitem('transformer.hv'))
        .fluidInputs(
            fluid('silicon') * 1152,
            fluid('soldering_alloy') * 1152)
        .outputs(metaitem('cover.solar.panel.hv'))
        .duration(160).EUt(30720).buildAndRegister()
    
    // Solar Panel (EV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.hv') * 4,
            metaitem('sensor.ev') * 8,
            ore('circuitEv') * 4,
            metaitem('plate.power_integrated_circuit') * 4,
            item('gregtech:transparent_casing'),
            metaitem('transformer.ev'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 2304)
        .outputs(metaitem('cover.solar.panel.ev'))
        .duration(320).EUt(30720).buildAndRegister()
    
    // Solar Panel (IV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.ev') * 4,
            metaitem('sensor.iv') * 8,
            ore('circuitIv') * 4,
            metaitem('plate.power_integrated_circuit') * 16,
            item('gregtech:transparent_casing'),
            metaitem('transformer.iv'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 4608)
        .outputs(metaitem('cover.solar.panel.iv'))
        .duration(640).EUt(30720).buildAndRegister()
    
    // Solar Panel (LuV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.iv') * 4,
            metaitem('sensor.luv') * 8,
            ore('circuitLuv') * 4,
            metaitem('plate.high_power_integrated_circuit') * 8,
            item('gregtech:transparent_casing:1'),
            metaitem('transformer.luv'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 9216)
        .outputs(metaitem('cover.solar.panel.luv'))
        .duration(1280).EUt(30720).buildAndRegister()
    
    // Solar Panel (ZPM)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.luv') * 4,
            metaitem('sensor.zpm') * 8,
            ore('circuitZpm') * 4,
            metaitem('plate.high_power_integrated_circuit') * 32,
            item('gregtech:transparent_casing:1'),
            metaitem('transformer.zpm'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 18432)
        .outputs(metaitem('cover.solar.panel.zpm'))
        .duration(2560).EUt(122880).buildAndRegister()
    
    // Solar Panel (UV)
    assembly_line.recipeBuilder()
        .inputs(
            metaitem('cover.solar.panel.zpm') * 4,
            metaitem('sensor.uv') * 8,
            ore('circuitUv') * 4,
            metaitem('plate.ultra_high_power_integrated_circuit') * 64,
            item('gregtech:transparent_casing:1'),
            metaitem('transformer.uv'))
        .fluidInputs(fluid('silicon') * 1152)
        .fluidInputs(fluid('soldering_alloy') * 36864)
        .outputs(metaitem('cover.solar.panel.uv'))
        .duration(5120).EUt(491520).buildAndRegister()
    
    // Nether Star Dust
    chemical_reactor.recipeBuilder()
        .inputs(
            metaitem('dustDiamond'), 
            metaitem('dustIridium'))
        .fluidInputs(
            fluid('mars_air') * 8000, 
            fluid('rocket_fuel') * 1000)
        .outputs(metaitem('dustNetherStar') * 2)
        .duration(200).EUt(7680).buildAndRegister()
    chemical_reactor.recipeBuilder()
        .inputs(
            metaitem('dustDiamond') * 2, 
            metaitem('dustIridium') * 2)
        .fluidInputs(
            fluid('sulfur_dioxide') * 6000, 
            fluid('carbon_monoxide') * 8000, 
            fluid('rocket_fuel') * 1000)
        .outputs(metaitem('dustNetherStar'))
        .duration(700).EUt(2000).buildAndRegister() 
    
    // Ступка + Гравий -> Кремений
    crafting.addShapeless(item('minecraft:flint'), [ore('toolMortar').transform(Function.setToolDamage), ore('gravel')])
    
    // Бронзовая пыль в TFC стиле
    crafting.addShapeless(metaitem('dustBronze') * 9, [metaitem('dustTin'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem('dustCopper'), metaitem    ('dustCopper')])
    
    // Исправление рецепта на бумагу
    
    // Крафт бумажной пыли
        crafting.addShaped(metaitem('dustPaper') * 2,[
        [item('tfc:food/sugarcane'), item('tfc:food/sugarcane'), item('tfc:food/sugarcane')],
        [null, ore('toolMortar').transform(Function.setToolDamage), null]])
    
    // Крафт бумаги из пыли
    // crafting.addShaped(item('minecraft:paper') * 2,[
    //     [null, ore('slabStonePolished').reuse(), null],
    //     [metaitem('dustPaper'), metaitem('dustPaper'), metaitem('dustPaper')],
    //     [null, ore('slabStonePolished').reuse(), null]])
    
    // Plant Ball Recipes
    
    // From Dirt
    centrifuge.recipeBuilder()
        .inputs(ore('dirt'))
        .chancedOutput(metaitem('plant_ball'), 1200, 700)
        .chancedOutput(item('tfc:dirt/basalt'), 5000, 1200)
        .chancedOutput(metaitem('dustTinyClay'), 4000, 900)
        .duration(275).EUt(30).buildAndRegister()
    
    // From Grass
    centrifuge.recipeBuilder()
        .inputs(ore('grass'))
        .chancedOutput(metaitem('plant_ball'), 3000, 1200)
        .chancedOutput(item('tfc:dirt/basalt'), 5000, 1200)
        .chancedOutput(metaitem('dustTinyClay'), 5000, 900)
        .duration(275).EUt(30).buildAndRegister()
    
    // From Cactus
    compressor.recipeBuilder()
        .inputs(item('tfc:plants/barrel_cactus') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(300).EUt(2).buildAndRegister()
    
    // From Grains
    compressor.recipeBuilder()
        .inputs(ore('categoryGrain') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(350).EUt(2).buildAndRegister()
    
    // From Vegetables
    compressor.recipeBuilder()
        .inputs(ore('categoryVegetable') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(350).EUt(2).buildAndRegister()
    
    // From Fruit
    compressor.recipeBuilder()
        .inputs(ore('categoryFruit') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(350).EUt(2).buildAndRegister()
    
    // From Red Mushroom
    compressor.recipeBuilder()
        .inputs(ore('mushroomRed') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(350).EUt(2).buildAndRegister()
    
    // From Mushroom
    compressor.recipeBuilder()
        .inputs(ore('mushroombrown') * 8)
        .outputs(metaitem('plant_ball'))
        .duration(350).EUt(2).buildAndRegister()
    
    // Biomass Recipes
    
    // From Cactus
    brewery.recipeBuilder()
        .inputs(item('tfc:plants/barrel_cactus'))
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(300).EUt(2).buildAndRegister()
    
    // From Grains
    brewery.recipeBuilder()
        .inputs(ore('categoryGrain') * 8)
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(160).EUt(3).buildAndRegister()
    
    // From Vegetables
    brewery.recipeBuilder()
        .inputs(ore('categoryVegetable') * 8)
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(160).EUt(3).buildAndRegister()
    
    // From Fruit
    brewery.recipeBuilder()
        .inputs(ore('categoryFruit') * 8)
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(160).EUt(3).buildAndRegister()
    
    // From Red Mushroom
    brewery.recipeBuilder()
        .inputs(ore('mushroomRed') * 8)
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(160).EUt(3).buildAndRegister()
    
    // From Mushroom
    brewery.recipeBuilder()
        .inputs(ore('mushroombrown') * 8)
        .fluidInputs(fluid('water') * 20)
        .fluidOutputs(fluid('biomass') * 20)
        .duration(160).EUt(3).buildAndRegister()
    
    // Glass
    arc_furnace.recipeBuilder()
        .inputs([ore('sand')])
        .outputs(item('minecraft:glass') * 2)
        .duration(175).EUt(7).buildAndRegister()
    
    // Coke Oven Bricks
    alloy_smelter.recipeBuilder()
        .inputs([ore('sand'), ore('ingotClay')])
        .outputs(metaitem('brick.coke') * 2)
        .duration(175).EUt(7).buildAndRegister()
    
    // Hevea -> Rubber
    centrifuge.recipeBuilder()
        .inputs(ore('rubberTrees'))
        .chancedOutput(metaitem('dustCarbon'), 2500, 600)
        .chancedOutput(metaitem('dustWood'), 2500, 700)
        .chancedOutput(metaitem('plant_ball'), 3750, 900)
        .chancedOutput(metaitem('rubber_drop'), 5000, 1200)
        .fluidOutputs(fluid('methane') * 65)
        .duration(200).EUt(20).buildAndRegister()
    
    // Лава из незерака
    extractor.recipeBuilder()
        .inputs(ore('netherrack'))
        .fluidOutputs(fluid('lava') * 250)
        .duration(330).EUt(140).buildAndRegister()
    
    // Лава из магма блока
    extractor.recipeBuilder()
        .inputs(item('minecraft:magma'))
        .fluidOutputs(fluid('lava') * 750)
        .duration(220).EUt(140).buildAndRegister()
    
    // Сахарный тростник --> целлюлоза
    forge_hammer.recipeBuilder()
        .inputs([ore('sugarcane') * 3])
        .outputs(metaitem('dustPaper') * 2)
        .duration(105).EUt(4).buildAndRegister()
    
    // Песок + Гравий --> цемент тфк
    mixer.recipeBuilder()
        .inputs(ore('sand') * 4, ore('gravel') * 4)
        .outputs(item('tfc:aggregate') * 8)
        .duration(20).EUt(4).buildAndRegister()
    
    // Infinite Water Cover 
    assembler.recipeBuilder()
        .inputs(
            metaitem('electric.pump.iv') * 2, 
            item('minecraft:cauldron:0'), 
            ore('circuitIv') * 2, 
            item('minecraft:ender_pearl') * 2, 
            metaitem('emitter.iv'))
        .outputs(metaitem('cover.infinite_water'))
        .duration(200).EUt(3280).buildAndRegister()
    
    // Fertilizer
    mixer.recipeBuilder()
    	.inputs(
            ore('sand') * 4,
            metaitem('dustWood') * 2, 
            ore('dirt'))
        .fluidInputs(fluid('water') * 1000)
    	.outputs(metaitem('fertilizer'))
    	.duration(100).EUt(30).buildAndRegister()
    
    // Деревянный ящик
    assembler.recipeBuilder()
        .inputs(
            ore('screwIronAny') * 4, 
            ore('plankWood') * 4)
        .circuitMeta(1)
        .outputs(metaitem('crate.wood'))
        .duration(100).EUt(16).buildAndRegister()
    
    // Разбор ведра из синей стали
    arc_furnace.recipeBuilder()
        .inputs(item('minecraft:bucket:0'))
        .fluidInputs(fluid('oxygen') * 56)
        .outputs(metaitem('ingotBlueSteel') * 3)
        .duration(56).EUt(30).buildAndRegister()
    macerator.recipeBuilder()
        .inputs(item('minecraft:bucket:0'))
        .outputs(metaitem('dustBlueSteel') * 3)
        .duration(56).EUt(2).buildAndRegister()
    
    // Разбор ведра из кованого стали
    arc_furnace.recipeBuilder()
        .inputs(item('tfc:metal/bucket/red_steel'))
        .fluidInputs(fluid('oxygen') * 56)
        .outputs(metaitem('ingotWroughtIron') * 3)
        .duration(56).EUt(30).buildAndRegister()
    macerator.recipeBuilder()
        .inputs(item('tfc:metal/bucket/red_steel'))
        .outputs(metaitem('dustWroughtIron') * 3)
        .duration(56).EUt(2).buildAndRegister()
    
    // Монеты
    forming_press.recipeBuilder()
        .inputs(metaitem('plateCopper'))
        .notConsumable(metaitem('shape.mold.credit'))
        .outputs(metaitem('credit.copper'))
        .duration(40).EUt(480).buildAndRegister()
    forming_press.recipeBuilder()
        .inputs(metaitem('plateGold'))
        .notConsumable(metaitem('shape.mold.credit'))
        .outputs(metaitem('credit.gold'))
        .duration(40).EUt(480).buildAndRegister()
    forming_press.recipeBuilder()
        .inputs(metaitem('plateSilver'))
        .notConsumable(metaitem('shape.mold.credit'))
        .outputs(metaitem('credit.silver'))
        .duration(40).EUt(480).buildAndRegister()
    
    // Резина
    electric_furnace.recipeBuilder()
        .inputs(item('tfctech:latex/rubber_mix'))
        .outputs(item('tfctech:latex/rubber'))
        .duration(40).EUt(7).buildAndRegister()
    
    // Passthrough hatch item
    crafting.addShaped("tfg/gregtech/passthrough_hatch_item", metaitem('passthrough_hatch_item'), [
        [null,metaitem('conveyor.module.hv'), null],
        [metaitem('gearSmallSteel'), metaitem('hull.hv'), metaitem('gearSmallSteel')],
        [null, ore('chestWood'), null]])
    
    // Сжатая пластина углерода
    compressor.recipeBuilder()
        .inputs(metaitem('plateCarbon') * 9)
        .outputs(metaitem('plateDenseCarbon'))
        .duration(504).EUt(96).buildAndRegister()
}