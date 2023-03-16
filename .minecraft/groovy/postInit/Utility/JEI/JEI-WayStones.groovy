

if (isLoaded("waystones")) {

    // Массивы
    def removeRecipe = [
        item('waystones:warp_stone'),
        item('waystones:waystone'),
    ]


    // Удаление рецептов
    
    for (item in removeRecipe) {
       crafting.removeByOutput(item)
    }

}