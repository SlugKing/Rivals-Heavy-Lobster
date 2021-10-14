if (attack == AT_NSPECIAL)
{
    roll = random_func_2(0, 1, false);
    if (roll <= 0.6)
    {
        damage = 1;
    }
    else
    {
        damage = 0;
    }
}

if (attack == AT_DSTRONG && type == 2)
{
    hbox_group = 0;
}