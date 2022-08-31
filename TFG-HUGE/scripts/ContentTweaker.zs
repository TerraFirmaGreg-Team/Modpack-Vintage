#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

// Rocket Parts
VanillaFactory.createItem("rocketbody_tier1").register();
VanillaFactory.createItem("rocketbody_tier2").register();
VanillaFactory.createItem("rocketbody_tier3").register();
// VanillaFactory.createItem("rocketbody_tier4").register();
// VanillaFactory.createItem("rocketbody_tier5").register();
// VanillaFactory.createItem("rocketbody_tier6").register();
// VanillaFactory.createItem("rocketbody_tier7").register();
// VanillaFactory.createItem("rocketbody_tier8").register();
// VanillaFactory.createItem("rocketbody_tier9").register();
// VanillaFactory.createItem("rocketbody_tier10").register();
// VanillaFactory.createItem("rocketbody_tier11").register();

VanillaFactory.createItem("alloyingot_tier1").register();
VanillaFactory.createItem("alloyingot_tier2").register();
VanillaFactory.createItem("alloyingot_tier3").register();
// VanillaFactory.createItem("alloyingot_tier4").register();
// VanillaFactory.createItem("alloyingot_tier5").register();
// VanillaFactory.createItem("alloyingot_tier6").register();
// VanillaFactory.createItem("alloyingot_tier7").register();
// VanillaFactory.createItem("alloyingot_tier8").register();
// VanillaFactory.createItem("alloyingot_tier9").register();
// VanillaFactory.createItem("alloyingot_tier10").register();
// VanillaFactory.createItem("alloyingot_tier11").register();

VanillaFactory.createItem("rocketcontrolcomputer_tier1").register();
VanillaFactory.createItem("rocketcontrolcomputer_tier2").register();
VanillaFactory.createItem("rocketcontrolcomputer_tier3").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier4").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier5").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier6").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier7").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier8").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier9").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier10").register();
// VanillaFactory.createItem("rocketcontrolcomputer_tier11").register();

VanillaFactory.createItem("schematic_blank").register();

VanillaFactory.createItem("lander_tier1").register();
VanillaFactory.createItem("lander_tier2").register();
VanillaFactory.createItem("lander_tier3").register();

// Knife Mold
VanillaFactory.createItem("shape_mold_knife").register();

// Sense Mold
VanillaFactory.createItem("shape_extruder_sense").register();

// TFC Wooden Bucket With Salt
var wooden_bucket_with_salt = VanillaFactory.createItem("wooden_bucket_with_salt");
wooden_bucket_with_salt.maxStackSize = 1;
wooden_bucket_with_salt.register();