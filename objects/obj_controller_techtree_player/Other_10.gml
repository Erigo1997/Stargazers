/// @description Run this when research is completed
switch (researched) {
	case "phasegear":
	upg_phasegear = true;
	obj_controller_player.phasegear = true;
	break;
	case "thrust boost":
	upg_thrustboost = true;
	obj_controller_player.speedfactor += 6;
	break;
	case "shield accelerator":
	upg_shieldaccelerator = true;
	obj_controller_player.shieldRechargeTime *= 0.75;
	break;
	case "material regenerator":
	upg_materialregenerator = true;
	obj_controller_player.phasegearCooldown *= 0.75;
	break;
	case "transmission control":
	upg_transmissioncontrol = true;
	obj_controller_player.phasegearDuration *= 1.5;
	break;
	case "crystallic induction":
	upg_crystallicinduction = true; // Player controller checks this flag
	break;
	case "solid fuel accelerant":
	upg_solidfuelaccelerant = true;
	obj_controller_player.speedfactor += 6
	break;
	case "overheater":
	upg_overheater = true; // Player controller checks this flag
	break;
	case "doublebinding":
	upg_doublebinding = true;
	obj_controller_player.shieldmax = 2;
	break;
	case "triplebinding":
	upg_triplebinding = true;
	obj_controller_player.shieldmax = 3;
	break;
}