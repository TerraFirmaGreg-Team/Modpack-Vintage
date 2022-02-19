import mods.horsepower.Grindstone;

mods.jei.JEI.removeAndHide(<horsepower:flour>);
mods.jei.JEI.removeAndHide(<horsepower:dough>);

// GrindStone - GT ore --> GT small pile
// - Copper
Grindstone.add(<gregtech:ore_copper_0>, <ore:dustImpureCopper>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_malachite_0>, <ore:dustImpureMalachite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_tetrahedrite_0>, <ore:dustImpureTetrahedrite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_bornite_0>, <ore:dustImpureBornite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcopyrite_0>, <ore:dustImpureChalcopyrite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_chalcocite_0>, <ore:dustImpureChalcocite>.firstItem * 3, 10, false);
// - Tin
Grindstone.add(<gregtech:ore_tin_0>, <ore:dustImpureTin>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_0>, <ore:dustImpureCassiterite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_cassiterite_sand_0>, <ore:dustImpureCassiteriteSand>.firstItem * 3, 10, false);
// - Iron
Grindstone.add(<gregtech:ore_iron_0>, <ore:dustImpureIron>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_pyrite_0>, <ore:dustImpurePyrite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_yellow_limonite_0>, <ore:dustImpureYellowLimonite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_magnetite_0>, <ore:dustImpureMagnetite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_brown_limonite_0>, <ore:dustImpureBrownLimonite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_banded_iron_0>, <ore:dustImpureBandedIron>.firstItem * 3, 10, false);
// - Nickel
Grindstone.add(<gregtech:ore_nickel_0>, <ore:dustImpureNickel>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_garnierite_0>, <ore:dustImpureGarnierite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_pentlandite_0>, <ore:dustImpurePentlandite>.firstItem * 3, 10, false);
// - Lead
Grindstone.add(<gregtech:ore_galena_0>, <ore:dustImpureGalena>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_lead_0>, <ore:dustImpureLead>.firstItem * 3, 10, false);
// - Other
Grindstone.add(<gregtech:ore_gold_0>, <ore:dustImpureGold>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_silver_0>, <ore:dustImpureSilver>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_sphalerite_0>, <ore:dustImpureSphalerite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_sulfur_0>, <ore:dustImpureSulfur>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_rock_salt_0>, <ore:dustImpureRockSalt>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_graphite_0>, <ore:dustImpureGraphite>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_mica_0>, <ore:dustImpureMica>.firstItem * 3, 10, false);
Grindstone.add(<gregtech:ore_bismuth_0>, <ore:dustImpureBismuth>.firstItem * 3, 10, false);

// Other Recipes
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);