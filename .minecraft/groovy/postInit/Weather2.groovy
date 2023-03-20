import postInit.Utility.Function

// --- Добавление рецептов

// Анемометр
crafting.addShaped("tfg/weather2/anemometer", item('weather2:anemometer'), [
    [ore('screwIronAny'), ore('gearIronAny'), ore('screwIronAny')],
    [null, ore('stickLongIronAny'), null],
    [ore('screwIronAny'), ore('toolScrewdriver').transform(Function.setToolDamage), ore('screwIronAny')]])

// Флюгер
crafting.addShaped("tfg/weather2/wind_vane", item('weather2:wind_vane'), [
    [ore('stickLongIronAny'), ore('gearIronAny'), ore('stickLongIronAny')],
    [null, ore('stickLongIronAny'), null],
    [ore('screwIronAny'), ore('toolScrewdriver').transform(Function.setToolDamage), ore('screwIronAny')]])

// Датчик торнадо
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(ore('rotorIronAny') * 2, ore('circuitLv'), ore('springIronAny') * 2, metaitem('sensor.lv') * 2, metaitem('stickRedAlloy'), item('weather2:anemometer'), item('weather2:wind_vane'))
    .outputs(item('weather2:tornado_sensor'))
    .duration(100).EUt(30).buildAndRegister()

// Сирена торнадо
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(ore('rotorIronAny') * 2, item('weather2:tornado_sensor'), ore('circuitMv'), metaitem('rotorSteel') * 2, metaitem('sensor.mv') * 2, metaitem('stickRedAlloy'))
    .outputs(item('weather2:tornado_siren'))
    .duration(200).EUt(90).buildAndRegister()

// Погодо-радар
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(ore('rotorIronAny') * 2, ore('circuitLv'), ore('springIronAny') * 2, ore('gearSmallIronAny') * 2, metaitem('stickRedAlloy'), item('minecraft:compass'))
    .outputs(item('weather2:weather_forecast'))
    .duration(300).EUt(30).buildAndRegister()

// Отражатель погоды
assembler.recipeBuilder()
    .circuitMeta(4)
    .inputs(ore('rotorIronAny') * 2, ore('circuitEv'), metaitem('rotorTitanium') * 2, metaitem('field.generator.hv') * 2, metaitem('stickRedAlloy'))
    .outputs(item('weather2:weather_deflector'))
    .duration(100).EUt(1900).buildAndRegister()

// Ручная редстоун сирена
assembler.recipeBuilder()
    .circuitMeta(5)
    .inputs(ore('rotorIronAny') * 2, ore('springIronAny') * 2, ore('gearSmallIronAny') * 2, metaitem('stickRedAlloy'), item('weather2:tornado_sensor'), item('minecraft:lever') * 2)
    .fluidInputs(fluid('redstone') * 20)
    .outputs(item('weather2:tornado_siren_manual'))
    .duration(100).EUt(7).buildAndRegister()
