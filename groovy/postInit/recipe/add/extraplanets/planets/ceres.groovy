// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:ceres'), item('extraplanets:ceres:1'), item('extraplanets:ceres:2'), metaitem('dustStoneCeres'), 3, 3)

// Пыль цереры
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneCeres') * 3)
  .chancedOutput(metaitem('dustBentonite'), 3700, 1200)
  .chancedOutput(metaitem('dustBeryllium'), 1100, 500)
  .chancedOutput(metaitem('dustBrownLimonite'), 1150, 500)
  .chancedOutput(metaitem('dustChalcopyrite'), 950, 500)
  .duration(1250).EUt(512).buildAndRegister()

// Кристаллизированная вода
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('salt_fluid') * 1000)
  .outputs(item('extraplanets:iodide_salt') * 6)
  .duration(1250).EUt(512).buildAndRegister()
