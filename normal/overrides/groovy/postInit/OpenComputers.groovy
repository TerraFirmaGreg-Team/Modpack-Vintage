

// --- Добавление рецептов

// Wrench
crafting.addShaped(item('opencomputers:wrench'), [
    [item('minecraft:iron_ingot'), null, item('minecraft:iron_ingot')],
    [null, item('opencomputers:material:8'), null],
    [null, item('minecraft:iron_ingot'), null]])

// Memory Tier1
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('opencomputers:material:7') * 3,
        metaitem('circuit_board.good') * 3)
    .outputs(item('opencomputers:component:6'))
    .duration(200).EUt(30).buildAndRegister()

// Transistor
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('boltIron') * 3,
        item('minecraft:redstone'))
    .outputs(item('opencomputers:material:6'))
    .duration(200).EUt(30).buildAndRegister()

// Microchip Tier1
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('opencomputers:material:6') * 4,
        ore('circuitLv'))
    .outputs([item('opencomputers:material:7')])
    .duration(200).EUt(30).buildAndRegister()

// Microchip Tier2
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('opencomputers:material:6') * 8,
        ore('circuitMv'))
    .outputs(item('opencomputers:material:8'))
    .duration(200).EUt(120).buildAndRegister()

// Microchip Tier3
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        item('opencomputers:material:6') * 16,
        ore('circuitHv'))
    .outputs(item('opencomputers:material:9'))
    .duration(200).EUt(480).buildAndRegister()

// ALU
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('projectred-integration:gate:26') * 3,
        ore('circuitLv'))
    .outputs(item('opencomputers:material:10'))
    .duration(200).EUt(30).buildAndRegister()

// CU
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('opencomputers:material:6') * 6,
        ore('circuitLv'))
    .outputs(item('opencomputers:material:11'))
    .duration(200).EUt(30).buildAndRegister()

// Cable
assembler.recipeBuilder()
    .inputs(
        metaitem('wireGtSingleCopper') * 8,
        metaitem('dustEmerald'))
    .outputs(item('opencomputers:cable'))
    .duration(200).EUt(30).buildAndRegister()
