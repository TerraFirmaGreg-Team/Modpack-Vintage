import crafttweaker.item.IItemStack;

// --- Массивы

val horizontalGlassPanesArray as IItemStack[] = [
    <hgp:hgpcoloredpane>,
    <hgp:hgpcoloredpane:1>,
    <hgp:hgpcoloredpane:2>,
    <hgp:hgpcoloredpane:3>,
    <hgp:hgpcoloredpane:4>,
    <hgp:hgpcoloredpane:5>,
    <hgp:hgpcoloredpane:6>,
    <hgp:hgpcoloredpane:7>,
    <hgp:hgpcoloredpane:8>,
    <hgp:hgpcoloredpane:9>,
    <hgp:hgpcoloredpane:10>,
    <hgp:hgpcoloredpane:11>,
    <hgp:hgpcoloredpane:12>,
    <hgp:hgpcoloredpane:13>,
    <hgp:hgpcoloredpane:14>,
    <hgp:hgpcoloredpane:15>
];

// --- Удаление рецептов

for item in horizontalGlassPanesArray {
    recipes.remove(item);
}

recipes.remove(<hgp:hgppane>);

// --- Создание рецептов

// Чистая панель -> Чистая горизонтальная панель
recipes.addShapeless(<hgp:hgppane>, [<minecraft:glass_pane>]);
assembler.recipeBuilder()
	.circuit(20)
	.inputs(<minecraft:glass_pane>)
	.outputs(<hgp:hgppane>)
	.duration(16).EUt(2).buildAndRegister();

// Крашенная панель 1х -> 1 Крашенная горизонтальная панель 1х
for i, horizontalGlassPanesArray in horizontalGlassPanesArray {
    
    // Верстак
    recipes.addShapeless(horizontalGlassPanesArray, [glassPanesArray[i]]);

    // Ассемблер
    assembler.recipeBuilder()
		.circuit(20)
        .inputs([glassPanesArray[i]])
        .outputs(horizontalGlassPanesArray)
        .duration(16).EUt(2).buildAndRegister();

    // Хим.ванна, наложение цвета на панели
    chemical_bath.recipeBuilder()
        .inputs([<hgp:hgppane>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs(horizontalGlassPanesArray)
        .duration(20).EUt(7).buildAndRegister();

    // Хим.ванна, очистка цвета с панелей
    chemical_bath.recipeBuilder()
        .inputs([horizontalGlassPanesArray])
        .fluidInputs([<liquid:chlorine> * 144])
        .outputs(<hgp:hgppane>)
        .duration(400).EUt(2).buildAndRegister();
}