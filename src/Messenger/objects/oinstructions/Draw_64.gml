

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_sprite_ext(sinstructions,0, vx + 64, vy + 32, 7, 7, 0, c_white, 1);
//instance_create_layer(vx + 32, vy + 32, "instructions", obj_instructions);

