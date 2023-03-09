

// --- Массивы

def hide = [
    item('opencomputers:casecreative'),
    item('opencomputers:material', 19),
    item('opencomputers:material', 22),
    item('opencomputers:material', 25),
    item('opencomputers:component', 12),
    item('opencomputers:component', 18),
    item('opencomputers:upgrade', 32)
]

def removeAndHide = [
    // item('opencomputers:disassembler')
]

def removeRecipes = [
    // item('opencomputers:adapter'),
    // item('opencomputers:cable'),
    // item('opencomputers:capacitor'),
    // item('opencomputers:case1'),
    // item('opencomputers:case2'),
    // item('opencomputers:case3'),
    // item('opencomputers:charger'),
    // item('opencomputers:diskdrive'),
    // item('opencomputers:geolyzer'),
    // item('opencomputers:keyboard'),
    // item('opencomputers:motionsensor'),
    // item('opencomputers:powerconverter'),
    // item('opencomputers:powerdistributor'),
    // item('opencomputers:raid'),
    // item('opencomputers:material', 11),
    // item('opencomputers:material', 10),
    // item('opencomputers:material', 9),
    // item('opencomputers:material', 8),
    // item('opencomputers:material', 7),
    // item('opencomputers:material', 6),
    // item('opencomputers:component', 6),
    // item('opencomputers:wrench'),
    // item('opencomputers:upgrade', 4)
]

def removeByRecipeName = [
    // "opencomputers:adapter0",
    // "opencomputers:ca",
    // "opencomputers:material48",
    // "opencomputers:material52",
    // "opencomputers:storage126",
    // "opencomputers:storage127",
    // "opencomputers:storage128",
    // "opencomputers:storage129",
    // "opencomputers:storage130",
    // "opencomputers:card89"
]

// --- Удаление рецептов

for (item in hide) {
	mods.jei.hide(item)
}

for (item in removeAndHide) {
    mods.jei.removeAndHide(item)
}

// Удаление рецептов
for (item in removeRecipes) {
    crafting.removeByOutput(item)
}

for (item in removeByRecipeName) {
    crafting.remove(item)
}

