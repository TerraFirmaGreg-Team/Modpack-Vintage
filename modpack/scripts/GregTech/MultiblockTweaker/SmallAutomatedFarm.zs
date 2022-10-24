# SmallAutomatedFarm

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

print("Initializing 'SmallAutomatedFarm'...");

########################################
// Основные параметры механизма и название
global small_automated_farm as RecipeMap = FactoryRecipeMap.start("small_automated_farm")
  .minInputs(1)
  .maxInputs(3)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(2)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9502;
val loc = "small_automated_farm";

var small_automated_farm = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("CCCCC", "CPPPC", "CPPPC", "CCCCC")
      .aisle("CGGGC", "P   P", "P   P", "CPPPC")
      .aisle("CGGGC", "P   P", "P   P", "CPPPC")
      .aisle("CCCCC", "CCSCC", "CPPPC", "CCCCC")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:4>).setMinGlobalLimited(10) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:tfc:peat>))
      .where("P", CTPredicate.states(<metastate:minecraft:glass>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(small_automated_farm)
  .withBaseTexture(<metastate:gregtech:metal_casing:4>)
  .buildAndRegister();
small_automated_farm.hasMaintenanceMechanics = true;
small_automated_farm.hasMufflerMechanics = false;

recipes.addShaped("small_automated_farm", <metaitem:multiblocktweaker:small_automated_farm>, [
    [<gregtech:meta_item_1:143>, <gregtech:meta_item_1:233>, <gregtech:meta_item_1:143>],
    [<gregtech:meta_item_1:188>, <gregtech:machine:987>, <gregtech:meta_item_1:188>],
    [<ore:cableGtSingleCopper>, <gregtech:meta_item_1:218>, <ore:cableGtSingleCopper>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.small_automated_farm.name",
    "Маленькая автоматизированная ферма"
);
game.setLocalization(
    "multiblocktweaker.multiblock.small_automated_farm.description",
    "Маленькая автоматизированная ферма позволяет выращивать все сельскохозяйственные культуры"
);
game.setLocalization(
    "recipemap.small_automated_farm.name",
    "Маленькая автоматизированная ферма"
);


print("Initialized 'SmallAutomatedFarm'");