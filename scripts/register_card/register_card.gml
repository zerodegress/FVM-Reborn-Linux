/// @function register_card(card_id, obj, spr, cost, cooldown, description)
/// @desc 注册新卡牌到卡池
function register_card(card_id, _obj, _spr, _cost, _cooldown, _description) {
    var card = ds_map_create();
    card[? CARD_DATA.obj] = _obj;
    card[? CARD_DATA.spr] = _spr;
    card[? CARD_DATA.cost] = _cost;
    card[? CARD_DATA.cooldown] = _cooldown;
    card[? CARD_DATA.description] = _description;
    
    ds_list_add(global.player_deck, card_id, card);
}