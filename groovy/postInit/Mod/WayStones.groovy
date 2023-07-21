

if (isLoaded("waystones")) {

    // Добавление рецептов
    
    // Пьедестал
    crafting.addShaped('tfg/waystones/waystones', item('waystones:waystone'),
        [[null, ore('stoneBrick'), null],
         [ore('stoneBrick'), item('waystones:warp_stone'), ore('stoneBrick')],
         [item('minecraft:obsidian'), item('minecraft:obsidian'), item('minecraft:obsidian')]])
    
    // Варп камушек
    crafting.addShaped('tfg/waystones/warp_stone', item('waystones:warp_stone'),
        [[metaitem('gemFlawedLapis'), ore('plateIronAny'), metaitem('gemFlawedLapis')],
         [ore('plateIronAny'), ore('gemExquisite'), ore('plateIronAny')],
         [metaitem('gemFlawedLapis'), ore('plateIronAny'), metaitem('gemFlawedLapis')]])
}