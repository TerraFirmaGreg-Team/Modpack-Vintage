
// Categories
def hideCategory = 
[
    'minecraft.anvil',
    'appliedenergistics2.inscriber',
    'tfcflorae.casting',
    'ftbquests.quests',
    'mpestle',
    'galacticraft.buggy',
    'galacticraft.oxygencompressor',
    'galacticraft.ingotcompressor',
    'galacticraft.circuits',
    'galacticraft.refinery',
    'galacticraft.gas_liquefier',
    'galacticraft.methaneSynthesizer',
    'galacticraft.astroMiner',
    'galacticraft.cargoRocket',
    'galacticraft.rocketT1',
    'galacticraft.rocketT2',
    'galacticraft.rocketT3',
    'extraplanets.rocketT4',
    'extraplanets.rocketT5',
    'extraplanets.rocketT6',
    'extraplanets.rocketT7',
    'extraplanets.rocketT8',
    'extraplanets.rocketT9',
    'extraplanets.rocketT10',
    'extraplanets.rocketT10Electric',
    'extraplanets.marsRover',
    'extraplanets.venusRover',
    'extraplanets.blockSmasher',
    'extraplanets.solarEvaporationChamber',
    'extraplanets.chemicalInjector',
    'extraplanets.crystallizer',
    'extraplanets.purifier',
    'extraplanets.densifier',
    'tfc.rock_layer',
    'tfc.vein'
]

for(name in hideCategory) {
    mods.jei.hideCategory(name);
}

// Скрытие предметов и удаление рецептов верстака

// CatWalks
mods.jei.removeAndHide(item('catwalks:stair'));

// OpenComputers
mods.jei.removeAndHide(item('opencomputers:disassembler'));

// FTB
def FTB = 
[
    item('ftbquests:chest'),
    item('ftbquests:barrier'),
    item('ftbquests:detector:1'),
    item('ftbquests:detector'),
    item('ftbquests:reward_collector'),
    item('ftbquests:loot_crate_opener'),
    item('ftbquests:loot_crate_storage'),
    item('itemfilters:filter')
]

for (item in FTB) {
   mods.jei.removeAndHide(item);
}

def TheOneProbe = 
[
    item('theoneprobe:creativeprobe'),
    item('theoneprobe:probenote'),
    item('theoneprobe:diamond_helmet_probe'),
    item('theoneprobe:gold_helmet_probe'),
    item('theoneprobe:iron_helmet_probe')
]

for (item in TheOneProbe) {
   mods.jei.removeAndHide(item);
}

def MicroblocksCBE = 
[
    item('microblockcbe:microblock:1'),
    item('microblockcbe:saw_stone'),
    item('microblockcbe:saw_iron'),
    item('microblockcbe:saw_diamond'),
    item('microblockcbe:stone_rod')
]

for (item in MicroblocksCBE) {
   mods.jei.removeAndHide(item);
}

// BuildingGadgets
mods.jei.removeAndHide(item('buildinggadgets:constructionpastecontainercreative'));