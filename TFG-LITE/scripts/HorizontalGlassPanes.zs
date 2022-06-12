// Удаление рецептов
recipes.remove(<hgp:hgppane>);
for item in Horizontal_Glass_Panes_Array {
    recipes.remove(item);
}

// Чистая панель -> Чистая горизонтальная панель
// Верстак
recipes.addShapeless(<hgp:hgppane>, [<minecraft:glass_pane>]);
// Ассемблер
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