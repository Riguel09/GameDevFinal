audio_play_sound(snd_start, false, false);

on_floor = false;
falling = false;
jumping = false;
bouncing = false;

falling_gravity = 1;
falling_max_velocity = 7;

jump_acceleration = 2;
jump_initial_inpulse = 2;
jump_max_velocity = 7;
jump_timer = 0;
jump_duration = 15;



vertical_velocity = 0;
horizontal_velocity = 0;

shake_magnitude = 0;
shake_duration = 0;
shake_time = 0;

dead = false;
death_count = 0;

global.particle_type = part_type_create();

part_type_shape(global.particle_type, pt_shape_explosion);
part_type_size(global.particle_type, 0.01, 0.05, 0, 0.2);
part_type_color2(global.particle_type, c_red, c_yellow);
part_type_alpha3(global.particle_type, 0, 0.6, 0);
part_type_speed(global.particle_type, 1, 3.5, -0.1, 0);
part_type_direction(global.particle_type, 0, 359, 0, 0.1);
part_type_life(global.particle_type, 20, 40);
part_type_blend(global.particle_type, true);



function screen_shake(magnitude, duration){
	shake_magnitude = magnitude;
	shake_duration = duration;
	shake_time = 0;
}

flash_alpha = 0;
flash_speed = 0.1;

function screen_flash(){
	flash_alpha = 1;
}

