

if (isLoaded("xtones")) {

    // --- Добавление рецептов

    // Базовый блок
    crafting.addShaped("tfg/xtones/base", item('xtones:base') * 8, [
        [ore('slabStone'), ore('slabStone'), null],
        [ore('slabStone'), ore('stone'), ore('slabStone')],
        [null, ore('slabStone'), ore('slabStone')]])

    crafting.addShaped("tfg/xtones/zone", item('xtones:zone') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('slabCobblestone'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/agon", item('xtones:agon') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('slabStone'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/iszm", item('xtones:iszm') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('stone'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/korp", item('xtones:korp') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('gravel'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/kryp", item('xtones:kryp') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('dirt'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/lair", item('xtones:lair') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('stoneGraniteRed'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/roen", item('xtones:roen') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('sand'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/vena", item('xtones:vena') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('stoneGraniteBlack'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/zome", item('xtones:zome') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('cobblestone'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    crafting.addShaped("tfg/xtones/zoea", item('xtones:zoea') * 8, [
        [item('xtones:base'), item('xtones:base'), item('xtones:base')],
        [item('xtones:base'), ore('stoneBrick'), item('xtones:base')],
        [item('xtones:base'), item('xtones:base'), item('xtones:base')]])

    // Лампа
    assembler.recipeBuilder()
    	.circuitMeta(25)
    	.inputs(
    		metaitem('wireGtSingleRedAlloy'), 
    		ore('paneGlass'),
            ore('plateIron'),
    		metaitem('stickSteel') * 4, 
    		item('projectred-core:resource_item:500') * 2)
    	.outputs(item('xtones:lamp_flat'))
    	.duration(180).EUt(32).buildAndRegister()
}