/// @description Insert description here
// You can write your code in this editor
hsp=0;
vsp=0;
hurt=0;
alpha=1;
grv=0.8;
walksp=0;
state=states.walkingleft;
prevstate=states.walkingleft;
image_speed = 0; //You need to do this in order to keep the automatic GM code in the background from screwing up the animation you're coding.
index = 0;
anim_speed = 60 //This translates to animating at 8 frames per second (fps) but you can set it to whatever you want. This acts as your time unit of animation, essentially.r you want. This acts as your time unit of animation, essentially.s
//Firing
firing_delay=0;
HP=5;
movesp=0;
move=-1;
counter=0;