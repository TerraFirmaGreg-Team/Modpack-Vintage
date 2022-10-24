# InterdimensionalMiner

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

print("Initializing 'InterdimensionalMiner'...");

########################################
// Основные параметры механизма и название
global interdimensional_miner as RecipeMap = FactoryRecipeMap.start("interdimensional_miner")
  .minInputs(1)
  .maxInputs(1)
  .minOutputs(1)
  .maxOutputs(16)
  .minFluidInputs(1)
  .maxFluidInputs(2)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9501;
val loc = "interdimensional_miner";

var interdimensional_miner = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CCCCCCC", "CCCCCCC", "CGGCGGC", "CGGCGGC", "       ", "       ")
      .aisle("C     C", "C     C", "G  C  G", "G     G", "       ", "       ")
      .aisle("C  C  C", "C  C  C", "G  C  G", "G  C  G", "   C   ", "       ")
      .aisle("C CPC C", "C CPC C", "CCCPCCC", "C CPC C", "  CPC  ", "   C   ")
      .aisle("C  C  C", "C  C  C", "G  C  G", "G  C  G", "   C   ", "       ")
      .aisle("C     C", "C     C", "G  C  G", "G     G", "       ", "       ")
      .aisle("CCCSCCC", "CCCCCCC", "CGGCGGC", "CGGCGGC", "       ", "       ")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:10>).setMinGlobalLimited(20) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:gregtech:meta_block_frame_127:10>))
      .where("P", CTPredicate.states(<metastate:gregtech:turbine_casing:4>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(interdimensional_miner)
  .withBaseTexture(<metastate:gregtech:metal_casing:10>)
  .buildAndRegister();
interdimensional_miner.hasMaintenanceMechanics = true;
interdimensional_miner.hasMufflerMechanics = true;

assembly_line.recipeBuilder()
    .inputs(<ore:circuitZpm> * 8, <gregtech:meta_item_1:163> * 4, <gregtech:meta_item_1:238> * 2, <gregtech:meta_item_1:208>, <gregtech:machine:1027>, <gregtech:machine:1034>)
    .fluidInputs([<liquid:soldering_alloy> * 1296, <liquid:naquadah_alloy> * 720])
    .outputs(<metaitem:multiblocktweaker:interdimensional_miner>)
    .duration(95 * 20)
    .EUt(55000)
    .buildAndRegister();

// Название
game.setLocalization(
    "multiblocktweaker.machine.interdimensional_miner.name",
    "Межпространственный шахтер"
);
game.setLocalization(
    "multiblocktweaker.multiblock.interdimensional_miner.description",
    "Межпространственный шахтер позволяет добывать ресурсы в параллельном измерении"
);
game.setLocalization(
    "recipemap.interdimensional_miner.name",
    "Межпространственный шахтер"
);


print("Initialized 'InterdimensionalMiner'");