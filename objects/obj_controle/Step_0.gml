var numSlots = gamepad_get_device_count();

if (!global.controleConectado) 
{
    for (var i = 0; i <= numSlots; i++) 
	{
        if (gamepad_is_connected(i)) 
		{
            global.controle = i;
            if (!instance_exists(obj_transparente)) 
			{
                instance_create_layer(0, 0, "Controle", obj_transparente);
                alarm[0] = 120;
            }
            global.controleConectado = true;
            break;
        }
		else
		{
			if (instance_exists(obj_transparente)) 
			{
			    instance_destroy(obj_transparente);
			}
		}
    }
} else {
    if (!gamepad_is_connected(global.controle)) 
	{
        global.controleConectado = false;
    }
}

if(instance_exists(obj_dialogo)){
	global.dialogo = true;
}