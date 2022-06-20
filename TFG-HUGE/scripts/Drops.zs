import mods.dropt.Dropt;

// Рандомный дроп с урны Florae
Dropt.list("tfg/dropt/florae_urn").add(Dropt.rule()
  .matchBlocks(["tfcflorae:storage/urn_loot"])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop()
    .selector(Dropt.weight(33))
    .items([<metaitem:dustSmallCopper> * 2, <metaitem:dustSmallTin> * 4, <metaitem:dustSmallGold>])
  )
  .addDrop(Dropt.drop()
    .selector(Dropt.weight(33))
    .items([<metaitem:ingotCopper> * 2, <metaitem:ingotTin> * 4])
  )
  .addDrop(Dropt.drop()
    .selector(Dropt.weight(33))
    .items([<tfc:crop/seeds/oat>, <tfc:crop/seeds/rice>, <tfc:crop/seeds/wheat>, <tfc:crop/seeds/carrot>, <tfc:crop/seeds/tomato>])
  )
  .addDrop(Dropt.drop()
    .selector(Dropt.weight(1))
    .items([<gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "diamond"}})])
  )
);

// Исправление выпадения луж
Dropt.list("tfg/dropt/puddles").add(Dropt.rule()
  .matchDrops([<puddles:puddle>])
  .replaceStrategy("REPLACE_ITEMS")
  .addDrop(Dropt.drop()));

// Морской лед
Dropt.list("tfg/dropt/sea_ice").add(Dropt.rule()
  .matchBlocks(["tfc:sea_ice"])
  .matchDrops([<tfc:sea_ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:sea_ice_shard>])));

// Обычный лед
Dropt.list("tfg/dropt/ice").add(Dropt.rule()
  .matchBlocks(["minecraft:ice"])
  .matchDrops([<minecraft:ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:ice_shard>])));

// Плотный лед
Dropt.list("tfg/dropt/packed_ice").add(Dropt.rule()
  .matchBlocks(["minecraft:packed_ice"])
  .matchDrops([<minecraft:packed_ice>])
  .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("BLACKLIST", [], "craftingToolSaw"))
  .addDrop(Dropt.drop().items([<cellars:packed_ice_shard>])));

// При копке ванильных блоков выпадают TFC варианты

Dropt.list("tfg/dropt/gc_fix/cobblestone").add(Dropt.rule()
  .matchDrops([<minecraft:cobblestone>])
  .replaceStrategy("REPLACE_ITEMS").addDrop(Dropt.drop().items([<tfc:cobble/basalt>])));

Dropt.list("tfg/dropt/gc_fix/dirt")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dirt"]).addDrop(Dropt.drop().items([<tfc:dirt/basalt>])));

Dropt.list("tfg/dropt/gc_fix/gravel")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:gravel"]).addDrop(Dropt.drop().items([<tfc:gravel/basalt>])));

Dropt.list("tfg/dropt/gc_fix/cobblestone")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:chest:*"]).addDrop(Dropt.drop().items([<tfc:wood/chest/oak>])));

Dropt.list("tfg/dropt/gc_fix/spruce_wooden_planks")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:planks:1"]).addDrop(Dropt.drop().items([<tfc:wood/planks/spruce>])));

Dropt.list("tfg/dropt/gc_fix/oak_log")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:log"]).addDrop(Dropt.drop().items([<tfc:wood/log/oak>])));

Dropt.list("tfg/dropt/gc_fix/dark_oak_fence")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:dark_oak_fence"]).addDrop(Dropt.drop().items([<tfc:wood/fence/blackwood>])));

Dropt.list("tfg/dropt/gc_fix/birch_sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

Dropt.list("tfg/dropt/gc_fix/oak_sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:1"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

Dropt.list("tfg/dropt/gc_fix/spruce_sapling")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:sapling:2"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

Dropt.list("tfg/dropt/gc_fix/farmland")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:farmland:*"]).addDrop(Dropt.drop().items([<tfc:dirt/granite>])));

Dropt.list("tfg/dropt/gc_fix/seeds/potato")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:potatoes:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

Dropt.list("tfg/dropt/gc_fix/seeds/wheat")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:wheat"]).addDrop(Dropt.drop().items([<minecraft:stick>])));

Dropt.list("tfg/dropt/gc_fix/seeds/carrot")
  .add(Dropt.rule()
  .matchBlocks(["minecraft:carrots:*"]).addDrop(Dropt.drop().items([<minecraft:stick>])));