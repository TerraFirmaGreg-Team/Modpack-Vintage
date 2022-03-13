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
# Multiblock Builder
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

var electric_saw_mill = Builder.start("saw_mill", 32001)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CFC", "C C", "C C")
      .aisle("CFC", "G G", "CCC")
      .aisle("CFC", "G G", "C C")
      .aisle("CFC", "G G", "CCC")
      .aisle("CFC", "S C", "C C")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:1>)
          | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
          | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
          | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
          | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
      )
      .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
      .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_20:4>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(<recipemap:saw_mill>)
  .withBaseTexture(<metastate:gregtech:machine_casing:1>)
  .buildAndRegister();
electric_saw_mill.hasMaintenanceMechanics = true;
electric_saw_mill.hasMufflerMechanics = true;

recipes.addShaped(<metaitem:multiblocktweaker:saw_mill>, [
    [<ore:screwSteel>, <ore:toolHeadBuzzSawSteel>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:electric.motor.mv>, <gregtech:metal_casing:4>, <metaitem:electric.motor.mv>],
    [<ore:circuitGood>, <metaitem:conveyor.module.mv>, <ore:circuitGood>]
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

// Electric_saw_mill Rubber
saw_mill.recipeBuilder()
  .circuit(1)
  .inputs([<tfc:wood/log/hevea> * 6])
  .fluidInputs([<liquid:water> * 1000])
  .outputs([<gregtech:planks> * 48])
  .outputs([<metaitem:dustWood> * 12])
  .duration(300)
  .EUt(7)
  .buildAndRegister();

saw_mill.recipeBuilder()
  .circuit(2)
  .inputs([<tfc:wood/log/hevea> * 6])
  .fluidInputs([<liquid:water> * 1000])
  .outputs([<metaitem:dustWood> * 30])
  .outputs([<metaitem:dustSmallWood> * 18])
  .duration(400)
  .EUt(7)
  .buildAndRegister();

saw_mill.recipeBuilder()
  .circuit(1)
  .inputs([<tfc:wood/log/rubber_fig> * 6])
  .fluidInputs([<liquid:water> * 1000])
  .outputs([<gregtech:planks> * 48])
  .outputs([<metaitem:dustWood> * 12])
  .duration(300)
  .EUt(7)
  .buildAndRegister();

saw_mill.recipeBuilder()
  .circuit(2)
  .inputs([<tfc:wood/log/rubber_fig> * 6])
  .fluidInputs([<liquid:water> * 1000])
  .outputs([<metaitem:dustWood> * 30])
  .outputs([<metaitem:dustSmallWood> * 18])
  .duration(400)
  .EUt(7)
  .buildAndRegister();
