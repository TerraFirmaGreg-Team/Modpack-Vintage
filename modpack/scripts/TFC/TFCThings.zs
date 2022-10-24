# TFCThings

import crafttweaker.item.IItemStack;

print("Initializing 'TFCThings'...");


// Крафт золотых корон в сборщике
// Обычная
assembler.recipeBuilder()
        .circuit(1)
        .inputs(<ore:plateDoubleGold>)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(<tfcthings:crown/gold_empty>)
        .duration(25 * 20)
        .EUt(24)
        .buildAndRegister();
// C агатом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteAgate>)
        .outputs(<tfcthings:crown/gold_agate>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С аметистом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>)
        .outputs(<tfcthings:crown/gold_amethyst>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С бериллом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteBeryl>)
        .outputs(<tfcthings:crown/gold_beryl>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С алмазом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>)
        .outputs(<tfcthings:crown/gold_diamond>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С изумрудом 
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>)
        .outputs(<tfcthings:crown/gold_emerald>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С гранатом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnetRed>)
        .outputs(<tfcthings:crown/gold_garnet>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С нефритом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteJade>)
        .outputs(<tfcthings:crown/gold_jade>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С яшмой
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteJasper>)
        .outputs(<tfcthings:crown/gold_jasper>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С опалом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>)
        .outputs(<tfcthings:crown/gold_opal>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С рубином
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>)
        .outputs(<tfcthings:crown/gold_ruby>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С сапфиром
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>)
        .outputs(<tfcthings:crown/gold_sapphire>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С топазом 
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>)
        .outputs(<tfcthings:crown/gold_topaz>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С турмалином
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/gold_empty>, <ore:gemExquisiteTourmaline>)
        .outputs(<tfcthings:crown/gold_tourmaline>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();

// Крафт платиновых корон в сборщике
// Обычная
assembler.recipeBuilder()
        .circuit(1)
        .inputs(<ore:plateDoublePlatinum>)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(<tfcthings:crown/platinum_empty>)
        .duration(25 * 20)
        .EUt(24)
        .buildAndRegister();
// C агатом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteAgate>)
        .outputs(<tfcthings:crown/platinum_agate>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С аметистом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>)
        .outputs(<tfcthings:crown/platinum_amethyst>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С бериллом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteBeryl>)
        .outputs(<tfcthings:crown/platinum_beryl>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С алмазом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>)
        .outputs(<tfcthings:crown/platinum_diamond>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С изумрудом 
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>)
        .outputs(<tfcthings:crown/platinum_emerald>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С гранатом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnetRed>)
        .outputs(<tfcthings:crown/platinum_garnet>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С нефритом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteJade>)
        .outputs(<tfcthings:crown/platinum_jade>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С яшмой
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteJasper>)
        .outputs(<tfcthings:crown/platinum_jasper>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С опалом
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>)
        .outputs(<tfcthings:crown/platinum_opal>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С рубином
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>)
        .outputs(<tfcthings:crown/platinum_ruby>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С сапфиром
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>)
        .outputs(<tfcthings:crown/platinum_sapphire>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С топазом 
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>)
        .outputs(<tfcthings:crown/platinum_topaz>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();
// С турмалином
assembler.recipeBuilder()
        .inputs(<tfcthings:crown/platinum_empty>, <ore:gemExquisiteTourmaline>)
        .outputs(<tfcthings:crown/platinum_tourmaline>)
        .duration(5 * 20)
        .EUt(24)
        .buildAndRegister();

// Крафт алмазной пыли в верстаке
recipes.addShapeless(<tfcthings:diamond_grit>, 
	[<ore:craftingToolHardHammerEmptyTag>, <tfc:gem/diamond>, <tfc:gem/diamond>, <tfc:gem/diamond>, <tfc:gem/diamond>]);
recipes.addShapeless(<tfcthings:diamond_grit>, 
	[<ore:craftingToolHardHammerEmptyTag>, <tfc:gem/diamond:1>, <tfc:gem/diamond:1>]);
recipes.addShapeless(<tfcthings:diamond_grit>, 
	[<ore:craftingToolHardHammerEmptyTag>, <tfc:gem/diamond:2>]);
recipes.addShapeless(<tfcthings:diamond_grit> * 2, 
	[<ore:craftingToolHardHammerEmptyTag>, <tfc:gem/diamond:3>]);
recipes.addShapeless(<tfcthings:diamond_grit> * 4, 
	[<ore:craftingToolHardHammerEmptyTag>, <tfc:gem/diamond:4>]);


print("Initialized 'TFCThings'");