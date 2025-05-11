// MODS_LOADED: projectred-transmission
// --- Добавление рецептов


import classes.array.Minecraft
import classes.array.ProjectRed


// Red Alloy Wire
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(2)
  .inputs(metaitem('wireGtSingleRedAlloy') * 2)
  .fluidInputs(fluid('redstone') * 144)
  .outputs(item('projectred-transmission:wire') * 12)
  .duration(180).EUt(32).buildAndRegister()

for (int i = 0; i < ProjectRed.transmissionWires.size(); i++) {
  mods.gregtech.chemical_bath.recipeBuilder()
    .inputs(item('projectred-transmission:wire'))
    .fluidInputs(Minecraft.colorLiquid[i] * 18)
    .outputs(ProjectRed.transmissionWires[i])
    .duration(100).EUt(16).buildAndRegister()
}

// Bundled Cable
mods.gregtech.assembler.recipeBuilder()
  .circuitMeta(3)
  .inputs(item('projectred-transmission:wire') * 5)
  .inputs(ore('string') * 4)
  .outputs(item('projectred-transmission:wire', 17) * 12)
  .duration(180).EUt(32).buildAndRegister()
for (int i = 0; i < ProjectRed.bundledCable.size(); i++) {
  mods.gregtech.chemical_bath.recipeBuilder()
    .inputs(item('projectred-transmission:wire', 17))
    .fluidInputs(Minecraft.colorLiquid[i] * 18)
    .outputs(ProjectRed.bundledCable[i])
    .duration(100).EUt(16).buildAndRegister()
}
