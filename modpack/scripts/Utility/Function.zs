#priority 975
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Utils;


// --- Атмосферы

function GenerateGasCollectorRecipes(dimension as int, CircuitConfig as int) {
  gas_collector.recipeBuilder()
      .circuit(CircuitConfig)
      .fluidOutputs(<liquid:air>  * 10000)
      .property("dimension", dimension)
      .duration(200).EUt(256).buildAndRegister();
}

function GenerateRecipesForAir(input as string, dimension as int, EUMulti as int, CircuitConfig as int) {

  // Gas Collector
  gas_collector.recipeBuilder()
      .circuit(CircuitConfig)
      .fluidOutputs(Utils.fluid(input + "_air")  * 10000)
      .property("dimension", dimension)
      .duration(200).EUt(256 * EUMulti).buildAndRegister();

  // Vacuum Freezer
  vacuum_freezer.recipeBuilder()
      .fluidInputs(Utils.fluid(input + "_air") * 4000)
      .fluidOutputs(Utils.fluid(input + "_liquid_air")  * 4000)
      .duration(80).EUt(7680 * (EUMulti / 2)).buildAndRegister();
}

// --- Породы

function GenerateRecipesForSurfaceStones3(surface as IItemStack, sub_surface as IItemStack, stone as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

  // Поверхность --> Пыль х1
  macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

  // Подповерхность --> х2
  macerator.recipeBuilder()
      .inputs(sub_surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 7500, 150)
      .chancedOutput(output, 500, 200)
      .duration(600 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

  // Порода --> Пыль х3
  macerator.recipeBuilder()
      .inputs(stone  * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 9000, 150)
      .chancedOutput(output, 9000, 200)
      .duration(1800 * DurationMulti)
      .EUt(240  * EUMulti)
      .buildAndRegister();
}

function GenerateRecipesForSurfaceStones2(surface as IItemStack, sub_surface as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

  // Поверхность --> Пыль х1
    macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();

  // Подповерхность --> х2
  macerator.recipeBuilder()
      .inputs(sub_surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 7500, 150)
      .chancedOutput(output, 500, 200)
      .duration(600 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();
}

function GenerateRecipesForSurfaceStones1(surface as IItemStack, output as IItemStack, DurationMulti as int, EUMulti as int) {

  // Поверхность --> Пыль х1
  macerator.recipeBuilder()
      .inputs(surface * 3)
      .chancedOutput(output, 9000, 100)
      .chancedOutput(output, 500, 150)
      .chancedOutput(output, 250, 200)
      .duration(200 * DurationMulti)
      .EUt(240 * EUMulti)
      .buildAndRegister();
}