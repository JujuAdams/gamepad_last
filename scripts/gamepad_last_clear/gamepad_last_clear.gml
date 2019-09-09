/// Clears the last input state for all gamepads.
/// This should be called at the start of the game to initialise the library.

#region Internal macros/enums

#macro __GAMEPAD_LAST_VERSION  "1.0.0"
#macro __GAMEPAD_LAST_DATE     "2018/09/09"

enum __eGamepadLast
{
    Index,
    Value,
    Type,
    __Size
}

#endregion

global.__gamepad_last = array_create(gamepad_get_device_count()*__eGamepadLast.__Size);

var _i = __eGamepadLast.Index;
repeat(gamepad_get_device_count())
{
    global.__gamepad_last[@ _i] = undefined;
    _i += __eGamepadLast.__Size;
}