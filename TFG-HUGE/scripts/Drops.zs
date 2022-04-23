import mods.dropt.Dropt;

// Urns TODO
Dropt.list("Urn_disables").add(Dropt.rule()
  .matchBlocks(["tfcflorae:storage/urn_loot"])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop()));

// Исправление выпадения луж
Dropt.list("Puddles_Fix").add(Dropt.rule()
  .matchDrops([<puddles:puddle>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop()));

// Руда угля GT -> Уголь Гем
Dropt.list("GT_Coal_To_TFC_Coal_0").add(Dropt.rule()
  .matchBlocks(["gregtech:ore_coal_0"])
  .matchDrops([<gregtech:ore_coal_0:*>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop().items([<minecraft:coal>])));

// Руда угля GT -> Уголь Гем
Dropt.list("GT_Coal_To_TFC_Coal_1").add(Dropt.rule()
  .matchBlocks(["gregtech:ore_coal_1"])
  .matchDrops([<gregtech:ore_coal_1:*>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop().items([<minecraft:coal>])));

// Руда угля GT -> Уголь Гем
Dropt.list("GT_Coal_To_TFC_Coal_2").add(Dropt.rule()
  .matchBlocks(["gregtech:ore_coal_2"])
  .matchDrops([<gregtech:ore_coal_2:*>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop().items([<minecraft:coal>])));

// Морской лед
Dropt.list("Sea_Ice").add(Dropt.rule()
  .matchBlocks(["tfc:sea_ice"])
  .matchDrops([<tfc:sea_ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:sea_ice_shard>])));

// Обычный лед
Dropt.list("Sea_Ice").add(Dropt.rule()
  .matchBlocks(["minecraft:ice"])
  .matchDrops([<minecraft:ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:ice_shard>])));

// Плотный лед
Dropt.list("Sea_Ice").add(Dropt.rule()
  .matchBlocks(["minecraft:packed_ice"])
  .matchDrops([<minecraft:packed_ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:packed_ice_shard>])));

// Исправление GC
Dropt.list("Cobble").add(Dropt.rule()
  .matchDrops([<minecraft:cobblestone>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop().items([<tfc:cobble/basalt>])));
Dropt.list("Dirt")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dirt"]).addDrop(Dropt.drop().items([<tfc:dirt/basalt>])));
Dropt.list("Gravel")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:gravel"]).addDrop(Dropt.drop().items([<tfc:gravel/basalt>])));
Dropt.list("Chest")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:chest:*"]).addDrop(Dropt.drop().items([<tfc:wood/chest/oak>])));
Dropt.list("Spruce_Wood_Planks")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:planks:1"]).addDrop(Dropt.drop().items([<tfc:wood/planks/spruce>])));
Dropt.list("Oak_Log")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:log"]).addDrop(Dropt.drop().items([<tfc:wood/log/oak>])));
Dropt.list("Dark_Oak_Fence")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dark_oak_fence"]).addDrop(Dropt.drop().items([<tfc:wood/fence/blackwood>])));
Dropt.list("Birch_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Oak_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:1"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Spruce_Sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:2"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Farmland")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:farmland:*"]).addDrop(Dropt.drop().items([<tfc:dirt/granite>])));
Dropt.list("Potatoes")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:potatoes:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Wheat")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:wheat"]).addDrop(Dropt.drop().items([<minecraft:stick>])));
Dropt.list("Carrot")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:carrots:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));