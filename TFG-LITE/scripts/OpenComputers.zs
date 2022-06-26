import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveRecipes as IItemStack[] = [
<opencomputers:cable>,
<opencomputers:material:11>,
<opencomputers:material:10>,
<opencomputers:material:9>,
<opencomputers:material:8>,
<opencomputers:material:7>,
<opencomputers:material:6>,
<opencomputers:component:6>,
<opencomputers:wrench>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveRecipes{
    recipes.remove(item);
}

// --- Добавление рецептов

// Wrench
recipes.addShaped(<opencomputers:wrench>, [
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [null, <opencomputers:material:8>, null],
    [null, <minecraft:iron_ingot>, null]
]);

// Memory Tier1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:7> * 3,
        <metaitem:circuit_board.good> * 3
    ])
    .outputs([<opencomputers:component:6>])
    .duration(200).EUt(30).buildAndRegister();

// Transistor
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:boltIron> * 3,
        <minecraft:redstone>
    ])
    .outputs([<opencomputers:material:6>])
    .duration(200).EUt(30).buildAndRegister();

// Microchip Tier1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:6> * 4,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:7>])
    .duration(200).EUt(30).buildAndRegister();

// Microchip Tier2
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:6> * 8,
        <ore:circuitMv>
    ])
    .outputs([<opencomputers:material:8>])
    .duration(200).EUt(120).buildAndRegister();

// Microchip Tier3
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <opencomputers:material:6> * 16,
        <ore:circuitHv>
    ])
    .outputs([<opencomputers:material:9>])
    .duration(200).EUt(480).buildAndRegister();

// ALU
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <projectred-integration:gate:26> * 3,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:10>])
    .duration(200).EUt(30).buildAndRegister();

// CU
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:6> * 6,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:11>])
    .duration(200).EUt(30).buildAndRegister();

// Cable
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleCopper> * 8,
        <metaitem:dustEmerald>
    ])
    .outputs([<opencomputers:cable>])
    .duration(200).EUt(30).buildAndRegister();
