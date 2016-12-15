#ifndef OBJECTS_H
#define OBJECTS_H


typedef struct tPoint
{
	unsigned char x;
	unsigned char y;
} POINT;

#define MAX_POINTS 30 // ändra?

typedef struct tGeometry
{
	int numpoints;
	int sizex;
	int sizey;
	POINT px[MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

typedef struct tObj{
	PGEOMETRY geo;
	int dirx, diry;
	int posx, posy;
	void (* draw) (struct tObj *);
	void (* clear) (struct tObj *);
	void (* move) (struct tObj *);
	void (* set_speed) (struct tObj *, int, int);
} OBJECT, *POBJECT;

void set_object_speed(POBJECT obj, int speedx, int speedy);

void draw_object(POBJECT obj);
void clear_object(POBJECT obj);

void move_ball(POBJECT obj);
void move_player(POBJECT obj);

char is_out_of_bounds_y(POBJECT obj);
char is_out_of_bounds_x(POBJECT obj);

extern OBJECT ball;
extern OBJECT player1;
extern OBJECT player2;
extern char player1_score;
extern char player2_score;

static POBJECT ptrball;
static POBJECT ptrplayer1;
static POBJECT ptrplayer2;

char if_hit_object(POBJECT obj);

#endif //objects_h