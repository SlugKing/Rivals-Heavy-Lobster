//if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && free && state != PS_PRATFALL)
//{
//if (window_timer % 3 == 0)
//{

//if (state==PS_ATTACK_GROUND && attack==AT_TAUNT)
if (taunt_timer >= 0)
{
    //draw_sprite_ext(sprite_get("pistola"),0,x,y,4,7,0,c_black,(140-window_timer)/100)
    //draw_sprite_ext(sprite_get("pistola"),0,x,y-30,0.4,0.4,0,c_white,1)
    //
    //if (window == 1 && window_timer == 1)
    //{
    //    portrait_id = "codec_char_" + string(random_func(0, 16, true));
    //    portrait = hit_fx_create(sprite_get(portrait_id), 102);
    //    p_fx = spawn_hit_fx(x-80, y+50, portrait);
    //    p_fx.depth = -20;
    //    p_fx.image_xscale = -1;
    //    codec_bg = spawn_hit_fx(x, y+50, codec_bg_anim);
    //    codec_bg.image_xscale = -1;
    //}
    //else if (window == 1 && window_timer == 1)
    //{
    //    
    //}
    //else if (window == 1 && window_timer == 43)
    //{
    //    codec_bg2 = spawn_hit_fx(x, y+50, codec_bg_fin);
    //    codec_bg2.image_xscale = -1;
    //    //spawn_hit_fx(x-80, y+50, portrait);
    //}
    
    if (taunt_timer == 0)
    {
        portrait_id = "codec_head_" + string(random_func(0, 5, true)+1);
    }
    
    if (taunt_timer < 86)
    {
        codec_timer = taunt_timer;
        //draw_sprite_ext(sprite_get("codec_bg"), floor(codec_timer / 2), taunt_posx, taunt_posy+50, 1, 1, 0, c_white, 1);
    }
    else if (taunt_timer > 85 && taunt_timer < 102)
    {
        //draw_sprite_ext(sprite_get("codec_bg_fin"), 1, taunt_posx, taunt_posy+50, 1, 1, 0, c_white, 1);
    }
    
    if (taunt_timer > 0 && taunt_timer < 102)
    {
        //draw_sprite_ext(sprite_get(portrait_id), 1, taunt_posx-80, taunt_posy+50, 1, 1, 0, c_white, 1);
    }
    else if (taunt_timer == 102)
    {
        //draw_sprite_ext(sprite_get("codec_bg"), 0, taunt_posx, taunt_posy+50, 1, 1, 0, c_white, 1);
    }
    
    if (taunt_timer > 3 && taunt_timer < 75 && taunt_timer % 2 == 0)
    {
        sound_play(sound_get("text_letter"));
    }
    
    taunt_timer++;
}


if (num_boosts > -1)
{
    for (i = 0; i < ds_list_size(afterimage_list); i++)
    {
        xpos = ds_list_find_value(ds_list_find_value(afterimage_list, i), 0);
        ypos = ds_list_find_value(ds_list_find_value(afterimage_list, i), 1);
        alpha = ds_list_find_value(ds_list_find_value(afterimage_list, i), 2);
        if (alpha <= 0)
        {
            ds_list_destroy(ds_list_find_value(afterimage_list, i));
            ds_list_delete(afterimage_list, i);
        }
        draw_sprite_ext(sprite_get("afterimage"), 0, xpos, ypos, spr_dir, 1, 0, $ff974a, alpha);
    }
}
    //draw_sprite_ext(sprite_get("uspecial"), 5, x-((10*abs(hsp) + 20)*spr_dir), y+(5*-vsp), spr_dir, 1, 0, $ffaa6c, 1);
//}
//}
