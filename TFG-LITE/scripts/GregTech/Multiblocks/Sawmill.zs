#priority 970

/*
import crafttweaker.item.IItemStack;

import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMapBuilder;
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

########################################
# Multiblock Builder
########################################
# Saw Mill
########################################
var saw_mill = Builder.start("saw_mill", 32001)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CFC", "C C", "C C")
      .aisle("CFC", "G G", "CCC")
      .aisle("CFC", "W W", "C C")
      .aisle("CFC", "G G", "CSC")
      .aisle("CFC", "C C", "C C")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:1>).setMinGlobalLimited(18) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
      .where("W", CTPredicate.states(<metastate:gregtech:wire_coil>))
      .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_20:4>))
      .where(" ", CTPredicate.getAny())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(saw_mill)
  .withBaseTexture(<metastate:gregtech:machine_casing:1>)
  .buildAndRegister();
saw_mill.hasMaintenanceMechanics = false;
saw_mill.hasMufflerMechanics = true;
*/


