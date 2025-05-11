// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера


// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:ganymede'), item('extraplanets:ganymede:1'), item('extraplanets:ganymede:2'), metaitem('dustStoneGanymede'), 4, 4)

// Пыль Ганнимеда
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneGanymede') * 3)
  .chancedOutput(metaitem('dustBrownLimonite'), 3700, 1200)
  .chancedOutput(metaitem('dustChalcopyrite'), 1100, 500)
  .chancedOutput(metaitem('dustIlmenite'), 1150, 500)
  .chancedOutput(metaitem('dustMagnetite'), 950, 500)
  .duration(1250).EUt(1640).buildAndRegister()

// Infected Water
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('infected_water_fluid') * 1000)
  .fluidOutputs(fluid('carbon_dioxide') * 96)
  .duration(1650).EUt(4250).buildAndRegister()
