// obj_pause_menu - Create Event
image_xscale = 1.5
image_yscale = 1.5
// 菜单元素位置
menu_x = room_width / 2;
menu_y = room_height / 2;

// 按钮数据 [x偏移, 文本, 宽度, 高度]
buttons = [
    [-150, "继续游戏", 110, 40],
    [0, "设置", 110, 40],
    [150, "退出游戏", 110, 40]
];

// 当前选中的按钮索引
selected_button = -1;
submenu_open = false; // 是否有子菜单打开

// 按钮精灵帧
button_normal = 0; // 普通状态
button_hover = 1; // 悬停状态
button_pressed = 2; // 按下状态