/// Return the type of the last input from the given device.
/// This type is defined by the eGamepadLastType enum (see below).
/// 
/// @param device

enum eGamepadLastType
{
    Unknown,
    Button,
    Axis
}

return global.__gamepad_last[argument0*__eGamepadLast.__Size + __eGamepadLast.Type];