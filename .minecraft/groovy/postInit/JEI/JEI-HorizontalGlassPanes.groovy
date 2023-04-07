import preinit.Array.arrayHGP


if (isLoaded("hgp")) {

    // --- Удаление рецептов
    
    for (item in arrayHGP.horizontalGlassPanes) {
        crafting.removeByOutput(item)
    }
    
    crafting.removeByOutput(item('hgp:hgppane'))
}