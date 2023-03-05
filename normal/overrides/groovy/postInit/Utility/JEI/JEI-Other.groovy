
// Categories
def hideCategory = [
    "minecraft.anvil",
    "appliedenergistics2.inscriber",
    "tfcflorae.casting",
    "ftbquests.quests",
    "mpestle",
    "galacticraft.buggy",
    "galacticraft.oxygencompressor",
    "galacticraft.ingotcompressor",
    "galacticraft.circuitMetas",
    "galacticraft.circuitMetas",
    "galacticraft.refinery",
    "galacticraft.gas_liquefier",
    "galacticraft.methaneSynthesizer",
    "galacticraft.astroMiner",
    "galacticraft.cargoRocket",
    "galacticraft.rocketT1",
    "galacticraft.rocketT2",
    "galacticraft.rocketT3",
    "extraplanets.rocketT4",
    "extraplanets.rocketT5",
    "extraplanets.rocketT6",
    "extraplanets.rocketT7",
    "extraplanets.rocketT8",
    "extraplanets.rocketT9",
    "extraplanets.rocketT10",
    "extraplanets.rocketT10Electric",
    "extraplanets.marsRover",
    "extraplanets.venusRover",
    "extraplanets.blockSmasher",
    "extraplanets.solarEvaporationChamber",
    "extraplanets.chemicalInjector",
    "extraplanets.crystallizer",
    "extraplanets.purifier",
    "extraplanets.densifier",
    "planetprogression.satellite.rocket",
    "planetprogression.satellite.builder",
    "tfc.rock_layer",
    "tfc.vein"
]

for(name in hideCategory) {
    mods.jei.hideCategory(name)
}

// Скрытие предметов и удаление рецептов верстака

// CatWalks
mods.jei.removeAndHide(item('catwalks:stair'))

// BuildingGadgets
mods.jei.removeAndHide(item('buildinggadgets:constructionpastecontainercreative'))