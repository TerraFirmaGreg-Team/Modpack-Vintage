import classes.array.HGP


if (isLoaded("hgp")) {

    // --- Удаление рецептов
    
    for (item in HGP.horizontalGlassPanes) {
        crafting.removeByOutput(item)
    }
    
    crafting.removeByOutput(item('hgp:hgppane'))
}