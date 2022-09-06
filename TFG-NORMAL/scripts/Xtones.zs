import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.remove(<xtones:base>);

// --- Добавление рецептов
// Базовый блок
recipes.addShaped("tfg/xtones/base", <xtones:base> * 8, [
    [<ore:slabStone>, <ore:slabStone>, null],
    [<ore:slabStone>, <ore:stone>, <ore:slabStone>],
    [null, <ore:slabStone>, <ore:slabStone>]]);

recipes.addShaped("tfg/xtones/zone", <xtones:zone> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:slabCobblestone>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/agon", <xtones:agon> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:slabStone>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/iszm", <xtones:iszm> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:stone>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/korp", <xtones:korp> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:gravel>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/kryp", <xtones:kryp> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:dirt>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/lair", <xtones:lair> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:stoneGraniteRed>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/roen", <xtones:roen> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:sand>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/vena", <xtones:vena> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:stoneGraniteBlack>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/zome", <xtones:zome> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <ore:cobblestone>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);

recipes.addShaped("tfg/xtones/zoea", <xtones:zoea> * 8, [
    [<xtones:base>, <xtones:base>, <xtones:base>],
    [<xtones:base>, <tfc:raw/diorite>, <xtones:base>],
    [<xtones:base>, <xtones:base>, <xtones:base>]]);