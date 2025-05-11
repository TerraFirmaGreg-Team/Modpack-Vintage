// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:oberon'), item('extraplanets:oberon:1'), item('extraplanets:oberon:2'), metaitem('dustStoneOberon'), 6, 6)

// Пыль Оберона
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneOberon') * 3)
  .chancedOutput(metaitem('dustBrownLimonite'), 3700, 1200)
  .chancedOutput(metaitem('dustGalena'), 1100, 500)
  .chancedOutput(metaitem('dustNaquadah'), 1150, 500)
  .chancedOutput(metaitem('dustPlatinum'), 950, 500)
  .duration(1250).EUt(1640).buildAndRegister()
