/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
enum states {idleright,
			idleleft,
			walkingright,
			walkingleft,
			jumpingright,
			jumpingleft,
			idleshootright,
			idleshootleft,
			walkingshootright,
			walkingshootleft,
			jumpnshootright,
			jumpnshootleft}
if(HP==0)
{
	game_restart();
}
prevstate=state;
keyleft= keyboard_check(vk_left)||keyboard_check(ord("A"));
keyright = keyboard_check(vk_right)||keyboard_check(ord("D"));
keyjump=keyboard_check_pressed(vk_space);
if(!place_meeting(x,y+65,o_Wall)&&!keyleft&&!keyright)
{
	if(prevstate==states.idleleft||prevstate==states.jumpingleft||prevstate==states.walkingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
	{
		state = states.jumpingleft
	}
	if(prevstate==states.idleright||prevstate==states.jumpingright||prevstate==states.walkingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
	{
		state = states.jumpingright;	
	}
}
if(!keyleft&&!keyright&&place_meeting(x,y+62,o_Wall))
	{
	if(prevstate==states.walkingright||prevstate==states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{
			state=states.idleright;
		}
	if(prevstate == states.walkingleft||prevstate==states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{
			state=states.idleleft;
		}
		
	}
if(keyjump||!place_meeting(x,y+62,o_Wall))
{
	if(prevstate==states.idleleft||prevstate==states.walkingleft||prevstate==states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{state=states.jumpingleft;}
	if(prevstate==states.idleright||prevstate==states.walkingright||prevstate==states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{state=states.jumpingright;}
}
if(keyleft&&!keyright&&place_meeting(x,y+62,o_Wall))
	{
		if(prevstate==states.walkingright||prevstate==states.jumpingright||prevstate==states.idleright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{
		//	x=x-32;	
		}
		state=states.walkingleft;
		}
if(keyright&&!keyleft&&place_meeting(x,y+62,o_Wall))
	{
		if(prevstate==states.walkingleft||prevstate==states.jumpingleft||prevstate==states.idleleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{

		//	x=x+32;	
				
		}
		state=states.walkingright;
	}
if(keyright&&keyleft&&place_meeting(x,y+62,o_Wall))
{
if(prevstate==states.walkingleft||prevstate=states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
	{
	state=states.idleleft;
	}
	if(prevstate==states.walkingright||prevstate=states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
	{
	state=states.idleright;
	}
}
if(keyleft&&!keyright&&!place_meeting(x,y+62,o_Wall)&&(prevstate==states.jumpingright||prevstate==states.jumpnshootright))
{state = states.jumpingleft;
	//	x=x-32;
		}
if(!keyleft&&keyright&&!place_meeting(x,y+62,o_Wall)&&(prevstate==states.jumpingleft||prevstate==states.jumpnshootleft))
{state = states.jumpingright;
//	x=x+32;
	}
	if(state=states.idleright&&mouse_check_button(mb_left))
		{
		state=states.idleshootright;
		}
		else
		if(state=states.idleleft&&mouse_check_button(mb_left))
		{
		state=states.idleshootleft;
		}
		else
		if(state=states.walkingright&&mouse_check_button(mb_left))
		{
		state=states.walkingshootright;
		}
		else
		if(state=states.walkingleft&&mouse_check_button(mb_left))
		{
		state=states.walkingshootleft;
		}
		else
		if(state=states.jumpingright&&mouse_check_button(mb_left))
		{
		state=states.jumpnshootright;
		}
		else
		if(state=states.jumpingleft&&mouse_check_button(mb_left))
		{
		state=states.jumpnshootleft;
		}
switch(state){
case states.idleright:{image_xscale =1; {index=0;} break;}
case states.idleleft:{image_xscale =-1;{index=0;} break;}
case states.walkingright:{image_xscale =1;{index=0;} break;}
case states.walkingleft:{image_xscale =-1;{index=0;} break;}
case states.jumpingright:{image_xscale =1;{index=0;} break;}
case states.jumpingleft:{image_xscale =-1;{index=0;}  break;}
case states.idleshootright:{image_xscale =1;{index=16;} break;}
case states.idleshootleft:{image_xscale =-1;{index=16;} break;}
case states.walkingshootright:{image_xscale =1;{index=16;} break;}
case states.walkingshootleft:{image_xscale =-1;{index=16;} break;}
case states.jumpnshootright:{image_xscale =1;{index=16;} break;}
case states.jumpnshootleft:{image_xscale =-1;{index=16;}  break;}
}

var move = keyright - keyleft;
vsp=vsp+grv;
hsp = move *walksp;
if(place_meeting(x,y+30,o_Wall)&&keyjump)
{
	vsp=-15;
}
if(place_meeting(x+hsp, y,o_Wall))
{
	while(!place_meeting(x+sign(hsp), y, o_Wall))
	{
		x=x+sign(hsp);
	}
	hsp =0;	
}
x =	x +hsp;
if(place_meeting(x, y+vsp,o_Wall))
{
	while(!place_meeting(x, y+sign(vsp), o_Wall))
	{
		y=y+sign(vsp);
	}
	vsp =0;	
}
y =	y +vsp;

anim_speed++;
if(anim_speed==60)
	{
	hurt=0;
	anim_speed=0;
	}
	if(y>1080)
	{
	game_restart();
	}
