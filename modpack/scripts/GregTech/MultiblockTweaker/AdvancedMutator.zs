# AdvancedMutator

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

print("Initializing 'AdvancedMutator'...");

########################################
// Основные параметры механизма и название
global advanced_mutator as RecipeMap = FactoryRecipeMap.start("advanced_mutator")
  .minInputs(1)
  .maxInputs(3)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(2)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9506;
val loc = "advanced_mutator";

var advanced_mutator = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CGC", "PYP", "CCC")
      .aisle("CGC", "PYP", "CCC")
      .aisle(" C ", " S ", " C ")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:6>).setMinGlobalLimited(6) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:gregtech:wire_coil:2>))
      .where("P", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
      .where("Y", CTPredicate.states(<metastate:gregtech:boiler_casing:2>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(advanced_mutator)
  .withBaseTexture(<metastate:gregtech:metal_casing:6>)
  .buildAndRegister();
advanced_mutator.hasMaintenanceMechanics = true;
advanced_mutator.hasMufflerMechanics = false;

recipes.addShaped("advanced_mutator", <metaitem:multiblocktweaker:advanced_mutator>, [
    [<gregtech:meta_item_1:190>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:190>],
    [<gregtech:meta_item_1:220>, <gregtech:machine:989>, <gregtech:meta_item_1:220>],
    [<ore:circuitEv>, <gregtech:meta_item_1:145>, <ore:circuitEv>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.advanced_mutator.name",
    "Продвинутый мутатор"
);
game.setLocalization(
    "multiblocktweaker.multiblock.advanced_mutator.description",
    "Продвинутый мутатор позволяет выводить новые виды животных и растений очень быстро. Не работает с гибридами."
);
game.setLocalization(
    "recipemap.advanced_mutator.name",
    "Продвинутый мутатор"
);


print("Initialized 'AdvancedMutator'");