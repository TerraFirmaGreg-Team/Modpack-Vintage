// MODS_LOADED: tfc

import com.cleanroommc.groovyscript.event.LootTablesLoadedEvent

event_manager.listen { LootTablesLoadedEvent event ->

  event.loot.getTable('minecraft:chests/stronghold_library').getPool('main').addEntry(
    event.loot.entryBuilder()
      .name('tfg:gameplay/fishing/fish')
      .item(item('tfc:food/fish'))
      .weight(100)
      .quality(1)
      .build()
  )
}
