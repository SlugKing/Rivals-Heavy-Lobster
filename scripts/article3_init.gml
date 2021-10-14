color = random_func(0, 8, true);
switch(color)
{
    case 0: sprite_index = sprite_get("splatter_red"); break;
    case 1: sprite_index = sprite_get("splatter_yellow"); break;
    case 2: sprite_index = sprite_get("splatter_green"); break;
    case 3: sprite_index = sprite_get("splatter_pink"); break;
    case 4: sprite_index = sprite_get("splatter_white"); break;
    case 5: sprite_index = sprite_get("splatter_blue"); break;
    case 6: sprite_index = sprite_get("splatter_brown"); break;
    case 7: sprite_index = sprite_get("splatter_black"); break;
}
animation_frame = 0;
animation_framelength = 2;
animation_timer = 0;
animation_totalframes = 2;

vsp = 0;
can_be_grounded = false;
ignores_walls = true;
hsp = 0 * player_id.spr_dir;
spr_dir = 1;
life = 0;
free = true;
uses_shader = false;

depth = -10;

hitbox = noone;