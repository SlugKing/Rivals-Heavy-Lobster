//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    //if (window == 3){
    //    if (special_pressed){
    //        window = 1;
    //        window_timer = 0;
    //    }
    //}
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, sin((fireball_voffset % 25) / 3.82) * 5);
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 0)
{
    shader_end();
    init_shader();
}

if (attack == AT_NSPECIAL && window == 4 && window_timer == 0)
{
    shader_start();
    init_shader();
}

if (window == 2 && window_timer == 4 && special_down && attack == AT_NSPECIAL)
{
    window = 2;
    window_timer = 0;
    attack_end();
}

if (window == 2 && special_down && attack = AT_NSPECIAL)
{
    if (fireball_sound_offset >= 6)
    {
        sound_stop(sound_get("fireball"));
        sound_play(sound_get("fireball"));
        fireball_sound_offset = 0;
    }
}

if ((attack == AT_FSPECIAL || attack == AT_DSPECIAL) && window == 3 && mini_alive == true)
{
    window = 5;
    window_timer = 0;
    sound_play(sound_get("fail"));
    attack_end();
}

if (attack == AT_FSPECIAL && window == 4 && window_timer == 2 && mini_alive == false)
{
    mini = instance_create(x + 60*spr_dir, y - 8, "obj_article1");
    spawnable_out = 0;
    //mini.hsp *= spr_dir;
    //mini.spr_dir = spr_dir;
    mini_alive = true;
}

if (attack == AT_DSPECIAL && window == 4 && window_timer == 2 && mini_alive == false)
{
    paint = instance_create(x + 60*spr_dir, y - 8, "obj_article2");
    spawnable_out = 1;
    //mini.hsp *= spr_dir;
    //mini.spr_dir = spr_dir;
    mini_alive = true;
}

// JET BUBBLE PARTICLES
if(attack == AT_DATTACK)
{
    jet_bubble_timer += 1;
    if (jet_bubble_timer >= 5)
    {
        spawn_hit_fx(x-(45*spr_dir), y-30, jet_bubble);
        jet_bubble_timer = 0;
    }
}

if (attack == AT_NAIR)
{
    if (window == 2 && (state_timer-6) % 5 == 0)
    {
        xoffset = 0;
        yoffset = 0;
        switch ((state_timer-6))
        {
            case 0: yoffset = 6; xoffset = -16; break;
            case 5: yoffset = -16; xoffset = 6; break;
            case 10: yoffset = 12; xoffset = 12; break;
        }
        if (spr_dir < 0)
        {
            xoffset += 32
        }
        if (!hitpause)
        {
            splatter = instance_create(x+((42+xoffset)*spr_dir), y-42+yoffset, "obj_article3");
        }
    }
}

if (attack == AT_DAIR)
{
	if (window == 3 && has_hit_player == true)
	{
		window = 4;
		window_timer = 0;
	}
}

//debug_attack = num_pummels;

if (attack == AT_FTILT)
{
    if (window == 3 && attack_pressed)
    {
        if (pummel_rehit && ((window_timer >= 2 && window_timer <= 4) || window_timer >= 8))
        {
            rhythm_lockout = true;
        }
        else if (!pummel_rehit && (window_timer <= 4 || window_timer >= 8))
        {
            rhythm_lockout = true;
        }
    }
    if (window == 2 && has_hit_player == true && hitpause == false) {
        window = 3;
        window_timer = 0;
        set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.3 + (0.10 * num_pummels));
    }
    if (window == 2 && has_hit_player == true) {
        grabbed_player_relative_x = grabbed_player_obj.x - x;
		grabbed_player_relative_y = grabbed_player_obj.y - y;
        grab_interpolation_timer = 0;
    }
    if (grab_interpolation_timer >= 0)
    {
        pull_to_x = 50 * spr_dir;
		pull_to_y = 10;
		window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		grab_interpolation_timer++;
		if (grab_interpolation_timer < get_window_value(attack, window, AG_WINDOW_LENGTH))
		{
    		grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, grab_interpolation_timer, window_length);
    		grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, grab_interpolation_timer, window_length);
		}
	}
    if (window == 3 && window_timer >= 2 && attack_pressed && !rhythm_lockout && num_pummels < 3 && hitpause == false)
    {
        num_pummels += 1;
        window = 3;
        window_timer = 0;
        pummel_rehit = true;
        attack_pressed = false;
        attack_end();
        create_hitbox(AT_FTILT, 3, x, y);
        //debug_attack = 0.4 + (0.6 * num_pummels);
        set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.4 + (0.15 * num_pummels));
    }
    if (window == 4)
    {
        create_hitbox(AT_FTILT, 2, x, y);
        grab_interpolation_timer = -1;
    }
    if (window == 2 && window_timer == get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH) && has_hit_player == false)
    {
        window = 5;
        window_timer = 0;
    }
    if (window == 5)
    {
        rhythm_lockout = false;
        num_pummels = 0;
        pummel_rehit = false;
    }
    if (window == 3)
    {
        debug_attack = rhythm_lockout;
        debug_window = window_timer;
    }
}


