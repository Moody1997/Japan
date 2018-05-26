/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pauseMenu))
{
	if(mouse_x<=room_width/2+58&&mouse_x>=room_width/2-58){
		
		if(mouse_y<=room_height/2-50&&mouse_y>=room_height/2-107){
		instance_activate_all();
		instance_destroy();
		}
		if(mouse_y>=room_height/2-50&&mouse_y<=room_height/2+7)
		{
			room_restart();
			instance_activate_all();
				instance_destroy();
		}
		if(mouse_y>=room_height/2+	64&&mouse_y<=room_height/2+121)
		{
			game_end();
		}
	}
}