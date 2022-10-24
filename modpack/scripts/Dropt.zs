# Dropt

import mods.dropt.Dropt;

print("Initializing 'Dropt'...");


// Выпадение новых предметов из блоков
// Выпадение каменной пыли при ломании камня
Dropt.list("Stone")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:stone"]).addDrop(Dropt.drop().items([<gregtech:meta_dust:1599>])));
// Выпадение каменной пыли при ломании булыжника
Dropt.list("Cobblestone")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:cobblestone"]).addDrop(Dropt.drop().items([<gregtech:meta_dust:1599>])));
// Выпадение 1 нароста из незера при ломании нароста незера
Dropt.list("NetherWart")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:nether_wart:*"]).addDrop(Dropt.drop().items([<minecraft:nether_wart>])));
// Выпадение 1 палки при ломании тростника из майнкрафта
Dropt.list("Reeds")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:reeds:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
// Выпадение 1 семени пшеницы при ломании пшеницы из майнкрафта
Dropt.list("Wheat")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:wheat:*"]).addDrop(Dropt.drop().items([<minecraft:wheat_seeds>])));
// Выпадение 1 палки при ломании кактуса из майнкрафта
Dropt.list("Cactus")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:cactus:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
// Выпадение от 1 до 8 торфа из созревшей болотной земли
Dropt.list("Peat")
  .add(Dropt.rule()
  .matchBlocks(["forestry:bog_earth:3"]).addDrop(Dropt.drop().items([<forestry:peat>], Dropt.range(1, 8))));
// Выпадение 1 компоста из несозревшей болотной земли
Dropt.list("Peat1")
  .add(Dropt.rule()
  .matchBlocks(["forestry:bog_earth:0"]).addDrop(Dropt.drop().items([<forestry:fertilizer_bio>])));
Dropt.list("Peat2")
  .add(Dropt.rule()
  .matchBlocks(["forestry:bog_earth:1"]).addDrop(Dropt.drop().items([<forestry:fertilizer_bio>])));
Dropt.list("Peat3")
  .add(Dropt.rule()
  .matchBlocks(["forestry:bog_earth:2"]).addDrop(Dropt.drop().items([<forestry:fertilizer_bio>])));


print("Initialized 'Dropt'");