// this is deciding what keys to press when moving 
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);



//(insert key) * 1
// 1 = speed of the player moving
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pause
if instance_exists(Obj_Player_Pauser)
    {
	xspd = 0;
	yspd = 0;
    }

//collision
if place_meeting(x + xspd, y, Obj_wall)
  {
xspd = 0;
  }
  if place_meeting(x, y + yspd, Obj_wall)
  {
yspd = 0;
  }

//basic stuff to add
x += xspd;
y += yspd;

//set sprite
mask_index = sprite[DOWN];
if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}


if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}

sprite_index = sprite[face];

//animation
if xspd == 0 && yspd == 0
     {
    image_index = 0;
	 }


//depth
depth = -bbox_bottom;
