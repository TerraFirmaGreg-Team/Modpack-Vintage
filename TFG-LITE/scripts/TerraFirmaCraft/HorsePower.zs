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
Grindstone.add(<metaitem:oreChunkCopper>, <metaitem:dustImpureCopper> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkMalachite>, <metaitem:dustImpureMalachite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkTetrahedrite>, <metaitem:dustImpureTetrahedrite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkBornite>, <metaitem:dustImpureBornite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkChalcopyrite>, <metaitem:dustImpureChalcopyrite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkChalcocite>, <metaitem:dustImpureChalcocite> * 3, 10, false);
// Tin
Grindstone.add(<metaitem:oreChunkTin>, <metaitem:dustImpureTin> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkCassiterite>, <metaitem:dustImpureCassiterite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkCassiteriteSand>, <metaitem:dustImpureCassiteriteSand> * 3, 10, false);
// Iron
Grindstone.add(<metaitem:oreChunkIron>, <metaitem:dustImpureIron> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkPyrite>, <metaitem:dustImpurePyrite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkYellowLimonite>, <metaitem:dustImpureYellowLimonite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkMagnetite>, <metaitem:dustImpureMagnetite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkBrownLimonite>, <metaitem:dustImpureBrownLimonite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkBandedIron>, <metaitem:dustImpureBandedIron> * 3, 10, false);
// Nickel
Grindstone.add(<metaitem:oreChunkNickel>, <metaitem:dustImpureNickel> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkGarnierite>, <metaitem:dustImpureGarnierite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkPentlandite>, <metaitem:dustImpurePentlandite> * 3, 10, false);
// Galena
Grindstone.add(<metaitem:oreChunkGalena>, <metaitem:dustImpureGalena> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkLead>, <metaitem:dustImpureLead> * 3, 10, false);
// Other
Grindstone.add(<metaitem:oreChunkGold>, <metaitem:dustImpureGold> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkSilver>, <metaitem:dustImpureSilver> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkSphalerite>, <metaitem:dustImpureSphalerite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkSulfur>, <metaitem:dustImpureSulfur> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkRockSalt>, <metaitem:dustImpureRockSalt> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkGraphite>, <metaitem:dustImpureGraphite> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkMica>, <metaitem:dustImpureMica> * 3, 10, false);
Grindstone.add(<metaitem:oreChunkBismuth>, <metaitem:dustImpureBismuth> * 3, 10, false);

// Other Recipes
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 3, 5, false);
