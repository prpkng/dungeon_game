

if attached_player != noone {
    facing = mouse_x >= attached_player.x ? 1 : -1;
    image_yscale = facing;
    var dir = point_direction(x, y, mouse_x, mouse_y);
    dir = facing ? -angle_difference(0, dir) / 2 : 180-angle_difference(180, dir) / 2 ;
    local_angle = dir;

    
    var disp = vector_drotate(dx, dy, 0);
    localx = _anchorx + disp.x;
    localy = _anchory + disp.y;

    
    var _angle = attached_player.rotation;
    var _rot = vector_drotate(localx, localy, _angle);
    show_debug_message(_angle);
    x = attached_player.x + _rot.x;
    y = attached_player.y + _rot.y;
    image_angle = local_angle + dangle*facing;
}