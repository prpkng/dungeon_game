
/// @param {Constant.VirtualKey | real} neg
/// @param {Constant.VirtualKey | real} pos
/// @return {real}
function keyboard_check_axis(neg, pos) {
    var result = 0;
    if keyboard_check(neg) { result -= 1; }
    if keyboard_check(pos) { result += 1; }
    return result;
}