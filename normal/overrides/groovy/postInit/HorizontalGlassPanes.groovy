import postInit.Utility.Array.ItemArray


// --- Создание рецептов

// Чистая панель -') Чистая горизонтальная панель
crafting.addShapeless(item('hgp:hgppane'), [item('minecraft:glass_pane')])
assembler.recipeBuilder()
	.circuitMeta(20)
	.inputs(item('minecraft:glass_pane'))
	.outputs(item('hgp:hgppane'))
	.duration(16).EUt(2).buildAndRegister()

// Крашенная панель 1х -') 1 Крашенная горизонтальная панель 1х
for (int i = 0; i < ItemArray.horizontalGlassPanesArray.size(); i++) {
    // Верстак
    crafting.addShapeless(ItemArray.horizontalGlassPanesArray[i], [ItemArray.glassPanesArray[i]])

    // Ассемблер
    assembler.recipeBuilder()
		.circuitMeta(20)
        .inputs(ItemArray.glassPanesArray[i])
        .outputs(ItemArray.horizontalGlassPanesArray[i])
        .duration(16).EUt(2).buildAndRegister()

    // Хим.ванна, наложение цвета на панели
    chemical_bath.recipeBuilder()
        .inputs(item('hgp:hgppane'))
        .fluidInputs(ItemArray.colorLiquid[i] * 18)
        .outputs(ItemArray.horizontalGlassPanesArray[i])
        .duration(20).EUt(7).buildAndRegister()

    // Хим.ванна, очистка цвета с панелей
    chemical_bath.recipeBuilder()
        .inputs(ItemArray.horizontalGlassPanesArray[i])
        .fluidInputs(fluid('chlorine') * 144)
        .outputs(item('hgp:hgppane'))
        .duration(400).EUt(2).buildAndRegister()
}