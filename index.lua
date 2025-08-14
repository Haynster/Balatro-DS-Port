scene = "menu"

-- Run Details
round = 0
blind = 1
ante = 1
round_score = 0
minimumscore = 0
hands = 4
discards = 4
cash = 0
gameplay_phase = 0
jokers = {}
hand = {}
dealt = {}
chips = 0
multiplier = 0
reroll_price = 5
hand_size = 8
last_played_hand = ""
win = false

sort_mode = 0

can_play_hand = false
can_discard = false

card_scale_timer = Timer.new(150)

card_selected_scale = 1
card_selected_rotation = 1

card_graphic = Image.load("sprites/cards/card.png", VRAM)
card_shadow_graphic = Image.load("sprites/cards/card_shadow.png", VRAM)

ante_bases = {
    300, 800, 2000, 5000, 11000, 20000, 35000, 50000
}

ante_blinds = {
    {4, 5, 8, 10, 11, 12, 14}, {3, 6, 9}, {7}, {13}, {}, {}, {}, {}
}

debuffed_suits = {"", "", "", "", "", "", "", "", "", "c", "s", "d", "", "h"}

blind_multis = {1, 1.5, 4, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2}

blind_payouts = {3, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5}

blind_descriptions = {0, 0, 3, 10, 17, 4, 11, 18, 5, 12, 19, 6, 13, 20}

blind_info = {
    {"Small Blind", Color.new256(62, 125, 201)}, {"Big Blind", Color.new256(241, 184, 91)}, {"The Wall", Color.new256(138, 89, 165)}, {"The Psychic", Color.new256(239, 192, 60)}, {"The Hook", Color.new256(168, 64, 36)}, {"The Needle", Color.new256(92, 110, 49)}, {"The Tooth", Color.new256(181, 45, 45)}, {"The Manacle", Color.new256(87, 87, 87)}, {"The Mouth", Color.new256(174, 113, 142)}, {"The Club", Color.new256(185, 203, 146)}, {"The Goad", Color.new256(185, 92, 150)}, {"The Window", Color.new256(169, 162, 149)}, {"The Plant", Color.new256(112, 146, 132)}, {"The Head", Color.new256(172, 157, 180)}
}

joker_info = {
    ["Joker"] = {2, "+4 Multi"},
    ["Greedy Joker"] = {5, "+3 Multi for Diamond Cards"},
    ["Gluttonous Joker"] = {5, "+3 Multi for Club Cards"},
    ["Wrathful Joker"] = {5, "+3 Multi for Spade Cards"},
    ["Lusty Joker"] = {5, "+3 Multi for Heart Cards"},
    ["Jolly Joker"] = {3, "+8 Mult if hand is Pair"},
    ["Zany Joker"] = {4, "+12 Mult if hand is Three Kind"},
    ["Mad Joker"] = {4, "+10 Mult if hand is Two Pair"},
    ["Crazy Joker"] = {4, "+12 Mult if hand is Straight"},
    ["Droll Joker"] = {4, "+10 Mult if hand is Flush"},
    ["Sly Joker"] = {3, "+50 Chips if hand is Pair"},
    ["Clever Joker"] = {4, "+80 Chips if hand is Two Pair"},
    ["Half Joker"] = {5, "+20 Mult if hand is 3 or less cards"},
    ["Joker Stencil"] = {8, "x1 Mult for all empty joker slots"},
    ["Banner"] = {5, "+30 Chips for each discard left"}
}

hand_multipliers = {
    [""] = {0, 0},
	["High Card"] = {5, 1},
	["Pair"] = {10, 2},
	["Two Pair"] = {20, 2},
	["Three of a Kind"] = {30, 3},
	["Straight"] = {30, 4},
	["Flush"] = {35, 4},
	["Full House"] = {40, 4},
	["Four of a Kind"] = {60, 7},
	["Straight Flush"] = {100, 8},
	["Royal Flush"] = {100, 8}
}

indep_jokers = {
    ["Joker"] = true, ["Jolly Joker"] = true, ["Zany Joker"] = true, ["Mad Joker"] = true, ["Crazy Joker"] = true, ["Droll Joker"] = true, ["Sly Joker"] = true, ["Clever Joker"] = true, ["Half Joker"] = true, ["Joker Stencil"] = true, ["Banner"] = true
}

deck = {
    "1h", "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "jh", "kh", "qh", "ah",
    "1d", "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "jd", "kd", "qd", "ad",
    "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "js", "ks", "qs", "as",
    "1c", "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "jc", "kc", "qc", "ac",
}

joker_deck = {
    "Joker", "Gluttonous Joker", "Wrathful Joker", "Lusty Joker", "Greedy Joker", "Jolly Joker", "Zany Joker", "Mad Joker", "Crazy Joker", "Droll Joker", "Sly Joker", "Clever Joker", "Half Joker", "Joker Stencil", "Banner"
}

shop_jokers = {}

-- Declaring graphics for card types
rank_graphics = {["1"] = Image.load("sprites/cards/1.png", VRAM), ["2"] = Image.load("sprites/cards/2.png", VRAM), ["3"] = Image.load("sprites/cards/3.png", VRAM), ["4"] = Image.load("sprites/cards/4.png", VRAM), ["5"] = Image.load("sprites/cards/5.png", VRAM), ["6"] = Image.load("sprites/cards/6.png", VRAM), ["7"] = Image.load("sprites/cards/7.png", VRAM), ["8"] = Image.load("sprites/cards/8.png", VRAM), ["9"] = Image.load("sprites/cards/9.png", VRAM), ["j"] = Image.load("sprites/cards/j.png", VRAM), ["k"] = Image.load("sprites/cards/k.png", VRAM), ["q"] = Image.load("sprites/cards/q.png", VRAM), ["a"] = Image.load("sprites/cards/a.png", VRAM),}
suit_graphics = {["d"] = Image.load("sprites/cards/d.png", VRAM), ["c"] = Image.load("sprites/cards/c.png", VRAM), ["s"] = Image.load("sprites/cards/s.png", VRAM), ["h"] = Image.load("sprites/cards/h.png", VRAM),}
joker_graphics = Image.load("sprites/cards/jokers.png", VRAM)

