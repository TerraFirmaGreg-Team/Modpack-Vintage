import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//Astral Sorcery
//Удаление вещей
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:emerald");
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:diamond");
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:iron_ingot");
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:gold_ingot");
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").removeEntry("minecraft:glowstone_dust");

//Добавление вещей
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:metal/ingot/gold>, 4);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<gregtech:meta_item_1:10228>, 3);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<gregtech:meta_item_1:10017>, 5);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<gregtech:meta_item_1:10008>, 2);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/amethyst>, 1);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/jasper>, 1);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/sapphire>, 1);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/topaz>, 1);

