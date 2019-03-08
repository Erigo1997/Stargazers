/// @description Move ship. Ensure ship stays within boundaries of room.

// Move ship towards mouse.
move_towards_point(mouse_x - 32, mouse_y - 32, point_distance(x + 32, y + 32, mouse_x, mouse_y)/10);