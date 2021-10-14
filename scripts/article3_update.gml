life += 1;

//if (life <= 8)
//{
//    hsp = player_id.hsp;
//    vsp = player_id.vsp;
//}
//else
//{
    hsp = 0;
    vsp = 0;
//}

//if (hitbox == noone && life >= 2)
//{
//    hitbox = create_hitbox(AT_NAIR, 1, x+16, y+16);
//    hitbox.source = id;
//    hitbox.hsp = hsp;
//    hitbox.vsp = vsp;
//}

//if (hitbox)
//{
//    hitbox.hsp = hsp;
//    hitbox.vsp = vsp;
//}

// ANIMATION
image_index = animation_frame;
if (life >= 2)
{
    animation_frame = 1;
}
if (life >= 16)
{
    image_alpha -= 0.05;
}

if (image_alpha <= 0)
{
    instance_destroy();
}

//if (life >= )