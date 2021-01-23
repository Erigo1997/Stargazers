/// @description Run this when research is completed
switch (researched) {
	case "precision firing":
	upg_precisionfiring = true; // handled by mgun controller
	break;
	case "routine efficiency":
	upg_routineefficiency = true;
	obj_controller_player.attackspeedfactor = 4;
	break;
	case "piercing ammunition":
	upg_piercingammunition = true;
	break;
	case "munition unload":
	upg_munitionunload = true;
	break;
	case "chamber overload":
	upg_chamberoverload = true;
	break;
	case "casing recycle":
	upg_casingrecycle = true;
	obj_wpn_mgun_controller.generatorCost = 1;
	break;
	case "fragmentation heads":
	upg_fragmentationheads = true;
	break;
	case "shatterheads":
	upg_shatterheads = true;
	break;
	case "muzzle barrels":
	upg_muzzlebarrels = true;
	break;
	case "muzzle storm":
	upg_muzzlestorm = true;
	break;
}