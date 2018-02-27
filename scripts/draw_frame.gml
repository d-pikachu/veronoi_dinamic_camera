//take frame instance as argument0
//argument1 : color
draw_set_color(argument1)

draw_rectangle(argument0.x,argument0.y,argument0.bottom_right[X]-1,
argument0.bottom_right[Y]-1,true)

draw_line(argument0.middle[X],argument0.middle[Y]-10,
argument0.middle[X],argument0.middle[Y]+10)

draw_line(argument0.middle[X]-10,argument0.middle[Y],
argument0.middle[X]+10,argument0.middle[Y])

draw_set_color(c_black)
