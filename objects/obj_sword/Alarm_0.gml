
var angle = point_direction(attached_player.x, attached_player.y, mouse_x, mouse_y);
instance_create_depth(
    x + 8*dcos(angle),
    y - 8*dsin(angle),
    depth, 
    obj_hitbox,
    { width: 16, height: 16, angle: angle});