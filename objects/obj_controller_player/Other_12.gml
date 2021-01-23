/// @description Up Gem Counter
rubies++;

if (obj_controller_techtree_player.upg_crystallicinduction) {
	if (generator > 0) { // Don't recharge if we're dry or conflicts arise.
		generator += 2;
	}
}
