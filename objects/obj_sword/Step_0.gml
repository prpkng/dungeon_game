
if mouse_check_button_pressed(mb_left) and !is_swinging {
    is_swinging = true;
    alarm_set(0, 5);
}

step_swing();

event_inherited();


