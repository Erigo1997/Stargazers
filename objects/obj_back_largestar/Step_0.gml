// Stars moving against mouse movement creates illusion of backdrop movement.
x = createx - mouse_x/6

if(y > room_height)
{
	instance_destroy();
}