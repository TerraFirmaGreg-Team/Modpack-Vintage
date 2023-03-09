

// --- Массивы

def removeRecipesByName = [
   "buildinggadgets:buildingtool",
   "buildinggadgets:exchangertool",
   "buildinggadgets:copypastetool",
   "buildinggadgets:destructiontool"
]

// --- Удаление рецептов

for (item in removeRecipesByName) {
   crafting.remove(item)
}
