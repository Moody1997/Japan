/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(x<o_Player.x&&move ==1)
{
	vsp=1.2;
}
if(x>o_Player.x&&move==-1)
{
	vsp=1.2;
}
if(place_meeting(x,y,o_Wall))
{
	vsp=0;
}
y=y+vsp;
x=x+walksp*move;
if(x>o_Player.x&&move ==1)
{
	vsp=-1;
}
if(x<o_Player.x&&move==-1)
{
	vsp=-1;
}
if(x>o_Player.x&&move==1||x<o_Player.x&&move==-1)
counter++
if(counter==30)
{
	move*=-1;
	counter= 0;
}
if(hurt==1){
++movesp;
if(movesp==60)
{
	movesp=0;
	hurt=0;
}
}


if(hurt==1)
	{
	if((movesp>=0&&movesp<=10)||(movesp>=20&&movesp<=30)||(movesp>=40&&movesp<=50))
	{alpha=0;}
	else{alpha=1;}
	}
	else {alpha=1;}

