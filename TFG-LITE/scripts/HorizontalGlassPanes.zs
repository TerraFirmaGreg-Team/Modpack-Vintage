import crafttweaker.item.IItemStack;

// --- Массивы

val Horizontal_Glass_Panes_Array as IItemStack[] = [
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

for item in Horizontal_Glass_Panes_Array {
    recipes.remove(item);
}

recipes.remove(<hgp:hgppane>);

// --- Создание рецептов

// Чистая панель -> Чистая горизонтальная панель
recipes.addShapeless(<hgp:hgppane>, [<minecraft:glass_pane>]);
assembler.recipeBuilder()
	.inputs(<minecraft:glass_pane>)
	.circuit(20)
	.outputs(<hgp:hgppane>)
	.duration(16).EUt(2).buildAndRegister();

// Крашенная панель 1х -> 1 Крашенная горизонтальная панель 1х
for i, Horizontal_Glass_Panes_Array in Horizontal_Glass_Panes_Array {
    
    // Верстак
    recipes.addShapeless(Horizontal_Glass_Panes_Array, [Glass_Panes_Array[i]]);

    // Ассемблер
    assembler.recipeBuilder()
    	.inputs([Glass_Panes_Array[i]])
		.circuit(20)
    	.outputs(Horizontal_Glass_Panes_Array)
    	.duration(16).EUt(2).buildAndRegister();
}

// Хим.ванна, наложение цвета на панели
for i, Horizontal_Glass_Panes_Array in Horizontal_Glass_Panes_Array {
    chemical_bath.recipeBuilder()
    	.inputs([<hgp:hgppane>])
        .fluidInputs([All_Liquid_Dyes[i] * 18])
    	.outputs(Horizontal_Glass_Panes_Array)
    	.duration(20).EUt(7).buildAndRegister();
}

// Хим.ванна, очистка цвета с панелей
for item in Horizontal_Glass_Panes_Array {
    chemical_bath.recipeBuilder()
    	.inputs([item])
        .fluidInputs([<liquid:chlorine> * 20])
    	.outputs(<hgp:hgppane>)
    	.duration(400).EUt(2).buildAndRegister();
}