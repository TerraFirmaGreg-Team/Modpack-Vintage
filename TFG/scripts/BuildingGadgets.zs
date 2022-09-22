import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("buildinggadgets");


// --- Добавление рецептов

// Building Gadget
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <metaitem:dustIron>,
        <metaitem:circuit_board.basic>,
        <ore:circuitUlv>,
        <ore:batteryLv>])
    .outputs([<buildinggadgets:buildingtool>])
    .duration(100).EUt(7).buildAndRegister();
// Exchanging Gadget
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:stickRedAlloy> * 3,
        <metaitem:screwRedAlloy> * 3,
        <metaitem:dustObsidian>,
        <metaitem:circuit_board.basic> * 2,
        <ore:circuitUlv>,
        <ore:batteryLv>])
    .outputs([<buildinggadgets:exchangertool>])
    .duration(100).EUt(7).buildAndRegister();

// Copy-Paste Gadget
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <metaitem:dustGold>,
        <metaitem:circuit_board.basic>,
        <ore:circuitUlv>,
        <ore:batteryLv>])
    .outputs([<buildinggadgets:copypastetool>])
    .duration(100).EUt(7).buildAndRegister();

// Template Manager
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <metaitem:plateSteel> * 3,
        <metaitem:plateGold> * 2,
        <ore:circuitLv>,
        <gregtech:machine_casing:1>])
    .outputs([<buildinggadgets:templatemanager>])
    .duration(100).EUt(7).buildAndRegister();

// Destruction Gadget
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <ore:circuitMv>,
        <metaitem:circuit_board.basic>,
        <ore:circuitUlv>,
        <ore:batteryLv>])
    .outputs([<buildinggadgets:destructiontool>])
    .duration(100).EUt(7).buildAndRegister();

// Construction Paste
fluid_solidifier.recipeBuilder()
    .notConsumable(<metaitem:shape.mold.ball>)
    .fluidInputs([<liquid:construction_foam> * 100])
    .outputs(<buildinggadgets:constructionpaste>)
    .duration(128)
    .EUt(4)
    .buildAndRegister();

// Paste Container
recipes.addShaped("constructionpastecontainer", <buildinggadgets:constructionpastecontainer>, [
    [<ore:screwIron>, <ore:ringIron>, <ore:screwIron>],
    [<ore:plateIron>, <metaitem:fluid_cell>, <ore:plateIron>],
    [<ore:screwIron>, <ore:ringIron>, <ore:screwIron>]]);

// Paste Container T2
recipes.addShaped("constructionpastecontainert2", <buildinggadgets:constructionpastecontainert2>, [
    [<ore:screwRoseGold>, <ore:ringGold>, <ore:screwRoseGold>],
    [<ore:plateRoseGold>, <buildinggadgets:constructionpastecontainer>, <ore:plateRoseGold>],
    [<ore:screwRoseGold>, <ore:ringGold>, <ore:screwRoseGold>]]);

// Paste Container T3
recipes.addShaped("constructionpastecontainert3", <buildinggadgets:constructionpastecontainert3>, [
    [<ore:screwDiamond>, <ore:ringTitanium>, <ore:screwDiamond>],
    [<ore:plateTitanium>, <buildinggadgets:constructionpastecontainert2>, <ore:plateTitanium>],
    [<ore:screwDiamond>, <ore:ringTitanium>, <ore:screwDiamond>]]);
