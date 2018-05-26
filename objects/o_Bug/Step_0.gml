/// @description Insert description here
// You can write your code in this editor
vsp=vsp+grv;
counter++;
if(place_meeting(x,y,o_Wall))
{
	if(vsp>0)
		vsp=0;
}

if(counter==60)
{
	if(o_Player.x<x)
	{
		move=-1;
	}
	else
	{
		move=1;
	}
	if(place_meeting(x,y,o_Wall))
	{
		vsp=-14;
	}
	counter=0;
}
if(!place_meeting(x,y,o_Wall))
{
	walksp=6;
}
else
{
walksp=0;
}
if(hurt==1){
++movesp;
if(movesp==60)
{
	movesp=0;
	hurt=0;
}
}
y=y+vsp;
x=x+walksp*move;
if(hurt==1)
	{
	if((movesp>=0&&movesp<=10)||(movesp>=20&&movesp<=30)||(movesp>=40&&movesp<=50))
	{alpha=0;}
	else{alpha=1;}
	}
	else {alpha=1;}

