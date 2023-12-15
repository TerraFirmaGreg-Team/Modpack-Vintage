

if (isLoaded("xtones")) {

    // --- Массивы
    
    def removeRecipe = [
        item('xtones:base'),
        item('xtones:lamp_flat'),
    ]
    
    // --- Удаление рецептов
    
    for (item in removeRecipe) {
       crafting.removeByOutput(item)
    }
}