// MODS_LOADED: minecraft

import com.cleanroommc.groovyscript.event.LootTablesLoadedEvent

event_manager.listen { LootTablesLoadedEvent event ->

  event.loot.getTable('minecraft:gameplay/fishing/fish').getPool('main').removeEntry('minecraft:fish')
  event.loot.getTable('minecraft:gameplay/fishing/fish').getPool('main').removeEntry('minecraft:fish#0')
  event.loot.getTable('minecraft:gameplay/fishing/fish').getPool('main').removeEntry('minecraft:fish#1')
  event.loot.getTable('minecraft:gameplay/fishing/fish').getPool('main').removeEntry('minecraft:fish#2')
}
