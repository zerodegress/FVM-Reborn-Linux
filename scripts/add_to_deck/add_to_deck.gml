/// @function add_to_deck(card_id)
/// @desc 添加卡牌到当前出战卡组
function add_to_deck(card_id) {
    var card_data = deck_get_card_data(card_id);
    if (card_data != noone) {
        ds_list_add(global.selected_deck, card_data);
    }
}