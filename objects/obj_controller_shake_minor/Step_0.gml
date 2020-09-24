/// @description Shake screen
if(shake){
    shakeDur --;
    view_xview[0] += choose(-shakeForce,shakeForce);
    view_yview[0] += choose(-shakeForce,shakeForce);
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 5;
    }
}else{
    view_xview[0] = approach(view_xview,0,0.3);
    view_yview[0] = approach(view_yview,0,0.3);
}