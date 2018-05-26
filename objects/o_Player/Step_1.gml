/// @description Insert description here
// You can write your code in this editor
firing_delay=firing_delay-1;
if(mouse_check_button(mb_left) && firing_delay<0)
{
	if(state == states.walkingleft||state==states.idleleft||state==states.jumpingleft||state==states.idleshootleft||state==states.jumpnshootleft||state==states.walkingshootleft)
	{dir=-1;}
	else
	{dir=1;}
	firing_delay=10;
	with(instance_create_layer(x+dir*100,y,"Slash",o_strike))
	{
	
	speed =0;
	}
	
}
surface_resize(application_surface, 1920, 1080);
window_set_size(1920,1080);
window_set_fullscreen(true);

if(x>room_width){
if (room==room1)
   {
   room_goto(room0);
   }
}
if(x<0)
{if (room==room1)
   {
   room_goto(room2);
   }
}
if(room==room2){
surface_resize(application_surface, 1920, 1080);
window_set_size(1920,1080);

}
if(!instance_exists(o_Bird)&&!instance_exists(o_Bug)&&!instance_exists(o_snake))
if (room==room2)
   {
   room_goto(room1);
   }
if(room==room2){
surface_resize(application_surface, 1920, 1080);
window_set_size(1920,1080);

}