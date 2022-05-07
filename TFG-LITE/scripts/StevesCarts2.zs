import crafttweaker.item.IItemStack;

// --- Recipes Removing

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
	<stevescarts:modulecomponents:9>,
	<stevescarts:modulecomponents:16>,
	<stevescarts:blockcartassembler>,
	<stevescarts:blockliquidmanager>,
	<stevescarts:blockcargomanager>,
	<stevescarts:blockactivator>,
	<stevescarts:blockdistributor>,
	<stevescarts:blockdetector:1>,
	<stevescarts:blockdetector:4>,
	<stevescarts:blockdetector:3>,
	<stevescarts:blockdetector:2>,
	<stevescarts:blockdetector>,
	<stevescarts:modulecomponents>,
	<stevescarts:modulecomponents:1>,
	<stevescarts:modulecomponents:23>,
	<stevescarts:modulecomponents:82>,
	<stevescarts:modulecomponents:46>,
	<stevescarts:modulecomponents:45>,
	<stevescarts:cartmodule:69>,
	<stevescarts:cartmodule:70>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule>,
	<stevescarts:modulecomponents:83>,
	<stevescarts:modulecomponents:84>,
	<stevescarts:cartmodule:57>,
	<stevescarts:modulecomponents:44>,
	<stevescarts:cartmodule:68>,
	<stevescarts:upgrade:18>,
	<stevescarts:cartmodule:33>,
	<stevescarts:cartmodule:34>,
	<stevescarts:cartmodule:83>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// --- Recipes Adding

// Простая печатная плата
circuit_assembler.recipeBuilder()
    .inputs([<ore:wireGtSingleTin> * 2, <ore:circuitLv> * 2, <metaitem:circuit_board.basic> * 1])
    .outputs(<stevescarts:modulecomponents:9>)
    .duration(32)
		.EUt(32)
		.buildAndRegister();

// Улучшенная печатная плата
circuit_assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:9> * 2, <ore:circuitMv> * 2, <metaitem:circuit_board.basic> * 1])
    .outputs(<stevescarts:modulecomponents:16>)
    .duration(30)
		.EUt(56)
		.buildAndRegister();

// Конструктор вагонеток
assembler.recipeBuilder()
    .inputs([<metaitem:robot.arm.lv> * 2, <stevescarts:modulecomponents:9> * 2, <gregtech:machine_casing:1> * 1])
    .outputs(<stevescarts:blockcartassembler>)
    .duration(32)
		.EUt(32)
		.buildAndRegister();

// Менеджер жидкостей
assembler.recipeBuilder()
    .inputs([<metaitem:electric.pump.lv> * 4, <stevescarts:cartmodule:66> * 4, <gregtech:machine_casing:1> * 1])
    .outputs(<stevescarts:blockliquidmanager>)
    .duration(22)
		.EUt(32)
		.buildAndRegister();

// Менеджер груза
assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:35> * 4, <stevescarts:modulecomponents:36> * 4, <stevescarts:modulecomponents:38> * 1, <metaitem:robot.arm.lv> * 2])
    .outputs(<stevescarts:blockcargomanager>)
    .duration(22)
		.EUt(32)
		.buildAndRegister();

// Переключатель модулей
assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:16> * 1, <ore:circuitLv> * 2, <ore:plateGold> * 1, <ore:plateIron> * 1, <gregtech:machine_casing:1> * 1, <ore:dyeOrange> * 1, <ore:dyeBlue> * 1])
    .outputs(<stevescarts:blockactivator>)
    .duration(40)
		.EUt(32)
		.buildAndRegister();

// Внешний распределитель
assembler.recipeBuilder()
    .inputs([<gregtech:machine_casing:1> * 2, <stevescarts:modulecomponents:9> * 4, <ore:plateRedstone> * 1, <ore:plateIron> * 4])
    .outputs(<stevescarts:blockdistributor>)
    .duration(40)
		.EUt(32)
		.buildAndRegister();

// Датчик: узел
assembler.recipeBuilder()
    .inputs([<gregtech:machine_casing:1> * 1, <ore:pressurePlateStone> * 1, <ore:plateDoubleIron> * 3, <ore:plateRedstone> * 1, <stevescarts:modulecomponents:9> * 1])
    .outputs(<stevescarts:blockdetector:1>)
    .duration(40)
		.EUt(22)
		.buildAndRegister();

// Датчик: красный узел
assembler.recipeBuilder()
    .inputs([<stevescarts:blockdetector:1> * 1, <ore:plateRedstone> * 8])
    .outputs(<stevescarts:blockdetector:4>)
    .duration(40)
		.EUt(22)
		.buildAndRegister();

// Датчик: железнодорожныйузел
assembler.recipeBuilder()
    .inputs([<stevescarts:blockdetector:1> * 1, <ore:craftingRedstoneTorch> * 2, <ore:plateRedstone> * 2, <stevescarts:modulecomponents:9> * 1])
    .outputs(<stevescarts:blockdetector:3>)
    .duration(40)
		.EUt(22)
		.buildAndRegister();

// Датчик: станция
assembler.recipeBuilder()
    .inputs([<stevescarts:blockdetector:1> * 1, <ore:plateDoubleIron> * 3, <stevescarts:modulecomponents:9> * 1])
    .outputs(<stevescarts:blockdetector:2>)
    .duration(40)
		.EUt(22)
		.buildAndRegister();

// Датчик: менеджер
assembler.recipeBuilder()
    .inputs([<stevescarts:blockdetector:1> * 1, <stevescarts:modulecomponents:9> * 3])
    .outputs(<stevescarts:blockdetector>)
    .duration(40)
		.EUt(22)
		.buildAndRegister();

