//if (attack == AT_NSPECIAL)/
//{
//    hsp += abs(player_id.hsp);
//}

//if (attack == AT_USPECIAL)
//{
//    num_boosts -= 1;
//}

if (attack == AT_TAUNT && window == 1)
{
    if (taunt_timer < 0) {
        taunt_timer = 0;
        up_phrase = "";
    }
    else {
        taunt_timer = 4;
        up_phrase = "T";
    }
    taunt_posx = x;
    taunt_posy = y;
    down_phrase = "";
    portrait_id = "codec_head_" + string(random_func(0, 5, true)+1);
}

if (attack == AT_DSPECIAL || attack == AT_FSPECIAL)
{
    mini_timer = 0;
}