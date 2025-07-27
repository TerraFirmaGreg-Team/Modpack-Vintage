// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:rhea'), item('extraplanets:rhea:1'), item('extraplanets:rhea:2'), metaitem('dustStoneRhea'), 5, 5)

// Пыль Реи
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneRhea') * 3)
  .chancedOutput(metaitem('dustGraphite'), 3700, 1200)
  .chancedOutput(metaitem('dustIlmenite'), 1100, 500)
  .chancedOutput(metaitem('dustIridium'), 1150, 500)
  .chancedOutput(metaitem('dustOsmium'), 950, 500)
  .duration(1250).EUt(1640).buildAndRegister()
