//takes 4 coordinates of 2 lines
// can be optimised
// returns array of x,y,flag for is intersecting
var line_a_xx1 = argument0 ,
line_a_yy1 = argument1 ,
line_a_xx2 = argument2 ,
line_a_yy2 = argument3 ,
line_b_xx1 = argument4 ,
line_b_yy1 = argument5 ,
line_b_xx2 = argument6 ,
line_b_yy2 = argument7;


var I;
I[2] = true

var dax = (line_a_xx1-line_a_xx2), dbx = (line_b_xx1-line_b_xx2);
var day = (line_a_yy1-line_a_yy2), dby = (line_b_yy1-line_b_yy2);

var Den = dax*dby - day*dbx;
if (Den == 0) 
{
    /*I[0] = -1
    I[1] = -1*/
    I[2] = false
    return I;
}

var A = (line_a_xx1 * line_a_yy2 - line_a_yy1 * line_a_xx2);
var B = (line_b_xx1 * line_b_yy2 - line_b_yy1 * line_b_xx2);

I[0] = ( A*dbx - dax*B ) / Den;
I[1] = ( A*dby - day*B ) / Den;

  
if point_in_rect(line_a_xx1,line_a_yy1,line_a_xx2,line_a_yy2,I[0],I[1])
and  point_in_rect(line_b_xx1,line_b_yy1,line_b_xx2,line_b_yy2,I[0],I[1])
return I;
else 
{
    /*I[0] = -1
    I[1] = -1*/
    I[2] = false
    return I;
}

