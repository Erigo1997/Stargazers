/// @description Show tech tree
self.x = 32;
self.y = 96;
drawtree = true;

// Spawn all buttons.
buttons[0] = instance_create_layer(self.x + 64, self.y + 64, "Instances2", obj_upg_btn_ship_thrustboost);
buttons[1] = instance_create_layer(self.x + 256, self.y + 64, "Instances2", obj_upg_btn_ship_phasegear);
buttons[2] = instance_create_layer(self.x + 416, self.y + 64, "Instances2", obj_upg_btn_ship_shieldaccelerator);
buttons[3] = instance_create_layer(self.x + 32, self.y + 192, "Instances2", obj_upg_btn_ship_crystallicinduction);
buttons[4] = instance_create_layer(self.x + 96, self.y + 272, "Instances2", obj_upg_btn_ship_solidfuelaccelerant);
buttons[5] = instance_create_layer(self.x + 224, self.y + 192, "Instances2", obj_upg_btn_ship_materialregenerator);
buttons[6] = instance_create_layer(self.x + 288, self.y + 272, "Instances2", obj_upg_btn_ship_transmissioncontrol);
buttons[7] = instance_create_layer(self.x + 384, self.y + 192, "Instances2", obj_upg_btn_ship_overheater);
buttons[8] = instance_create_layer(self.x + 448, self.y + 272, "Instances2", obj_upg_btn_ship_doublebinding);
buttons[9] = instance_create_layer(self.x + 384, self.y + 368, "Instances2", obj_upg_btn_ship_triplebinding);
