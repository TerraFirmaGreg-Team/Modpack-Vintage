# Immersive Reservoir

import mods.immersivepetroleum.Reservoir;

print("Initializing 'Immersive Reservoir'...");


//Резервуары с жидкостями для добычи
// Format: name, fluid_name, min_mb_fluid, max_mb_fluid, mb_per_tick_replenish, weight, [dim_blacklist], [dim_whitelist], [biome_dict_blacklist], [biome_dict_whitelist]
Reservoir.registerReservoir("Соленая вода", <liquid:salt_water>, 5000000, 50000000, 10, 10, [1], [0], [], []);
Reservoir.registerReservoir("Легкая нефть", <liquid:oil_light>, 2500000, 25000000, 6, 15, [1], [0], [], []);
Reservoir.registerReservoir("Средняя нефть", <liquid:oil_medium>, 2500000, 25000000, 6, 15, [1], [0], [], []);
Reservoir.registerReservoir("Тяжелая нефть", <liquid:oil_heavy>, 2500000, 25000000, 6, 15, [1], [0], [], []);
Reservoir.registerReservoir("Природный газ", <liquid:natural_gas>, 2500000, 25000000, 10, 30, [1], [0], [], []);


print("Initialized 'Immersive Reservoir'");