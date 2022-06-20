import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

// Удаление ванильной рыбы из дропа при рыбалке
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#0");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#1");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#2");

// Добавление тфк рыбы в дроп, при рыбалке
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").addItemEntry(<tfc:food/fish>, 100);
