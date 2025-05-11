// MODS_LOADED: extraplanets
// --- Добавление рецептов

import classes.Function


// --- Атмосфера
Function.GenerateRecipesForAir("mercury", -13, 4, 6, 4)
// Air
mods.gregtech.centrifuge.recipeBuilder()
  .fluidInputs(fluid('mercury_air') * 10000)
  .fluidOutputs(fluid('helium') * 120)
  .fluidOutputs(fluid('sodium_persulfate') * 240)
  .fluidOutputs(fluid('oxygen') * 1200)
  .fluidOutputs(fluid('hydrogen') * 240)
  .duration(1600).EUt(8192).buildAndRegister()
// Liquid Air
mods.gregtech.distillation_tower.recipeBuilder()
  .fluidInputs(fluid('mercury_liquid_air') * 300000)
  .fluidOutputs(fluid('helium') * 6700)
  .fluidOutputs(fluid('sodium_persulfate') * 32000)
  .fluidOutputs(fluid('oxygen') * 9000)
  .fluidOutputs(fluid('hydrogen') * 7000)
  .fluidOutputs(fluid('argon') * 500)
  .duration(2000).EUt(30720).buildAndRegister()

// --- Породы
// Поверхности
Function.GenerateRecipesForSurfaceStones3(item('extraplanets:mercury'), item('extraplanets:mercury:1'), item('extraplanets:mercury:2'), metaitem('dustStoneMercury'), 4, 4)

// Пыль меркурия
mods.gregtech.centrifuge.recipeBuilder()
  .inputs(metaitem('dustStoneMercury') * 2)
  .chancedOutput(metaitem('dustTinyVanadiumMagnetite'), 4500, 1200)
  .chancedOutput(metaitem('dustTinyIron'), 4000, 500)
  .fluidOutputs(fluid('nitrogen') * 1, fluid('carbon_dioxide') * 2)
  .duration(1500).EUt(1536).buildAndRegister()
