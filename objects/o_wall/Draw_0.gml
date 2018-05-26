/// @description Insert description here
// You can write your code in this editor
if(room==room2)
{index=2;}
else
{index=0;}

if(!place_meeting(x,y-127,o_Wall))
draw_sprite_ext( sprite_index, index+0, x, y, image_xscale, 1, 0, c_white, 1 );
else
draw_sprite_ext( sprite_index, index+1, x, y, image_xscale, 1, 0, c_white, 1 );