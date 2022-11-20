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
	"galacticraft.cargoRocket",
	"tfc.rock_layer",
	"tfc.vein"
];
for item in hideCategory {
	JEI.hideCategory(item);
}

// Скрытие предметов и удаление рецептов верстака

// CatWalks
JEI.removeAndHide(<catwalks:stair>);

// OpenComputers
JEI.removeAndHide(<opencomputers:disassembler>);

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

// BuildingGadgets
JEI.removeAndHide(<buildinggadgets:constructionpastecontainercreative>);