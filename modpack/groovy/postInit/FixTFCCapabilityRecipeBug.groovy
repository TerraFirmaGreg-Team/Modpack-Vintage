// --- Массивы

def StainedHardenedClay = [
        item('minecraft:stained_hardened_clay', 15),
        item('minecraft:stained_hardened_clay', 3),
        item('minecraft:stained_hardened_clay', 9),
        item('minecraft:stained_hardened_clay', 11),
        item('minecraft:stained_hardened_clay', 6),
        item('minecraft:stained_hardened_clay', 13),
        item('minecraft:stained_hardened_clay', 8),
        item('minecraft:stained_hardened_clay', 7),
        item('minecraft:stained_hardened_clay', 0),
        item('minecraft:stained_hardened_clay', 14),
        item('minecraft:stained_hardened_clay', 2),
        item('minecraft:stained_hardened_clay', 12),
        item('minecraft:stained_hardened_clay', 1),
        item('minecraft:stained_hardened_clay', 10),
        item('minecraft:stained_hardened_clay', 5),
        item('minecraft:stained_hardened_clay', 4),
]

def AllMinecraftFluid = [
        fluid('dye_black'),
        fluid('dye_light_blue'),
        fluid('dye_cyan'),
        fluid('dye_blue'),
        fluid('dye_pink'),
        fluid('dye_green'),
        fluid('dye_light_gray'),
        fluid('dye_gray'),
        fluid('dye_white'),
        fluid('dye_red'),
        fluid('dye_magenta'),
        fluid('dye_brown'),
        fluid('dye_orange'),
        fluid('dye_purple'),
        fluid('dye_lime'),
        fluid('dye_yellow')
]

// Terracotta Block
mods.gregtech.macerator.recipeBuilder()
        .inputs(item('minecraft:hardened_clay'))
        .outputs(metaitem('dustClay') * 4)
        .duration(15).EUt(3).buildAndRegister()

for (int i = 0; i < StainedHardenedClay.size(); i++) {
    mods.gregtech.chemical_bath.recipeBuilder()
            .inputs(item('minecraft:hardened_clay'))
            .fluidInputs(AllMinecraftFluid[i] * 18)
            .outputs(StainedHardenedClay[i])
            .duration(400).EUt(3).buildAndRegister()
}

// All Colored Terracotta
for (i in StainedHardenedClay) {
    mods.gregtech.macerator.recipeBuilder()
            .inputs(i)
            .outputs(metaitem('dustClay') * 4)
            .duration(15).EUt(3).buildAndRegister()

    mods.gregtech.chemical_bath.recipeBuilder()
            .inputs(i)
            .fluidInputs(fluid('chlorine') * 50)
            .outputs(item('minecraft:hardened_clay'))
            .duration(400).EUt(3).buildAndRegister()
}

// Clay Block
mods.gregtech.macerator.recipeBuilder()
        .inputs(item('minecraft:clay'))
        .outputs(metaitem('dustClay') * 4)
        .duration(15).EUt(2).buildAndRegister()

mods.gregtech.extractor.recipeBuilder()
        .inputs(item('minecraft:clay'))
        .outputs(item('minecraft:clay_ball') * 4)
        .duration(300).EUt(2).buildAndRegister()