hudbg = Image.load("sprites/ui/hudbackground.png", VRAM)
hud = Image.load("sprites/ui/hud.png", VRAM)
blind_ui = Image.load("sprites/ui/blindui.png", VRAM)
blind_ui_box = Image.load("sprites/ui/blinduibox.png", VRAM)
tutorial_sheet = Image.load("sprites/ui/ui.png", VRAM)
shop_sheet = Image.load("sprites/ui/moreui.png", VRAM)
menubg = Image.load("sprites/ui/mainmenubg.png", VRAM)
Image.scale(menubg, 256, 194)
logo = Image.load("sprites/ui/logo.png", VRAM)


Sound.loadBank("soundbanks/soundbank.bin")
Sound.loadSFX(0)
Sound.loadSFX(1)
Sound.setModVolume(600)

active_joker_id = -1
selected_card = 0

card_count_timer = Timer.new()
card_count = 1
card_count_phase = 0

random_timer = Timer.new()
random_timer:start()

shop_sign_frame = 1
shop_sign_timer = Timer.new()
shop_sign_timer:start()

blind_colour_timer = Timer.new()

-- TO DO
-- make get poker hand work with 5 cards and stuff

timer = Timer.new()
timer:start()

function sleep(a) 
    sec = tonumber(timer:getTime() + a); 
    while (timer:getTime() < sec) do 
    end 
end

function reset_deck()
    deck = {
        "1h", "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "jh", "kh", "qh", "ah",
        "1d", "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "jd", "kd", "qd", "ad",
        "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "js", "ks", "qs", "as",
        "1c", "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "jc", "kc", "qc", "ac",
    }
end

function sort_deck(deck)
    if sort_mode == 0 then
        return sort_deck_rank(deck)
    else
        return sort_deck_suit(deck)
    end
end

function sort_deck_rank(deck)
    local cards_dictionary = {[2] = {}, [3] = {}, [4] = {}, [5] = {}, [6] = {}, [7] = {}, [8] = {}, [9] = {}, [10] = {}, [11] = {}}
    for i,v in pairs(deck) do
        table.insert(cards_dictionary[convert_rank_to_num(string.sub(deck[i], 1, 1))], v)
    end
    
    local better = {}
    for i,v in pairs({11, 10, 9, 8, 7, 6, 5, 4, 3, 2}) do
        for k,h in pairs(cards_dictionary[v]) do
            table.insert(better, h)
        end
    end

    return better
end

function sort_deck_suit(deck)
    local sorted = sort_deck_rank(deck)
    local sdeck = {["s"] = {}, ["d"] = {}, ["c"] = {}, ["h"] = {}}

    for i,v in pairs(sorted) do
        table.insert(sdeck[string.sub(sorted[i], 2, 2)], v)
    end

    local sorted_deck = {}

    for i,v in pairs({"s", "d", "c", "h"}) do
        for k,h in pairs(sdeck[v]) do
            table.insert(sorted_deck, h)
        end
    end

    return sorted_deck
end

function array_to_dictionary(array)
    local dic = {}
    for i,v in ipairs(array) do
        dic[v] = i
    end
    return dic
end

function create_scored(d, s)
    local scored = {}
    for i,v in ipairs(d) do 
        if s[v] then
            table.insert(scored, 1)
        else
            table.insert(scored, 0)
        end
    end
    return scored
end

function get_hand_type(tdeck)
    local stdeck = sort_deck_rank(tdeck)

    local card_amounts = get_rank_amount(stdeck)
    local card_amount_array = {}
    for i, v in pairs(card_amounts) do
        table.insert(card_amount_array, v)
    end
    table.sort(card_amount_array)

    if #stdeck == 1 then
        return "High Card"
    else
        if #stdeck == 2 then
            if string.sub(stdeck[1], 1, 1) == string.sub(stdeck[2], 1, 1) then
                return "Pair"
            else
                return "High Card"
            end
        else
            if #stdeck == 3 then
                if string.sub(stdeck[1], 1, 1) == string.sub(stdeck[2], 1, 1) and string.sub(stdeck[2], 1, 1) == string.sub(stdeck[3], 1, 1) then
                    return "Three of a Kind"
                else
                    return "High Card"
                end
            else
                if #stdeck == 4 then
                    if #card_amount_array == 1 then
                        return "Four of a Kind"
                    else
                        if #card_amount_array == 2 and card_amount_array[1] == 2 and card_amount_array[2] == 2 then
                            return "Two Pair"
                        else
                            return "High Card"
                        end
                    end
                else
                    if #stdeck == 5 then
                        flush = false
                        straight = false
                        if string.sub(stdeck[1], 2, 2) == string.sub(stdeck[2], 2, 2) and string.sub(stdeck[2], 2, 2) == string.sub(stdeck[3], 2, 2) and string.sub(stdeck[3], 2, 2) == string.sub(stdeck[4], 2, 2) and string.sub(stdeck[4], 2, 2) == string.sub(stdeck[5], 2, 2) then
                            flush = true
                        end

                        if convert_rank_to_num(string.sub(stdeck[1], 1, 1)) - 1 == convert_rank_to_num(string.sub(stdeck[2], 1, 1)) and convert_rank_to_num(string.sub(stdeck[1], 1, 1)) - 2 == convert_rank_to_num(string.sub(stdeck[3], 1, 1)) and convert_rank_to_num(string.sub(stdeck[1], 1, 1)) - 3 == convert_rank_to_num(string.sub(stdeck[4], 1, 1)) and convert_rank_to_num(string.sub(stdeck[1], 1, 1)) - 4 == convert_rank_to_num(string.sub(stdeck[5], 1, 1)) then
                            straight = true
                        end

                        if flush then
                            if convert_rank_to_num(string.sub(stdeck[1], 1, 1)) > 9 and convert_rank_to_num(string.sub(stdeck[2], 1, 1)) > 9 and convert_rank_to_num(string.sub(stdeck[3], 1, 1)) > 9 and convert_rank_to_num(string.sub(stdeck[4], 1, 1)) > 9 and convert_rank_to_num(string.sub(stdeck[5], 1, 1)) > 9 then
                                return "Royal Flush"
                            else
                                if straight then
                                    return "Straight Flush"
                                else
                                    return "Flush"
                                end
                            end
                        elseif straight then
                            return "Straight"
                        else
                            local card_amount_array = {}

                            for i, v in pairs(card_amounts) do
                                table.insert(card_amount_array, v)
                            end

                            table.sort(card_amount_array)
                            if card_amount_array[1] == 2 and card_amount_array[2] == 3 then
                                return "Full House"
                            else
                                return "High Card"
                            end
                        end
                    else
                        return ""
                    end
                end
            end
        end
    end
