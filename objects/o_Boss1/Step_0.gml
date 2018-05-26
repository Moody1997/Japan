/// @description Insert description here
// You can write your code in this editor
if(HP<=0){
instance_destroy();
room_goto(room1);
}
counter++;

if(counter==200)
{
instance_create_layer(x-random(4)*100,y+200,"Instances",o_flame)
counter=0;
}