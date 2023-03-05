

// --- Массивы

def removeRecipe = [
   item('buildinggadgets:buildingtool').withNbt([blockstate: [Name: "minecraft:air"]]),
   item('buildinggadgets:exchangertool').withNbt([blockstate: [Name: "minecraft:air"]]),
   item('buildinggadgets:copypastetool').withNbt([mode: "Copy"]),
   item('buildinggadgets:templatemanager'),
   item('buildinggadgets:destructiontool').withNbt([overlay: (byte) 1, fuzzy: (byte) 1]),
   item('buildinggadgets:constructionpastecontainer'),
   item('buildinggadgets:constructionpastecontainert2'),
   item('buildinggadgets:constructionpastecontainert3')
]

// --- Удаление рецептов

for (item in removeRecipe) {
	crafting.removeByOutput(item)
}
