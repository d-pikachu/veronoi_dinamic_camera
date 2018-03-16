//takes 4 coordinates of 2 lines
// can be optimised
// returns array of x,y,flag for is intersecting
var line_a_xx1 = argument0[X] ,
line_a_yy1 = argument0[Y] ,
line_a_xx2 = argument1[X] ,
line_a_yy2 = argument1[Y] ,
line_b_xx1 = argument2[X] ,
line_b_yy1 = argument2[Y] ,
line_b_xx2 = argument3[X] ,
line_b_yy2 = argument3[Y];


var I = new_point(0,0); 
I[X] = false;

var dax = (line_a_xx1-line_a_xx2), dbx = (line_b_xx1-line_b_xx2);
var day = (line_a_yy1-line_a_yy2), dby = (line_b_yy1-line_b_yy2);

var Den = dax*dby - day*dbx;
if (Den == 0) 
{
    I[X] = false;
    return I;
}

var A = (line_a_xx1 * line_a_yy2 - line_a_yy1 * line_a_xx2);
var B = (line_b_xx1 * line_b_yy2 - line_b_yy1 * line_b_xx2);

I[X] = ( A*dbx - dax*B ) / Den;
I[Y] = ( A*dby - day*B ) / Den;

  
if point_in_rect(line_a_xx1,line_a_yy1,line_a_xx2,line_a_yy2,I[X],I[Y])
and  point_in_rect(line_b_xx1,line_b_yy1,line_b_xx2,line_b_yy2,I[X],I[Y])
return I;
else 
{
    I[X] = false;
    return I;
}