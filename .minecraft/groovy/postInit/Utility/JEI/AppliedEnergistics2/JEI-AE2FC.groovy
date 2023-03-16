
// --- Массивы

def RemoveAndHide = [
    item('aeadditions:certustank'),
    item('aeadditions:vibrantchamberfluid'),
    item('aeadditions:terminal.universal.wireless'),
    item('aeadditions:terminal.fluid.wireless'),
    item('aeadditions:part.base', 2)
]

def RemoveRecipe = [
   item('ae2fc:fluid_level_maintainer'),
   item('ae2fc:fluid_assembler'),
   item('ae2fc:burette'),
   item('ae2fc:ingredient_buffer'),
   item('ae2fc:large_ingredient_buffer'),
   item('ae2fc:dual_interface'),
   item('ae2fc:fluid_packet_decoder'),
   item('ae2fc:fluid_pattern_encoder'),
   item('ae2fc:fluid_discretizer'),
   item('ae2fc:part_fluid_pattern_terminal'),
   item('ae2fc:part_fluid_pattern_ex_terminal')
]


// --- Удаление рецептов

for (item in RemoveAndHide) {
    mods.jei.removeAndHide(item)
}

for (item in RemoveRecipe) {
    crafting.removeByOutput(item)
}