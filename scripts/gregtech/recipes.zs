import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;
import mods.gregtech.TerminalRegistry;




// Телепорт
TerminalRegistry.registerDevice(<charset:icon>, "disabled");
TerminalRegistry.createAppRegistryBuilder("teleport")
    .isDefaultApp(false)
    .device(0, "disabled")
    .upgrade(<charset:icon>)
    .build();