// OpenComputers


// --- Массивы

def removeRecipes = [
    item('opencomputers:cable'),
    item('opencomputers:material', 11),
    item('opencomputers:material', 10),
    item('opencomputers:material', 9),
    item('opencomputers:material', 8),
    item('opencomputers:material', 7),
    item('opencomputers:material', 6),
    item('opencomputers:component', 6),
    // item('opencomputers:wrench'),
    // item('opencomputers:upgrade', 4)
]

// --- Удаление рецептов

// Удаление рецептов
for (item in removeRecipes) {
    crafting.removeByOutput(item)
}

mods.jei.removeAndHide(item('opencomputers:disassembler'))