// obj_plant_preview DRAW 事件

if not global.is_paused{
// 绘制地面上的半透明预览
var grid_pos = get_nearest_grid_position(x, y); // 获取最近的网格位置
if (is_valid) {
    draw_sprite_ext(preview_sprite, 0, grid_pos.x, grid_pos.y, 1.8, 1.8, 0, c_white, 0.5);
} else {
    //draw_sprite_ext(preview_sprite, 0, grid_pos.x, grid_pos.y, 1.8, 1.8, 0, c_red, 0.3);
}

// 绘制实体预览（跟随鼠标）
draw_sprite_ext(preview_sprite, 0, x, y,1.8,1.8,0,c_white,1);
}