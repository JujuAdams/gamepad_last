#macro __GAMEPAD_LAST_VERSION  "1.0.0"
#macro __GAMEPAD_LAST_DATE     "2018/09/09"

enum __eGamepadLast
{
    Index,
    Value,
    Type,
    __Size
}

global.__gamepad_last = array_create(gamepad_get_device_count()*__eGamepadLast.__Size);

var _i = __eGamepadLast.Index;
repeat(gamepad_get_device_count())
{
    global.__gamepad_last[@ _i] = undefined;
    _i += __eGamepadLast.__Size;
}