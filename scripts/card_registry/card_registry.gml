// 脚本：plant_registry.gml

// 注册新植物
function register_plant(plant_id, name, description, base_hp, base_cost, base_atk, base_range, base_cooldown, base_cycle) {
    if (ds_map_exists(global.plant_registry, plant_id)) {
        show_debug_message("植物已注册: " + plant_id);
        return false;
    }
    
    // 创建植物类型数据结构
    var plant_data = ds_map_create();
    plant_data[? "name"] = name;
    plant_data[? "description"] = description;
    plant_data[? "base_hp"] = base_hp;
    plant_data[? "base_cost"] = base_cost;
    plant_data[? "base_atk"] = base_atk;
    plant_data[? "base_range"] = base_range;
    plant_data[? "base_cooldown"] = base_cooldown;
    plant_data[? "base_cycle"] = base_cycle;
    
    // 创建升级数据存储
    var upgrades = ds_map_create();
    plant_data[? "upgrades"] = upgrades;
    
    // 添加基础等级数据
    var base_upgrade = ds_map_create();
    ds_map_add(base_upgrade, "level", 0);
    ds_map_add(base_upgrade, "hp", base_hp);
    ds_map_add(base_upgrade, "cost", base_cost);
    ds_map_add(base_upgrade, "atk", base_atk);
    ds_map_add(base_upgrade, "range", base_range);
    ds_map_add(base_upgrade, "cooldown", base_cooldown);
    ds_map_add(base_upgrade, "cycle", base_cycle);
    
    ds_map_add(upgrades, "0", base_upgrade);
    
    // 添加到注册表
    ds_map_add(global.plant_registry, plant_id, plant_data);
    
    return true;
}

// 添加植物升级
function add_plant_upgrade(plant_id, level, upgrade_map) {
    if (!ds_map_exists(global.plant_registry, plant_id)) {
        show_debug_message("植物未注册: " + plant_id);
        return false;
    }
    
    var plant_data = global.plant_registry[? plant_id];
    var upgrades = plant_data[? "upgrades"];
    
    // 添加升级数据
    ds_map_add(upgrades, string(level), upgrade_map);
    return true;
}

// 获取植物数据
function get_plant_data(plant_id) {
    if (ds_map_exists(global.plant_registry, plant_id)) {
        return global.plant_registry[? plant_id];
    }
    return undefined;
}

// 获取植物升级数据
function get_plant_upgrade(plant_id, level) {
    var plant_data = get_plant_data(plant_id);
    if (plant_data == undefined) return undefined;
    
    var upgrades = plant_data[? "upgrades"];
    if (ds_map_exists(upgrades, string(level))) {
        return upgrades[? string(level)];
    }
    
    return undefined;
}

// 创建升级数据结构
function create_upgrade_data(level, hp, cost, atk, range, cooldown, cycle) {
    var upgrade = ds_map_create();
    ds_map_add(upgrade, "level", level);
    ds_map_add(upgrade, "hp", hp);
    ds_map_add(upgrade, "cost", cost);
    ds_map_add(upgrade, "atk", atk);
    ds_map_add(upgrade, "range", range);
    ds_map_add(upgrade, "cooldown", cooldown);
    ds_map_add(upgrade, "cycle", cycle);
    return upgrade;
}