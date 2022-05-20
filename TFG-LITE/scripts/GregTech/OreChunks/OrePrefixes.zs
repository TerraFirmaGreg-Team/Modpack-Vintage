#loader gregtech

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;

val oreChunk as OrePrefix = OrePrefix.registerOrePrefix("oreChunk", 1, "oreChunk", 1);

oreChunk.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasOre();
} as IMaterialPredicate);

oreChunk.createMaterialItem();