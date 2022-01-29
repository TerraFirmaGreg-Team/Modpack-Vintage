import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//Astral Sorcery
//Удаление вещей
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#0");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#1");
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").removeEntry("minecraft:fish#2");

//Добавление вещей
LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main").addItemEntry(<tfc:food/fish>, 100);
