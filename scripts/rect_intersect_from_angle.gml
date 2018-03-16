// argument0 = mid_pointx
// argument1 = mid_pointy
// argument2 = pointing_direction
// argument3 = rect with
// argument4 = rect height
var a = W ,
b = H ,
xx = argument0[X] , 
yy = argument0[Y] ,
l_ed = argument1 ,
l_ed = l_ed%360 ,
l_ed = pi*(l_ed/180) ,  
A = arctan(H/W) ,
r = new_point(0,0);

//right wall
if (l_ed >= (2*pi)-A and l_ed <=2*pi) or (l_ed>=0 and l_ed <= A)
    {  
        r[X] = xx + a/2 
        r[Y] = ((a/2) * -tan(l_ed))+ yy
    } 
//left wall
else if (l_ed >= pi-A && l_ed <= pi+A)
    {
        r[X] = xx - a/2 
        r[Y] = ((a/2) * tan(l_ed))+ yy
    }
//top wall
else if (l_ed > A && l_ed < pi-A) 
    {
        r[X] = xx + b/(2* tan(l_ed))  
        r[Y] = yy - b/2 
    }
//bottom wall
else if (l_ed > pi+A && l_ed < (2*pi)-A) 
    {
        r[X] = xx + b/(2* -tan(l_ed))  
        r[Y] = b/2 + yy
    }
else
    {
        r[X] = -100
        r[Y] = -100
    }
    
return r