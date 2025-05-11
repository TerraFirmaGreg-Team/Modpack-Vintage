// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:phobos'), item('extraplanets:phobos:1'), item('extraplanets:phobos:2'), metaitem('dustStonePhobos'), 2, 2)

// Пыль фобоса
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStonePhobos') * 3)
  .chancedOutput(metaitem('dustGarnierite'), 3700, 1200)
  .chancedOutput(metaitem('dustGraphite'), 1100, 500)
  .chancedOutput(metaitem('dustMagnetite'), 1150, 500)
  .chancedOutput(metaitem('dustSulfur'), 950, 500)
  .duration(1250).EUt(512).buildAndRegister()
