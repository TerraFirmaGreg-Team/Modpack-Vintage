import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("catwalks");

// --- Добавление рецептов

// Blowtorch
recipes.addShaped("tfg/catwalks/blowtorch", <catwalks:blowtorch>, [
    [null, <metaitem:screwSteel>, <minecraft:flint_and_steel>],
    [<ore:gtce.tool.screwdrivers>, <metaitem:stickLongSteel>, <metaitem:screwSteel>],
    [<metaitem:stickLongSteel>, <ore:gtce.tool.wrenches>, null]]);

// Раскрафты по НБТ
recipes.addShapeless("tfg/catwalks/catwalk/treated_wood", <catwalks:catwalk>.withTag({material: "treated_wood"}), [<catwalks:catwalk>.withTag({material: "custom_0"})]);
recipes.addShapeless("tfg/catwalks/catwalk/custom_0", <catwalks:catwalk>.withTag({material: "custom_0"}), [<catwalks:catwalk>.withTag({material: "treated_wood"})]);

// Classic Catwalk * 4
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameSteel>, <metaitem:screwSteel> * 2, <metaitem:stickLongSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "classic"}) * 4)
    .duration(20).EUt(7).buildAndRegister();

// Classic Catwalk * 16
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameBlackSteel>, <metaitem:screwBlackSteel> * 2, <metaitem:stickLongBlackSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "classic"}) * 16)
    .duration(40).EUt(7).buildAndRegister();

// Glass Catwalk * 4
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameSteel>, <ore:paneGlass> * 3, <metaitem:stickLongSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "glass"}) * 4)
    .duration(20).EUt(7).buildAndRegister();

// Glass Catwalk * 16
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameBlackSteel>, <ore:paneGlass> * 3, <metaitem:stickLongBlackSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "glass"}) * 16)
    .duration(40).EUt(7).buildAndRegister();

// Wood Catwalk * 4
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameTreatedWood>, <metaitem:plateTreatedWood> * 3, <metaitem:stickLongSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "treated_wood"}) * 4)
    .duration(20).EUt(7).buildAndRegister();

// Wood Catwalk * 16
assembler.recipeBuilder()
    .circuit(16)
    .inputs(<metaitem:frameTreatedWood>, <metaitem:plateTreatedWood> * 3, <metaitem:stickLongBlackSteel> * 4)
    .outputs(<catwalks:catwalk>.withTag({material: "treated_wood"}) * 16)
    .duration(40).EUt(7).buildAndRegister();

// Classic Ladder
assembler.recipeBuilder()
    .circuit(17)
    .inputs(<minecraft:ladder>, <metaitem:stickLongSteel> * 4)
    .outputs(<catwalks:ladder> * 6)
    .duration(15).EUt(7).buildAndRegister();

// Classic Support Cables * 12
assembler.recipeBuilder()
    .circuit(18)
    .inputs(<metaitem:stickLongSteel> * 3)
    .outputs(<catwalks:cable> * 12)
    .duration(25).EUt(7).buildAndRegister();

// Classic Support Cables * 32
assembler.recipeBuilder()
    .circuit(18)
    .inputs(<metaitem:stickLongBlackSteel> * 3)
    .outputs(<catwalks:cable> * 32)
    .duration(45).EUt(7).buildAndRegister();