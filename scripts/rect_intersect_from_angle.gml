// argument0 = mid_pointx
// argument1 = mid_pointy
// argument2 = pointing_direction
// argument3 = rect with
// argument4 = rect height
var a , b , xx , yy , l_ed , A , r;
a = W
b = H
xx = argument0
yy = argument1
l_ed = argument2
l_ed = l_ed%360
l_ed = pi*(l_ed/180)   
A = arctan(H/W)
//right wall
if (l_ed >= (2*pi)-A and l_ed <=2*pi) or (l_ed>=0 and l_ed <= A)
    {  
        r[0] = xx + a/2 
        r[1] = ((a/2) * -tan(l_ed))+ yy
    } 
//left wall
else if (l_ed >= pi-A && l_ed <= pi+A)
    {
        r[0] = xx - a/2 
        r[1] = ((a/2) * tan(l_ed))+ yy
    }
//top wall
else if (l_ed > A && l_ed < pi-A) 
    {
        r[0] = xx + b/(2* tan(l_ed))  
        r[1] = yy - b/2 
    }
//bottom wall
else if (l_ed > pi+A && l_ed < (2*pi)-A) 
    {
        r[0] = xx + b/(2* -tan(l_ed))  
        r[1] = b/2 + yy
    }
else
    {
        r[0] = -100
        r[1] = -100
    }
    
return r
