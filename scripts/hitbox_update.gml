if (attack == AT_NSPECIAL)
{
    if (hitbox_timer >= 7)
    {
        kb_value = 0;
        kb_scale = 0;
        effect = 0;
    }
}

//if (attack == AT_FSPECIAL)
//{
//    dir = hsp / abs(hsp);
    //if (hitbox_timer == 24)
    //{
    //    dir = hsp / abs(hsp);
    //    if (free == false)
    //    {
    //        hsp = 0;
    //    }
    //}
//    if (hitbox_timer > 24)
//    {
//        if (abs(hsp) < 8)
//        {
//            if (dir >= 0)
//            {
//                hsp = hsp + 0.1;
//            }
//            else
//            {
//                hsp = hsp - 0.1;
//            }
//        }
//    }
//}