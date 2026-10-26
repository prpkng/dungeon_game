accel = 0.5;
decel = 0.5;
move_spd = 2;

//coll_layer = layer_tilemap_get_id("Collisions");
coll_layer = obj_solid;

// Velocity
vx = 0;
vy = 0;

// Direction
dx = 0;
dy = 0;
dir_angle = 0;


// Spawn sword
sword = instance_create_depth(x, y, -10, obj_sword);
sword.attach(self, 7, 0);

// Visual
yscale = 1;
rotation = 0;


SUBSTEP = 0.1;

function gather_input() {
    dx = keyboard_check_axis(vk_left, vk_right) + 
        keyboard_check_axis(ord("A"), ord("D"));
    
    dy = keyboard_check_axis(vk_up, vk_down) + 
        keyboard_check_axis(ord("W"), ord("S"));
        
}

function movement_step() {
    var len = sqrt(sqr(dx) + sqr(dy));
    if len != 0 {
       dx /= len;
       dy /= len;
    }
    
    // X Movement
    var targetx = dx * move_spd;
    var xdiff = targetx - vx;
    var xsmooth = abs(targetx) < abs(vx) ? (decel) : (accel);
    vx += xdiff * xsmooth * game.tmod;
    
    // Y Movement
    var targety = dy * move_spd;
    var ydiff = targety - vy;
    var ysmooth = abs(targety) < abs(vy) ? (decel) : (accel);
    vy += ydiff * ysmooth * game.tmod;
    
    if place_meeting(x + vx, y, coll_layer) {
        while (!place_meeting(x + sign(vx)*SUBSTEP, y, coll_layer)) {
            x += sign(vx)*SUBSTEP;
        }
        vx = 0;
    }
    
    x += vx;
    
    
    if place_meeting(x, y + vy, coll_layer) {
        while (!place_meeting(x, y + sign(vy)*SUBSTEP, coll_layer)) {
            y += sign(vy)*SUBSTEP;
        }
        vy = 0;
    }
    
    y += vy;
    
}



function look_at_mouse() {  
    yscale = sign(mouse_x - x);
    if yscale == 0 { yscale = 1; }
    var dir = point_direction(x, y, mouse_x, mouse_y);
    dir = yscale > 0 ? -angle_difference(0, dir) / 3 : 180-angle_difference(180, dir) / 3 ;
    rotation = dir;
}