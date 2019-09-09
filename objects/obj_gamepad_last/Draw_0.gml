//Creator info
draw_text(10, 10, "gamepad_last() " + __GAMEPAD_LAST_VERSION + "\n@jujuadams " + __GAMEPAD_LAST_DATE);

//Iterate over all devices...
var _device = 0;
repeat(gamepad_get_device_count())
{
    //Get the index/type/value of the last gamepad input for this device
    var _index = gamepad_last_get_index(_device);
    var _value = gamepad_last_get_value(_device);
    var _type  = gamepad_last_get_type(_device);
    
    #region Build a string to describe the last gamepad input
    
    var _string = string(_device) + ": \"" + gamepad_get_description(_device) + "\": ";
    switch(_type)
    {
        case eGamepadLastType.Button:
            switch(_index)
            {
                case gp_face1:      _string += "face1";      break;
                case gp_face2:      _string += "face2";      break;
                case gp_face3:      _string += "face3";      break;
                case gp_face4:      _string += "face4";      break;
                case gp_padu:       _string += "padu";       break;
                case gp_padd:       _string += "padd";       break;
                case gp_padl:       _string += "padl";       break;
                case gp_padr:       _string += "padr";       break;
                case gp_start:      _string += "start";      break;
                case gp_select:     _string += "select";     break;
                case gp_shoulderl:  _string += "shoulderl";  break;
                case gp_shoulderr:  _string += "shoulderr";  break;
                case gp_shoulderlb: _string += "shoulderlb"; break;
                case gp_shoulderrb: _string += "shoulderrb"; break;
                case gp_stickl:     _string += "stickl";     break;
                case gp_stickr:     _string += "stickr";     break;
            }
        break;
        
        case eGamepadLastType.Axis:
            switch(_index)
            {
                case gp_axislh: _string += "axislh = " + string(_value); break;
                case gp_axislv: _string += "axislv = " + string(_value); break;
                case gp_axisrh: _string += "axisrh = " + string(_value); break;
                case gp_axisrv: _string += "axisrv = " + string(_value); break;
            }
        break;
        
        case eGamepadLastType.Unknown:
            _string += "Unknown!";
        break;
    }
    
    _string += " (" + string(_index) + ")";
    
    #endregion
    
    //Draw the string!
    draw_text(10, 70 + 25*_device, _string);
    
    ++_device;
}