#priority 990

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.FactoryRecipeMap;

// Создание карты рецептов для звездной кузни
val star_forge as RecipeMap = FactoryRecipeMap.start("star_forge")
  .minInputs(1)
  .maxInputs(12)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(0)
  .maxFluidInputs(3)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();