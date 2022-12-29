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
    [<metaitem:screwIron>, <metaitem:ringIron>, <metaitem:screwIron>],
    [<metaitem:plateIron>, <metaitem:fluid_cell>, <metaitem:plateIron>],
    [<metaitem:screwIron>, <metaitem:ringIron>, <metaitem:screwIron>]]);

// Paste Container T2
recipes.addShaped("constructionpastecontainert2", <buildinggadgets:constructionpastecontainert2>, [
    [<metaitem:screwRoseGold>, <metaitem:ringGold>, <metaitem:screwRoseGold>],
    [<metaitem:plateRoseGold>, <buildinggadgets:constructionpastecontainer>, <metaitem:plateRoseGold>],
    [<metaitem:screwRoseGold>, <metaitem:ringGold>, <metaitem:screwRoseGold>]]);

// Paste Container T3
recipes.addShaped("constructionpastecontainert3", <buildinggadgets:constructionpastecontainert3>, [
    [<metaitem:screwDiamond>, <metaitem:ringTitanium>, <metaitem:screwDiamond>],
    [<metaitem:plateTitanium>, <buildinggadgets:constructionpastecontainert2>, <metaitem:plateTitanium>],
    [<metaitem:screwDiamond>, <metaitem:ringTitanium>, <metaitem:screwDiamond>]]);
