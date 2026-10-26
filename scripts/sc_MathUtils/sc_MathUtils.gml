/// @param {real} from
/// @param {real} to
/// @param {real} lambda
/// @param {real} dt
function plerp(from, to, lambda, dt) {
    return lerp(from, to, 1.0 - exp(-lambda * dt));
}



function vector_rotate(x, y, angle) {
    var _x = x * cos(angle) - y * sin(angle);
    var _y = x * sin(angle) + y * cos(angle);
    
    return { x: _x, y: _y };
}

function vector_drotate(x, y, angle) {
    angle = -angle;
    var _x = x * dcos(angle) - y * dsin(angle);
    var _y = x * dsin(angle) + y * dcos(angle);
    
    return { x: _x, y: _y };
}