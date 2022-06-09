#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

// Rocket Parts
VanillaFactory.createItem("rocketparts_tier7").register();
VanillaFactory.createItem("rocketparts_tier8").register();
VanillaFactory.createItem("rocketparts_tier9").register();
VanillaFactory.createItem("rocketparts_tier10").register();

// Knife Mold
VanillaFactory.createItem("shape_mold_knife").register();

// Sense Mold
VanillaFactory.createItem("shape_extruder_sense").register();

// TFC Wooden Bucket With Salt
var wooden_bucket_with_salt = VanillaFactory.createItem("wooden_bucket_with_salt");
wooden_bucket_with_salt.maxStackSize = 1;
wooden_bucket_with_salt.register();