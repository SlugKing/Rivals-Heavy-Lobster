sprite_index = sprite_get("paintidle_2x");

animation_frame = 0;
animation_framelength = 4;
animation_timer = 0;
animation_totalframes = 3;

vsp = 0;
can_be_grounded = true;
ignores_walls = false;
hsp = 0 * player_id.spr_dir;
spr_dir = player_id.spr_dir;
life = 0;
free = true;
prev_free = true;
uses_shader = false;

hitbox = noone;
hit_player = false;