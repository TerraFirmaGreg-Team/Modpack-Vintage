import crafttweaker.item.IItemStack;

// --- Recipes Removing

// Удаление рецептов
val RemoveWorkbenchRecipes as IItemStack[] = [
	<catwalks:blowtorch>,
    <catwalks:catwalk>,
    <catwalks:catwalk>.withTag({material: "glass"}),
    <catwalks:catwalk>.withTag({material: "treated_wood"}),
    <catwalks:ladder>,
    <catwalks:cable>
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Recipes Adding

// Blowtorch
recipes.addShaped(<catwalks:blowtorch>, [
    [null, <ore:screwSteel>, <minecraft:flint_and_steel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongSteel>, <ore:screwSteel>],
    [<ore:stickLongSteel>, <ore:gtce.tool.wrenches>, null]
]);

// Classic Catwalk
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:frameGtSteel>,
        <ore:screwSteel> * 2,
        <ore:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "classic"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:frameGtDarkSteel>,
        <ore:screwDarkSteel> * 2,
        <ore:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "classic"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<catwalks:catwalk>.withTag({material: "classic"})])
    .notConsumable([<minecraft:record_cat>])
    .outputs([<catwalks:catwalk>.withTag({material: "nyanwalk"})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Glass Catwalk
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:frameGtSteel>,
        <ore:paneGlass> * 3,
        <ore:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "glass"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:frameGtDarkSteel>,
        <ore:paneGlass> * 3,
        <ore:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "glass"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Wood Catwalk
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:frameGtTreatedWood>,
        <ore:plateTreatedWood> * 3,
        <ore:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "treated_wood"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:frameGtTreatedWood>,
        <ore:plateTreatedWood> * 3,
        <ore:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "treated_wood"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
recipes.addShapeless(<catwalks:catwalk>.withTag({material: "treated_wood"}), [<catwalks:catwalk>.withTag({material: "custom_0"})]);
recipes.addShapeless(<catwalks:catwalk>.withTag({material: "custom_0"}), [<catwalks:catwalk>.withTag({material: "treated_wood"})]);

// Classic Ladder
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:ladder>,
        <ore:stickLongSteel> * 4
    ])
    .outputs([<catwalks:ladder> * 6])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Classic Support Cables
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<ore:stickLongSteel> * 3])
    .outputs([<catwalks:cable> * 6])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([<ore:stickLongDarkSteel> * 3])
    .outputs([<catwalks:cable> * 32])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
