//input
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);

//move throughout the menu
pos += down_key - up_key;
if pos >= op_lenght {pos = 0};
if pos < 0 {pos = op_lenght-1};