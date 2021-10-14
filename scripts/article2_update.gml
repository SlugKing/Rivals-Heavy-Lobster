if (free == true)
{
    vsp += 0.2;
}

life += 1;

//if (hit_wall)
//{
//    spr_dir *= -1;
//    hsp *= -1;
//}


if (hitbox == noone)
{
    hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-5);
    hitbox.source = id;
    hitbox.hsp = hsp;
}

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	player_id.mini_alive = false;
	spawn_hit_fx(x, y, 6);
	if (hitbox != noone)
    {
		instance_destroy(hitbox);
    }
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

hitbox.hsp = hsp;
hitbox.vsp = vsp;

if (y >= get_stage_data(SD_BOTTOM_BLASTZONE)+get_stage_data(SD_Y_POS)
    || abs(x-(get_stage_data(SD_X_POS)+(get_stage_data(SD_WIDTH)/2))) >= get_stage_data(SD_SIDE_BLASTZONE)+(get_stage_data(SD_WIDTH)/2)
    || life >= 360
    || hit_player == true)
{
    player_id.mini_alive = false;
    if (hit_player == false)
    {
        spawn_hit_fx(x, y, 6);
    }
    instance_destroy(hitbox);
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

if (free && !prev_free)
{
    prev_free = true;
}

if (!free)
{
    if (life % 82 == 0)
    {
        vsp -= 3;
        hitbox.y -= 10;
        hsp = 3*spr_dir;
        free = true;
    }
    else
    {
        hsp = 0;
    }
}

// animation
image_index = animation_frame;
if(!hitstop && !free && !prev_free)
{
    if (life % 45 <= 12 && animation_totalframes == 3)
    {
	    animation_timer += 1;
    }
}
else if (!hitstop && !free && prev_free)
{
    sprite_index = sprite_get("paintland_2x");
    animation_totalframes = 4;
    animation_timer += 1;
}
else if (free)
{
    sprite_index = sprite_get("paintjump_2x");
    animation_totalframes = 2;
    animation_timer = 0;
    if (vsp < 0)
    {
        animation_frame = 0;
    }
    else
    {
        animation_frame = 1;
    }
}

if (animation_timer == animation_framelength)
{
  animation_frame += 1;
  animation_timer = 0;

  if (animation_frame > animation_totalframes-1)
  {
    if (animation_totalframes != 3)
    {
        sprite_index = sprite_get("paintidle_2x");
        animation_totalframes = 3;
        prev_free = false;
    }
    animation_frame = 0;
  }
}

