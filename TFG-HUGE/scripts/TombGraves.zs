import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление рецептов + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	<tombstone:dark_marble>,
    <tombstone:dark_marble:1>,
    <tombstone:grave_plate>,
    <tombstone:scroll_of_knowledge>,
    <tombstone:scroll_buff>,
    <tombstone:scroll_buff:1>,
    <tombstone:scroll_buff:2>,
    <tombstone:scroll_buff:3>,
    <tombstone:scroll_buff:4>,
    <tombstone:scroll_buff:5>,
    <tombstone:scroll_buff:6>,
    <tombstone:scroll_buff:7>,
    <tombstone:scroll_buff:8>,
    <tombstone:tablet_of_recall>,
    <tombstone:tablet_of_home>,
    <tombstone:tablet_of_assistance>,
    <tombstone:tablet_of_cupidity>,
    <tombstone:fishing_rod_of_misadventure>,
    <tombstone:lost_tablet>.withTag({cooldown_time: 39245 as long}),
    <tombstone:dust_of_vanishing>,
    <tombstone:soul_receptacle>,
    <tombstone:familiar_receptacle>,
    <tombstone:familiar_receptacle>.withTag({dead_pet: {id: "minecraft:cat"}}),
    <tombstone:voodoo_poppet>,
    <tombstone:book_of_disenchantment>,
    <tombstone:ankh_of_pray>,
    <tombstone:crafting_ingredient>,
    <tombstone:crafting_ingredient:1>,
    <tombstone:crafting_ingredient:3>,
    <tombstone:crafting_ingredient:4>,
    <tombstone:bone_needle>,
    <tombstone:impregnated_diamond>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

