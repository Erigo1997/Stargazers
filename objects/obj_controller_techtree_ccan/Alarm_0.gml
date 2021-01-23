/// @description Show tech tree
self.x = 672;
self.y = 96;
drawtree = true;

// Spawn all buttons.
buttons[0] = instance_create_layer(self.x + 64, self.y + 64, "Instances2", obj_upg_btn_ccan_muzzlechoker);
buttons[1] = instance_create_layer(self.x + 240, self.y + 64, "Instances2", obj_upg_btn_ccan_shelljammer);
buttons[2] = instance_create_layer(self.x + 400, self.y + 64, "Instances2", obj_upg_btn_ccan_routineefficiency);
buttons[3] = instance_create_layer(self.x + 176, self.y + 192, "Instances2", obj_upg_btn_ccan_propagation);
buttons[4] = instance_create_layer(self.x + 464, self.y + 192, "Instances2", obj_upg_btn_ccan_shellrecycle);
buttons[5] = instance_create_layer(self.x + 336, self.y + 192, "Instances2", obj_upg_btn_ccan_shelljammer2);
buttons[6] = instance_create_layer(self.x + 240, self.y + 320, "Instances2", obj_upg_btn_ccan_shelljammer3);
