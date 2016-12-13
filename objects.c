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

void move_object(POBJECT obj)
{
	clear_object(obj);
	obj->posx = obj->posx + obj->dirx;
	obj->posy = obj->posy + obj->diry;
	if(obj->posx<1 || obj->posx>128-(obj->geo->sizex)) //Betyder att x är påväg över kanten, vänd 180°.
	{
		obj->dirx = obj->dirx * (-1);
	}
	if(obj->posy<1 || obj->posy>(64-obj->geo->sizey)) //Betyder att x är påväg över kanten, vänd 180°.
	{
		obj->diry = obj->diry * (-1);
	}
	draw_object(obj);
}