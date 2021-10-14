if ("mini_alive" not in self) exit;

draw_set_alpha(1);
shader_start();

if (mini_alive)
{
    if (spawnable_out == 0)
    {
        draw_sprite(sprite_get("hud_mini"), 0, temp_x + 170, temp_y - 31);
    }
    else if (spawnable_out == 1)
    {
        draw_sprite(sprite_get("hud_paintb"), 0, temp_x + 170, temp_y - 33);
    }
}

if (taunt_timer >= 0 && (taunt_timer < 4 || taunt_timer > 98)) {
    draw_sprite(sprite_get("codec_bg_spawn"), 0, temp_x-8, temp_y);
}
if (taunt_timer >= 4 && taunt_timer <= 98) {
    draw_sprite(sprite_get("codec_bg_main"), 0, temp_x-8, temp_y);
    upper_string = "They're now fighting";
    lower_string = "Heavy Lobster!";
    if (taunt_timer % 2 == 0) {
        index = ceil((taunt_timer-3) / 2);
        index2 = ceil((taunt_timer-47) / 2);
        //draw_debug_text(temp_x, temp_y-30, string(index2));
        if (taunt_timer < 47) {
            up_phrase = up_phrase + string_char_at(upper_string, index);
        }
        else
        {
            up_phrase = upper_string;
        }
        
        if (taunt_timer > 46 && taunt_timer < 75) {
            down_phrase = down_phrase + string_char_at(lower_string, index2);
        }
        else if (taunt_timer < 47) {
            down_phrase = "";
        }
        else if (taunt_timer > 74) {
            down_phrase = lower_string;
        }
    }
    draw_debug_text(temp_x + 46, temp_y + 10, up_phrase);
    draw_debug_text(temp_x + 46, temp_y + 26, down_phrase);
    
    draw_sprite(sprite_get(portrait_id), 0, temp_x+6, temp_y+12);
}

shader_end();