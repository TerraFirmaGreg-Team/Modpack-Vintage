#loader gregtech

#priority 990

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.StoneType;

// --- Custom material settings
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:red_steel>.addFlags("generate_long_rod");
<material:blue_steel>.addFlags("generate_long_rod");
<material:black_steel>.addFlags("generate_long_rod", "generate_dense");
<material:magnesium>.addFlags("generate_plate");
<material:titanium>.addFlags("generate_foil", "generate_dense");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:glowstone>.addOre(1, 1, true);
<material:copper>.addFlags("generate_long_rod", "generate_dense");
<material:copper>.addTools(7, 1, 85);
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");
<material:bismuth>.addOre();
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:steel>.addFlags("generate_dense");
<material:iron>.addFlags("generate_dense");
<material:tin>.addFlags("generate_dense");
<material:aluminium>.addFlags("generate_dense");
<material:bronze>.addFlags("generate_dense");
<material:osmiridium>.addFlags("generate_dense");
<material:hsss>.addFlags("generate_dense");
<material:stainless_steel>.addFlags("generate_dense");
<material:platinum>.addFlags("generate_dense");

// --- Fix toolSpeed and toolDurability
for material in MaterialRegistry.getAllMaterials()
{
    if (material.hasTools())
    {
        material.setToolStats(material.toolSpeed * 2, material.toolAttackDamage, material.toolDurability * 7);
    }
}