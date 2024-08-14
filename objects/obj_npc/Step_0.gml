if(distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_1){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Now that you understand how to listen to my angelic voice... Wait, you are reading, right? Uh... Now that you can read my Shakespearean verses, we can begin your Hero's Journey. I'm running low on space here, so press ENTER for the next life-changing dialogue."
	my_text[1] = "Hum hum... Let me read the document they gave me: 'This game can be hard, and you might feel like you can't beat it, but 13,578 people have already beaten it, so don't lose hope!'"
	my_text[2] = "Now, test what you've learned and jump over that ledge! And one last reminder: every time I finish a dialogue, I won't repeat it. They don't pay me overtime for this kind of stuff..."
	text_box.msg = my_text;
	text_box.page = 0;
}
else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_1){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "OH MY GOD!!! You died on the F***** tutorial...Today is gonna be a long day...";
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_2){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Can you believe the audacity of these people?! They called me 'Random NPC'... I have a name! I think I deserve at least some respect for this hellish job!"
	my_text[1] = "It's James, by the way... but I think no one cares..."
	my_text[2] = "Ah, yeah, I should guide you... Do you see the bottomless pit on the lowest platform? That's your exit. So go ahead and do what you gotta do—I believe in you!"
	my_text[3] = "If you die, come talk to me, I'll have some words of wisdom to lighten your dark day! Just don't die too much, or I'll lose my patience..."
	text_box.msg = my_text;
	text_box.page = 0;
}
	
else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_2){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Keep going, it's not even that bad!" 
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 2 && room == rm_level_2){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] ="Did you like the tricks we pulled off? I even helped with some; they were crafted with care!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 3 && room == rm_level_2){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "There are still more to come, but many have faced and conquered the challenges!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 4 && room == rm_level_2){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "This is a test of your spirit. Are you going to give in?"
	my_text[1] = "Why am I speaking like this? You know I have a job, right? And this job requires me to read some preset texts... It's not like I want to do this..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Honestly, I need to congratulate you for beating the last level! I didn't expect you to be such a masochist..."
	my_text[1] = "But now you have another trial ahead of you. You've already come far, but I'm not sure if you can do it again..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Why are there copies of me? We had some scary monsters for you to jump on, but due to popular demand, we changed them to copies of me..."
	my_text[1] = "I hope it feels good jumping on my pretty face..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 2 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "No, the copies of me aren’t due to a low budget... The change was requested on the forums; you know the one. The one with all the whiny nerds and the little happy robot as its mascot!"
	my_text[1] = "You can look through the game’s files and find the carefully crafted sprites..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 3 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] ="I'm not reading my lines? Yeah, I'm not... Honestly, I'm just not in the mood to read them today..."
	my_text[1] = "And yeah, they can't just fire me! I'm irreplaceable!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 4 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "I'm starting to lose my patience with all your questions... I'm the one who asks questions here. So, here’s a deep one for you:"
	my_text[1] = "WHAT IS THE MEANING OF LIFE???"
	my_text[2] = "That’s a pretty generic one, huh? I guess it kinda is, but it’s still pretty deep..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 5 && room == rm_level_3){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Last time, I talked too much... I'll refrain from interacting with you for a bit..."
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_4){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "So you actually did it... Why? What drove you to finish this? Was it pride? Anger? Obligation? Or, God forbid, enjoyment???"
	my_text[1] = "I lied when I said many people beat this game, but I suspect you already knew that. Did thinking others had made it through help you find a reason to finish the game?"
	my_text[1] = "Honestly, the reason doesn't matter... You achieved something today; you fought against the odds and won! That alone is a great achievement!"
	my_text[2] = "'Stand proud. You are strong.' Did you catch the reference? I'm quite well-versed in pop culture..."
	my_text[3] = "So, let's get back to what really matters... Many people loathe struggle, but it's what makes us strong. Without walking through darkness, you'll never truly appreciate the light."
	my_text[4] = "Now prove you've completed this journey by jumping into the bottomless pit one last time!"


	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_4){
	obj_triangle.dialogue_read = true;
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Sorry, I couldn't help myself... I had to do it one last time..."
	my_text[1] = "I'll now spawn the portal to get you out of here..."
	my_text[2] = "Why is it me again... You know the drill..."
	my_text[3] = "One last thing, thanks for keeping me company!"
	text_box.msg = my_text;
	text_box.page = 0;
	text_box.spawn_exit = true;
}


if (global.joke_interaction == true){
	global.joke_fall = false;
}