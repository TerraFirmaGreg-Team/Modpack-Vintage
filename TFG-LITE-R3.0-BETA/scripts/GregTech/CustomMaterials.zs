#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

//Add Custom Flags
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:magnesium>.addFlags("generate_plate");
<material:copper>.addFlags("generate_long_rod");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");

/*
var kaolinite = MaterialBuilder(30000, "kaolinite")
    .dust().ore()
    .color(0xF5EBEB)
    .iconSet("metallic")
    .components([<material:aluminium> * 2, <material:silicon> * 2, <material:hydrogen> * 4, <material:oxygen> * 9])
    .addOreByproducts(<material:clay>, <material:clay>, <material:silicon_dioxide>)
    .build();*/