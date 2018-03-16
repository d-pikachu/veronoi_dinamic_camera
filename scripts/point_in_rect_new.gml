//returns if point is inside rect
//arguments 0 : point to look
//arguments 1 : rectangle top left
//arguments 2 : rectangle bottom right
var p = argument0 , //point to look
rect = argument1


return (p[X] >= min(rect[X1], rect[X2]) && p[X] <= max(rect[X1], rect[X2])
and p[Y] >= min(rect[Y1], rect[Y2]) && p[Y] <= max(rect[Y1], rect[Y2]))