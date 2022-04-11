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
# Greenhouse
########################################
global greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
    .minInputs(2)
    .maxInputs(3)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(1)
    .maxFluidInputs(1)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .build();

val id = 32000;
val loc = "greenhouse";

var electric_greenhouse = Builder.start(loc)
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
      .where(" ", CTPredicate.getAir())
      .build();
  } as IPatternBuilderFunction)
  .withRecipeMap(greenhouse)
  .withBaseTexture(<metastate:gregtech:machine_casing:1>)
  .buildAndRegister();
electric_greenhouse.hasMaintenanceMechanics = true;
electric_greenhouse.hasMufflerMechanics = false;

recipes.addShaped("greenhouse", <metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]]);


// Greenhouse logs
for i, sapling in TFC_Saplings {
    greenhouse.recipeBuilder()
        .circuit(1)
        .inputs([sapling])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([TFC_Logs[i] * 16])
        .outputs([sapling.withAmount(3)])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .inputs([sapling])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([TFC_Logs[i] * 16])
        .outputs([TFC_Logs[i] * 16])
        .outputs([sapling.withAmount(4)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

// Greenhouse Rubber
greenhouse.recipeBuilder()
    .circuit(1)
    .inputs(<tfc:wood/sapling/rubber_fig>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/rubber_fig> * 4])
    .outputs([<tfc:wood/sapling/rubber_fig>])
    .outputs([<metaitem:rubber_drop>])
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:wood/sapling/rubber_fig>)
    .inputs(<metaitem:fertilizer> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/rubber_fig> * 8])
    .outputs([<tfc:wood/sapling/rubber_fig> * 2])
    .outputs([<metaitem:rubber_drop> * 4])
    .duration(900)
    .EUt(60)
    .buildAndRegister();

greenhouse.recipeBuilder()
    .circuit(1)
    .inputs(<tfc:wood/sapling/hevea>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/hevea> * 4])
    .outputs([<tfc:wood/sapling/hevea>])
    .outputs([<metaitem:rubber_drop>])
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:wood/sapling/hevea>)
    .inputs(<metaitem:fertilizer> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/hevea> * 8])
    .outputs([<tfc:wood/sapling/hevea> * 2])
    .outputs([<metaitem:rubber_drop> * 4])
    .duration(900)
    .EUt(60)
    .buildAndRegister();


// Greenhouse Plants
for i, seed in All_Seeds {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable([seed])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i]])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable([seed])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i].withAmount(All_Plants[i].amount * 2)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

