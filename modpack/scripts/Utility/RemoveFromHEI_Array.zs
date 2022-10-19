#priority 980

import crafttweaker.item.IItemStack;

import mods.jei.JEI;

// Categories
val hideCategory as string[] = [
	"galacticraft.rocketT1",
	"galacticraft.buggy",
	"galacticraft.oxygencompressor",
	"minecraft.anvil",
	"appliedenergistics2.inscriber",
	"tfcflorae.casting",
	"ftbquests.quests",
	"planetprogression.satellite.builder",
	"mpestle",
	"galacticraft.ingotcompressor",
	"galacticraft.rocketT3",
	"galacticraft.astroMiner",
	"galacticraft.rocketT2",
	"galacticraft.cargoRocket"
];
for item in hideCategory {
	JEI.hideCategory(item);
}

// Скрытие предметов и удаление рецептов верстака

// CatWalks
JEI.removeAndHide(<catwalks:stair>);

// EnderStorage
JEI.removeAndHide(<enderstorage:ender_pouch>);

// OpenComputers
JEI.removeAndHide(<opencomputers:disassembler>);



// ArchitectureCraft
val ArchitectureCraft as IItemStack[] = [
  <architecturecraft:sawblade>,
	<architecturecraft:largepulley> 
];
for item in ArchitectureCraft {
    JEI.removeAndHide(item);
}

// FTB
val FTB as IItemStack[] = [
  <ftbquests:chest>,
	<ftbquests:barrier>,
	<ftbquests:detector:1>,
	<ftbquests:detector>,
	<ftbquests:reward_collector>,
	<ftbquests:loot_crate_opener>,
	<ftbquests:loot_crate_storage>,
	<itemfilters:filter>
];
for item in FTB {
    JEI.removeAndHide(item);
}

val TheOneProbe as IItemStack[] = [
  <theoneprobe:creativeprobe>,
	<theoneprobe:probenote>,
	<theoneprobe:diamond_helmet_probe>,
	<theoneprobe:gold_helmet_probe>,
	<theoneprobe:iron_helmet_probe>
];
for item in TheOneProbe {
    JEI.removeAndHide(item);
}

val MicroblocksCBE as IItemStack[] = [
	<microblockcbe:microblock:1>,
	<microblockcbe:saw_stone>,
	<microblockcbe:saw_iron>,
	<microblockcbe:saw_diamond>,
	<microblockcbe:stone_rod>
];
for item in MicroblocksCBE {
    JEI.removeAndHide(item);
}

val Weather2 as IItemStack[] = [
	<weather2:sand_layer_placeable>,
	<weather2:weather_machine>,
	<weather2:pocket_sand>,
	<weather2:weather_item>
];
for item in Weather2 {
    JEI.removeAndHide(item);
}

val TravelersBackpacks as IItemStack[] = [
	<travelersbackpack:travelers_backpack:76>,
	<travelersbackpack:travelers_backpack:75>,
	<travelersbackpack:travelers_backpack:74>,
	<travelersbackpack:travelers_backpack:73>,
	<travelersbackpack:travelers_backpack:72>,
	<travelersbackpack:travelers_backpack:71>,
	<travelersbackpack:travelers_backpack:70>,
	<travelersbackpack:travelers_backpack:69>,
	<travelersbackpack:travelers_backpack:68>,
	<travelersbackpack:travelers_backpack:67>,
	<travelersbackpack:travelers_backpack:66>,
	<travelersbackpack:travelers_backpack:65>,
	<travelersbackpack:travelers_backpack:64>,
	<travelersbackpack:travelers_backpack:63>,
	<travelersbackpack:travelers_backpack:62>,
	<travelersbackpack:travelers_backpack:61>,
	<travelersbackpack:travelers_backpack:60>,
	<travelersbackpack:travelers_backpack:59>,
	<travelersbackpack:travelers_backpack:58>,
	<travelersbackpack:travelers_backpack:57>,
	<travelersbackpack:travelers_backpack:56>,
	<travelersbackpack:travelers_backpack:55>,
	<travelersbackpack:travelers_backpack:54>,
	<travelersbackpack:travelers_backpack:53>,
	<travelersbackpack:travelers_backpack:52>,
	<travelersbackpack:travelers_backpack:51>,
	<travelersbackpack:travelers_backpack:50>,
	<travelersbackpack:travelers_backpack:49>,
	<travelersbackpack:travelers_backpack:48>,
	<travelersbackpack:travelers_backpack:47>,
	<travelersbackpack:travelers_backpack:46>,
	<travelersbackpack:travelers_backpack:45>,
	<travelersbackpack:travelers_backpack:44>,
	<travelersbackpack:travelers_backpack:43>,
	<travelersbackpack:travelers_backpack:42>,
	<travelersbackpack:travelers_backpack:41>,
	<travelersbackpack:travelers_backpack:40>,
	<travelersbackpack:travelers_backpack:39>,
	<travelersbackpack:travelers_backpack:38>,
	<travelersbackpack:travelers_backpack:37>,
	<travelersbackpack:travelers_backpack:36>,
	<travelersbackpack:travelers_backpack:35>,
	<travelersbackpack:travelers_backpack:34>,
	<travelersbackpack:travelers_backpack:33>,
	<travelersbackpack:travelers_backpack:32>,
	<travelersbackpack:travelers_backpack:31>,
	<travelersbackpack:travelers_backpack:30>,
	<travelersbackpack:travelers_backpack:29>,
	<travelersbackpack:travelers_backpack:28>,
	<travelersbackpack:travelers_backpack:27>,
	<travelersbackpack:travelers_backpack:26>,
	<travelersbackpack:travelers_backpack:25>,
	<travelersbackpack:travelers_backpack:24>,
	<travelersbackpack:travelers_backpack:23>,
	<travelersbackpack:travelers_backpack:22>,
	<travelersbackpack:travelers_backpack:21>,
	<travelersbackpack:travelers_backpack:20>,
	<travelersbackpack:travelers_backpack:19>,
	<travelersbackpack:travelers_backpack:18>,
	<travelersbackpack:travelers_backpack:17>,
	<travelersbackpack:travelers_backpack:16>,
	<travelersbackpack:travelers_backpack:15>,
	<travelersbackpack:travelers_backpack:14>,
	<travelersbackpack:travelers_backpack:13>,
	<travelersbackpack:travelers_backpack:12>,
	<travelersbackpack:travelers_backpack:11>,
	<travelersbackpack:travelers_backpack:10>,
	<travelersbackpack:travelers_backpack:9>,
	<travelersbackpack:travelers_backpack:8>,
	<travelersbackpack:travelers_backpack:7>,
	<travelersbackpack:travelers_backpack:6>,
	<travelersbackpack:travelers_backpack:5>,
	<travelersbackpack:travelers_backpack:4>,
	<travelersbackpack:travelers_backpack:3>,
	<travelersbackpack:travelers_backpack:2>,
	<travelersbackpack:travelers_backpack:1>,
	<travelersbackpack:backpack_tank>,
	<travelersbackpack:sleeping_bag_bottom>,
];
for item in TravelersBackpacks {
    JEI.removeAndHide(item);
}
// BuildingGadgets
JEI.removeAndHide(<buildinggadgets:constructionpastecontainercreative>);