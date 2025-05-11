// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:eris'), item('extraplanets:eris:1'), item('extraplanets:eris:2'), metaitem('dustStoneEris'), 9, 9)

// Пыль Эриды
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneEris') * 3)
  .chancedOutput(metaitem('dustBeryllium'), 3700, 1200)
  .chancedOutput(metaitem('dustCadmium'), 1100, 500)
  .chancedOutput(metaitem('dustCassiterite'), 1150, 500)
  .chancedOutput(metaitem('dustPlutonium'), 950, 500)
  .duration(1250).EUt(1640).buildAndRegister()
