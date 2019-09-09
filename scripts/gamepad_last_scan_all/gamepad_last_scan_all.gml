/// Default script that scans all devices for any input.
/// If you have some devices with extra buttons/axes add them here!
/// Alternatively, you can write your own scanning script by calling
/// gamepad_last_scan_axis() and/or gamepad_last_scan_button() directly.
/// 
/// This script will ignore any thumbstick movement below the axis threshold.
///
/// @param axisThreshold

var _threshold = argument0;

var _device = 0;
repeat(gamepad_get_device_count())
{
    if (gamepad_is_connected(_device))
    {
        gamepad_last_scan_axis(_device, gp_axislh, _threshold);
        gamepad_last_scan_axis(_device, gp_axislv, _threshold);
        gamepad_last_scan_axis(_device, gp_axisrh, _threshold);
        gamepad_last_scan_axis(_device, gp_axisrv, _threshold);
        
        gamepad_last_scan_button(_device, gp_face1, gp_face2, gp_face3, gp_face4);
        gamepad_last_scan_button(_device, gp_start, gp_select);
        gamepad_last_scan_button(_device, gp_stickl, gp_stickr);
        gamepad_last_scan_button(_device, gp_padl, gp_padr, gp_padd, gp_padu);
        gamepad_last_scan_button(_device, gp_shoulderl, gp_shoulderr, gp_shoulderlb, gp_shoulderrb);
    }
    
    ++_device;
}