if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 1 && window_timer == 1 && free)
    {
        hsp /= 2;
    }
    if (window == 1 && window_timer == 2 && num_boosts < 0)
    {
        exp = spawn_hit_fx(x-(30*spr_dir), y-65, explosion);
        sound_play(sound_get("boom"));
        window = 5;
        window_timer = 0;
        //if (vsp < -6)
        //{
        vsp = -4;
        //}
    }
    else if (window == 1 && window_timer == 1)
    {
        num_boosts -= 1;
    }
    if (window_timer % 3 == 0)
    {
        new_afterimage = ds_list_create();
        ds_list_add(new_afterimage, x-(spr_dir*(2*abs(hsp))), y, 0.75);
        ds_list_add(afterimage_list, new_afterimage);
    }
    if (window == 3){
        if (times_through > 2 || window_timer >= 5)
        {
            //if (special_pressed)
            //{
            //    window = 3;
            //}
            can_attack = true;
            can_shield = true;
        }
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 5){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += .005*lengthdir_x(1, joy_dir);
            //vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .2;
        //    vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            //vsp = lengthdir_y(max_speed, fly_dir);
        }
        //if (special_pressed && times_through > 0){
        //    window = 4;
        //    window_timer = 0;
        //}
        //if (shield_pressed){
        //    window = 3;
        //    window_timer = 0;
        //}
    }
    if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        state = PS_IDLE_AIR;
    }
    if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    	window = 6;
    	window_timer = 0;
    }
}

if (attack == AT_BAIR)
{
    if (window == 1 && window_timer == 9)
    {
        jet_back_fx = spawn_hit_fx(x-(30*spr_dir), y-30, jet_back);
        jet_back_fx.depth = depth+1;
    }
    if (window == 2 && window_timer % 3 == 0)
    {
        jet_front_fx = spawn_hit_fx(x+(70*spr_dir), y-40, jet_front);
        jet_front_fx.depth = -10;
    }
}

if (attack == AT_DAIR && ((window == 3 && window_timer % 4 == 0) || (window == 4 && window_timer == 0)))
{
	flashbubble_fx = spawn_hit_fx(x-(0*spr_dir), y+15, flashbubble)
	flashbubble_fx.depth = depth+1;
}

if (attack == AT_TAUNT)
{
    
}

//if (attack == AT_DSTRONG && window == 5 && window_timer == 2)
//{
//    if (position_meeting(x, y-20, obj_stage_article))
//    {
//        //if (spr_dir == 1)
//        //{
//            create_hitbox(AT_DSTRONG, 2, x+(50*spr_dir), y-20);
//        //}
//    }
//    if (position_meeting(x, y-20, obj_stage_article))
//    {
//        //else
//        //{
//            create_hitbox(AT_DSTRONG, 3, x-(40*spr_dir), y-20);
//        //}
//    }
    
    //if (x-(get_stage_data(SD_X_POS)+(get_stage_data(SD_WIDTH)/2)) >= (get_stage_data(SD_WIDTH)/2))
    //{
    //    if (spr_dir == 1)
    //    {
    //        create_hitbox(AT_DSTRONG, 3, x-40, y-20);
    //    }
    //    else
    //    {
    //        create_hitbox(AT_DSTRONG, 2, x-40, y-20);
    //    }
    //}
//}

if ((attack == AT_FAIR || attack == AT_DAIR) && window > 1 && window < 4)
{
    can_fast_fall = false;
}
else if (attack == AT_FAIR && window >= 4 && has_hit_player)
{
    can_fast_fall = true;
}

if (attack == AT_DAIR && window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
{
    can_fast_fall = true;
}
else if (attack == AT_DAIR)
{
	can_fast_fall = false;
}

if (attack == AT_DAIR && window == 4 && window_timer == 4 && has_hit_player)
{
    vsp = -10;
    has_hit_player = false;
}
else if (attack == AT_DAIR && window == 5 && window_timer == 1 && has_hit_player)
{
    vsp -= 8;
}