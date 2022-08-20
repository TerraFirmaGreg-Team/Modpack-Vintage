#priority 970
/*
import crafttweaker.item.IItemStack;

import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMapBuilder;
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
# Greenhouse
########################################
var greenhouse = Builder.start("greenhouse", 32000)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
			.aisle(  "  CFCBCFC  ",  "  CWCCCWC  ",  "  CWCCCWC  ",  "  CFCCCFC  ",  "  GGGGGGG  ",  "           ", "           ")
			.aisle(  " HCCCBCCCH ",  " TDDDDDDDT ",  " T       T ",  " H       H ",  " GG     GG ",  "  GGGGGGG  ", "           ")
			.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " GG     GG ", "  GGGGGGG  ")
			.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ", "  GGGGGGG  ")
			.aisle(  "CCCCBBBCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ", "  GGGGGGG  ")
			.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ",	"  GGGGGGG  ")
			.aisle(  "CCCCCCCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " GG     GG ",	"  GGGGGGG  ")
			.aisle(  " HCCCCCCCH ",  " TDDDDDDDT ",  " T       T ",  " H       H ",  " GG     GG ",  "  GGGGGGG  ",	"           ")
			.aisle(  "  CCCCCCC  ",  "  CCCSCCC  ",  "  CCCCCCC  ",  "  CCCCCCC  ",  "  GGGGGGG  ",  "           ",	"           ")
			.where("S", controller.self())
			.where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
			.where("D", CTPredicate.states(<metastate:tfc:peat>))
			.where("C", CTPredicate.states(<metastate:gregtech:machine_casing:1>).setMinGlobalLimited(42) | controller.autoAbilities())
			.where("F", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
			.where("W", CTPredicate.states(<metastate:gregtech:turbine_casing:1>))
			.where("T", CTPredicate.states(<metastate:gregtech:wire_coil>))
			.where("H", CTPredicate.states(<metastate:gregtech:boiler_firebox_casing:1>))
			.where("B", CTPredicate.states(<metastate:gregtech:boiler_casing:1>))
			.where(" ", CTPredicate.getAny())
			.build();
  } as IPatternBuilderFunction)
    .withRecipeMap(greenhouse)
  .withBaseTexture(<metastate:gregtech:machine_casing:1>)
  .buildAndRegister();
greenhouse.hasMaintenanceMechanics = true;
greenhouse.hasMufflerMechanics = false;
*/