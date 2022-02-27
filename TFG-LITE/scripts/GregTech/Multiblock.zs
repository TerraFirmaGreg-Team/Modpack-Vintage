#priority 997

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;


global greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
        .minInputs(2)
        .maxInputs(3)
        .minOutputs(1)
        .maxOutputs(4)
        .maxFluidInputs(1)
        .maxFluidOutputs(0)
        .build();

val id = 32000;
val loc = "greenhouse";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
						.aisle(
                "  CFCBCFC  ",
                "  CWCCCWC  ",
                "  CWCCCWC  ",
                "  CCCCCCC  ",
                "  GGGGGGG  ",
                "           ",
								"           ")
						.aisle(
                " HCCCBCCCH ",
                " TDDDDDDDT ",
                " T#######T ",
                " H#######H ",
                " GG#####GG ",
                "  GGGGGGG  ",
								"           ")
						.aisle(
                "CCCCCBCCCCC",
                "CDDDDDDDDDC",
                "C#########C",
                "C#########C",
                "G#########G",
                " GG#####GG ",
								"  GGGGGGG  ")
						.aisle(
                "CCCCCBCCCCC",
                "CDDDDDDDDDC",
                "C#########C",
                "C#########C",
                "G#########G",
                " G#######G ",
								"  GGGGGGG  ")
						.aisle(
                "CCCCBBBCCCC",
                "CDDDDDDDDDC",
                "C#########C",
                "C#########C",
                "G#########G",
                " G#######G ",
								"  GGGGGGG  ")
						.aisle(
                "CCCCCBCCCCC",
                "CDDDDDDDDDC",
                "C#########C",
                "C#########C",
                "G#########G",
                " G#######G ",
								"  GGGGGGG  ")
						.aisle(
                "CCCCCCCCCCC",
                "CDDDDDDDDDC",
                "C#########C",
                "C#########C",
                "G#########G",
                " GG#####GG ",
								"  GGGGGGG  ")	
						.aisle(
                " HCCCCCCCH ",
                " TDDDDDDDT ",
                " T#######T ",
                " H#######H ",
                " GG#####GG ",
                "  GGGGGGG  ",
								"           ")
						.aisle(
                "  CCCCCCC  ",
                "  CCCSCCC  ",
                "  CCCCCCC  ",
                "  CCCCCCC  ",
                "  GGGGGGG  ",
                "           ",
								"           ")																															

            .where("S", controller.self())
            .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("D", CTPredicate.states(<metastate:tfc:peat>))
            .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:0>).setMinGlobalLimited(42) | controller.autoAbilities())
						.where("H", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
						.where("T", CTPredicate.states(<metastate:gregtech:turbine_casing:1>))
						.where("W", CTPredicate.states(<metastate:gregtech:wire_coil>))
						.where("F", CTPredicate.states(<metastate:gregtech:boiler_firebox_casing:1>))
						.where("B", CTPredicate.states(<metastate:gregtech:boiler_casing:1>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(greenhouse)
    .withBaseTexture(<metastate:gregtech:machine_casing:0>)
    .buildAndRegister();

recipes.addShaped("greenhouse", <metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]]);