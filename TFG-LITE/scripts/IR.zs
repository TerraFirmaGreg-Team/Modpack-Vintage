import crafttweaker.item.IItemStack;

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
		<signal_stuff:fencebuffer>,
		<signal_stuff:oldpostbase>,
		<signal_stuff:modernsignalpostbase>,
		<signal_stuff:oldpost>,
		<signal_stuff:post>,
		<signal_stuff:bridgerustiocn>,
		<signal_stuff:modernsignal>,
		<signal_stuff:cables>,
		<signal_stuff:controltrackswitches>,
		<signal_stuff:controlswitches>,
		<immersiverailroading:item_hook>,
		<signal_stuff:crossinglamps>,
        <signal_stuff:buffericon>
];
for item in ItemsToRemove{
    recipes.remove(item);
}
// Переключающейся фонарь
assembler.recipeBuilder()
    .inputs([<signal_stuff:post>, <projectred-illumination:inverted_fixture_light:14> * 2, <ore:circuitUlv>])
    .outputs(<signal_stuff:crossinglamps>)
    .duration(300).EUt(7).buildAndRegister();

// Сцепной крюк
assembler.recipeBuilder()
    .inputs([<gregtech:meta_stick_long:324> * 3])
    .outputs(<immersiverailroading:item_hook>)
    .duration(30).EUt(17).buildAndRegister();

// Переключатель управления
assembler.recipeBuilder()
    .inputs([<ore:circuitUlv> * 2, <minecraft:lever> * 8, <ore:dustRedstone>, <ore:plateSteel> * 2])
    .outputs(<signal_stuff:controlswitches>)
    .duration(300).EUt(27).buildAndRegister();

// Переключатель ЖД дороги
assembler.recipeBuilder()
    .inputs([<ore:circuitUlv> * 2, <minecraft:lever> * 8, <ore:dustRedstone>, <ore:plateSteel> * 2, <signal_stuff:cables> * 2])
    .outputs(<signal_stuff:controltrackswitches>)
    .duration(300).EUt(27).buildAndRegister();

// Кабель
assembler.recipeBuilder()
    .inputs([<ore:stickLongSteel>, <projectred-transmission:wire> * 2])
    .outputs(<signal_stuff:cables> * 2)
    .duration(300).EUt(27).buildAndRegister();

// Модерн сигнал
assembler.recipeBuilder()
    .inputs([<projectred-illumination:inverted_fixture_light:14>, <projectred-illumination:inverted_fixture_light:13>, <projectred-illumination:inverted_fixture_light:4>, <projectred-transmission:wire> * 2, <signal_stuff:post>, <ore:circuitUlv>])
    .outputs(<signal_stuff:modernsignal> * 2)
    .duration(300).EUt(27).buildAndRegister();

// Мост
assembler.recipeBuilder()
    .inputs([<ore:stickLongSteel> * 8, <ore:plateDoubleSteel> * 2])
    .outputs(<signal_stuff:bridgerustiocn>)
    .duration(30).EUt(27).buildAndRegister();

// Столб белый
assembler.recipeBuilder()
    .inputs([<ore:stickLongSteel> * 2, <ore:plateDoubleSteel>, <ore:dyeLightGray>])
    .outputs(<signal_stuff:post>)
    .duration(30).EUt(27).buildAndRegister();

// Столб черный
assembler.recipeBuilder()
    .inputs([<ore:stickLongSteel> * 2, <ore:plateDoubleSteel>, <ore:dyeBlack>])
    .outputs(<signal_stuff:oldpost>)
    .duration(30).EUt(27).buildAndRegister();

// Толстый столб белый
assembler.recipeBuilder()
    .inputs([<signal_stuff:post>, <ore:plateDoubleSteel>])
    .outputs(<signal_stuff:modernsignalpostbase>)
    .duration(30).EUt(27).buildAndRegister();

// Толстый столб черный
assembler.recipeBuilder()
    .inputs([<signal_stuff:oldpost>, <ore:plateDoubleSteel>])
    .outputs(<signal_stuff:oldpostbase>)
    .duration(30).EUt(27).buildAndRegister();

// Буферный забор
assembler.recipeBuilder()
    .inputs([<ore:plankTreatedWood> * 8, <ore:stickLongSteel> * 2])
    .outputs(<signal_stuff:fencebuffer>)
    .duration(30).EUt(27).buildAndRegister();

// Буфер
assembler.recipeBuilder()
    .inputs([<ore:plankTreatedWood> * 16, <ore:stickLongSteel> * 6])
    .outputs(<signal_stuff:buffericon>)
    .duration(30).EUt(27).buildAndRegister();