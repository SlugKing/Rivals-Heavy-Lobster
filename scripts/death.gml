num_boosts = max_boosts;
explosion = hit_fx_create(sprite_get("explosion_2x"), 6);

ds_list_destroy(afterimage_list);
afterimage_list = ds_list_create();