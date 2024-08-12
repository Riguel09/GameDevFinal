if (global.first_interaction == false){
	box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] =  "Before I can start, I need to know if you understand what you are doing. Every time you want to talk to me press SHIFT. If I speak to you every time you walk by it would be quite awkward for both of us. For those who don't test things out here is the tutorial: A walks left, D walks right, and SPACE jumps."
	box.msg = my_text;
	global.first_interaction = true;
	if(keyboard_check(vk_shift)){
		instance_destroy(box);
	}
}

else if (global.joke_fall == true && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] =  "I can't believe you actually jumped on the pit!!! If someone asks you to jump from a pit do you do it??? I guess you would do it..."
	text_box.msg = my_text;
	text_box.page = 0;
	global.joke_interaction = false;
	if(keyboard_check(vk_shift)){
		instance_destroy(box);
	}
}



