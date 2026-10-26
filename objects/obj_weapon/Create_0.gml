attached_player = noone;

_anchorx = 0;
_anchory = 0;

hover_dx = 7;
hover_dy = 6;

localx = 0;
localy = 0;
local_angle = 0;

offsetx = 0;
offsety = 0;
dx = 0;
dy = 0;
dangle = 0;

facing = 0;
dir = 0;


function attach(player, anchorx, anchory) {
    attached_player = player;
    _anchorx = anchorx;
    _anchory = anchory;
}

