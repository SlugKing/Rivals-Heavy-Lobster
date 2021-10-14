hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = sprite_get("airbox");
hitstun_hurtbox_spr = -1;

char_height = 75;
idle_anim_speed = .45;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .5;
pratfall_anim_speed = .25;

walk_speed = 1.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7;
dash_speed = 7.5;
dash_turn_time = 7;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.5;

jump_start_time = 3;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9.5;
walljump_time = 24;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.925; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .035; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 6.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("lobster_sound");
landing_lag_sound = sound_get("lobster_sound");
waveland_sound = -1;
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("parry");

jet_bubble = hit_fx_create(sprite_get("jetbubble_rise"), 12);
jet_back = hit_fx_create(sprite_get("jet_back_2x"), 4);
jet_front = hit_fx_create(sprite_get("jet_front"), 2);

flame = hit_fx_create(sprite_get("fireballflip"), 7);

flashbubble = hit_fx_create(sprite_get("flashbubble"), 4);

codec_bg_anim = hit_fx_create(sprite_get("codec_bg"), 43);
codec_bg_fin = hit_fx_create(sprite_get("codec_bg_fin"), 60);
codec_timer = 0;

explosion = hit_fx_create(sprite_get("explosion_2x"), 8);

num_boosts = 1;
max_boosts = 1;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

fireball_voffset = 0;
fireball_sound_offset = 1;
walk_sound_timer = 0;
jet_bubble_timer = 0;
flame_timer = 0;
mini_alive = false;
mini_timer = 0;
mini = noone;
spawnable_out = -1;
rhythm_lockout = false;
num_pummels = 0;
pummel_rehit = false;
debug_attack = 0;
debug_window = 0;

afterimage_list = ds_list_create();
taunt_timer = -1;
taunt_posx = 0;
taunt_posy = 0;
up_phrase = "";
down_phrase = "";

grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
grab_interpolation_timer = -1;