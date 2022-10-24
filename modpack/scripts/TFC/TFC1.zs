# TFC1

import crafttweaker.item.IItemStack;

print("Initializing 'TFC1'...");


// Рецепты с таблицами материалов
// Получение булыжника из обычных камней в кузнечном молоте (Для ТФК пород камня)
for i, TFC_Cobbles in TFC_Cobbles {
forge_hammer.recipeBuilder()
    	.inputs([TFC_Raws[i]])
    	.outputs(TFC_Cobbles)
    	.duration(5 * 20)
	.EUt(8)
	.buildAndRegister();
}

// Получение гладких камней из обычных камней в лазерном гравере (Для ТФК пород камня)
for i, TFC_Smooths in TFC_Smooths {
laser_engraver.recipeBuilder()
    	.inputs([TFC_Raws[i]])
	.notConsumable(<ore:craftingLensGlass>)
    	.outputs(TFC_Smooths)
    	.duration(10 * 20)
	.EUt(30)
	.buildAndRegister();
}

// Получение гравия из булыжника в кузнечном молоте (Для ТФК пород камня)
for i, TFC_Gravel in TFC_Gravel {
forge_hammer.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Gravel)
    	.duration(15 * 20)
	.EUt(8)
	.buildAndRegister();
}

// Получение песка из гравия в кузнечном молоте (Для ТФК пород камня)
for i, TFC_Sands in TFC_Sands {
forge_hammer.recipeBuilder()
    	.inputs([TFC_Gravel[i]])
    	.outputs(TFC_Sands)
    	.duration(15 * 20)
	.EUt(8)
	.buildAndRegister();
}

// Получение блоков кирпичей из кирпичей в сборщике
for i, TFC_Bricks_Block in TFC_Bricks_Block {
assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Item[i] * 4])
	.circuit(4)
	.fluidInputs([<liquid:concrete> * 100])
    	.outputs(TFC_Bricks_Block * 4)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение полублоков булыжника из булыжника в резочной машине
for i, TFC_Slabs_Cobble in TFC_Slabs_Cobble {
cutter.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Slabs_Cobble * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение ступенек булыжника из булыжника в сборщике
for i, TFC_Stairs_Cobble in TFC_Stairs_Cobble {
assembler.recipeBuilder()
    	.inputs([TFC_Cobbles[i] * 6])
	.circuit(7)
    	.outputs(TFC_Stairs_Cobble * 16)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение полублоков кирпечей из кирпичей в резочной машине
for i, TFC_Slabs_Bricks in TFC_Slabs_Bricks {
cutter.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i]])
    	.outputs(TFC_Slabs_Bricks * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение кирпичных ступенек из кирпичных блоков в сборщике
for i, TFC_Stairs_Bricks in TFC_Stairs_Bricks {
assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i] * 6])
	.circuit(7)
    	.outputs(TFC_Stairs_Bricks * 16)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение полублоков гладких блоков из гладких блоков в резочной машине
