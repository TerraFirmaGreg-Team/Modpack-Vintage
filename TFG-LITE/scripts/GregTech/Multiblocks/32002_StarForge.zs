
import crafttweaker.item.IItemStack;

import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
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
# Star forge
########################################
var star_forge = Builder.start("star_forge", 32002)
  .withPattern(function(controller as IControllerTile) as IBlockPattern {
    return FactoryBlockPattern.start()
                .aisle("               ", "      CCC      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      CCC      ", "               ")
                .aisle("      C C      ", "     FFFFF     ", "               ", "               ", "               ", "               ", "               ", "     FFFFF     ", "      C C      ")
                .aisle("      C C      ", "   FF     FF   ", "               ", "               ", "               ", "               ", "               ", "   FF     FF   ", "      C C      ")
                .aisle("      C C      ", "  F         F  ", "     FFFFF     ", "               ", "               ", "               ", "     FFFFF     ", "  F         F  ", "      C C      ")
                .aisle("      C C      ", "  F         F  ", "    F XXX F    ", "      XXX      ", "      XXX      ", "      XXX      ", "    F XXX F    ", "  F         F  ", "      C C      ")
                .aisle("      C C      ", " F           F ", "   F X   X F   ", "     X   X     ", "     X   X     ", "     X   X     ", "   F X   X F   ", " F           F ", "      C C      ")
                .aisle(" CCCCCCMCCCCCC ", "CF    XXX    FC", "C  FX     XF  C", "C   X     X   C", "C   X     X   C", "C   X     X   C", "C  FX     XF  C", "CF    XXX    FC", " CCCCCCMCCCCCC ")
                .aisle("      MMM      ", "CF    XXX    FC", "   FX     XF   ", "    X     X    ", "    X     X    ", "    X     X    ", "   FX     XF   ", "CF    XXX    FC", "      MMM      ")
                .aisle(" CCCCCCMCCCCCC ", "CF    XXX    FC", "C  FX     XF  C", "C   X     X   C", "C   X     X   C", "C   X     X   C", "C  FX     XF  C", "CF    XXX    FC", " CCCCCCMCCCCCC ")
                .aisle("      C C      ", " F           F ", "   F X   X F   ", "     X   X     ", "     X   X     ", "     X   X     ", "   F X   X F   ", " F           F ", "      C C      ")
                .aisle("      C C      ", "  F         F  ", "    F XXX F    ", "      XXX      ", "      XXX      ", "      XXX      ", "    F XXX F    ", "  F         F  ", "      C C      ")
                .aisle("      C C      ", "  F         F  ", "     FFFFF     ", "               ", "               ", "               ", "     FFFFF     ", "  F         F  ", "      C C      ")
                .aisle("      C C      ", "   FF     FF   ", "               ", "               ", "               ", "               ", "               ", "   FF     FF   ", "      C C      ")
                .aisle("      C C      ", "     FFFFF     ", "               ", "               ", "               ", "               ", "               ", "     FFFFF     ", "      C C      ")
                .aisle("               ", "      CSC      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      CCC      ", "               ")
                .where('M', CTPredicate.states(<metastate:gregtech:fusion_casing:3>))
                .where('C', CTPredicate.states(<blockstate:htmltech:casing>) | controller.autoAbilities())
                .where('X', CTPredicate.states(<metastate:gregtech:wire_coil:5>))
                .where('F', CTPredicate.states(<metastate:gregtech:fusion_casing>))
                .where('S', controller.self())
                .where(' ', CTPredicate.getAny())
                .build();
  } as IPatternBuilderFunction)
    .withRecipeMap(RecipeMapBuilder.create("star_forge")
        .setInputs(1, 4)
        .setOutputs(1, 1)
        .setFluidInputs(2, 4)
        .setFluidOutputs(0, 0)
        .build()
    )
  .withBaseTexture(<metastate:gregtech:fusion_casing:1>)
  .buildAndRegister();
star_forge.hasMaintenanceMechanics = true;
star_forge.hasMufflerMechanics = false;

// assembly_line.recipeBuilder()
//     .inputs(
//       <ore:batteryIv> * 4,  
//       <ore:circuitIv> * 9, 
//       <metaitem:robot.arm.iv> * 14, 
//       <metaitem:tool.dataorb> * 4, 
//       <gcym:unique_casing:4> * 5, 
//       <metaitem:conveyor.module.ev> * 3, 
//       <metaitem:conveyor.module.ev> * 3, 
//       <ore:plateDoubleNaquadah> * 3, 
//       <ore:plateDoubleNaquadah> * 3)
//     .fluidInputs(
//       <liquid:molten.titanium_carbide> * 6864, 
//       <liquid:molten.hssg> * 4432)
//     .outputs(<metaitem:multiblocktweaker:star_forge>)
//     .duration(1300).EUt(8100).buildAndRegister();
// Шлем
// star_forge.recipeMap.recipeBuilder()
//       .inputs(<metaitem:qts.chestplate>)
//       .fluidInputs([<liquid:fresh_water> * 1000])
//       .outputs(<powersuits:powerarmor_head>)
//       .duration(20000)
//       .EUt(122880)
//       .buildAndRegister();
// // Кираса
// star_forge.recipeMap.recipeBuilder()
//     .inputs(<metaitem:qts.chestplate>, <galaxyspace:space_suit_chest:200>, <galacticraftplanets:orion_drive> * 2)
//     .fluidInputs([<liquid:fresh_water> * 1000])
//     .outputs(<powersuits:powerarmor_torso>)
//     .duration(29300)
//     .EUt(8700)
//     .buildAndRegister();

// // Поножи
// star_forge.recipeMap.recipeBuilder()
//     .inputs(<metaitem:qts.leggings>, <galaxyspace:space_suit_legs:200>, <galacticraftplanets:orion_drive> * 4)
//     .fluidInputs([<liquid:fresh_water> * 1000])
//     .outputs(<powersuits:powerarmor_legs>)
//     .duration(29300)
//     .EUt(8700)
//     .buildAndRegister();

// // Ботинки
// star_forge.recipeMap.recipeBuilder()
//     .inputs(<metaitem:qts.boots>, <galaxyspace:space_suit_feet:200>, <galacticraftplanets:orion_drive> * 4)
//     .fluidInputs([<liquid:fresh_water> * 1000])
//     .outputs(<powersuits:powerarmor_feet>)
//     .duration(29300)
//     .EUt(8700)
//     .buildAndRegister();

// // Рука
// star_forge.recipeMap.recipeBuilder()
//     .inputs(<metaitem:tool.drill.iv>, <galaxyspace:space_suit_feet:200>, <galacticraftplanets:orion_drive> * 4)
//     .fluidInputs([<liquid:fresh_water> * 1000])
//     .outputs(<powersuits:power_fist>)
//     .duration(29300)
//     .EUt(8700)
//     .buildAndRegister();