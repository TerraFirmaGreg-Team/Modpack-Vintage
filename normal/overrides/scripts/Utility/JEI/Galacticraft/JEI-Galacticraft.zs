#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
   <galacticraftplanets:slimeling_egg:*>,
   <galacticraftplanets:creeper_egg>,
   <galacticraftcore:basic_block_core:5>,
   <galacticraftcore:basic_block_core:6>,
   <galacticraftcore:basic_block_core:7>,
   <galacticraftcore:basic_block_core:8>,
   <galacticraftcore:basic_block_core:9>,
   <galacticraftcore:basic_block_core:10>,
   <galacticraftcore:basic_block_core:11>,
   <galacticraftcore:basic_block_core:13>,
   <galacticraftcore:rocket_workbench>,
   <galacticraftcore:compact_workbench>,
   <galacticraftcore:prelaunch_checklist>,
   <galacticraftcore:fallen_meteor>,
   <galacticraftcore:meteor_chunk:*>,
   <galacticraftcore:standard_wrench>,
   <galacticraftplanets:volcanic_pickaxe>,
   <galacticraftplanets:web_torch:*>,
   <galacticraftcore:parachest>,
   <galacticraftcore:cheese_curd>,
   <galacticraftcore:fluid_tank>,
   <galacticraftplanets:strange_seed:*>,
   <galacticraftcore:fluid_pipe>,
   <galacticraftcore:aluminum_wire:*>,
   // Креативные предметы
   <galacticraftcore:infinite_battery>,
   <galacticraftcore:infinite_oxygen>,
   <galacticraftplanets:rocket_t2:14>,
   <galacticraftplanets:rocket_t2:4>,
   <galacticraftcore:rocket_t1:4>,
   <galacticraftcore:dungeonfinder>,
   <galacticraftcore:basic_item>,
   <galacticraftcore:basic_item:1>,
   <galacticraftcore:basic_item:2>,
   <galacticraftcore:basic_item:3>,
   <galacticraftcore:basic_item:4>,
   <galacticraftcore:basic_item:5>,
   <galacticraftcore:basic_item:6>,
   <galacticraftcore:basic_item:7>,
   <galacticraftcore:basic_item:8>,
   <galacticraftcore:basic_item:9>,
   <galacticraftcore:basic_item:10>,
   <galacticraftcore:basic_item:11>,
   <galacticraftcore:basic_item:12>,
   <galacticraftcore:basic_item:13>,
   <galacticraftcore:basic_item:14>,
   // Стальные броня и инструменты
   <galacticraftcore:steel_pickaxe>,
   <galacticraftcore:steel_axe>,
   <galacticraftcore:steel_hoe>,
   <galacticraftcore:steel_shovel>,
   <galacticraftcore:steel_sword>,
   <galacticraftcore:steel_helmet>,
   <galacticraftcore:steel_chestplate>,
   <galacticraftcore:steel_leggings>,
   <galacticraftcore:steel_boots>,
   // Машины
   <galacticraftcore:machine:12>,
   <galacticraftcore:machine2>,
   <galacticraftcore:machine2:4>,
   <galacticraftcore:machine>,
   <galacticraftcore:machine2:12>,
   <galacticraftcore:refinery>,
   <galacticraftcore:machine4>,
   <galacticraftcore:machine_tiered:12>,
   <galacticraftplanets:mars_machine_t2:8>,
   <galacticraftplanets:mars_machine_t2:4>,
   <galacticraftcore:machine_tiered:8>,
   <galacticraftcore:machine_tiered:4>,
   <galacticraftcore:machine_tiered>,
   <galacticraftplanets:mars_machine_t2>,
   <galacticraftcore:machine2:8>,
	<galacticraftplanets:mars_machine>,
   <galacticraftcore:concealed_detector>,
   <galacticraftcore:emergency_box:*>,
   <galacticraftcore:food:4>,
   <galacticraftcore:food:5>,
   <galacticraftcore:food:6>,
   <galacticraftcore:food:7>,
   <galacticraftcore:food:8>,
   <galacticraftcore:battery:*>,
   <galacticraftcore:emergency_kit>,
   <galacticraftplanets:rocket_t3:4>,
   <galacticraftplanets:crashed_probe>,
   <galacticraftplanets:basic_item_venus:6>,
   <galacticraftplanets:carbon_fragments>,
   <galacticraftcore:canister:1>,
   <galacticraftcore:buggymat:2>
];

