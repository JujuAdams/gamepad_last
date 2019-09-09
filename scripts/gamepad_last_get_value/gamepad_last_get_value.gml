/// Return the value of the last input from the given device.
/// The value will be exactly 1 for buttons, or the axis value for thumbsticks.
/// 
/// @param device

return global.__gamepad_last[argument0*__eGamepadLast.__Size + __eGamepadLast.Value];