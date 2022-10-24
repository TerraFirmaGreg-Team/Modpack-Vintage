# LargeAdvancedApiary

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

print("Initializing 'LargeAdvancedApiary'...");

########################################
// Основные параметры механизма и название
global large_advanced_apiary as RecipeMap = FactoryRecipeMap.start("large_advanced_apiary")
  .minInputs(1)
  .maxInputs(2)
  .minOutputs(1)
  .maxOutputs(9)
  .minFluidInputs(1)
  .maxFluidInputs(2)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9505;
val loc = "large_advanced_apiary";

var large_advanced_apiary = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CGC", "CPC", "CPC", "CCC")
      .aisle("GCG", "PCP", "PCP", "CCC")
      .aisle("CCC", "CSC", "CCC", "CCC")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:9>).setMinGlobalLimited(9) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:gregtech:wire_coil>))
      .where("P", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(large_advanced_apiary)
  .withBaseTexture(<metastate:gregtech:metal_casing:9>)
  .buildAndRegister();
large_advanced_apiary.hasMaintenanceMechanics = true;
large_advanced_apiary.hasMufflerMechanics = false;

recipes.addShaped("large_advanced_apiary", <metaitem:multiblocktweaker:large_advanced_apiary>, [
    [<gregtech:meta_item_1:234>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:234>],
    [<gregtech:meta_item_1:144>, <gregtech:machine:988>, <gregtech:meta_item_1:144>],
    [<ore:circuitHv>, <gregtech:meta_item_1:159>, <ore:circuitHv>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.large_advanced_apiary.name",
    "Большая продвинутая пасека"
);
game.setLocalization(
    "multiblocktweaker.multiblock.large_advanced_apiary.description",
    "Большая продвинутая пасека позволяет использовать пчел в любых условиях. В данной пасеке не могут работать гибриды пчел."
);
game.setLocalization(
    "recipemap.large_advanced_apiary.name",
    "Большая продвинутая пасека"
);


print("Initialized 'LargeAdvancedApiary'");