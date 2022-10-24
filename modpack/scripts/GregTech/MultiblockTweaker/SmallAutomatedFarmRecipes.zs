# SmallAutomatedFarmRecipes

import crafttweaker.item.IItemStack;

print("Initializing 'SmallAutomatedFarmRecipes'...");


// Получение растений 
for i, All_Seeds in All_Seeds {
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable([All_Seeds])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i]])
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable([All_Seeds])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([All_Plants[i]])
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable([All_Seeds])
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i] * 4])
	.chancedOutput(All_Seeds, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable([All_Seeds])
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 1000])
        .outputs([All_Plants[i] * 4])
	.chancedOutput(All_Seeds, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
}

// Получение ягод
for i, TFC_berry_bush in TFC_berry_bush {
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable([TFC_berry_bush])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([TFC_berry[i]])
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable([TFC_berry_bush])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([TFC_berry[i]])
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable([TFC_berry_bush])
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([TFC_berry[i] * 4])
	.chancedOutput(TFC_berry_bush, 50, 10)
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable([TFC_berry_bush])
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 1000])
        .outputs([TFC_berry[i] * 4])
	.chancedOutput(TFC_berry_bush, 50, 10)
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();
}

// Получение тыкв
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:pumpkin_seeds>)
        .fluidInputs([<liquid:fresh_water> * 2000])
        .outputs(<minecraft:pumpkin>)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:pumpkin_seeds>)
        .fluidInputs([<liquid:water> * 2000])
        .outputs(<minecraft:pumpkin>)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<minecraft:pumpkin_seeds>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 2000])
        .outputs(<minecraft:pumpkin> * 4)
	.chancedOutput(<minecraft:pumpkin_seeds>, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<minecraft:pumpkin_seeds>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 2000])
        .outputs(<minecraft:pumpkin> * 4)
	.chancedOutput(<minecraft:pumpkin_seeds>, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();

// Получение арбузов
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:melon_seeds>)
        .fluidInputs([<liquid:fresh_water> * 3000])
        .outputs(<minecraft:melon_block>)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:melon_seeds>)
        .fluidInputs([<liquid:water> * 3000])
        .outputs(<minecraft:melon_block>)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<minecraft:melon_seeds>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 3000])
        .outputs(<minecraft:melon_block> * 4)
	.chancedOutput(<minecraft:melon_seeds>, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<minecraft:melon_seeds>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 3000])
        .outputs(<minecraft:melon_block> * 4)
	.chancedOutput(<minecraft:melon_seeds>, 100, 50)
        .duration(120 * 20)
        .EUt(48)
        .buildAndRegister();

// Получение грибов
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<tfc:plants/porcini>)
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs(<tfc:plants/porcini>)
        .duration(50 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<tfc:plants/porcini>)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(<tfc:plants/porcini>)
        .duration(50 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<tfc:plants/porcini>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs(<tfc:plants/porcini> * 4)
        .duration(50 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<tfc:plants/porcini>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(<tfc:plants/porcini> * 4)
        .duration(50 * 20)
        .EUt(48)
        .buildAndRegister();

// Получение кактусов
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<tfc:plants/barrel_cactus>)
        .fluidInputs([<liquid:fresh_water> * 2000])
        .outputs(<tfc:plants/barrel_cactus>)
        .duration(150 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<tfc:plants/barrel_cactus>)
        .fluidInputs([<liquid:water> * 2000])
        .outputs(<tfc:plants/barrel_cactus>)
        .duration(150 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<tfc:plants/barrel_cactus>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:fresh_water> * 2000])
        .outputs(<tfc:plants/barrel_cactus> * 4)
        .duration(150 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(2)
        .notConsumable(<tfc:plants/barrel_cactus>)
        .inputs(<metaitem:fertilizer> * 4)
        .fluidInputs([<liquid:water> * 2000])
        .outputs(<tfc:plants/barrel_cactus> * 4)
        .duration(150 * 20)
        .EUt(48)
        .buildAndRegister();

// Получение нароста из незера
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:soul_sand>)
        .notConsumable(<minecraft:nether_wart>)
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs(<minecraft:nether_wart>)
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();
small_automated_farm.recipeBuilder()
        .circuit(1)
        .notConsumable(<minecraft:soul_sand>)
        .notConsumable(<minecraft:nether_wart>)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(<minecraft:nether_wart>)
        .duration(180 * 20)
        .EUt(48)
        .buildAndRegister();


print("Initialized 'SmallAutomatedFarmRecipes'");