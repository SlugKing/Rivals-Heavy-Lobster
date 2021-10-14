if (my_hitboxID.attack == AT_FSPECIAL)
{
    if (hit_player_obj.player != 0)
    {
        mini.hit_player = true;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL)
{
    if (hit_player_obj.player != 0)
    {
        paint.hit_player = true;
    }
}

//if (myhitboxID.attack == AT_DTILT)
//{
//    if (hit_player_obj.free)
//    {
//        myhitboxID.kb_angle = 75;
//    }
//}

if (my_hitboxID.attack == AT_FTILT)
{
    if (!instance_exists(grabbed_player_obj))
    {
        grabbed_player_obj = hit_player_obj;
    }
}