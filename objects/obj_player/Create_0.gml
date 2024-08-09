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

bounce_timer = 0;
bounce_initial_impulse = 4;
bounce_acceleration = 2;
bounce_max_velocity = 10;
bounce_duration = 15;

vertical_velocity = 0;
horizontal_velocity = 0;

shake_magnitude = 0;
shake_duration = 0;
shake_time = 0;

dead = false;


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

