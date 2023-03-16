// #priority 98

// import crafttweaker.item.IItemStack;

// import mods.gregtech.multiblock.Builder;
// import mods.gregtech.multiblock.FactoryBlockPattern;
// import mods.gregtech.multiblock.RelativeDirection;
// import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
// import mods.gregtech.IControllerTile;
// import mods.gregtech.multiblock.CTPredicate;
// import mods.gregtech.multiblock.IBlockPattern;
// import mods.gregtech.recipe.FactoryRecipeMap;
// import mods.gregtech.recipe.RecipeMap;

// ########################################
// # Multiblock Builder
// ########################################
// # Star forge
// ########################################

// // Создание карты рецептов для звездной кузни
// global star_forge as RecipeMap = FactoryRecipeMap.start("star_forge")
//   .minInputs(1)
//   .maxInputs(12)
//   .minOutputs(1)
//   .maxOutputs(4)
//   .minFluidInputs(0)
//   .maxFluidInputs(3)
//   .minFluidOutputs(0)
//   .maxFluidOutputs(0)
//   .build();

// Builder.start("star_forge", 32002)
//   .withPattern(function(controller as IControllerTile) as IBlockPattern {
//     return FactoryBlockPattern.start()
//                 .aisle("               ", "      VVV      ", "      V V      ", "      V V      ", "      V V      ", "      V V      ", "      V V      ", "      VVV      ", "               ")
//                 .aisle("      C C      ", "     FFFFF     ", "               ", "               ", "               ", "               ", "               ", "     FFFFF     ", "      C C      ")
//                 .aisle("      C C      ", "   FF     FF   ", "               ", "               ", "               ", "               ", "               ", "   FF     FF   ", "      C C      ")
//                 .aisle("      C C      ", "  F         F  ", "     FFFFF     ", "               ", "               ", "               ", "     FFFFF     ", "  F         F  ", "      C C      ")
//                 .aisle("      C C      ", "  F         F  ", "    F XXX F    ", "      XXX      ", "      XXX      ", "      XXX      ", "    F XXX F    ", "  F         F  ", "      C C      ")
//                 .aisle("      C C      ", " F           F ", "   F X   X F   ", "     X   X     ", "     X   X     ", "     X   X     ", "   F X   X F   ", " F           F ", "      C C      ")
//                 .aisle(" CCCCCCMCCCCCC ", "CF    XXX    FC", "C  FX     XF  C", "C   X     X   C", "C   X     X   C", "C   X     X   C", "C  FX     XF  C", "CF    XXX    FC", " CCCCCCMCCCCCC ")
//                 .aisle("      MMM      ", "CF    XXX    FC", "   FX     XF   ", "    X     X    ", "    X     X    ", "    X     X    ", "   FX     XF   ", "CF    XXX    FC", "      MMM      ")
//                 .aisle(" CCCCCCMCCCCCC ", "CF    XXX    FC", "C  FX     XF  C", "C   X     X   C", "C   X     X   C", "C   X     X   C", "C  FX     XF  C", "CF    XXX    FC", " CCCCCCMCCCCCC ")
//                 .aisle("      C C      ", " F           F ", "   F X   X F   ", "     X   X     ", "     X   X     ", "     X   X     ", "   F X   X F   ", " F           F ", "      C C      ")
//                 .aisle("      C C      ", "  F         F  ", "    F XXX F    ", "      XXX      ", "      XXX      ", "      XXX      ", "    F XXX F    ", "  F         F  ", "      C C      ")
//                 .aisle("      C C      ", "  F         F  ", "     FFFFF     ", "               ", "               ", "               ", "     FFFFF     ", "  F         F  ", "      C C      ")
//                 .aisle("      C C      ", "   FF     FF   ", "               ", "               ", "               ", "               ", "               ", "   FF     FF   ", "      C C      ")
//                 .aisle("      C C      ", "     FFFFF     ", "               ", "               ", "               ", "               ", "               ", "     FFFFF     ", "      C C      ")
//                 .aisle("               ", "      CSC      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      C C      ", "      CCC      ", "               ")
//                 .where('M', CTPredicate.states(<metastate:gregtech:fusion_casing:3>))
//                 .where('C', CTPredicate.states(<metastate:gregtech:fusion_casing:4>).setMinGlobalLimited(133))
//                 .where('V', CTPredicate.states(<metastate:gregtech:fusion_casing:4>) | controller.autoAbilities())
//                 .where('X', CTPredicate.states(<metastate:gregtech:wire_coil:5>))
//                 .where('F', CTPredicate.states(<metastate:gregtech:fusion_casing>))
//                 .where('S', controller.self())
//                 .where(' ', CTPredicate.getAny())
//                 .build();
//   } as IPatternBuilderFunction)
//   .withRecipeMap(star_forge)
//   .withBaseTexture(<metastate:gregtech:fusion_casing:1>).buildAndRegister();
// // star_forge.hasMaintenanceMechanics = true;
// // star_forge.hasMufflerMechanics = false;


// // Контроллер звездной кузни
// assembly_line.recipeBuilder()
//     .inputs([
//       <ore:batteryIv> * 4,  
//       <ore:circuitIv> * 9, 
//       <metaitem:robot.arm.iv> * 14, 
//       <metaitem:tool.dataorb> * 4, 
//       <gcym:unique_casing:4> * 5, 
//       <metaitem:conveyor.module.ev> * 3, 
//       <metaitem:conveyor.module.ev> * 3, 
//       <metaitem:plateDoubleNaquadah> * 3, 
//       <metaitem:plateDoubleNaquadah> * 3])
//     .fluidInputs(<liquid:molten.titanium_carbide> * 6864, <liquid:molten.hssg> * 4432)
//     .outputs(<metaitem:multiblocktweaker:star_forge>)
//     .duration(1300).EUt(8100).buildAndRegister();
