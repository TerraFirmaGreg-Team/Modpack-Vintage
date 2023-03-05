import postInit.Utility.Array.ItemArray


// --- Удаление рецептов

for (item in ItemArray.horizontalGlassPanesArray) {
    crafting.removeByOutput(item)
}

crafting.removeByOutput(item('hgp:hgppane'))
