# AdvancedOreWashingMachine

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

print("Initializing 'AdvancedOreWashingMachine'...");

########################################
// Основные параметры механизма и название
global advanced_orewashing_machine as RecipeMap = FactoryRecipeMap.start("advanced_orewashing_machine")
  .minInputs(1)
  .maxInputs(1)
  .minOutputs(1)
  .maxOutputs(16)
  .minFluidInputs(1)
  .maxFluidInputs(1)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9507;
val loc = "advanced_orewashing_machine";

var advanced_orewashing_machine = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CCC", "CCC", "GCG", "GGG", " G ")
      .aisle("CCC", "GCG", "GCG", "PYP", "CYC")
      .aisle("GCG", "GCG", "PYP", "CYC", " C ")
      .aisle("GCG", "PYP", "CYC", " C ", "   ")
      .aisle("GCG", "CYC", " C ", "   ", "   ")
      .aisle("CCC", "CSC", " C ", "   ", "   ")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:4>).setMinGlobalLimited(16) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:gregtech:boiler_casing:1>))
      .where("P", CTPredicate.states(<metastate:gregtech:transparent_casing>))
      .where("Y", CTPredicate.states(<metastate:minecraft:water>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(advanced_orewashing_machine)
  .withBaseTexture(<metastate:gregtech:metal_casing:4>)
  .buildAndRegister();
advanced_orewashing_machine.hasMaintenanceMechanics = true;
advanced_orewashing_machine.hasMufflerMechanics = false;

recipes.addShaped("advanced_orewashing_machine", <metaitem:multiblocktweaker:advanced_orewashing_machine>, [
    [<gregtech:meta_item_1:188>, <gregtech:meta_item_1:233>, <gregtech:meta_item_1:188>],
    [<gregtech:meta_item_1:158>, <gregtech:machine:987>, <gregtech:meta_item_1:158>],
    [<gregtech:meta_item_1:173>, <gregtech:meta_item_1:143>, <gregtech:meta_item_1:173>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.advanced_orewashing_machine.name",
    "Продвинутая рудопромывочная машина"
);
game.setLocalization(
    "multiblocktweaker.multiblock.advanced_orewashing_machine.description",
    "Продвинутая рудопромывочная машина является улучшенной версией рудопромывочного желоба. Позволяет получать различные полезные ископаемые из песка и гравия."
);
game.setLocalization(
    "recipemap.advanced_orewashing_machine.name",
    "Продвинутая рудопромывочная машина"
);


print("Initialized 'AdvancedOreWashingMachine'");