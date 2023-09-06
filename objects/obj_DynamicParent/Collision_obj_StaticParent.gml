/// @description Check Collision with static objects

for (var i = 0; i < phy_collision_points; ++i) {
	if (phy_collision_x[i] > 2048
			|| phy_collision_x[i] < -1024) {
		show_debug_message("Collision between {0} and {1}", self.id, other.id);
		show_debug_message("phy_collision_points {0}", phy_collision_points);
		show_debug_message("phy_collision_x[{0}]: {1}", i, phy_collision_x[i]);
		show_debug_message("phy_collision_y[{0}]: {1}", i, phy_collision_y[i]);
		show_debug_message("=======================================================");
		show_debug_message("");
	}
}
