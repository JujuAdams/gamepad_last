/// Scans the given device's buttons for input.
/// Multiple buttons can be specified. Buttons defined last take precedence.
/// 
/// @param device
/// @param button
/// @param [button...]

var _device = argument[0];

if (gamepad_is_connected(_device))
{
    for(var _i = argument_count-1; _i >= 1; _i--) //Go backwards so buttons at the end take precedence
    {
        if (gamepad_button_check_pressed(_device, argument[_i]))
        {
            var _index = _device*__eGamepadLast.Index;
            global.__gamepad_last[_index + __eGamepadLast.Index] = argument[_i];
            global.__gamepad_last[_index + __eGamepadLast.Value] = true;
            global.__gamepad_last[_index + __eGamepadLast.Type ] = eGamepadLastType.Button;
            break;
        }
    }
}