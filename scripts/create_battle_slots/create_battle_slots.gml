/// @function create_battle_slots()
/// @desc 根据当前卡组创建战斗卡槽
function create_battle_slots() {
    var start_x = 535;
    var y_pos = 90;
    var x_spacing = 90;
    
    for(var i = 0; i < ds_list_size(global.selected_deck); i++) {
        var card_data = global.selected_deck[| i];
        var inst = instance_create_depth(
            start_x + i * x_spacing, 
            y_pos, 
            -5, 
            obj_card_slot
        );
        
        inst.cost = card_data[? CARD_DATA.cost];
        inst.cooldown = card_data[? CARD_DATA.cooldown];
        inst.card_obj = card_data[? CARD_DATA.obj];
        inst.card_spr = card_data[? CARD_DATA.spr];
        inst.description = card_data[? CARD_DATA.description];
		inst.slot_index = i + 1
    }
}