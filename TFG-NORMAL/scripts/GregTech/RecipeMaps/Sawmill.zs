#priority 990

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.FactoryRecipeMap;

// Создание карты рецептов для распилки
val saw_mill as RecipeMap = FactoryRecipeMap.start("saw_mill")
  .minInputs(2)
  .maxInputs(2)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(1)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();