val RemoveRecipe as IItemStack[] = [
	<galacticraftcore:landing_pad:*>,
	<galacticraftcore:distributor>,
	<galacticraftcore:oxygen_compressor:*>,
	<galacticraftcore:sealer>,
	<galacticraftcore:oxygen_detector>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:cargo:*>,
	<galacticraftcore:basic_block_core:*>,
	<galacticraftcore:air_lock_frame:*>,
	<galacticraftcore:space_glass_clear:*>,
	<galacticraftcore:space_glass_vanilla:*>,
	<galacticraftcore:space_glass_strong:*>,
	<galacticraftcore:magnetic_table>,
	<galacticraftcore:enclosed:*>,
	<galacticraftcore:solar:*>,
	<galacticraftcore:dishbase>,
	<galacticraftcore:machine3>,
   <galacticraftcore:panel_lighting:*>,
   <galacticraftcore:glowstone_torch>,
   <galacticraftcore:spin_thruster>,
   <galacticraftcore:view_screen>,
   <galacticraftcore:telemetry>,
   <galacticraftcore:arclamp>,
   <galacticraftcore:platform>,
   <galacticraftcore:rocket_t1:*>,
   <galacticraftplanets:rocket_t2:*>,
   <galacticraftplanets:rocket_t3:*>,
   <galacticraftcore:oxygen_mask>,
   <galacticraftcore:oxygen_gear>,
   <galacticraftcore:sensor_lens>,
   <galacticraftcore:sensor_glasses>,
   <galacticraftcore:air_vent>,
   <galacticraftcore:air_fan>,
   <galacticraftcore:oxygen_concentrator>,
   <galacticraftcore:engine:*>,
   <galacticraftcore:nose_cone>,
   <galacticraftcore:rocket_fins>,
   <galacticraftcore:steel_pole>,
   <galacticraftcore:oil_canister_partial:*>,
   <galacticraftcore:basic_item:19>,
   <galacticraftcore:basic_item:20>,
   <galacticraftcore:food:*>,
   <galacticraftcore:parachute:*>,
   <galacticraftplanets:mars_machine:4>,
   <galacticraftplanets:mars_machine:8>,
   <galacticraftplanets:item_basic_mars:1>,
   <galacticraftplanets:item_basic_mars:2>,
   <galacticraftplanets:item_basic_mars:4>,
   <galacticraftplanets:thermal_padding:*>,
   <galacticraftplanets:item_basic_asteroids:1>,
   <galacticraftplanets:item_basic_asteroids:2>,
   <galacticraftplanets:item_basic_asteroids:7>,
   <galacticraftplanets:item_basic_asteroids:8>,
   <galacticraftplanets:heavy_nose_cone>,
   <galacticraftplanets:orion_drive>,
   <galacticraftplanets:geothermal_generator>,
   <galacticraftplanets:solar_array_module>,
   <galacticraftplanets:basic_item_venus:5>,
   <galacticraftplanets:solar_array_controller>,
   <galacticraftplanets:thermal_padding_t2:*>,
   <galacticraftplanets:basic_item_venus:3>,
   <galacticraftplanets:atomic_battery>,
   <galacticraftplanets:walkway:*>,
   <galacticraftplanets:beam_reflector>,
   <galacticraftplanets:beam_receiver>,
   <galacticraftplanets:telepad_short>,
   <galacticraftplanets:miner_base>,
   <galacticraftcore:buggymat:*>,
   <galacticraftplanets:grapple>,
   <galacticraftcore:collector>,
   <galacticraftcore:item_basic_moon>,
   <galacticraftcore:canister>,
   <galacticraftcore:oxygen_tank_heavy_full>
];

val RemoveRecipeFurnace as IItemStack[] = [
	<galacticraftcore:food:7>,
	<galacticraftcore:item_basic_moon>,
	<galacticraftcore:basic_item:4>,
	<galacticraftplanets:carbon_fragments>,
	<galacticraftplanets:item_basic_mars:2>,
   <galacticraftcore:basic_item:3>
];

val RemoveRecipesByName as string[] = [
	"galacticraftcore:slime_ball",
	"galacticraftcore:cobblestone",
	"galacticraftcore:cobblestone_alt",
	"galacticraftcore:cobblestone_alt_alt",
	"galacticraftcore:basic_item_18",
	"galacticraftcore:basic_item_17",
	"galacticraftcore:basic_item_16",
	"galacticraftcore:basic_item_15",
   "galacticraftcore:furnace",
   "galacticraftcore:oxygen_tank_light_full",
   "galacticraftcore:oxygen_tank_med_full",
   "galacticraftcore:oxygen_tank_heavy_full",
   "galacticraftcore:oxygen_tank_light_full_1",
   "galacticraftcore:oxygen_tank_med_full_1",
   "galacticraftcore:oxygen_tank_heavy_full_1"
];


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

for item in RemoveRecipe{
	recipes.remove(item);
}

for item in RemoveRecipeFurnace{
	furnace.remove(item);
}

for item in RemoveRecipesByName{
	recipes.removeByRecipeName(item);
}


centrifuge.findRecipe(5, [<galacticraftcore:food:6>], null).remove();
centrifuge.findRecipe(5, [<galacticraftcore:food:7>], null).remove();