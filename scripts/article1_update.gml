if (free == true)
{
    vsp += 0.2;
}

life += 1;

if (life == 24)
{
    if (free == false)
    {
        hsp = 0;
    }
}
if (life > 24 && free == false)
{
    if (abs(hsp) < 12)
    {
        if (spr_dir >= 0)
        {
            hsp = hsp + 0.15;
        }
        else
        {
            hsp = hsp - 0.15;
        }
    }
}

if (hit_wall)
{
    spr_dir *= -1;
    hsp = 0;
}

if (hitbox == noone && life > 8)
{
    hitbox = create_hitbox(AT_FSPECIAL, 1, x+5, y-20);
    hitbox.source = id;
    hitbox.hsp = hsp;
}

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	player_id.mini_alive = false;
	spawn_hit_fx(x+20, y-20, 141);
	//if (hitbox != noone)
    //{
	//	instance_destroy(hitbox);
    //}
    instance_destroy();
    return;
}

if (hitbox != noone && !instance_exists(hitbox))
{
    player_id.mini_alive = false;
    spawn_hit_fx(x, y, 6);
    instance_destroy();
    return;
}

if (hitbox)
{
    hitbox.hsp = hsp;
    hitbox.vsp = vsp;
}

if (y >= get_stage_data(SD_BOTTOM_BLASTZONE)+get_stage_data(SD_Y_POS)
    || abs(x-(get_stage_data(SD_X_POS)+(get_stage_data(SD_WIDTH)/2))) >= get_stage_data(SD_SIDE_BLASTZONE)+(get_stage_data(SD_WIDTH)/2)
    || life >= 240
    || hit_player == true)
{
    player_id.mini_alive = false;
    if (hit_player == false)
    {
        spawn_hit_fx(x+20, y-20, 141);
    }
    if (hitbox)
    {
        instance_destroy(hitbox);
    }
    instance_destroy();
    return;
}


//if (life >= 300)
//{
//    player_id.mini_alive = false;
//    instance_destroy(hitbox);
//    instance_destroy();
//    return;
//}

//if (destroy_this)
//{
//	player_id.mini_alive = false;
//    instance_destroy(hitbox);
//    instance_destroy();
//    return;
//}

// animation
image_index = animation_frame;
if(!hitstop){
	animation_timer += 1;

	if (animation_timer == animation_framelength)
	{
	  animation_frame += 1;
	  animation_timer = 0;

	  if (animation_frame > 2)
	  {
	    animation_frame = 0;
	  }
	}
}