for i, TFC_Slabs_Smooth in TFC_Slabs_Smooth {
cutter.recipeBuilder()
    	.inputs([TFC_Smooths[i]])
    	.outputs(TFC_Slabs_Smooth * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение ступенек гладких блоков из гладких блоков в сборщике
for i, TFC_Stairs_Smooth in TFC_Stairs_Smooth {
assembler.recipeBuilder()
    	.inputs([TFC_Smooths[i] * 6])
	.circuit(7)
    	.outputs(TFC_Stairs_Smooth * 16)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение нажимных плит из разных видов пород камней
for i, TFC_Stone_Pressure_Plates in TFC_Stone_Pressure_Plates {
assembler.recipeBuilder()
    	.inputs([TFC_Raws[i] * 2, <metaitem:springIron>])
    	.outputs(TFC_Stone_Pressure_Plates * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение кнопок из полублоков
for i, TFC_Stone_Buttons in TFC_Stone_Buttons {
cutter.recipeBuilder()
    	.inputs([TFC_Slabs_Smooth[i] * 1])
	.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Stone_Buttons * 4)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Полечение пиломатериалов из дерева
for i, TFC_Lumber in TFC_Lumber {
cutter.recipeBuilder()
    	.inputs([TFC_Logs[i]])
	.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Lumber * 16, <ore:dustWood>.firstItem * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение досок из пиломатериалов
for i, TFC_Planks in TFC_Planks {
assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 4])
	.circuit(3)
    	.outputs(TFC_Planks)
    	.duration(5 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение полублоков досок из досок
for i, TFC_Slabs in TFC_Slabs {
cutter.recipeBuilder()
    	.inputs([TFC_Planks[i]])
	.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Slabs * 2, <ore:dustWood>.firstItem * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение ступенек из досок
for i, TFC_Stairs in TFC_Stairs {
assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 6])
	.circuit(7)
    	.outputs(TFC_Stairs * 16)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение нажимных пластин из досок
for i, TFC_Pressure_Plates in TFC_Pressure_Plates {
assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <metaitem:springIron>])
    	.outputs(TFC_Pressure_Plates * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение кнопок из дерева
for i, TFC_Buttons in TFC_Buttons {
cutter.recipeBuilder()
    	.inputs([TFC_Slabs[i] * 1])
	.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Buttons * 4)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение забора из досок
for i, TFC_Fences in TFC_Fences {
assembler.recipeBuilder()
    	.inputs([TFC_Planks[i]])
	.circuit(1)
    	.outputs(TFC_Fences * 4)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение калиток из досок
for i, TFC_Fence_Gates in TFC_Fence_Gates {
assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <minecraft:stick> * 2])
	.circuit(2)
    	.outputs(TFC_Fence_Gates * 2)
    	.duration(10 * 20)
	.EUt(7)
	.buildAndRegister();
}

// Получение опор из досок
for i, TFC_Supports in TFC_Supports {
assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 4])
	.circuit(3)
	.fluidInputs([<liquid:water> * 100])
    	.outputs(TFC_Supports * 16)
    	.duration(10 * 20)
	.EUt(16)
	.buildAndRegister();
}

// Обработка предметов в печке
// Приготовление мяса
for i, TFC_Cooked_Meat in TFC_Cooked_Meat {
    furnace.addRecipe(TFC_Cooked_Meat, TFC_Raw_Meat[i]);
}

// Выпечка керамических изделий
for i, TFC_Fired_Ceramics in TFC_Fired_Ceramics {
    furnace.addRecipe(TFC_Fired_Ceramics, TFC_Unfired_Ceramics[i]);
}

// Выпечка цельных камней из булыжника
for i, TFC_Raws in TFC_Raws {
    furnace.addRecipe(TFC_Raws, TFC_Cobbles[i]);
}

// Переработка растительности в измельчителе
for i, TFC_QuernToMaceratorOutput in TFC_QuernToMaceratorOutput {
macerator.recipeBuilder()
    	.inputs([TFC_QuernToMaceratorInput[i]])
    	.outputs(TFC_QuernToMaceratorOutput * 2)
    	.duration(2 * 20)
	.EUt(2)
	.buildAndRegister();
}

// Переработка зерновых в центрифуге
for i, TFC_GrainCentrifugeOutput in TFC_GrainCentrifugeOutput {
centrifuge.recipeBuilder()
    	.inputs([TFC_GrainCentrifugeInput[i]])
	.fluidInputs([<liquid:water> * 50])
    	.outputs(TFC_GrainCentrifugeOutput * 2, <tfc:straw>)
    	.duration(5 * 20)
	.EUt(8)
	.buildAndRegister();
}

// Переработка муки в центрифуге
for i, TFC_FlourCentrifugeOutput in TFC_FlourCentrifugeOutput {
centrifuge.recipeBuilder()
	.circuit(1)
    	.inputs([TFC_FlourCentrifugeInput[i]])
    	.outputs(TFC_FlourCentrifugeOutput * 2)
    	.duration(10 * 20)
	.EUt(8)
	.buildAndRegister();
}

// Получение теста для хлеба из ТФК
for i, TFC_dough in TFC_dough {
mixer.recipeBuilder()
    	.inputs([TFC_flour[i]])
	.fluidInputs([<liquid:water> * 1000])
    	.outputs(TFC_dough * 2)
    	.duration(15 * 20)
	.EUt(16)
	.buildAndRegister();
mixer.recipeBuilder()
    	.inputs([TFC_flour[i]])
	.fluidInputs([<liquid:fresh_water> * 1000])
    	.outputs(TFC_dough * 2)
    	.duration(15 * 20)
	.EUt(16)
	.buildAndRegister();
}

// Выпечка хлеба из ТФК
for i, TFC_bread in TFC_bread {
    furnace.addRecipe(TFC_bread, TFC_dough[i]);
}


print("Initialized 'TFC1'");