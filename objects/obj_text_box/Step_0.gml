if(keyboard_check_pressed(vk_enter)){
	if(page + 1 < array_length_1d(msg)){
		page += 1;
	}
	else{
		page = 0;
		instance_destroy()
	}
}

if (spawn_exit == true && page == 1 && spawned = false){
	instance_create_layer(400, 512, "Instances", obj_exit);
	spawned = true;
}

