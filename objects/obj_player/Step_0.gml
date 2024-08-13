if (jumping == false && bouncing == false && !place_meeting(x, y + 10, obj_ground)) {
    falling = true;
}

// Handle falling logic
if (falling == true) {
	image_speed = 1;
    vertical_velocity += falling_gravity;
    if (vertical_velocity > falling_max_velocity) vertical_velocity = falling_max_velocity;

    var vertical_check = 5;

    if (vertical_velocity > 0) { // Moving downwards
        if (place_meeting(x, y + vertical_check, obj_ground)) {
            vertical_velocity = 0;
            
            var floor_instance = instance_place(x, y + vertical_check, obj_ground);
            y = floor_instance.y - sprite_height;
            
            falling = false;
            on_floor = true;
        } 
    } 
}

// Handle jumping logic
if (on_floor == true) {
    if (keyboard_check_pressed(vk_space)) {
        audio_play_sound(snd_jump, false, false);
        on_floor = false;
        jumping = true;
        vertical_velocity = -jump_initial_inpulse;
        sprite_index = spr_jump; 
		image_speed = 0;
		image_index = 0;
    }
}

if (jumping == true) {
    if (image_index >= 3) {
        image_speed = 0;
    } else {
        image_speed = 1;
    }

    // Check for upward movement collisions
    if (vertical_velocity < 0) { // Moving upwards
        if (place_meeting(x, y + vertical_velocity, obj_ground)) {
            // Stop upward movement
            vertical_velocity = 0;

            // Find the instance of the object we're colliding with
            var ceiling_instance = instance_place(x, y + vertical_velocity, obj_ground);
            
            // Ensure that the instance exists before accessing its properties
            if (ceiling_instance != noone) {
                // Adjust position to just below the object hit from below
                y = ceiling_instance.y + ceiling_instance.sprite_height;
            }

            // Transition to falling state
            jumping = false;
            falling = true;
            sprite_index = spr_fall;
        }
    }

    if (keyboard_check(vk_space)) {
        vertical_velocity -= jump_acceleration;
    } else {
        jumping = false;
        falling = true;
        sprite_index = spr_fall;
    }

    if (vertical_velocity < -jump_max_velocity) vertical_velocity = -jump_max_velocity;

    jump_timer++;

    if (jump_timer > jump_duration) {
        jumping = false;
        falling = true;
        jump_timer = 0;
        sprite_index = spr_fall;
    }
}


// Ensure player stays within the room boundaries
if (x < 0) {
    x = 0;
} else if (x > room_width - sprite_width/2) {
    x = room_width - sprite_width/2;
}
if (y < 0) {
    y = 0;
} else if (y > room_height - sprite_height) {
    y = room_height - sprite_height;
}

// Horizontal movement
facing = 1;
if (keyboard_check(ord("A"))) {
	if(on_floor){
		sprite_index = spr_right; 
	}
    horizontal_velocity = -4;
    facing = -1;
    image_xscale = facing;
} else if (keyboard_check(ord("D"))) {
	if(on_floor){
    sprite_index = spr_right;
	}
    horizontal_velocity = 4;
    facing = 1;
    image_xscale = facing; 
} else {
    horizontal_velocity = 0;
    if (on_floor) {
        sprite_index = spr_idle;
    }
}

if (horizontal_velocity > 0) {
    if (place_meeting(x + hspeed, y, obj_ground)) { 
        while (!place_meeting(x + 1, y, obj_ground)) {
            x += 1;
        }
        horizontal_velocity = 0; 
    }
}

// Check if moving left
if (horizontal_velocity < 0) {
    if (place_meeting(x + hspeed, y, obj_ground)) {
        while (!place_meeting(x - 1, y, obj_ground)) {
            x -= 1;
        }
        horizontal_velocity = 0;
    }
}

if(place_meeting(x,y,obj_death_plane) && !dead){
    audio_play_sound(snd_death, false, false);
	var ps = part_system_create();
	part_particles_create(ps, x, y + sprite_height /2, global.particle_type, 100);
	screen_shake(5, 30);
	screen_flash();
	dead = true;
	alarm[0] = 40;
}

if(place_meeting(x,y,obj_hazard) && !dead){
    audio_play_sound(snd_death, false, false);
	var ps = part_system_create();
	part_particles_create(ps, x, y + sprite_height /2, global.particle_type, 100);
	screen_shake(5, 30);
	screen_flash();
	dead = true;
	alarm[0] = 40;
}

if(place_meeting(x,y,obj_joke_fall) && !dead){
    audio_play_sound(snd_death, false, false);
	var ps = part_system_create();
	part_particles_create(ps, x, y + sprite_height /2, global.particle_type, 100);
	screen_shake(5, 30);
	screen_flash();
	dead = true;
	alarm[0] = 40;
}

// Handle screen shake
if (shake_time < shake_duration) {
    shake_x = random_range(-shake_magnitude, shake_magnitude);
    shake_y = random_range(-shake_magnitude, shake_magnitude);
    shake_time += 1;
} else {
    shake_x = 0;
    shake_y = 0;
    shake_duration = 0;
    shake_magnitude = 0;
    shake_time = 0;
}


