fireball_voffset = fireball_voffset + 1;
fireball_sound_offset += 1;

if (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)
{
    walk_sound_timer += 1;
    if (state == PS_WALK && walk_sound_timer >= 18)
    {
        walk_sound_timer = 0;
        sound_stop(sound_get("lobster_sound"));
        sound_play(sound_get("lobster_sound"));
    }
    else if ((state == PS_DASH || state == PS_DASH_START) && walk_sound_timer >= 8)
    {
        walk_sound_timer = 0;
        sound_stop(sound_get("lobster_sound"));
        sound_play(sound_get("lobster_sound"));
    }
}

if(state == PS_DASH || state == PS_DASH_START || djumps >= max_djumps || state == PS_WAVELAND || (state == PS_ATTACK_AIR && attack == AT_BAIR) || 
((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)) ||
(state == PS_ATTACK_GROUND && attack == AT_DSTRONG && window == 1 && strong_charge > 0) ||
((state == PS_ATTACK_AIR && attack == AT_DAIR) && window == 3))
{
    if (state != PS_DEAD)
    {
        jet_bubble_timer += 1;
        if (jet_bubble_timer >= 5)
        {
            if (state != PS_ATTACK_AIR || attack != AT_DAIR)
            {
                jb = spawn_hit_fx(x-(45*spr_dir), y-40, jet_bubble);
            }
            else
            {
                jb = spawn_hit_fx(x-(5*spr_dir), y-65, jet_bubble);
            }
            if ((state == PS_ATTACK_GROUND && attack == AT_DSTRONG && window == 1 && strong_charge > 0))
            {
                jb.hspeed = -1*spr_dir;
            }
            jet_bubble_timer = 0;
        }
    }
}

if(state == PS_PRATFALL) {
    if (state != PS_DEAD)
    {
        flame_timer += 1;
        if (flame_timer >= 4)
        {
            flame_fx = spawn_hit_fx(x-(45*spr_dir), y-60, flame);
            //flame_fx.hspeed = -1*spr_dir;
            flame_timer = 0;
        }
    }
}

if(state == PS_ATTACK_AIR && attack == AT_BAIR)
{
    fast_fall = 6; //fast fall speed
}
else
{
    fast_fall = 10; //fast fall speed
}

if (!free && num_boosts < max_boosts && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
    num_boosts = max_boosts;
}

if (state == PS_WALL_JUMP && num_boosts <= 0)
{
    num_boosts = 1;
}

for (i = 0; i < ds_list_size(afterimage_list); i++)
{
    old_alpha = ds_list_find_value(ds_list_find_value(afterimage_list, i), 2);
    ds_list_delete(ds_list_find_value(afterimage_list, i), 2);
    ds_list_insert(ds_list_find_value(afterimage_list, i), 2, old_alpha - 0.05);
}

if (taunt_timer >= 0)
{
    //taunt_timer += 1;
    if (taunt_timer >= 103)
    {
        taunt_timer = -1;
    }
}

if (mini_timer >= 240)
{
    mini_alive = true;
}

if (!mini_alive)
{
    spawnable_out = -1;
}

//#define spawnJetBubbles
//var bub_vsp = random_func(0, 3, false);
//spawn_hit_fx(argument[0], argument[1], jet_bubble);