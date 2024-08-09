if(distance_to_object(obj_player) < interaction_range && keyboard_check(vk_shift) && text_box == noone){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	text_box.msg = my_text;
}





