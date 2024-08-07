// Particle system initialization
global.particle_system = part_system_create();
global.particle_type = part_type_create();

part_type_shape(global.particle_type, pt_shape_explosion);
part_type_size(global.particle_type, 0.01, 0.05, 0, 0.2);
part_type_color2(global.particle_type, c_red, c_yellow);
part_type_alpha3(global.particle_type, 0, 0.6, 0);
part_type_speed(global.particle_type, 1, 3.5, -0.1, 0);
part_type_direction(global.particle_type, 0, 359, 0, 0.1);
part_type_life(global.particle_type, 20, 40);
part_type_blend(global.particle_type, true);

