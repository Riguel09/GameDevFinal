if (global.first_interaction == false){
	box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Before I can start I need to know if you understand what you are doing. Everytime you want to talk to me press SHIFT. If I talk to you everytime you walk by it would be kinda ackaward for both of us. For those who don't test things out here is the tutorial: A walks left, D walks right, and SPACE jumps."
	box.msg = my_text;
	global.first_interaction = true;
	if(keyboard_check(vk_shift)){
		instance_destroy(box);
	}
}





