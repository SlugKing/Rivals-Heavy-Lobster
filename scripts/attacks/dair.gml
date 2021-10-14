set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
//set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 2);
//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("wingdive"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);

//set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
//set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
//set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 3);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 1);

//set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
//set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
//set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -23);
//set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -7);
//set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 65);
//set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 65);
//set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
//set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
//set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 10);
//set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
//set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
//set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
//set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 88);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);