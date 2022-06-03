#priority 980

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

########################################
# Multiblock Builder
########################################
# Saw mill
########################################
global saw_mill as RecipeMap = FactoryRecipeMap.start("saw_mill")
  .minInputs(2)
  .maxInputs(2)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(1)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 32001;
val loc = "saw_mill";

var electric_saw_mill = Builder.start(loc, id)
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
electric_saw_mill.hasMaintenanceMechanics = false;
electric_saw_mill.hasMufflerMechanics = false;

recipes.addShaped("saw_mill", <metaitem:multiblocktweaker:saw_mill>, [
    [<ore:screwSteel>, <ore:toolHeadBuzzSawSteel>, <ore:screwSteel>],
    [<metaitem:electric.motor.mv>, <metaitem:hull.mv>, <metaitem:electric.motor.mv>],
    [<ore:circuitMv>, <metaitem:conveyor.module.mv>, <ore:circuitMv>]
]);

// Electric_saw_mill logs
for i, log in TFC_Logs {
  saw_mill.recipeBuilder()
    .circuit(1)
    .inputs([log * 6])
		.fluidInputs([<liquid:water> * 1000])
    .outputs([TFC_Planks[i] * 48])
    .outputs([<metaitem:dustWood> * 12])
    .duration(300)
    .EUt(7)
    .buildAndRegister();

  saw_mill.recipeBuilder()
    .circuit(2)
    .inputs([log * 6])
		.fluidInputs([<liquid:water> * 1000])
    .outputs([<metaitem:dustWood> * 30])
    .outputs([<metaitem:dustSmallWood> * 18])
    .duration(400)
    .EUt(7)
    .buildAndRegister();
}

