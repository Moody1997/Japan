
/// @description Insert description here
// You can write your code in this editor
HP=10;
hsp=0;
vsp=0;
grv=1.0;
walksp=8;
state=states.jumpingright;
prevstate=states.jumpingright;
image_speed = 0; //You need to do this in order to keep the automatic GM code in the background from screwing up the animation you're coding.
index = 0;
anim_speed = 0; //This translates to animating at 8 frames per second (fps) but you can set it to whatever you want. This acts as your time unit of animation, essentially.r you want. This acts as your time unit of animation, essentially.s
//Firing
firing_delay=0;
hurt=0;
pause=0;