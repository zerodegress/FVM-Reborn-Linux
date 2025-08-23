// obj_plant_preview STEP 事件
// 检查是否在可种植区域（需要根据您的游戏实现）
//var grid_pos = get_nearest_grid_position(x, y)
//is_valid = position_in_plantable_area(grid_pos.x, grid_pos.y);
var grid_pos = get_grid_position_from_world(x, y);
is_valid = can_place_at_position(x, y, "normal");

// 跟随鼠标移动
x = mouse_x;
y = mouse_y;

// 如果父卡槽被取消，销毁自己
if (parent_slot == noone || !instance_exists(parent_slot) || !parent_slot.is_selected) {
    instance_destroy();
}