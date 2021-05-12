recipes.removeByRecipeName("modernlamps:outdoor_lamp_01");
recipes.addShaped(<modernlamps:outdoor_lamp_01>, [
	[<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:vertical_neon_lamp_bottom>);
recipes.addShaped(<modernlamps:vertical_neon_lamp_bottom>, [
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:vertical_neon_lamp_middle>);
recipes.addShaped(<modernlamps:vertical_neon_lamp_middle>, [
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:vertical_neon_lamp_top>);
recipes.addShaped(<modernlamps:vertical_neon_lamp_top>, [
	[<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:paneGlass>, <minecraft:glowstone_dust>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:wall_neon>);
recipes.addShaped(<modernlamps:wall_neon>, [
	[<ore:plateIron>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:plateIron>, <minecraft:glowstone_dust>, <ore:paneGlass>],
	[<ore:plateIron>, <minecraft:glowstone_dust>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:ceiling_neon_lamp>);
recipes.addShaped(<modernlamps:ceiling_neon_lamp>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.remove(<modernlamps:wall_light_01>);
recipes.addShapeless (<modernlamps:wall_light_01>, [<ore:plateIron>, <minecraft:glowstone_dust>]);
recipes.remove(<modernlamps:ceiling_lamp_01>);
recipes.addShaped(<modernlamps:ceiling_lamp_01>, [
	[null, <ore:plateIron>, null],
	[null, <ore:paneGlass>, null]]);
recipes.remove(<modernlamps:suspended_neon>*5);
recipes.addShaped(<modernlamps:suspended_neon>*5, [
	[<ore:plateIron>, null, <ore:plateIron>],
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>]]);

