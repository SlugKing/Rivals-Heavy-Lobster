//set_num_hitboxes(AT_FSPECIAL, 1);

//set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1000);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 60);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 8);
//set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
//set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
//set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("minilobster"));
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("minilobster"));
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .5);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("smallexplosion"));

sprite_index = sprite_get("minilobster");

animation_frame = 0;
animation_framelength = 2;
animation_timer = 0;

vsp = -2;
can_be_grounded = true;
ignores_walls = false;
hsp = 1 * player_id.spr_dir;
spr_dir = player_id.spr_dir;
life = 0;
free = true;

hitbox = noone;
hit_player = false;