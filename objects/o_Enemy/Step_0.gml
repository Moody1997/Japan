/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
vsp=vsp+grv;
	if(o_Player.x<o_Enemy.x)
	{	move =-1;}
	
	else
	{move = 1;}

if(place_meeting(x+15,y,o_Wall))
{
	move=-1;
}
if(place_meeting(x-15,y,o_Wall))
{
	move=1;
}
if(place_meeting(x,y+21,o_Wall))
{
vsp=0;
}
if(movesp<45)		
{
	hsp=move*walksp;
}
else {
	hsp=0;
	}
movesp++;
if(movesp==90)
	{
	vsp=-7;
		}
if(x-o_Player.x<200){
x=x+hsp;
y=y+vsp;
}
if(!place_meeting(x,y+21,o_Wall))
{
	if(prevstate==states.jumpingright||prevstate==states.idleright)
	{	
		state=states.jumpingright;
	}
	if(prevstate==states.jumpingleft||prevstate==states.idleleft)
	{	
		state=states.jumpingleft;
	}
}
else
{
	if(prevstate==states.jumpingright||prevstate==states.idleright)
	{	
		state=states.idleright;
	}
	if(prevstate==states.jumpingleft||prevstate==states.idleleft)
	{	
		state=states.idleleft;
	}
}
if(hsp<0&&!place_meeting(x,y+21,o_Wall))
	{
		if(prevstate==states.jumpingright||prevstate==states.idleright)
		{
			if(!place_meeting(x-1,y,o_Wall))
			{x=x-10;	}
		}
		state=states.jumpingleft;
		}
if(hsp>0&&!place_meeting(x,y+21,o_Wall))
	{
		if(prevstate==states.jumpingleft||prevstate==states.idleleft)
		{
			if(!place_meeting(x+1,y,o_Wall))
			{x=x+10;	}
			state=states.jumpingright;
		}
	}
if(hurt==1)
	{
	if(movesp<18||(movesp>36&&movesp<54)||(movesp>72&&movesp<90))
	{alpha=0;}
	else{alpha=1;}
	}
	else {alpha=1;}

prevstate=state;
switch(state)
{

case states.idleright:{image_xscale =-1;index=0; break;}
case states.idleleft:{image_xscale =1;index=0; break;}
case states.jumpingright:{image_xscale =-1;index=2; break;}
case states.jumpingleft:{image_xscale =1;index=2; break;}

}
if(movesp==90)
{
	movesp=0;
	hurt=0;
}

