/// @function deck_get_card_data(card_id)
/// @desc 根据ID获取卡牌数据
function deck_get_card_data(card_id) {
    for(var i = 0; i < ds_list_size(global.player_deck); i += 2) {
        if (global.player_deck[| i] == card_id) {
            return global.player_deck[| i+1];
        }
    }
    return noone;
}