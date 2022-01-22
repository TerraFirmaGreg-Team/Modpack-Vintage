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
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<minecraft:gold_ingot>, 1);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<metaitem:ingotCopper>, 3);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<metaitem:ingotCobalt>, 1);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<metaitem:ingotTin>, 3);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/amethyst>, 10);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/jasper>, 10);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/sapphire>, 10);
LootTweaker.getTable("astralsorcery:chest_shrine").getPool("astralsorcery:chest_shrine").addItemEntry(<tfc:gem/topaz>, 10);

