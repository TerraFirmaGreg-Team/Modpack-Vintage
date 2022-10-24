# LargeAutomatedFarm

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

print("Initializing 'LargeAutomatedFarm'...");

########################################
// Основные параметры механизма и название
global large_automated_farm as RecipeMap = FactoryRecipeMap.start("large_automated_farm")
  .minInputs(1)
  .maxInputs(3)
  .minOutputs(1)
  .maxOutputs(4)
  .minFluidInputs(1)
  .maxFluidInputs(2)
  .minFluidOutputs(0)
  .maxFluidOutputs(0)
  .build();

val id = 9503;
val loc = "large_automated_farm";

var large_automated_farm = Builder.start(loc, id)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
      .aisle("  CCCCC  ", "  CPPPC  ", "  CPPPC  ", "  CPPPC  ", "  CPPPC  ", "  CPPPC  ", "  CCCCC  ")
      .aisle(" CGGGGGC ", " C     C ", " C     C ", " C     C ", " C     C ", " C     C ", " CCPPPCC ")
      .aisle("CGGGGGGGC", "C       C", "C       C", "C       C", "C       C", "C       C", "CCPPPPPCC")
      .aisle("CGGGGGGGC", "P       P", "P       P", "P       P", "P       P", "P       P", "CPPPPPPPC")
      .aisle("CGGGGGGGC", "P       P", "P       P", "P       P", "P       P", "P       P", "CPPPPPPPC")
      .aisle("CGGGGGGGC", "P       P", "P       P", "P       P", "P       P", "P       P", "CPPPPPPPC")
      .aisle("CGGGGGGGC", "C       C", "C       C", "C       C", "C       C", "C       C", "CCPPPPPCC")
      .aisle(" CGGGGGC ", " C     C ", " C     C ", " C     C ", " C     C ", " C     C ", " CCPPPCC ")
      .aisle("  CCCCC  ", "  CCSCC  ", "  CPCPC  ", "  CPPPC  ", "  CPPPC  ", "  CPPPC  ", "  CCCCC  ")
      .where("S", controller.self())
      .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:5>).setMinGlobalLimited(30) | controller.autoAbilities())
      .where("G", CTPredicate.states(<metastate:tfc:peat>))
      .where("P", CTPredicate.states(<metastate:minecraft:glass>))
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(large_automated_farm)
  .withBaseTexture(<metastate:gregtech:metal_casing:5>)
  .buildAndRegister();
large_automated_farm.hasMaintenanceMechanics = true;
large_automated_farm.hasMufflerMechanics = false;

recipes.addShaped("large_automated_farm", <metaitem:multiblocktweaker:large_automated_farm>, [
    [<gregtech:meta_item_1:249>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:249>],
    [<gregtech:meta_item_1:189>, <gregtech:machine:988>, <gregtech:meta_item_1:189>],
    [<ore:cableGtSingleGold>, <gregtech:meta_item_1:219>, <ore:cableGtSingleGold>]
]);

// Название
game.setLocalization(
    "multiblocktweaker.machine.large_automated_farm.name",
    "Большая автоматизированная ферма"
);
game.setLocalization(
    "multiblocktweaker.multiblock.large_automated_farm.description",
    "Большая автоматизированная ферма позволяет выращивать все сельскохозяйственные культуры"
);
game.setLocalization(
    "recipemap.large_automated_farm.name",
    "Большая автоматизированная ферма"
);


print("Initialized 'LargeAutomatedFarm'");