#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

//Add Custom Flags
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:magnesium>.addFlags("generate_plate");
<material:titanium>.addFlags("generate_foil");
<material:copper>.addFlags("generate_long_rod");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");
<material:bismuth>.addOre();
<material:glowstone>.addOre(1, 1, true);