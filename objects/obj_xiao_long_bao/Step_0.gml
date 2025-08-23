if global.is_paused{
	exit
}
event_inherited(); 

//检测自身右方是否有敌人
var has_enemy = false
with(obj_normal_mouse){
	if (grid_row == other.grid_row && grid_col >= other.grid_col && grid_col <= (global.grid_cols + 1) && health > 0){
		has_enemy = true
		break
	}
}
//攻击逻辑
if (has_enemy) {
    if (attack_timer <= cycle - attack_anim * flash_speed) {
        attack_timer++;
    } else if (attack_timer <= cycle) {
        attack_timer++;
        state = CARD_STATE.ATTACK;
    } else {
        event_user(1); // 发射子弹
        attack_timer = 0;
        state = CARD_STATE.IDLE;
    }
} else {
    // 没有符合条件的敌人，重置状态
    attack_timer = 0;
    state = CARD_STATE.IDLE;
}


