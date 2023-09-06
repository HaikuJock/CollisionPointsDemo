/// @description Create and move a triangle physics object

if (mouse_check_button_pressed(mb_left)
		&& myObject == undefined) {
	myObject = instance_create_layer(mouse_x, mouse_y, layer, obj_Triangle);
	myObject.phy_bullet = true;
}

if (myObject)
{
	if (!instance_exists(myObject)) {
		myObject = undefined;
	} else {
		var toMouseX = mouse_x - myObject.x;
		var toMouseY = mouse_y - myObject.y;
		
		if (abs(toMouseX) + abs(toMouseY) > 10) {
			//var impulseFactor = 0.01;
			var forceFactor = 1;
			
			with (myObject) {
				//physics_apply_impulse(x, y, toMouseX * impulseFactor, toMouseY * impulseFactor);
				physics_apply_force(x, y, toMouseX * forceFactor, toMouseY * forceFactor);
			}
		}
	}
}
