function cards_init(){
// 游戏初始化脚本
{//注册植物
// 注册小火炉
register_plant(
    "small_fire",
    "小火炉",
    "小火炉：生产火苗",
    50,   // hp
    50,   // cost
    0,    // atk
    0,    // range
    7*60, // cooldown
    25*60 // cycle
);
//注册小笼包
register_plant(
    "xiao_long_bao",
    "小笼包",
    "小笼包：向前方发射包子",
    50,   // hp
    100,   // cost
    10,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);
}
{// 添加小火炉升级
var upgrade1 = create_upgrade_data(
    1,    // level
    50,   // hp
    50,   // cost (保持原价)
    0,    // atk
    0,    // range
    7*60, // cooldown
    24*60 // cycle
);
ds_map_add(upgrade1, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 1, upgrade1);

var upgrade2 = create_upgrade_data(
    2,    // level
    50,   // hp
    50,   // cost 
    0,    // atk
    0,    // range
    7*60, // cooldown
    23*60 // cycle
);
ds_map_add(upgrade2, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 2, upgrade2);

var upgrade3 = create_upgrade_data(
    3,    // level
    50,   // hp
    50,   // cost 
    0,    // atk
    0,    // range
    7*60, // cooldown
    22*60 // cycle
);
ds_map_add(upgrade3, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 3, upgrade3);

var upgrade4 = create_upgrade_data(
    4,    // level
    50,   // hp
    50,   // cost 
    0,    // atk
    0,    // range
    7*60, // cooldown
    21*60 // cycle
);
ds_map_add(upgrade4, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 4, upgrade4);
var upgrade5 = create_upgrade_data(
    5,    // level
    50,   // hp
    50,   // cost 
    0,    // atk
    0,    // range
    7*60, // cooldown
    20*60 // cycle
);
ds_map_add(upgrade5, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 5, upgrade5);
var upgrade6 = create_upgrade_data(
    6,    // level
    50,   // hp
    50,   // cost 
    0,    // atk
    0,    // range
    7*60, // cooldown
    19*60 // cycle
);
ds_map_add(upgrade6, "flame_produce", 25); // 添加自定义属性

add_plant_upgrade("small_fire", 6, upgrade6);
}
{//添加小笼包升级
var upgrade1 = create_upgrade_data(
    1,    // level
    50,   // hp
    100,   // cost (保持原价)
    12,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 1, upgrade1);	

var upgrade2 = create_upgrade_data(
    2,    // level
    50,   // hp
    100,   // cost (保持原价)
    14,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 2, upgrade2);

var upgrade3 = create_upgrade_data(
    3,    // level
    50,   // hp
    100,   // cost (保持原价)
    16,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 3, upgrade3);

var upgrade4 = create_upgrade_data(
    4,    // level
    50,   // hp
    100,   // cost (保持原价)
    18,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 4, upgrade4);

var upgrade5 = create_upgrade_data(
    5,    // level
    50,   // hp
    100,   // cost (保持原价)
    20,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 5, upgrade5);

var upgrade6 = create_upgrade_data(
    6,    // level
    50,   // hp
    100,   // cost (保持原价)
    22,    // atk
    10,    // range
    7*60, // cooldown
    1.3*60 // cycle
);

add_plant_upgrade("xiao_long_bao", 6, upgrade6);
}
}