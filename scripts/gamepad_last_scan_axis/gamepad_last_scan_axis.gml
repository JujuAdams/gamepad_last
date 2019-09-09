/// Scans the given device's axis for input.
/// Any input below the threshold is ignored.
/// 
/// @param device
/// @param axis
/// @param threshold

var _device    = argument0;
var _axis      = argument1;
var _threshold = argument2;

if (gamepad_is_connected(_device))
{
    var _value = gamepad_axis_value(_device, _axis);
    if (abs(_value) > abs(_threshold))
    {
        var _index = _device*__eGamepadLast.Index;
        global.__gamepad_last[_index + __eGamepadLast.Index] = _axis;
        global.__gamepad_last[_index + __eGamepadLast.Value] = _value;
        global.__gamepad_last[_index + __eGamepadLast.Type ] = eGamepadLastType.Axis;
    }
}