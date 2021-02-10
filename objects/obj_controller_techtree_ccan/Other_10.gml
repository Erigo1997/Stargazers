/// @description Run this when research is completed
switch (researched) {
	case "muzzle choker":
	upg_muzzlechoker = true;
	break;
	case "shelljammer":
	upg_shelljammer = true;
	obj_wpn_ccan_controller.numberOfShot += 2;
	break;
	case "routine efficiency":
	upg_routineefficiency = true;
	obj_controller_player.attackspeedfactor = 23;
	break;
	case "shell recycle":
	upg_shellrecycle = true;
	obj_wpn_ccan_controller.generatorCost = 7;
	case "propagation":
	upg_propagation = true;
	break;
	case "shelljammer2":
	upg_shelljammer2 = true;
	obj_wpn_ccan_controller.numberOfShot += 2;
	break;
	case "shelljammer3":
	upg_shelljammer3 = true;
	obj_wpn_ccan_controller.numberOfShot += 2;
	break;
}