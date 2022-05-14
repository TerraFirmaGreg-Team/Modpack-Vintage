import crafttweaker.item.IItemStack;

import mods.horsepower.Grindstone;

// --- Removing Recipes

// GrindStone Removing
val RemoveItemsFromQuern as IItemStack[] = [
	<tfc:powder/flux> * 4,
    <minecraft:redstone> * 8,
    <tfc:powder/fertilizer> * 8,
    <minecraft:glowstone_dust> * 8
];
for item in RemoveItemsFromQuern{
    Grindstone.remove(item);
}

// --- Adding Recipes

// GrindStone - GT ore --> GT small pile
// Copper
Grindstone.add(<gregtech:ore_copper_0:*>, <metaitem:dustImpureCopper> * 3, 10, false);
Grindstone.add(<gregtech:ore_copper_1:*>, <metaitem:dustImpureCopper> * 3, 10, false);
Grindstone.add(<gregtech:ore_copper_2:*>, <metaitem:dustImpureCopper> * 3, 10, false);
Grindstone.add(<gregtech:ore_malachite_0:*>, <metaitem:dustImpureMalachite> * 3, 10, false);
Grindstone.add(<gregtech:ore_malachite_1:*>, <metaitem:dustImpureMalachite> * 3, 10, false);
Grindstone.add(<gregtech:ore_malachite_2:*>, <metaitem:dustImpureMalachite> * 3, 10, false);
Grindstone.add(<gregtech:ore_tetrahedrite_0:*>, <metaitem:dustImpureTetrahedrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_tetrahedrite_1:*>, <metaitem:dustImpureTetrahedrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_tetrahedrite_2:*>, <metaitem:dustImpureTetrahedrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_bornite_0:*>, <metaitem:dustImpureBornite> * 3, 10, false);
Grindstone.add(<gregtech:ore_bornite_1:*>, <metaitem:dustImpureBornite> * 3, 10, false);
Grindstone.add(<gregtech:ore_bornite_2:*>, <metaitem:dustImpureBornite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcopyrite_0:*>, <metaitem:dustImpureChalcopyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcopyrite_1:*>, <metaitem:dustImpureChalcopyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcopyrite_2:*>, <metaitem:dustImpureChalcopyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcocite_0:*>, <metaitem:dustImpureChalcocite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcocite_1:*>, <metaitem:dustImpureChalcocite> * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcocite_2:*>, <metaitem:dustImpureChalcocite> * 3, 10, false);
// Tin
Grindstone.add(<gregtech:ore_tin_0:*>, <metaitem:dustImpureTin> * 3, 10, false);
Grindstone.add(<gregtech:ore_tin_1:*>, <metaitem:dustImpureTin> * 3, 10, false);
Grindstone.add(<gregtech:ore_tin_2:*>, <metaitem:dustImpureTin> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_0:*>, <metaitem:dustImpureCassiterite> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_1:*>, <metaitem:dustImpureCassiterite> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_2:*>, <metaitem:dustImpureCassiterite> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_sand_0:*>, <metaitem:dustImpureCassiteriteSand> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_sand_1:*>, <metaitem:dustImpureCassiteriteSand> * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_sand_2:*>, <metaitem:dustImpureCassiteriteSand> * 3, 10, false);
// Iron
Grindstone.add(<gregtech:ore_iron_0:*>, <metaitem:dustImpureIron> * 3, 10, false);
Grindstone.add(<gregtech:ore_iron_1:*>, <metaitem:dustImpureIron> * 3, 10, false);
Grindstone.add(<gregtech:ore_iron_2:*>, <metaitem:dustImpureIron> * 3, 10, false);
Grindstone.add(<gregtech:ore_pyrite_0:*>, <metaitem:dustImpurePyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_pyrite_1:*>, <metaitem:dustImpurePyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_pyrite_2:*>, <metaitem:dustImpurePyrite> * 3, 10, false);
Grindstone.add(<gregtech:ore_yellow_limonite_0:*>, <metaitem:dustImpureYellowLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_yellow_limonite_1:*>, <metaitem:dustImpureYellowLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_yellow_limonite_2:*>, <metaitem:dustImpureYellowLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_magnetite_0:*>, <metaitem:dustImpureMagnetite> * 3, 10, false);
Grindstone.add(<gregtech:ore_magnetite_1:*>, <metaitem:dustImpureMagnetite> * 3, 10, false);
Grindstone.add(<gregtech:ore_magnetite_2:*>, <metaitem:dustImpureMagnetite> * 3, 10, false);
Grindstone.add(<gregtech:ore_brown_limonite_0:*>, <metaitem:dustImpureBrownLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_brown_limonite_1:*>, <metaitem:dustImpureBrownLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_brown_limonite_2:*>, <metaitem:dustImpureBrownLimonite> * 3, 10, false);
Grindstone.add(<gregtech:ore_banded_iron_0:*>, <metaitem:dustImpureBandedIron> * 3, 10, false);
Grindstone.add(<gregtech:ore_banded_iron_1:*>, <metaitem:dustImpureBandedIron> * 3, 10, false);
Grindstone.add(<gregtech:ore_banded_iron_2:*>, <metaitem:dustImpureBandedIron> * 3, 10, false);
// Nickel
Grindstone.add(<gregtech:ore_nickel_0:*>, <metaitem:dustImpureNickel> * 3, 10, false);
Grindstone.add(<gregtech:ore_nickel_1:*>, <metaitem:dustImpureNickel> * 3, 10, false);
Grindstone.add(<gregtech:ore_nickel_2:*>, <metaitem:dustImpureNickel> * 3, 10, false);
Grindstone.add(<gregtech:ore_garnierite_0:*>, <metaitem:dustImpureGarnierite> * 3, 10, false);
Grindstone.add(<gregtech:ore_garnierite_1:*>, <metaitem:dustImpureGarnierite> * 3, 10, false);
Grindstone.add(<gregtech:ore_garnierite_2:*>, <metaitem:dustImpureGarnierite> * 3, 10, false);
Grindstone.add(<gregtech:ore_pentlandite_0:*>, <metaitem:dustImpurePentlandite> * 3, 10, false);
Grindstone.add(<gregtech:ore_pentlandite_1:*>, <metaitem:dustImpurePentlandite> * 3, 10, false);
Grindstone.add(<gregtech:ore_pentlandite_2:*>, <metaitem:dustImpurePentlandite> * 3, 10, false);
// Galena
Grindstone.add(<gregtech:ore_galena_0:*>, <metaitem:dustImpureGalena> * 3, 10, false);
Grindstone.add(<gregtech:ore_galena_1:*>, <metaitem:dustImpureGalena> * 3, 10, false);
Grindstone.add(<gregtech:ore_galena_2:*>, <metaitem:dustImpureGalena> * 3, 10, false);
Grindstone.add(<gregtech:ore_lead_0:*>, <metaitem:dustImpureLead> * 3, 10, false);
Grindstone.add(<gregtech:ore_lead_1:*>, <metaitem:dustImpureLead> * 3, 10, false);
Grindstone.add(<gregtech:ore_lead_2:*>, <metaitem:dustImpureLead> * 3, 10, false);
// Other
Grindstone.add(<gregtech:ore_gold_0:*>, <metaitem:dustImpureGold> * 3, 10, false);
Grindstone.add(<gregtech:ore_gold_1:*>, <metaitem:dustImpureGold> * 3, 10, false);
Grindstone.add(<gregtech:ore_gold_2:*>, <metaitem:dustImpureGold> * 3, 10, false);
Grindstone.add(<gregtech:ore_silver_0:*>, <metaitem:dustImpureSilver> * 3, 10, false);
Grindstone.add(<gregtech:ore_silver_1:*>, <metaitem:dustImpureSilver> * 3, 10, false);
Grindstone.add(<gregtech:ore_silver_2:*>, <metaitem:dustImpureSilver> * 3, 10, false);
Grindstone.add(<gregtech:ore_sphalerite_0:*>, <metaitem:dustImpureSphalerite> * 3, 10, false);
Grindstone.add(<gregtech:ore_sphalerite_1:*>, <metaitem:dustImpureSphalerite> * 3, 10, false);
Grindstone.add(<gregtech:ore_sphalerite_2:*>, <metaitem:dustImpureSphalerite> * 3, 10, false);
Grindstone.add(<gregtech:ore_sulfur_0:*>, <metaitem:dustImpureSulfur> * 3, 10, false);
Grindstone.add(<gregtech:ore_sulfur_1:*>, <metaitem:dustImpureSulfur> * 3, 10, false);
Grindstone.add(<gregtech:ore_sulfur_2:*>, <metaitem:dustImpureSulfur> * 3, 10, false);
Grindstone.add(<gregtech:ore_rock_salt_0:*>, <metaitem:dustImpureRockSalt> * 3, 10, false);
Grindstone.add(<gregtech:ore_rock_salt_1:*>, <metaitem:dustImpureRockSalt> * 3, 10, false);
Grindstone.add(<gregtech:ore_rock_salt_2:*>, <metaitem:dustImpureRockSalt> * 3, 10, false);
Grindstone.add(<gregtech:ore_graphite_0:*>, <metaitem:dustImpureGraphite> * 3, 10, false);
Grindstone.add(<gregtech:ore_graphite_1:*>, <metaitem:dustImpureGraphite> * 3, 10, false);
Grindstone.add(<gregtech:ore_graphite_2:*>, <metaitem:dustImpureGraphite> * 3, 10, false);
Grindstone.add(<gregtech:ore_mica_0:*>, <metaitem:dustImpureMica> * 3, 10, false);
Grindstone.add(<gregtech:ore_mica_1:*>, <metaitem:dustImpureMica> * 3, 10, false);
Grindstone.add(<gregtech:ore_mica_2:*>, <metaitem:dustImpureMica> * 3, 10, false);
Grindstone.add(<gregtech:ore_bismuth_0:*>, <metaitem:dustImpureBismuth> * 3, 10, false);
Grindstone.add(<gregtech:ore_bismuth_1:*>, <metaitem:dustImpureBismuth> * 3, 10, false);
Grindstone.add(<gregtech:ore_bismuth_2:*>, <metaitem:dustImpureBismuth> * 3, 10, false);

// Other Recipes
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 3, 5, false);