end

function convert_rank_to_num(rank)
    if rank == "q" or rank == "k" or rank == "j" or rank == "1" then
        return 10
    elseif rank == "a" then
        return 11
    else
        return tonumber(rank)
    end
end

function get_rank_amount(deck)
    card_amounts = {}
    for i,v in ipairs(deck) do
        rank_c = string.sub(v, 1, 1)
        if card_amounts[rank_c] then
            card_amounts[rank_c] = card_amounts[rank_c] + 1
        else
            card_amounts[rank_c] = 1
        end
    end

    return card_amounts
end

function table_to_string(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        -- Check the key type (ignore any numerical keys - assume its an array)
        if type(k) == "string" then
            result = result.."[\""..k.."\"]".."="
        end

        -- Check the value type
        if type(v) == "table" then
            result = result..table_to_string(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            result = result.."\""..v.."\""
        end
        result = result..","
    end
    -- Remove leading commas from the result
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end

function execute_joker(joker, card, hand_type)
    if joker == "Joker" then
        multiplier = multiplier + 4
    elseif joker == "Wrathful Joker" then
        if string.sub(card, 2, 2) == "s" then
            multiplier = multiplier + 3
        end
    elseif joker == "Greedy Joker" then
        if string.sub(card, 2, 2) == "d" then
            multiplier = multiplier + 3
        end
    elseif joker == "Lusty Joker" then
        if string.sub(card, 2, 2) == "h" then
            multiplier = multiplier + 3
        end
    elseif joker == "Gluttonous Joker" then
        if string.sub(card, 2, 2) == "c" then
            multiplier = multiplier + 3
        end
    elseif joker == "Jolly Joker" then
        if hand_type == "Pair" or hand_type == "Two Pair" then
            multiplier = multiplier + 8
        end
    elseif joker == "Zany Joker" then
        if hand_type == "Three of a Kind" then
            multiplier = multiplier + 12
        end
    elseif joker == "Mad Joker" then
        if hand_type == "Two Pair" then
            multiplier = multiplier + 10
        end
    elseif joker == "Crazy Joker" then
        if hand_type == "Straight" then
            multiplier = multiplier + 12
        end
    elseif joker == "Droll Joker" then
        if hand_type == "Flush" then
            multiplier = multiplier + 10
        end
    elseif joker == "Sly Joker" then
        if hand_type == "Pair" then
            chips = chips + 50
        end
    elseif joker == "Clever Joker" then
        if hand_type == "Two Pair" then
            chips = chips + 80
        end
    elseif joker == "Half Joker" then
        if #hand < 4 then
            multiplier = multiplier + 20
        end
    elseif joker == "Joker Stencil" then
        multiplier = multiplier * ((5 - #jokers) + 1)
    elseif joker == "Banner" then
        chips = chips + (discards * 30)
    end
end

function add_to_dealt()
    local cards_added = 0
    local goal = hand_size - #dealt
    math.randomseed(random_timer:getTime())
    while cards_added < goal do
        local randomvalue = math.random(#deck)
        table.insert(dealt, deck[randomvalue])
        table.remove(deck, randomvalue)
        cards_added = cards_added + 1
    end
end

function draw_card_graphic(x, y, scale, rot, rank, suit)
    Image.scale(card_graphic, math.floor(19 * scale), math.floor(28 * scale))
    Image.rotate(card_graphic, rot)
    screen.blit(SCREEN_DOWN, x, y, card_graphic)
    screen.blit(SCREEN_UP, x, y + 192, card_graphic)

    card_rank_graphic = rank_graphics[rank]
    card_suit_graphic = suit_graphics[suit]

    Image.scale(card_rank_graphic, math.floor(19 * scale), math.floor(28 * scale))
    Image.scale(card_suit_graphic, math.floor(19 * scale), math.floor(28 * scale))
    Image.rotate(card_rank_graphic, rot)
    Image.rotate(card_suit_graphic, rot)

    screen.blit(SCREEN_DOWN, x, y, card_rank_graphic)
    screen.blit(SCREEN_DOWN, x, y, card_suit_graphic)
    screen.blit(SCREEN_UP, x, y + 192, card_rank_graphic)
    screen.blit(SCREEN_UP, x, y + 192, card_suit_graphic)
end

function draw_joker_card_graphic(x, y, scale, rot, jok, scn)
    Image.scale(card_graphic, math.floor(19 * scale), math.floor(28 * scale))
    Image.rotate(card_graphic, rot)
    if scn == 1 then
        screen.blit(SCREEN_UP, x, y, card_graphic)
    else
        screen.blit(SCREEN_DOWN, x, y, card_graphic)
    end

    joker_c = 1
    local c = 0
    for i,v in ipairs(joker_deck) do
        if v == jok then
            joker_c = c
        end
        c = c + 1
    end

    joker_graphic = Sprite.new(joker_graphics, 19, 28, VRAM)
    if scn == 1 then
        joker_graphic:drawFrame(SCREEN_UP, x, y, joker_c)
    else
        joker_graphic:drawFrame(SCREEN_DOWN, x, y, joker_c)
    end
end

function draw_card_shadow_graphic(x, y, scale, rot, scn)
    screen.setAlpha(40)
    Image.scale(card_shadow_graphic, math.floor(19 * scale), math.floor(28 * scale))
    Image.rotate(card_shadow_graphic, rot)
    if scn == 0 then
        screen.blit(SCREEN_DOWN, x, y, card_shadow_graphic)
    else
        screen.blit(SCREEN_UP, x, y, card_shadow_graphic)
    end
    screen.setAlpha(100)
end

function draw_card_deck_graphic(x_place, y_place, deck, raise_selected)
    local x = 0
    local card_id = 0
    for i,v in ipairs(deck) do
        if card_id == selected_card and raise_selected then
            if card_selected_rotation == 1 then
                draw_card_shadow_graphic(x_place + x, y_place, 0.7 + (card_scale_timer:getTime() / 500), 505 + (card_scale_timer:getTime() / 500) * 10, 0)
                draw_card_graphic(x_place + x - 3, y_place - 16, 1 + (card_scale_timer:getTime() / 500), 505 + (card_scale_timer:getTime() / 500) * 10, string.sub(v, 1, 1), string.sub(v, 2, 2))
            else
                draw_card_shadow_graphic(x_place + x, y_place, 0.7 + (card_scale_timer:getTime() / 500), (card_scale_timer:getTime() / 500) * 10, 0)
                draw_card_graphic(x_place + x - 3, y_place - 16, 1 + (card_scale_timer:getTime() / 500), (card_scale_timer:getTime() / 500) * 10, string.sub(v, 1, 1), string.sub(v, 2, 2))
            end
        else
            draw_card_shadow_graphic(x_place + x, y_place + 2, 1, 0, 0)
            draw_card_graphic(x_place + x, y_place, 1, 0, string.sub(v, 1, 1), string.sub(v, 2, 2))
        end
        x = x + 24
        card_id = card_id + 1
    end
end

function draw_joker_deck_graphic(x_place, y_place, deck, scn, raise_selected)
    local x = 0
    local card_id = 0
    for i,v in ipairs(deck) do
        draw_card_shadow_graphic(x_place + x, y_place + 2, 1, 0, scn)
        if card_id == active_joker_id and raise_selected == 1 then
            draw_joker_card_graphic(x_place + x, y_place - 8, 1, 0, v, scn)
        else
            draw_joker_card_graphic(x_place + x, y_place, 1, 0, v, scn)
        end
        x = x + 24
        card_id = card_id + 1
    end
end

function draw_blind_menu(x, y, bld, ant, alpha)
    screen.setAlpha(alpha)
    screen.drawFillRect(SCREEN_DOWN, x, y, x + 84, 192, blind_info[bld][2])
    screen.setAlpha(100)
    screen.drawFillRect(SCREEN_DOWN, x + 2, y + 1, x + 82, y + 1, Color.new256(49, 49, 51))
    screen.drawFillRect(SCREEN_DOWN, x + 1, y + 2, x + 83, 192, Color.new256(49, 49, 51))
    screen.setAlpha(alpha)
    Image.setTint(blind_ui, blind_info[bld][2])
    screen.blit(SCREEN_DOWN, x + 4, y + 3, blind_ui)
    screen.print(SCREEN_DOWN, x + 6, y + 8, blind_info[bld][1], Color.new(31, 31, 31))
    local offset = 4
    screen.setAlpha(alpha / 2)
    screen.blit(SCREEN_DOWN, x + 4, y + 21 + offset, blind_ui_box)
    screen.setAlpha(alpha)
    tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
    tutorial_graphics:drawFrame(SCREEN_DOWN, x + 5, y + 23 + offset, 5)
    if bld > 2 then
        shop_sign = Sprite.new(shop_sheet, 76, 12, VRAM)
        shop_sign:drawFrame(SCREEN_DOWN, x + 4, y + 72 + offset, blind_descriptions[bld])
    end
    screen.print(SCREEN_DOWN, x + 4, y + 32 + offset, tostring(ante_bases[ant] * blind_multis[bld]), Color.new256(241, 59, 59))
    screen.print(SCREEN_DOWN, x + 4, y + 56 + offset, "Reward:", Color.new(31, 31, 31))
    screen.print(SCREEN_DOWN, x + 45, y + 56 + offset, number_to_payout(blind_payouts[bld]), Color.new256(241, 184, 91))
end

function reset_card_scale_timer()
    card_selected_rotation = math.random(2)
    card_scale_timer:reset(0)
    card_scale_timer:start()
end

function calculate_minimum_score()
    minimumscore = ante_bases[ante] * blind_multis[blind]
end

function progress()
    round = round + 1
    if blind < 3 then
        blind = blind + 1
        if blind == 3 then
            blind = boss_blind
        end
    else
        local prev_boss = boss_blind
        ante = ante + 1
        set_boss_blind()
        blind = 1
        if ante == 9 then
            ante = 8
        end
    end

    calculate_minimum_score()
    reset_deck()
end

function set_boss_blind()
    local boss_blinds = {}
    for i=1, ante do
        for i,v in ipairs(ante_blinds[i]) do
            table.insert(boss_blinds, v)
        end
    end
    boss_blind = boss_blinds[math.random(#boss_blinds)]
end

function lose()
    win = false
    gameplay_phase = 5
end

function add_to_shop()
    local cards_added = 0
    local goal = 2 - #shop_jokers
    while cards_added < goal do
        local randomvalue = math.random(#joker_deck)
        table.insert(shop_jokers, joker_deck[randomvalue])
        cards_added = cards_added + 1
    end
end

function number_to_payout(num)
    local payout = ""
    for i=1, tonumber(num) do
        payout = payout .. "$"
    end
    return payout
end

function math.Clamp(val, lower, upper)
    assert(val and lower and upper, "not very useful error message here")
    if lower > upper then lower, upper = upper, lower end -- swap if boundaries supplied the wrong way
    return math.max(lower, math.min(upper, val))
end

logo_bop = -120

while not Keys.newPress.Start do
    Controls.read()

    if scene == "menu" then
        Image.mirrorV(menubg, true)
        screen.blit(SCREEN_DOWN, 0, -1, menubg)
        Image.mirrorV(menubg, false)
        screen.blit(SCREEN_UP, 0, 0, menubg)
        screen.blit(SCREEN_UP, 39, 44 - (logo_bop / 30), logo)

        screen.setAlpha(50)
        screen.drawFillRect(SCREEN_DOWN, 0, 78, 256, 113, Color.new256(0, 0, 0))
        screen.drawFillRect(SCREEN_UP, 0, 192, 256, 178, Color.new256(0, 0, 0))
        screen.setAlpha(100)
        screen.drawFillRect(SCREEN_DOWN, 0, 80, 256, 111, Color.new256(111, 111, 111))
        screen.print(SCREEN_DOWN, 84, 92, "PRESS A TO PLAY")

        screen.print(SCREEN_UP, 2, 182, "GAME BY LOCAL THUNK, RECREATED BY HAYNSTER")

        logo_bop = logo_bop + 1
        if logo_bop > 119 then
            logo_bop = -120
        end

        if Keys.newPress.A then
            scene = "game"
            math.randomseed(random_timer:getTime())
        end
    elseif scene == "game" then
        hand_type = get_hand_type(hand)
        hand_multi = {0, 0}
        if gameplay_phase == 0 then
            selected_card = 0
            round = 0
            blind = 1
            ante = 1
            round_score = 0
            cash = 4
            jokers = {}
            hand = {}
            dealt = {}
            chips = 0
            multiplier = 0

            reroll_price = 5
            hands = 4
            discards = 4
            hand_size = 8

            win = false
            calculate_minimum_score()
            set_boss_blind()
            reset_deck()
            gameplay_phase = 1
        elseif gameplay_phase == 1 then
            if Keys.newPress.X then
                --set_boss_blind()
            end

            if Keys.newPress.Y then
                if blind < 3 then
                    blind = blind + 1
                    if blind == 3 then
                        blind = boss_blind
                    end
                    calculate_minimum_score()
                end
            end

            if Keys.newPress.A then
                gameplay_phase = 2
                if blind >= 3 then
                    blind_colour_timer:reset(0)
                    blind_colour_timer:start()
                end

                if blind == 6 then
                    hands = 1
                elseif blind == 8 then
                    hand_size = hand_size - 1
                end

                last_played_hand = ""

                add_to_dealt()
                dealt = sort_deck(dealt)
            end
        elseif gameplay_phase == 2 then
            if Keys.newPress.Left then
                selected_card = selected_card - 1
                reset_card_scale_timer()
            elseif Keys.newPress.Right then
                selected_card = selected_card + 1
                reset_card_scale_timer()
            end

            if selected_card > #dealt - 1 then
                selected_card = 0
            elseif selected_card < 0 then
                selected_card = #dealt - 1
            end

            if Keys.newPress.L then
                sort_mode = 0
                dealt = sort_deck(dealt)
            elseif Keys.newPress.R then
                sort_mode = 1
                dealt = sort_deck(dealt)
            end

            if Keys.newPress.Up and #hand < 5 then
                table.insert(hand, dealt[selected_card + 1])
                table.remove(dealt, selected_card + 1)

                dealt = sort_deck(dealt)
            end

            if Keys.newPress.Down then
                for i,v in ipairs(hand) do
                    table.insert(dealt, v)
                end
                
                dealt = sort_deck(dealt)
                hand = {}
            end

            chips = hand_multipliers[hand_type][1]
            multiplier = hand_multipliers[hand_type][2]

            can_play_hand = false
            can_discard = false

            if #hand > 0 and hands > 0 then
                can_play_hand = true
            end

            if Keys.newPress.A and can_play_hand then
                gameplay_phase = 3

                if blind == 5 then
                    for i=1, 2 do
                        table.remove(dealt, math.random(#dealt))
                    end
                elseif blind == 7 then
                    cash = cash - 1
                end

                if blind == 9 and last_played_hand == "" or blind == 9 and last_played_hand == hand_type or blind ~= 9 then
                    last_played_hand = hand_type
                end

                Debug.print(last_played_hand)

                card_count = 1
                selected_card = -1
                hands = hands - 1
                card_count_phase = 0
                card_count_timer:reset(0)
                card_count_timer:start()
            end

            if #hand > 0 and discards > 0 then
                can_discard = true
            end

            if Keys.newPress.Y and can_discard then
                hand = {}
                add_to_dealt()
                dealt = sort_deck(dealt)
                discards = discards - 1
            end
        elseif gameplay_phase == 3 then
            can_play_hand = false
            can_discard = false
            interest = 0
            cash_out = 0
            active_joker_id = 0
            if card_count_timer:getTime() > 700 and card_count_phase == 0 then
                if card_count - 1 < #hand then
                    if card_count == 2 and hand_type == "High Card" then
                        card_count_phase = 1
                        selected_card = 6
                        card_count = 1
                    else
                        if blind == 9 and last_played_hand == hand_type or blind == 9 and last_played_hand == "" or blind == 4 and #hand == 5 or blind ~= 10 and blind ~= 11 and blind ~= 12 and blind ~= 13 and blind ~= 14 and blind ~= 9 and blind ~= 4 or string.sub(hand[card_count], 2, 2) ~= debuffed_suits[blind] or blind == 13 and string.sub(hand[card_count], 1, 1) ~= "j" and string.sub(hand[card_count], 1, 1) ~= "k" and string.sub(hand[card_count], 1, 1) ~= "q" then
                            chips = chips + convert_rank_to_num(string.sub(hand[card_count], 1, 1))
                            
                            for i,v in ipairs(jokers) do
                                if not indep_jokers[v] then
                                    execute_joker(v, hand[card_count], hand_type)
                                end
                            end
                        end

                        reset_card_scale_timer()
                        selected_card = selected_card + 1
                        card_count = card_count + 1
                    end
                else
                    card_count_phase = 1
                    selected_card = 6
                    card_count = 1
                end
                card_count_timer:reset(0)
                card_count_timer:start()
            elseif card_count_phase == 1 then
                card_count_timer:reset(0)
                card_count_timer:stop()
                if card_count - 1 < #jokers then
                    local joker = jokers[card_count]
                    if indep_jokers[joker] then
                        execute_joker(joker, "00")
                    end
                    card_count = card_count + 1
                else
                    card_count_phase = 2
                    card_count = 0
                end
            elseif card_count_phase == 2 then
                card_count_phase = 3
                sleep(700)
            elseif card_count_phase == 3 then
                card_count_phase = 4
                round_score = round_score + (chips * multiplier)
                chips = 0
                multiplier = 0
                hand = {}
            elseif card_count_phase == 4 then
                card_count_phase = 5
            elseif card_count_phase == 5 then
                if #deck ~= 0 then
                    if round_score < minimumscore then
                        if hands == 0 then
                            gameplay_phase = 5
                            lose()
                        else
                            gameplay_phase = 2
                            add_to_dealt()
                            dealt = sort_deck(dealt)
                        end
                    else
                        if ante == 8 and blind >= 3 then
                            gameplay_phase = 5
                            win = true
                        else
                            gameplay_phase = 3.5

                            interest = math.Clamp(math.floor(cash / 5), 0, 5)
                            cash_out = blind_payouts[blind] + hands + interest
                            shop_jokers = {}
                            add_to_shop()
                        end
                    end
                else
                    lose()
                end
            end
        elseif gameplay_phase == 3.5 then
            blind_colour_timer:reset(0)
            if Keys.newPress.A then
                gameplay_phase = 4

                cash = cash + cash_out
                reroll_price = 5
                hands = 4
                discards = 4
                dealt = {}
                hand_size = 8
                round_score = 0
            end
        elseif gameplay_phase == 4 then
            if Keys.newPress.Left then
                active_joker_id = active_joker_id - 1
            elseif Keys.newPress.Right then
                active_joker_id = active_joker_id + 1
            end

            if active_joker_id > #shop_jokers - 1 then
                active_joker_id = 0
            elseif active_joker_id < 0 then
                active_joker_id = #shop_jokers - 1
            end

            if Keys.newPress.X then
                if #shop_jokers > 0 and #jokers < 5 and cash >= joker_info[shop_jokers[active_joker_id + 1]][1] then
                    cash = cash - joker_info[shop_jokers[active_joker_id + 1]][1]
                    table.insert(jokers, shop_jokers[active_joker_id + 1])
                    table.remove(shop_jokers, active_joker_id + 1)
                end
            end

            if Keys.newPress.Y and cash >= reroll_price then
                cash = cash - reroll_price
                reroll_price = reroll_price + 1
                shop_jokers = {}
                add_to_shop()
            end

            if Keys.newPress.A then
                progress()
                gameplay_phase = 1
            end
        elseif gameplay_phase == 5 then
            if Keys.newPress.A then
                gameplay_phase = 0
                scene = "menu"
            end
        end

        if card_scale_timer:getTime() / 500 > 0.3 then
            card_scale_timer:reset(150)
            card_scale_timer:stop()
        end

        -- Backgrounds
        screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 192, Color.new256(57, 116, 92))
        screen.drawFillRect(SCREEN_UP, 0, 0, 256, 192, Color.new256(57, 116, 92))

        if blind > 2 then
            screen.setAlpha(math.floor(blind_colour_timer:getTime() / 10))
            screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 192, blind_info[blind][2])
            screen.drawFillRect(SCREEN_UP, 0, 0, 256, 192, blind_info[blind][2])
        end

        if blind_colour_timer:getTime() >= 800 then
            blind_colour_timer:stop()
        end

        screen.setAlpha(20)
        if gameplay_phase == 2 or gameplay_phase == 3 then
            screen.drawFillRect(SCREEN_DOWN, 0, 144, 256, 192, Color.new(0, 0, 0))
        end
        screen.drawFillRect(SCREEN_UP, 0, 144, 256, 192, Color.new(0, 0, 0))

        -- HUD
        local offset = 48

        screen.setAlpha(100)
        screen.drawFillRect(SCREEN_UP, 0, 0, 80, 192, Color.new256(52, 52, 52))
        screen.setAlpha(50)
        screen.blit(SCREEN_UP, 0, 0, hudbg)
        screen.setAlpha(100)
        screen.blit(SCREEN_UP, 0, 0, hud)
        screen.print(SCREEN_UP, 34, 28 + offset, tostring(round_score), Color.new(31, 31, 31))
        screen.print(SCREEN_UP, 6, 66 + offset, tostring(chips), Color.new(31, 31, 31))
        screen.print(SCREEN_UP, 48, 66 + offset, tostring(multiplier), Color.new(31, 31, 31))
        screen.print(SCREEN_UP, 8, 92 + offset, tostring(hands), Color.new256(99, 155, 255))
        screen.print(SCREEN_UP, 46, 92 + offset, tostring(discards), Color.new256(241, 59, 59))
        screen.print(SCREEN_UP, 16, 109 + offset, tostring(cash), Color.new256(241, 184, 91))
        screen.print(SCREEN_UP, 4, 50 + offset, hand_type, Color.new(31, 31, 31))
        screen.print(SCREEN_UP, 8, 131 + offset, tostring(ante) .. "/8", Color.new256(245, 136, 42))
        screen.print(SCREEN_UP, 46, 131 + offset, tostring(round), Color.new256(245, 136, 42))
        if gameplay_phase == 1 then
            if shop_sign_timer:getTime() > 250 then
                if shop_sign_frame == 1 then
                    shop_sign_frame = 0
                else
                    shop_sign_frame = 1
                end
                shop_sign_timer:reset(0)
                shop_sign_timer:start()
            end
            local blinds = {1, 2, boss_blind}
            local b = 0
            local a = 100
            screen.setAlpha(20)
            screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 20, Color.new(0, 0, 0))
            screen.setAlpha(100)
            tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
            tutorial_graphics:drawFrame(SCREEN_DOWN, 80, 5, 8)
            tutorial_graphics:drawFrame(SCREEN_UP, 14, 29 + shop_sign_frame, 9)
            for i,v in ipairs(blinds) do
                if v == blind then
                    draw_blind_menu(1 + (85 * b), 84, v, ante, 100)
                else
                    draw_blind_menu(1 + (85 * b), 104, v, ante, 50)
                end
                screen.setAlpha(100)
                b = b + 1
            end
        elseif gameplay_phase == 2 or gameplay_phase == 3 or gameplay_phase == 5 then
            screen.setAlpha(50)
            screen.blit(SCREEN_UP, 2, 21, blind_ui_box)
            screen.setAlpha(100)
            tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
            tutorial_graphics:drawFrame(SCREEN_UP, 4, 23, 5)
            screen.print(SCREEN_UP, 4, 32, tostring(minimumscore), Color.new256(241, 59, 59))
            screen.print(SCREEN_UP, 4, 56, "Reward:", Color.new(31, 31, 31))
            screen.print(SCREEN_UP, 45, 56, number_to_payout(blind_payouts[blind]), Color.new256(241, 184, 91))
            Image.setTint(blind_ui, blind_info[blind][2])
            screen.blit(SCREEN_UP, 2, 2, blind_ui)
            screen.print(SCREEN_UP, 5, 7, blind_info[blind][1], Color.new(31, 31, 31))

            -- Tutorial Icons
            tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
            if not can_play_hand then
                screen.setAlpha(50)
            end
            tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 120, 0)
            if not can_discard then
                screen.setAlpha(50)
            end
            tutorial_graphics:drawFrame(SCREEN_DOWN, 144, 120, 3)
            if gameplay_phase == 2 then
                screen.setAlpha(100)
            end
            tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 4, 2)
            tutorial_graphics:drawFrame(SCREEN_DOWN, 149, 4, 1)
            screen.setAlpha(100)
            active_joker_id = 0

            if gameplay_phase == 5 then
                blind_colour_timer:reset()
                blind_colour_timer:stop()

                screen.setAlpha(40)
                if win then
                    screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 192, Color.new256(0, 255, 0))
                    screen.drawFillRect(SCREEN_UP, 80, 0, 256, 192, Color.new256(0, 255, 0))
                else
                    screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 192, Color.new256(255, 0, 0))
                    screen.drawFillRect(SCREEN_UP, 80, 0, 256, 192, Color.new256(255, 0, 0))
                end
                screen.setAlpha(100)
                screen.drawFillRect(SCREEN_DOWN, 31, 63, 228, 192, Color.new256(255, 255, 255))
                screen.drawFillRect(SCREEN_DOWN, 34, 64, 225, 96, Color.new256(49, 49, 51))
                screen.drawFillRect(SCREEN_DOWN, 32, 66, 227, 192, Color.new256(49, 49, 51))
                screen.drawFillRect(SCREEN_DOWN, 36, 66, 223, 96, Color.new256(39, 39, 46))
                screen.drawFillRect(SCREEN_DOWN, 36, 154, 223, 192, Color.new256(39, 39, 46))
                screen.print(SCREEN_DOWN, 54, 172, "PRESS A TO RETURN TO MENU", Color.new(31, 31, 31))
                joker_graphic = Sprite.new(joker_graphics, 19, 28, VRAM)
                screen.blit(SCREEN_DOWN, 64, 112, card_graphic)
                joker_graphic:drawFrame(SCREEN_DOWN, 64, 112, 0)
                if win then
                    screen.print(SCREEN_DOWN, 88, 118, "Good thing I didnt", Color.new(31, 31, 31))
                    screen.print(SCREEN_DOWN, 88, 128, "bet against you!", Color.new(31, 31, 31))
                    screen.print(SCREEN_DOWN, 106, 76, "YOU WIN!", Color.new(31, 31, 31))
                else
                    screen.print(SCREEN_DOWN, 88, 118, "We folded like a", Color.new(31, 31, 31))
                    screen.print(SCREEN_DOWN, 88, 128, "cheap suit!", Color.new(31, 31, 31))
                    screen.print(SCREEN_DOWN, 96, 76, "YOU LOSE...", Color.new(31, 31, 31))
                end
            end
        elseif gameplay_phase == 3.5 then
            screen.drawFillRect(SCREEN_DOWN, 31, 63, 228, 192, Color.new256(32, 32, 34))
            screen.drawFillRect(SCREEN_DOWN, 34, 64, 225, 96, Color.new256(49, 49, 51))
            screen.drawFillRect(SCREEN_DOWN, 32, 66, 227, 192, Color.new256(49, 49, 51))
            screen.drawFillRect(SCREEN_DOWN, 36, 66, 223, 96, Color.new256(39, 39, 46))
            screen.drawFillRect(SCREEN_DOWN, 36, 98, 223, 192, Color.new256(39, 39, 46))
            Image.setTint(blind_ui, Color.new256(245, 136, 42))
            screen.blit(SCREEN_DOWN, 94, 72, blind_ui)
            shop_sign = Sprite.new(shop_sheet, 76, 35, VRAM)
            shop_sign:drawFrame(SCREEN_DOWN, 94 + 4, 72 + 4, 2)
            screen.print(SCREEN_DOWN, 148, 77, "$" .. tostring(cash_out), Color.new(31, 31, 31))
            local y = 0
            for i,v in ipairs({blind_payouts[blind], hands, interest}) do
                if v ~= 0 then
                    local names = {"Blind Reward", "Leftover Hands {$1 Each}", "Interest (5 Max)"}
                    screen.print(SCREEN_DOWN, 40, 104 + y, names[i], Color.new(31, 31, 31))
                    screen.print(SCREEN_DOWN, 46 + (string.len(names[i]) * 6), 104 + y, number_to_payout(v), Color.new256(241, 184, 91))
                    y = y + 12
                end
            end

        elseif gameplay_phase == 4 then
            if shop_sign_timer:getTime() > 250 then
                if shop_sign_frame == 1 then
                    shop_sign_frame = 0
                else
                    shop_sign_frame = 1
                end
                shop_sign_timer:reset(0)
                shop_sign_timer:start()
            end
            shop_sign = Sprite.new(shop_sheet, 76, 35, VRAM)
            shop_sign:drawFrame(SCREEN_UP, 2, 6, shop_sign_frame)
            tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
            tutorial_graphics:drawFrame(SCREEN_UP, 3, 52 - shop_sign_frame, 4)

            screen.drawFillRect(SCREEN_DOWN, 31, 63, 228, 192, Color.new256(241, 59, 59))
            screen.drawFillRect(SCREEN_DOWN, 34, 64, 225, 96, Color.new256(49, 49, 51))
            screen.drawFillRect(SCREEN_DOWN, 32, 66, 227, 192, Color.new256(49, 49, 51))
            Image.setTint(blind_ui, Color.new256(241, 59, 59))
            screen.blit(SCREEN_DOWN, 36, 172, blind_ui)
            tutorial_graphics:drawFrame(SCREEN_DOWN, 46, 176, 6)
            Image.setTint(blind_ui, Color.new256(85, 224, 139))
            screen.blit(SCREEN_DOWN, 147, 172, blind_ui)
            tutorial_graphics:drawFrame(SCREEN_DOWN, 159, 176, 7)
            screen.print(SCREEN_DOWN, 200, 177, "$" .. tostring(reroll_price), Color.new(31, 31, 31))
            screen.setAlpha(20)
            screen.drawFillRect(SCREEN_DOWN, 35, 68, 224, 116, Color.new(0, 0, 0))
            screen.drawFillRect(SCREEN_DOWN, 35, 120, 224, 166, Color.new(0, 0, 0))
            screen.setAlpha(100)
            draw_joker_deck_graphic(107 + ((2 - #shop_jokers) * 12), 82, shop_jokers, 0, 1)
            local selected_joker = shop_jokers[active_joker_id + 1]
            if selected_joker then
                screen.print(SCREEN_DOWN, 40, 124, selected_joker, Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 46 + (string.len(selected_joker) * 6), 124, "$" .. tostring(joker_info[selected_joker][1]), Color.new256(241, 184, 91))
                screen.print(SCREEN_DOWN, 40, 136, joker_info[selected_joker][2], Color.new(25, 25, 25))
                screen.print(SCREEN_DOWN, 40, 152, "Press X to Buy", Color.new256(99, 155, 255))
            else
                screen.print(SCREEN_DOWN, 40, 124, "No Joker Selected", Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 40, 136, "Does Nothing", Color.new(25, 25, 25))
            end
        end

        -- Decks
        draw_joker_deck_graphic(108 + ((5 - #jokers) * 12), 158, jokers, 1, 0)

        if gameplay_phase == 2 then
            draw_card_deck_graphic(32 + ((8 - #dealt) * 12) , 158, dealt, true)
            draw_card_deck_graphic(32 + ((8 - #hand) * 12) , 58, hand, false)
        elseif gameplay_phase == 3 then
            draw_card_deck_graphic(32 + ((8 - #dealt) * 12) , 158, dealt, false)
            draw_card_deck_graphic(32 + ((8 - #hand) * 12) , 58, hand, true)
        end
    end

    render()
end

Image.destroy(card_graphic)
Image.destroy(card_shadow_graphic)
Image.destroy(press_a_graphic)
Image.destroy(press_y_graphic)
Image.destroy(press_up_graphic)

for i,v in ipairs(rank_graphics) do
    Image.destroy(v)
end

for i,v in ipairs(suit_graphics) do
    Image.destroy(v)
end