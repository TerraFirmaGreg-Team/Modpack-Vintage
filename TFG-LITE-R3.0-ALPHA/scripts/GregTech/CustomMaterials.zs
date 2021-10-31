#loader gregtech

import mods.gregtech.material.Material;

//Colored Colors
<material:salt_water>.setMaterialRGB(0x1F5099);

//Custom
<material:magnesium>.addFlags("generate_plate");
<material:copper>.addFlags("generate_long_rod");
<material:pig_iron>.addFlags("generate_gear");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:bismuth>.addFlags("generate_long_rod", "generate_plate", "generate_gear");
<material:platinum>.addFlags("generate_long_rod");