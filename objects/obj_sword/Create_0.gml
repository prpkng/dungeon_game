// Inherit the parent event
event_inherited();

is_swinging = false
swing_duration = 15;
swing_counter = 0;

offsetx = 3;
offsety = 4;


function step_swing() {
    dangle = 0;

    if !is_swinging { 
        dx = 0;
        dy = 0;
        return; 
    }
    
    swing_counter += game.tmod;
    if swing_counter > swing_duration {
        swing_counter = 0;
        is_swinging = false;
        return;
    }
    
    dx = 0;
    dx = -8+sin(pi/36 + swing_counter / swing_duration * pi) * 8
    
    dy = -3 + swing_counter / swing_duration * 3;
    
    var angle = lerp(80, -140, swing_counter / swing_duration);
    dangle = angle;
}
