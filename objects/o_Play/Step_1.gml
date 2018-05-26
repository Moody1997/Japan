/// @description Insert description here
// You can write your code in this editor
window_set_fullscreen(true);
surface_resize(application_surface, 1920, 1080);
window_set_size(1920,1080);
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, o_Play))
{
room_goto(room1);

}