// Деревяное колесо
assembler.recipeBuilder()
    .inputs([<ore:lumber> * 3, <ore:stickWood> * 8])
    .outputs(<stevescarts:modulecomponents>)
    .duration(20)
		.EUt(7)
		.buildAndRegister();

// Железное колесо
assembler.recipeBuilder()
    .inputs([<ore:plateIron> * 3, <ore:stickIron> * 8])
    .outputs(<stevescarts:modulecomponents:1>)
    .duration(20)
		.EUt(7)
		.buildAndRegister();

// Укрепленное колесо
assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:22> * 3, <ore:stickIron> * 8])
    .outputs(<stevescarts:modulecomponents:23>)
    .duration(20)
		.EUt(7)
		.buildAndRegister();

// Галгориданское колесо
assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:47> * 3, <ore:stickIron> * 8, <stevescarts:modulecomponents:22> * 4])
    .outputs(<stevescarts:modulecomponents:82>)
    .duration(20)
		.EUt(7)
		.buildAndRegister();

// Глыба галгадора
mixer.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:45> * 3, <stevescarts:modulecomponents:21> * 2, <ore:blockDiamond> * 1])
		.fluidInputs(<liquid:glowstone>)
    .outputs(<stevescarts:modulecomponents:46> * 2)
    .duration(20)
		.EUt(480)
		.buildAndRegister();

// Глаз галгадора
mixer.recipeBuilder()
    .inputs([<metaitem:field.generator.mv>, <minecraft:magma_cream> * 4, <stevescarts:modulecomponents:47> * 3])
		.fluidInputs(<liquid:radon> * 144)
    .outputs(<stevescarts:modulecomponents:45>)
    .duration(20)
		.EUt(480)
		.buildAndRegister();

// Термальный двигатель
assembler.recipeBuilder()
    .inputs([<ore:obsidian> * 9, <ore:craftingPiston> * 4, <metaitem:steam_boiler_lava_bronze>])
    .outputs(<stevescarts:cartmodule:69>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Улучшеный термальный двигатель
assembler.recipeBuilder()
    .inputs([<ore:obsidian> * 9, <ore:craftingPiston> * 4, <metaitem:steam_boiler_lava_steel>, <stevescarts:modulecomponents:22> * 2])
    .outputs(<stevescarts:cartmodule:70>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Маленький угольный двигатель
assembler.recipeBuilder()
    .inputs([<ore:plateIron> * 9, <ore:craftingPiston> * 4, <metaitem:steam_boiler_coal_bronze>])
    .outputs(<stevescarts:cartmodule:44>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Угольный двигатель
assembler.recipeBuilder()
    .inputs([<ore:plateDoubleIron> * 9, <ore:craftingPiston> * 4, <metaitem:steam_boiler_coal_steel>, <stevescarts:modulecomponents:22> * 2])
    .outputs(<stevescarts:cartmodule>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Улучшение: термальный двигатель
assembler.recipeBuilder()
    .inputs([<stevescarts:cartmodule:69>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:16>])
    .outputs(<stevescarts:upgrade:18>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Улучшение: угольный двигатель
assembler.recipeBuilder()
    .inputs([<stevescarts:cartmodule:44>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:9>])
    .outputs(<stevescarts:upgrade:7>)
    .duration(50)
		.EUt(32)
		.buildAndRegister();

// Лезвие
assembler.recipeBuilder()
    .inputs([<ore:ingotIron> * 4, <ore:shears>])
    .outputs(<stevescarts:modulecomponents:83> * 2)
    .duration(30)
		.EUt(32)
		.buildAndRegister();

// Ротор
assembler.recipeBuilder()
    .inputs([<stevescarts:modulecomponents:83> * 4, <ore:stickIron>])
    .outputs(<stevescarts:modulecomponents:84>)
    .duration(30)
		.EUt(32)
		.buildAndRegister();

// Клетка
assembler.recipeBuilder()
    .inputs([<galacticraftcore:grating> * 6, <stevescarts:modulecomponents:9>])
    .outputs(<stevescarts:cartmodule:57>)
    .duration(30)
		.EUt(32)
		.buildAndRegister();

// Солнечная панель
assembler.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel>, <galacticraftcore:grating>])
    .outputs(<stevescarts:modulecomponents:44>)
    .duration(30)
		.EUt(72)
		.buildAndRegister();

// Мусоросжигатель
assembler.recipeBuilder()
    .inputs([<metaitem:electric_furnace.lv>, <ore:obsidian> * 4])
    .outputs(<stevescarts:cartmodule:68>)
    .duration(30)
		.EUt(72)
		.buildAndRegister();

// Расплавитель
assembler.recipeBuilder()
    .inputs([<metaitem:electric_furnace.lv>, <ore:obsidian> * 4])
		.fluidInputs(<liquid:glowstone> * 1144)
    .outputs(<stevescarts:cartmodule:33>)
    .duration(30)
		.EUt(32)
		.buildAndRegister();

// Чрезмерный расплавитель
assembler.recipeBuilder()
    .inputs([<metaitem:electric_furnace.mv>, <ore:obsidian> * 4, <stevescarts:cartmodule:33> * 3])
		.fluidInputs(<liquid:lava> * 1144)
    .outputs(<stevescarts:cartmodule:34>)
    .duration(30)
		.EUt(72)
		.buildAndRegister();

// Выкапыватель руд
assembler.recipeBuilder()
    .inputs([<metaitem:prospector.luv>, <stevescarts:modulecomponents:16> * 4, <ore:craftingRedstoneTorch> * 3, <stevescarts:modulecomponents:47> * 3, <stevescarts:modulecomponents:45> * 3])
		.fluidInputs(<liquid:lava> * 1144)
    .outputs(<stevescarts:cartmodule:83>)
    .duration(30)
		.EUt(72)
		.buildAndRegister();