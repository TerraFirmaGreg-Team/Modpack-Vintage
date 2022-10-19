#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы


val RemoveAndHide as IItemStack[] = [
	<projectred-core:resource_item:100>,
	<projectred-core:resource_item:101>,
	<projectred-core:resource_item:102>,
	<projectred-core:resource_item:103>,
	<projectred-core:resource_item:104>,
	<projectred-core:resource_item:105>,
	<projectred-core:resource_item:200>,
	<projectred-core:resource_item:201>,
	<projectred-core:resource_item:202>,
	<projectred-core:resource_item:250>,
	<projectred-core:resource_item:251>,
	<projectred-core:resource_item:252>,
	<projectred-core:resource_item:300>,
	<projectred-core:resource_item:301>,
	<projectred-core:resource_item:310>,
	<projectred-core:resource_item:311>,
	<projectred-core:resource_item:312>,
	<projectred-core:resource_item:320>,
	<projectred-core:resource_item:341>,
	<projectred-core:resource_item:342>,
	<projectred-core:resource_item:400>,
	<projectred-core:resource_item:401>,
	<projectred-core:resource_item:402>,
	<projectred-core:resource_item:410>,
	<projectred-core:drawplate>,
	<projectred-core:screwdriver>,
	<projectred-fabrication:ic_chip:1>
];

val RemoveRecipe as IItemStack[] = [
	<projectred-core:resource_item:20>,
	<projectred-core:resource_item:21>,
	<projectred-transmission:wire>,
	<projectred-fabrication:ic_chip>,
	<projectred-fabrication:ic_blueprint>,
	<projectred-fabrication:ic_machine:1>,
	<projectred-core:multimeter>,
	<projectred-illumination:lamp:*>,
	<projectred-illumination:light_button:*>,
	<projectred-illumination:feedback_light_button:*>,
	<projectred-illumination:lantern:*>,
	<projectred-illumination:inverted_lantern:*>,
	<projectred-illumination:fixture_light:*>,
	<projectred-illumination:inverted_fixture_light:*>,
	<projectred-illumination:fallout_lamp:*>,
	<projectred-illumination:inverted_fallout_lamp:*>,
	<projectred-illumination:cage_lamp:*>,
	<projectred-illumination:inverted_cage_lamp:*>,
	<projectred-transmission:wire:*>,
	<projectred-core:resource_item:500>,
	<projectred-core:resource_item:501>,
	<projectred-core:resource_item:502>,
	<projectred-core:resource_item:503>,
	<projectred-core:resource_item:504>,
	<projectred-core:resource_item:505>,
	<projectred-core:resource_item:506>,
	<projectred-core:resource_item:507>,
	<projectred-core:resource_item:508>,
	<projectred-core:resource_item:509>,
	<projectred-core:resource_item:510>,
	<projectred-core:resource_item:511>,
	<projectred-core:resource_item:512>,
	<projectred-core:resource_item:513>,
	<projectred-core:resource_item:514>,
	<projectred-core:resource_item:515>
];

val RemoveRecipeFurnace as IItemStack[] = [
	<projectred-core:resource_item> * 2,
	<projectred-core:resource_item:103>,
	<projectred-core:resource_item:342>,
	<projectred-core:resource_item:320>,
	<projectred-core:resource_item:341>,
	<projectred-core:resource_item:300>,
	<projectred-core:resource_item:104>
];

// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

for item in RemoveRecipe {
	recipes.remove(item);
}

// Удаление рецептов печки
for item in RemoveRecipeFurnace {
	furnace.remove(item);
}
