// MODS_LOADED: projectred-illumination
// --- Добавление рецептов

import classes.array.Minecraft
import classes.array.ProjectRed

for (int i = 0; i < ProjectRed.illuminars.size(); i++) {
  // Illuminar dusts
  mods.gregtech.mixer.recipeBuilder()
    .circuitMeta(24)
    .inputs(item('minecraft:glowstone_dust'))
    .fluidInputs(Minecraft.colorLiquid[i] * 18)
    .outputs(ProjectRed.illuminars[i])
    .duration(20).EUt(7).buildAndRegister()
  // Deactivated Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(12)
    .inputs(
      metaitem('wireGtSingleRedAlloy'),
      ore('paneGlass') * 6,
      metaitem('stickSteel') * 12,
      ProjectRed.illuminars[i] * 2)
    .outputs(ProjectRed.deLamps[i])
    .duration(180).EUt(32).buildAndRegister()
  // Button Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(14)
    .inputs(
      ore('buttonStone'),
      ProjectRed.illuminars[i] * 2)
    .outputs(ProjectRed.buttonLamps[i])
    .duration(180).EUt(32).buildAndRegister()
  // All Deactivated Lantern Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(16)
    .inputs(
      metaitem('wireGtSingleRedAlloy'),
      ore('paneGlass') * 2,
      metaitem('stickSteel') * 3,
      metaitem('plateIron') * 4,
      ProjectRed.illuminars[i])
    .outputs(ProjectRed.deLanternLamps[i])
    .duration(180).EUt(32).buildAndRegister()
  // Deactivated Fixture Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(18)
    .inputs(
      item('projectred-core:resource_item:1'),
      metaitem('stickSteel') * 6,
      metaitem('plateIron') * 4,
      ore('paneGlass') * 5,
      ProjectRed.illuminars[i] * 2)
    .outputs(ProjectRed.deFixtureLamps[i])
    .duration(180).EUt(32).buildAndRegister()
  // Deactivated Fallout Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(20)
    .inputs(
      item('projectred-core:resource_item:1'),
      metaitem('stickSteel') * 6,
      metaitem('plateIron') * 2,
      item('galacticraftcore:grating') * 6,
      ProjectRed.illuminars[i] * 2)
    .outputs(ProjectRed.deFalloutLamps[i])
    .duration(180).EUt(32).buildAndRegister()

  // Activated Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(13)
    .inputs(
      ProjectRed.deLamps[i],
      item('minecraft:redstone_torch'))
    .outputs(ProjectRed.aLamps[i])
    .duration(16).EUt(2).buildAndRegister()

  // Feedback Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(15)
    .inputs(
      item('minecraft:redstone_torch'),
      ProjectRed.buttonLamps[i] * 2)
    .outputs(ProjectRed.feedbackLamps[i])
    .duration(180).EUt(32).buildAndRegister()

  // Activated Lantern Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(17)
    .inputs(
      ProjectRed.deLanternLamps[i],
      item('minecraft:redstone_torch'))
    .outputs(ProjectRed.aLanternLamps[i])
    .duration(16).EUt(2).buildAndRegister()

  // Activated Fixture Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(19)
    .inputs(
      ProjectRed.deFixtureLamps[i],
      item('minecraft:redstone_torch'))
    .outputs(ProjectRed.aFixtureLamps[i])
    .duration(16).EUt(2).buildAndRegister()

  // Activated Fallout Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(21)
    .inputs(
      ProjectRed.deFalloutLamps[i],
      item('minecraft:redstone_torch'))
    .outputs(ProjectRed.aFalloutLamps[i])
    .duration(16).EUt(2).buildAndRegister()


  // Activated Cage Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(23)
    .inputs(
      ProjectRed.deCageLamps[i],
      item('minecraft:redstone_torch'))
    .outputs(ProjectRed.aCageLamps[i])
    .duration(16).EUt(2).buildAndRegister()


  // Deactivated Cage Lamps
  mods.gregtech.assembler.recipeBuilder()
    .circuitMeta(22)
    .inputs(
      item('projectred-core:resource_item:1'),
      metaitem('stickSteel') * 2,
      item('galacticraftcore:grating') * 4,
      ProjectRed.illuminars[i])
    .outputs(ProjectRed.deCageLamps[i])
    .duration(180).EUt(32).buildAndRegister()
}

