#include "objects.h"

void set_object_speed(POBJECT obj, int speedx, int speedy)
{
	obj->dirx = speedx;
	obj->diry = speedy;
}

void draw_object(POBJECT obj)
{
	for(int i=0; i<obj->geo->numpoints; i++)
	{
		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 1);
	}
}

void clear_object(POBJECT obj)
{
	for(unsigned char i=0; i<obj->geo->numpoints; i++)
	{
		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 0);
	}
}

void move_ball(POBJECT obj)
{
	clear_object(obj);
	obj->posx = obj->posx + obj->dirx;
	obj->posy = obj->posy + obj->diry;
	if(is_out_of_bounds_x(obj)) //Betyder att x är påväg över kanten, vänd 180°.
	{
		obj->dirx = obj->dirx * (-1);
	}
	if(is_out_of_bounds_y(obj)) //Betyder att x är påväg över kanten, vänd 180°.
	{
		obj->diry = obj->diry * (-1);
	}
	draw_object(obj);
}
void move_player(POBJECT obj){
	if(is_out_of_bounds_y(obj))
		return;
		
	//move player	
	
}

char is_out_of_bounds_y(POBJECT obj){
	return (obj->posy<0 || (obj->posy) >(64-(obj->geo->sizey))); 
}
char is_out_of_bounds_x(POBJECT obj){
	return (obj->posx<0 || (obj->posx)>(128-(obj->geo->sizex))); 
}


static GEOMETRY ball_geometry={
	12, //numpoints
	4,4, //sixex, sixey
	{
		//px[0,1,2...]
		{0,1},{0,2},{1,0},{1,1},
		{1,2},{1,3},{2,0},{2,1},
		{2,2},{2,3},{3,1},{3,2},
	}
};
static GEOMETRY player_geometry={
	28, //numpoints
	2,14, //sixex, sixey
	{
		//px[0,1,2...]
		{0,0},{1,0},
		{0,1},{1,1},
		{0,2},{1,2},
		{0,3},{1,3},
		{0,4},{1,4},
		{0,5},{1,5},
		{0,6},{1,6},
		{0,7},{1,7},
		{0,8},{1,8},
		{0,9},{1,9},
		{0,10},{1,10},
		{0,11},{1,11},
		{0,12},{1,12},
		{0,13},{1,13},
	}
};
extern OBJECT ball= {
	&ball_geometry,
	0,0, //initiala riktningpositioner
	1,1, //initiala startpositioner
	draw_object,
	clear_object,
	move_ball,
	set_object_speed
};
extern OBJECT player1= {
	&player_geometry,
	0,0, //initiala riktningpositioner
	0,0, //initiala startpositioner
	draw_object,
	clear_object,
	move_player,
	set_object_speed
};
extern OBJECT player2= {
	&player_geometry,
	0,0, //initiala riktningpositioner
	(128-2),1, //initiala startpositioner
	draw_object,
	clear_object,
	move_player,
	set_object_speed
};
