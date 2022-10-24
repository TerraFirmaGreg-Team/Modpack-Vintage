# BeeAttractor

import crafttweaker.item.IItemStack;
import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IGetBaseTextureFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.IIMultiblockPart;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.MoveType;

print("Initializing 'BeeAttractor'...");

########################################
// Основные параметры механизма и название
global bee_attractor as RecipeMap = FactoryRecipeMap.start("bee_attractor")
  .minInputs(1)
  .maxInputs(1)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(1)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9504;
val loc = "bee_attractor";

var bee_attractor = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("  C  ", "  C  ", "  C  ")
      .aisle("  C  ", "     ", "  C  ")
      .aisle("CCCCC", "C G C", "CCCCC")
      .aisle("  C  ", "     ", "  C  ")
      .aisle("  C  ", "  S  ", "  C  ")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing>).setMinGlobalLimited(10) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:forestry:bee_combs_0>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(bee_attractor)
  .withBaseTexture(<metastate:gregtech:metal_casing>)
  .buildAndRegister();
bee_attractor.hasMaintenanceMechanics = false;
bee_attractor.hasMufflerMechanics = false;

recipes.addShaped("bee_attractor", <metaitem:multiblocktweaker:bee_attractor>, [
    [<ore:plateBronze>, <gregtech:meta_item_1:232>, <ore:plateBronze>],
    [<gregtech:meta_item_1:217>, <gregtech:machine:986>, <gregtech:meta_item_1:217>],
    [<ore:plateBronze>, <gregtech:meta_item_1:142>, <ore:plateBronze>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.bee_attractor.name",
    "Привлекатель пчел"
);
game.setLocalization(
    "multiblocktweaker.multiblock.bee_attractor.description",
    "Привлекатель пчел позволяет привлекать разные виды пчел"
);
game.setLocalization(
    "recipemap.bee_attractor.name",
    "Привлекатель пчел"
);


print("Initialized 'BeeAttractor'");