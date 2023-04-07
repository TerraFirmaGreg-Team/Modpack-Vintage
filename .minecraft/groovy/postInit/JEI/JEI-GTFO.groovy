

if (isLoaded("gregtechfoodoption")) {

   // --- Массивы
   
   def removeAndHide = [
   	metaitem('brick.adobe_fired'),
   	metaitem('brick.adobe'),
   	metaitem('food.potato_on_a_stick'),
   	metaitem('food.fish_rotten'),
   	metaitem('component.dough'),
   	metaitem('component.flat_dough'),
   	metaitem('component.bread'),
   	metaitem('wooden_form.bread'),
   	metaitem('component.sugary_dough')
   ]
   
   def removeRecipe = [
      metaitem('component.apple_slice'),
      metaitem('component.mushroom_slice'),
      metaitem('component.carrot_slice'),
      metaitem('component.onion_slice'),
      metaitem('component.olive_slice'),
      metaitem('component.tomato_slice'),
      metaitem('component.cucumber_slice')
   ]
   
   def removeRecipesByName = [
      "gregtechfoodoption:casing_adobe_bricks",
      "gregtechfoodoption:casing_reinforced_adobe_bricks",
      "gregtechfoodoption:baking_oven",
      "gregtechfoodoption:gtfo_hand_meat_kebab_0",
      "gregtechfoodoption:gtfo_hand_meat_kebab_1",
      "gregtechfoodoption:gtfo_hand_meat_kebab_2",
      "gregtechfoodoption:gtfo_hand_meat_kebab_3",
      "gregtechfoodoption:gtfo_hand_meat_kebab_4",
      "gregtechfoodoption:gtfo_bacon",
      "gregtechfoodoption:gtfo_sandwich_steak_from_oredict",
      "gregtechfoodoption:gtfo_pumpkin_pie",
      "gregtechfoodoption:gtfo_cake",
      "gregtechfoodoption:cake_bottom",
      "gregtechfoodoption:gtfo_cookie",
      "gregtechfoodoption:gtfo_slice_bread",
      "gregtechfoodoption:bread_dough",
      "gregtechfoodoption:gtfo_hand_carrot_kebab",
      "gregtechfoodoption:gtfo_flat_dough",
      "gregtechfoodoption:dough_2",
      "gregtechfoodoption:dough_4",
      "gregtechfoodoption:sugary_dough",
      "gregtechfoodoption:gtfo_pie_crust",
      "gregtechfoodoption:baguette_dough",
      "gregtechfoodoption:bun_dough",
      "gregtechfoodoption:gtfo_hand_kubide_kebab",
      "gregtechfoodoption:meat_hand_recipe",
      "gregtechfoodoption:gtfo_hand_kubide_kebab_meat",
      "gregtechfoodoption:gtfo_hand_barg_kebab_meat",
      "gregtechfoodoption:gtfo_hand_onion_kebab",
      "gregtechfoodoption:gtfo_hand_zest1",
      "gregtechfoodoption:gtfo_hand_zest2",
      "gregtechfoodoption:gtfo_hand_zest3"
   ]
   
   
   // --- Удаление рецептов
   
   for (item in removeAndHide) {
      mods.jei.removeAndHide(item)
   }
   
   for (item in removeRecipe) {
      crafting.removeByOutput(item)
   }
   
   for (item in removeRecipesByName) {
      crafting.remove(item)
   }
}