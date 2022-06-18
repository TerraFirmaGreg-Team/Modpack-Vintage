import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Удаление рецептов
recipes.removeByRecipeName("rftoolsdim:known_dimlet_9");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4_alt");
recipes.removeByRecipeName("rftoolsdim:known_dimlet_4_alt_alt");
recipes.removeByRecipeName("rftoolsdim:biome_absorber");
recipes.removeByRecipeName("rftoolsdim:material_absorber");
recipes.removeByRecipeName("rftoolsdim:feature_absorber");

// Удаление рецептов 2
val ItemsToRemove as IItemStack[] = [
  <rftoolsdim:rftoolsdim_manual>,
  <rftoolsdim:mediocre_efficiency_essence>,
  <rftoolsdim:phased_field_generator>,
  <rftoolsdim:dimension_module>,
  <rftoolsdim:energy_extractor>,
  <rftoolsdim:dimension_builder>,
  <rftoolsdim:dimension_editor>,
  <rftoolsdim:dimension_enscriber>,
  <rftoolsdim:dimlet_workbench>,
  <rftoolsdim:dimensional_blank_block>,
  <rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}),
  <rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}),
  <rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}),
  <rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}),
  <rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}),
  <rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}),
  <rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}),
  <rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}),
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Димлеты
// Default
recipes.addShaped(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:comparator>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Single
recipes.addShaped(<rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:repeater>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

// Digit 0-9
recipes.addShaped(<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:craftingRedstoneTorch>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Effect
recipes.addShaped(<rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:apple>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Feature
recipes.addShaped(<rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:string>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Water
recipes.addShaped(<rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:bucket>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Mob
recipes.addShaped(<rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:rotten_flesh>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

// Time
recipes.addShaped(<rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <minecraft:clock>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

// Material
recipes.addShaped(<rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dirt>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Bone
recipes.addShaped(<rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:bone>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Snow
recipes.addShaped(<rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dustSnow>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Void
recipes.addShaped(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:blockBrick>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Flat
recipes.addShaped(<rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:blockBrick>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

// Sky dimlet 1
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.day"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:dustGlowstone>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Sky dimlet 2
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.night"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:gemCoal>, <ore:cableGtSingleRedAlloy>], 
  [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Sky dimlet 3
recipes.addShaped(<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal"}), [
  [null, <ore:cableGtSingleRedAlloy>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:feather>, <ore:cableGtSingleRedAlloy>], 
  [<rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>, <rftoolsdim:dimlet_template>]]);

// Извлекатель энергии
recipes.addShaped(<rftoolsdim:energy_extractor>, [
  [<ore:plateEnderium>, <rftools:dimensional_shard>, <ore:cableGtSingleGold>], 
  [<appliedenergistics2:energy_acceptor>, <rftools:machine_frame>, <appliedenergistics2:energy_cell>], 
  [<ore:cableGtSingleGold>, <rftools:dimensional_shard>, <ore:plateEnderium>]]);

// Строитель измерений
recipes.addShaped(<rftoolsdim:dimension_builder>, [
  [<ore:cableGtOctalTungsten>, <galacticraftplanets:basic_item_venus>, <ore:cableGtOctalTungsten>], 
  [<gregtech:meta_item_1:209>, <rftools:machine_frame>,<gregtech:meta_item_1:209>], 
  [<gregtech:meta_item_1:209>, <gregtech:machine:1021>, <gregtech:meta_item_1:209>]]);

// Изменитель измерений
recipes.addShaped(<rftoolsdim:dimension_editor>, [
  [<gregtech:meta_item_1:224>, <ore:gemExquisiteEmerald>, <gregtech:meta_item_1:224>], 
  [<ore:circuitUltimate>, <rftools:machine_frame>, <ore:circuitUltimate>], 
  [<ore:cableGtQuadrupleOsmium>, <gregtech:meta_item_1:239>, <ore:cableGtQuadrupleOsmium>]]);

// Высекатель измерений
recipes.addShaped(<rftoolsdim:dimension_enscriber>, [
  [<ore:cableGtSingleGold>, <minecraft:writable_book>, <ore:cableGtSingleGold>], 
  [<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}), <gregtech:machine:563>, <rftoolsdim:known_dimlet:9>.withTag({dkey: "0"})], 
  [<ore:plateIronMagnetic>, <ore:plateIronMagnetic>, <ore:plateIronMagnetic>]]);

// Верстак димлетов
recipes.addShaped(<rftoolsdim:dimlet_workbench>, [
  [<ore:plateGold>, <rftoolsdim:dimlet_base>, <ore:plateGold>], 
  [<ore:craftingTableWood>, <rftools:machine_frame>, <ore:craftingTableWood>], 
  [<ore:plateGold>, <ore:cableGtDoubleRedAlloy>, <ore:plateGold>]]);

// Пустой блок измерения
recipes.addShaped(<rftoolsdim:dimensional_blank_block>, [
  [<ore:stone>, <ore:stone>, <ore:stone>], 
  [<ore:stone>, <rftools:dimensional_shard>, <ore:stone>], 
  [<ore:stone>, <ore:stone>, <ore:stone>]]);

// Абсорбер биомов
recipes.addShaped(<rftoolsdim:biome_absorber>, [
  [<ore:dirt>, <ore:wool>, <ore:treeSapling>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:treeSapling>, <ore:wool>, <ore:dirt>]]);

// Абсорбер материалов
recipes.addShaped(<rftoolsdim:material_absorber>, [
  [<ore:dirt>, <ore:wool>, <ore:cobblestone>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:sand>, <ore:wool>, <ore:cobblestone>]]);

// Абсорбер вещей
recipes.addShaped(<rftoolsdim:feature_absorber>, [
  [<ore:plateDiamond>, <ore:wool>, <ore:plateEmerald>], 
  [<ore:wool>, <rftools:machine_frame>, <ore:wool>], 
  [<ore:plateEmerald>, <ore:wool>, <ore:plateDiamond>]]);

// Фазовый генератор поля
recipes.addShaped(<rftoolsdim:phased_field_generator>, [
  [<gregtech:meta_item_1:208>, <ore:cableGtDoubleBlackSteel>, <gregtech:meta_item_1:208>], 
  [<rftools:dimensional_shard>, <rftools:machine_frame>, <rftools:dimensional_shard>], 
  [<gregtech:meta_item_1:208>, <ore:cableGtDoubleBlackSteel>, <gregtech:meta_item_1:208>]]);

// Модуль измерений
recipes.addShaped(<rftoolsdim:dimension_module>, [
  [null, <minecraft:ender_pearl>, null], 
  [<ore:cableGtSingleRedAlloy>, <ore:plateIron>, <ore:cableGtSingleRedAlloy>], 
  [null, <ore:dyeBlack>, null]]);

// Модуль эффективной эссенции
recipes.addShaped(<rftoolsdim:mediocre_efficiency_essence>, [
  [null, <tfc:metal/pick/steel>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]}), null], 
  [<ore:gemEnderEye>, <minecraft:ghast_tear>, <ore:gemEnderEye>], 
  [null, <ore:gemEnderEye>, null]]);