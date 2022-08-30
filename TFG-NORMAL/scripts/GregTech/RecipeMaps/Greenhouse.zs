#priority 990

import crafttweaker.item.IItemStack;

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.FactoryRecipeMap;

// Создание карты рецептов для теплицы
val greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
    .minInputs(2)
    .maxInputs(3)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(1)
    .maxFluidInputs(1)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .build();