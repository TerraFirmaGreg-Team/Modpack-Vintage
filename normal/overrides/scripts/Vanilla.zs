import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;



// Регистрация металла
ItemRegistry.registerItemMetal(<minecraft:iron_bars>, "WROUGHT_IRON", 18, true);
ItemRegistry.registerItemMetal(<minecraft:bucket>, "BLUE_STEEL", 144, true);

// Register Food Stats for TFC
ItemRegistry.registerFood(<minecraft:mushroom_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 0, 0);
ItemRegistry.registerFood(<minecraft:rabbit_stew>, 4, 20, 2.0, 2.0, 0, 3.0, 0, 1.0, 0);
ItemRegistry.registerFood(<minecraft:beetroot_soup>, 4, 22, 2.0, 2.0, 0, 3.0, 0, 0, 0);

// Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);
