

if (isLoaded("buildinggadgets")) {

    // --- Добавление рецептов

    // Building Gadget
    assembler.recipeBuilder()
        .circuitMeta(1)
        .inputs(
            metaitem('stickRedAlloy') * 2,
            metaitem('screwRedAlloy') * 2,
            metaitem('dustIron'),
            metaitem('circuit_board.basic'),
            ore('circuitUlv'),
            ore('batteryLv'))
        .outputs(item('buildinggadgets:buildingtool'))
        .duration(100).EUt(7).buildAndRegister();
    // Exchanging Gadget
    assembler.recipeBuilder()
        .circuitMeta(3)
        .inputs(
            metaitem('stickRedAlloy') * 3,
            metaitem('screwRedAlloy') * 3,
            metaitem('dustObsidian'),
            metaitem('circuit_board.basic') * 2,
            ore('circuitUlv'),
            ore('batteryLv'))
        .outputs(item('buildinggadgets:exchangertool'))
        .duration(100).EUt(7).buildAndRegister();

    // Copy-Paste Gadget
    assembler.recipeBuilder()
        .circuitMeta(2)
        .inputs([
            metaitem('stickRedAlloy') * 2,
            metaitem('screwRedAlloy') * 2,
            metaitem('dustGold'),
            metaitem('circuit_board.basic'),
            ore('circuitUlv'),
            ore('batteryLv')])
        .outputs(item('buildinggadgets:copypastetool'))
        .duration(100).EUt(7).buildAndRegister();

    // Template Manager
    assembler.recipeBuilder()
        .circuitMeta(4)
        .inputs(
            metaitem('plateSteel') * 3,
            metaitem('plateGold') * 2,
            ore('circuitLv'),
            item('gregtech:machine_casing:1'))
        .outputs(item('buildinggadgets:templatemanager'))
        .duration(100).EUt(7).buildAndRegister();

    // Destruction Gadget
    assembler.recipeBuilder()
        .circuitMeta(4)
        .inputs(
            metaitem('stickRedAlloy') * 2,
            metaitem('screwRedAlloy') * 2,
            ore('circuitMv'),
            metaitem('circuit_board.basic'),
            ore('circuitUlv'),
            ore('batteryLv'))
        .outputs(item('buildinggadgets:destructiontool'))
        .duration(100).EUt(7).buildAndRegister();

    // Construction Paste
    fluid_solidifier.recipeBuilder()
        .notConsumable(metaitem('shape.mold.ball'))
        .fluidInputs(fluid('construction_foam') * 100)
        .outputs(item('buildinggadgets:constructionpaste'))
        .duration(128).EUt(4).buildAndRegister();

    // Paste Container
    crafting.addShaped("constructionpastecontainer", item('buildinggadgets:constructionpastecontainer'), [
        [metaitem('screwIron'), metaitem('ringIron'), metaitem('screwIron')],
        [metaitem('plateIron'), metaitem('fluid_cell'), metaitem('plateIron')],
        [metaitem('screwIron'), metaitem('ringIron'), metaitem('screwIron')]]);

    // Paste Container T2
    crafting.addShaped("constructionpastecontainert2", item('buildinggadgets:constructionpastecontainert2'), [
        [metaitem('screwRoseGold'), metaitem('ringGold'), metaitem('screwRoseGold')],
        [metaitem('plateRoseGold'), item('buildinggadgets:constructionpastecontainer'), metaitem('plateRoseGold')],
        [metaitem('screwRoseGold'), metaitem('ringGold'), metaitem('screwRoseGold')]]);

    // Paste Container T3
    crafting.addShaped("constructionpastecontainert3", item('buildinggadgets:constructionpastecontainert3'), [
        [metaitem('screwDiamond'), metaitem('ringTitanium'), metaitem('screwDiamond')],
        [metaitem('plateTitanium'), item('buildinggadgets:constructionpastecontainert2'), metaitem('plateTitanium')],
        [metaitem('screwDiamond'), metaitem('ringTitanium'), metaitem('screwDiamond')]]);
}