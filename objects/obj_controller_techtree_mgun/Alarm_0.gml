/// @description Show tech tree
self.x = 672;
self.y = 96;
drawtree = true;

// Spawn all buttons.
buttons[0] = instance_create_layer(self.x + 64, self.y + 64, "Instances2", obj_upg_btn_mgun_precisionfiring);
buttons[1] = instance_create_layer(self.x + 240, self.y + 64, "Instances2", obj_upg_btn_mgun_routineefficiency);
buttons[2] = instance_create_layer(self.x + 400, self.y + 64, "Instances2", obj_upg_btn_mgun_piercingammunition);
buttons[3] = instance_create_layer(self.x + 32, self.y + 192, "Instances2", obj_upg_btn_mgun_muzzlebarrels);
buttons[4] = instance_create_layer(self.x + 64, self.y + 320, "Instances2", obj_upg_btn_mgun_muzzlestorm);
buttons[5] = instance_create_layer(self.x + 176, self.y + 192, "Instances2", obj_upg_btn_mgun_munitionunload);
buttons[6] = instance_create_layer(self.x + 272, self.y + 256, "Instances2", obj_upg_btn_mgun_chamberoverload);
buttons[7] = instance_create_layer(self.x + 336, self.y + 192, "Instances2", obj_upg_btn_mgun_casingrecycle);
buttons[8] = instance_create_layer(self.x + 464, self.y + 192, "Instances2", obj_upg_btn_mgun_fragmentationheads);
buttons[9] = instance_create_layer(self.x + 416, self.y + 320, "Instances2", obj_upg_btn_mgun_shatterheads);
