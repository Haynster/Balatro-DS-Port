scene = "menu"
index_menu = 1
enhancement_kind = 1--menu init
speed_init = 2
limit = 4,294,967,295
speed_details = {[0] = "Off", [1] = "Fast", [2] = "Normal", [3] = "Slow"}
deck_able = {"Red Deck", "Blue Deck", "Yellow Deck", "Green Deck", "Black Deck", "Magic Deck", "Nebula Deck", "Ghost Deck", "Abandoned Deck", "Checkered Deck", "Zodiac Deck", "Painted Deck", "Anaglyph Deck", "Plasma Deck", "Erratic Deck"}--need achievements for locked
challenge_decks = {"The Omlette", "15 Minute City", "Rich get Richer", "On a Knife's Edge", "X-ray Vision", "Mad World", "Luxury Tax", "Non Perishable", "Medusa", "Typecast", "Inflation", "Bram Poker", "Fragile","Monolith", "Blast Off", "5 Card Draw", "Golden Needle", "Cruelty","Jokerless"}
total_deck = {[1]=deck_able,[2]=challenge_decks}
deck_details = {
    ["Red Deck"] = "Start with 1 additional discard",
    ["Blue Deck"] = "Start with 1 additional hand",
    ["Yellow Deck"] = "Start with $10",
    ["Green Deck"] = "At end of each Round: $2 per remaining Hand, $1 per remaining Discard, Earn no Interest",
    ["Black Deck"] = "+1 Joker slot, -1 hand",
    ["Magic Deck"] = "Start with +1 consumable slot and 2 copies of The Fool",
    ["Nebula Deck"] = "Start run with telescope voucher, -1 consumable slot",
    ["Ghost Deck"] = "Spectral cards may appear in shop, start with Hex card ",
    ["Abandoned Deck"] = "Start with no face cards",
    ["Checkered Deck"] = "Start with 26 Spades and 26 Hearts",
    ["Zodiac Deck"] = "Start with Tarot Merchant, Planet Merchant and Overstock",
    ["Painted Deck"] = "+2 hand size, -1 Joker slot",
    ["Anaglyph Deck"] = "After defeating Boss Blind gain Double tag",
    ["Plasma Deck"] = "Balance chips and mult when calculating score, X2 base Blind size",
    ["Erratic Deck"] = "All ranks and suits are randomized",
    ["The Omlette"] = "All Blinds give no rewards, Extra Hands no longer earn money, Earn no Interest at end of round. Start with 5 Eggs",
    ["15 Minute City"] = "Start with an eternal Ride the Bus and an eternal Shortcut",
    ["Rich get Richer"] = "Chips cannot exceed Cash, Start with $100, Seed Money and Money Tree",
    ["On a Knife's Edge"] = "Start with an eternal Ceremonial Dagger pinned in the leftmost joker slot",
    ["X-ray Vision"] = "1 in 4 chance for cards to be drawn face down",
    ["Mad World"] = "Extra Hands earn no money, Earn no interest. Start with Eternal Business Card and an eternal, negative Pareidolia",
    ["Luxury Tax"] = "Hand size is 10, -1 for every $5",
    ["Non Perishable"] = "All Jokers are eternal",
    ["Medusa"] = "Start with an eternal Marble Joker",
    ["Double or Nothing"] = "Cards are debuffed after scoring, all cards have a red seal",
    ["Typecast"] = "When Ante 5 is reached Jokers become eternal, joker size is fixed to this amount",
    ["Inflation"] = "Raise prices by $1 for every purchase",--N/I
    ["Bram Poker"] = "Jokers no longer appear in the shop. Start with eternal Vampire, magic trick and illusion vouchers",
    ["Fragile"] = "All cards are glass, start with 2 Oops! All 6s",
    ["Monolith"] = "Eternal Obelisk and Eternal, Negative Marble Joker",
    ["Blast Off"] = "2 Hands per round, 2 Discards per round, 4 joker slots",
    ["5 Card Draw"] = "6 Discards per round, Hand size is 5, 7 joker slots. Start with Card Sharp and Joker",
    ["Golden Needle"] = "6 Discards per round, 1 Hand per round, Discards cost $1. Start with Credit Card",
    ["Cruelty"] = "Small and Big Blind give no reward, 3 Joker Slots",
    ["Jokerless"] = "Jokerless"
} 
stakes = {"White", "Red", "Green", "Black", "Blue", "Purple","Orange", "Gold"}

stakes_info = {
    ["White"] = "Base Difficulty",
    ["Red"] = "Small blind gives no reward",
    ["Green"] = "Required score scales faster with ante",
    ["Black"] = "30% chance for jokers to have Eternal sticker",
    ["Blue"] = "-1 Discard",
    ["Purple"] = "Required score scales even faster with ante",
    ["Orange"] ="30% chance for jokers to have Perishable sticker",
    ["Gold"] = "30% chance for jokers to have Rental sticker",
}

standard_deck = { --used for generating random cards
    "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "jh", "qh", "kh", "ah",
    "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "td", "jd", "qd", "kd", "ad",
    "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "js", "qs", "ks", "as",
    "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "tc", "jc", "qc", "kc", "ac",
}

non_eternal_sticker = {"Gros Michel", "Cavendish", "Ice Cream", "Turtle Bean", "Ramen", "Diet Cola", "Seltzer", "Popcorn", "Mr Bones", "Invisible Joker", "Luchador"}--cant get eternal or perishable
non_perishable_sticker = {"Castle", "Ceremonial Dagger", "Constellation", "Flash Card", "Glass Joker", "Green Joker", "Hologram", "Lucky Cat", "Madness", "Obelisk", "Red Card", "Ride the Bus", "Rocket", "Runner", "Spare Trousers", "Square Joker", "Vampire", "Wee Joker"}
card_size = {19,28}--x,y of sprites
hud_width = 80--width of lhs bar
colours = {Color.new(31,31,31),Color.new256(153,0,204), Color.new256(102,0,102),Color.new256(0,50,170) ,Color.new256(153,76,0)}--cards, shop_jokers, jokers, packs,consumable
card_graphic = Image.load("sprites/cards/card.png", VRAM)

blind_multis = {1, 1.5, 2} --used for minimumscore

normal_blind = {{"Small Blind", Color.new256(62, 125, 201)}, {"Big Blind", Color.new256(236, 50, 62)}}

boss_blind_description = {
    ["The Psychic"] = {Color.new256(239, 192, 60),"Must Play 5 Cards",1},
    ["The Hook"] = {Color.new256(168, 64, 36),"Discards 2 Cards Every Hand",1},
    ["The Manacle"] = {Color.new256(87, 87, 87),"-1 Hand Size",1},
    ["The Club"] = {Color.new256(185, 203, 146),"All Clubs are Debuffed",1}, 
    ["The Goad"] = {Color.new256(185, 92, 150),"All Spades are Debuffed",1}, 
    ["The Window"] = {Color.new256(169, 162, 149),"All Diamonds are Debuffed",1},
    ["The Head"] = {Color.new256(172, 157, 180),"All Hearts are Debuffed",1},
    ["The House"] = {Color.new256(122,164,189),"First Hand is drawn face down",2},
    ["The Wheel"] = {Color.new256(102,255,102),"Cards have 1 in 7 chance of being drawn face down",2},
    ["The Fish"] = {Color.new256(102,178,255),"Cards drawn face down after each hand played",2},
    ["The Mark"] = {Color.new256(144,61,61),"Face cards are drawn face down",2},
    ["The Water"] = {Color.new256(153,255,255),"Start with 0 discards",2},
    ["The Arm"] = {Color.new256(102,0,204),"Decrease level of poker hand before scoring",2},
    ["The Mouth"] = {Color.new256(174, 113, 142),"Only 1 Hand Type Can Be Played",2}, 
    ["The Needle"] = {Color.new256(92, 110, 49),"Only 1 Hand",2}, --small blind value
    ["The Wall"] = {Color.new256(138, 89, 165),"Extra Large Blind",2}, --double boss blind value
    ["The Flint"] = {Color.new256(255,128,0),"Base chips and mult from poker hand are halved",2},
    ["The Eye"] = {Color.new256(0,128,255),"No repeat hands this round",3},
    ["The Tooth"] = {Color.new256(181, 45, 45),"Lose $1 per card Played.",3}, 
    ["The Plant"] = {Color.new256(112, 146, 132),"All Face Cards are Debuffed",4},
    ["The Serpent"] = {Color.new256(0,102,0),"After Play or Discard draw 3 cards",5},
    ["The Ox"] = {Color.new256(153,76,0),"Playing most played poker hand sets money to $0",6},
    ["Amber Acorn"] = {Color.new256(0,0,0),"Flips and shuffles all jokers",99},--99 = never add to boss_blind
    ["Verdent Leaf"] = {Color.new256(0,0,0),"All cards debuffed until 1 Joker sold",99},
    ["Violet Vessel"] = {Color.new256(0,0,0),"Extra Large Blind",99},--3X boss value
    ["Crimson Heart"] = {Color.new256(0,0,0),"One random Joker disabled every hand",99},--not done
    ["Cerulean Bell"] = {Color.new256(0,0,0),"1 card is always selected",99}
}

legendary_joker ={
    "Canio",
    "Triboulet",
    "Yorick",
    "Chicot",
    "Perkeo"
}

joker_info = {
["Joker"]={2,"+4 Mult",1,"Common"},
["Greedy Joker"]={5,"+3 Mult for Diamond Cards",2,"Common"},
["Lusty Joker"]={5,"+3 Multi for Heart Cards",5,"Common"},
["Wrathful Joker"]={5,"+3 Mult for Spade Cards",4,"Common"},
["Gluttonous Joker"]={5,"+3 Mult for Club Cards",3,"Common"},
["Jolly Joker"]={3,"+8 Mult if hand contains Pair",6,"Common"},
["Zany Joker"]={4,"+12 Mult if hand contains Three Kind",7,"Common"},
["Mad Joker"]={4,"+10 Mult if hand contains Two Pair",8,"Common"},
["Crazy Joker"]={4,"+12 Mult if hand contains Straight",9,"Common"},
["Droll Joker"]={4,"+10 Mult if hand contains Flush",10,"Common"},
["Sly Joker"]={3,"+50 Chips if hand contains Pair",11,"Common"},
["Willy Joker"]={4,"+100 Chips if played hand contains a Three of a Kind",99,"Common"},
["Clever Joker"]={4,"+80 Chips if hand contains Two Pair",12,"Common"},
["Devious Joker"]={4,"+100 Chips if played hand contains a Straight",99,"Common"},
["Crafty Joker"]={4,"+80 Chips if played hand contains a Flush",99,"Common"},
["Half Joker"]={5,"+20 Mult if hand is 3 or less cards",13,"Common"},
["Credit Card"]={1,"Can go up to $20 in debt",99,"Common"},
["Banner"]={5,"+30 Chips for each discard left",15,"Common"},
["Mystic Summit"]={5,"+15 Mult when 0 discards remaining",99,"Common"},
["8 Ball"]={5,"1 in 4 chance for each played 8 to create a Tarot card when scored",99,"Common"},
["Misprint"]={4,"+0-23 Mult",99,"Common"},
["Raised Fist"]={5,"Add 2x the lowest ranked card in hand to mult",99,"Common"},
["Chaos the Clown"]={4,"1 free reroll per shop",99,"Common"},
["Scary Face"]={4,"Played face cards give +30 chips when scored",99,"Common"},
["Abstract Joker"]={4,"+3 Mult for each Joker",99,"Common"},
["Delayed Gratification"]={4,"Earn $2 per discard if no sicards used by end of the round",99,"Common"},
["Gros Michel"]={5,"+15 Mult, 1 in 6 chance to be destroyed at the end of round",99,"Common"},
["Even Steven"]={4,"Scored even ranked cards give +4 mult",99,"Common"},
["Odd Todd"]={4,"Scored odd ranked cards give +31 chips",99,"Common"},
["Scholar"]={4,"Played Aces give +20 chips and +4 mult when scored",99,"Common"},
["Business Card"]={4,"Played face cards have a 1 in 2 chance to give $2 when scored",99,"Common"},
["Supernova"]={5,"Adds number of times played poker hand has been played to Mult",99,"Common"},
["Ride the Bus"]={6,"This Joker gains +1 Mult per consecutive hand played without a scoring face card",99,"Common"},
["Egg"]={4,"Gains $3 of sell value at end of round",99,"Common"},
["Runner"]={5,"Gains +15 chips if played hand contans a straight",99,"Common"},
["Ice Cream"]={5,"+100 Chips, -5 Chips per hand played",99,"Common"},
["Splash"]={3,"All played cards count in scoring",99,"Common"},
["Blue Joker"]={5,"+2 Chips for each card remaining in Deck",99,"Common"},
["Faceless Joker"]={4,"Earn $5 if 3 or more face cards are discarded at the same time",99,"Common"},
["Green Joker"]={4,"+1 Mult per hand played, -1 Mult per discard",99,"Common"},
["Superposition"]={4,"Create a Tarot card if poker hand contains an Ace and a Straight",99,"Common"},
["To do List"]={4,"Earn $4 if poker hand is ",99,"Common"},
["Cavendish"] = {4,"x3 Mult, 1 in 1000 chance to be destroyed at end of round",99,"Common"},
["Red Card"]={5,"Gains +3 Mult when a booster pack is skipped",99,"Common"},
["Square Joker"]={4,"Gains +4 Mult if played hand has exactly 4 cards",99,"Common"},
["Riff-Raff"]={6,"When Blind selected create 2 random common jokers",99,"Common"},
["Photograph"]={5,"First played face card gives X2 Mult when scored",99,"Common"},
["Reserved Parking"]={6,"Each face card held in hand has a 1 in 2 chance to give $1",99,"Common"},
["Mail in Rebate"]={4,"Earn $5 for each discarded ",99,"Common"},
["Hallucination"]={4,"1 in 2 chance to create a tarot card when booster pack is opened",99,"Common"},
["Fortune Teller"]={6,"+1 Mult per tarot card used this run",99,"Common"},
["Juggler"]={4,"+1 hand size",99,"Common"},
["Drunkard"]={4,"+1 discard",99,"Common"},
["Golden Joker"]={6,"Earn $4 at end of round",99,"Common"},
["Popcorn"]={5,"+20 Mult,-4 Mult per round",99,"Common"},
["Walkie Talkie"]={4,"Each played 10 or 4 gives +10 Chips and +4 Mult when scored",99,"Common"},
["Smiley Face"]={4,"Played face cards give +5 Mult when scored",99,"Common"},
["Golden Ticket"]={5,"Played Gold cards give $4 when scored",99,"Common"},
["Swashbuckler"]={4,"Adds the sell value of all other owned Jokers to Mult",99,"Common"},
["Hanging Chad"]={4,"Retrigger first played card used in scoring 2 additional times",99,"Common"},
["Shoot the Moon"]={5,"Each queen held in hand gives +13 Mult",99,"Common"},
["Joker Stencil"]={8,"x1 Mult for all empty joker slots",14,"Uncommon"},
["Four Fingers"]={7,"Straights and Flushes can be made with 4 cards",99,"Uncommon"},
["Mime"]={5,"Retrigger all card held in hand ablilities",99,"Uncommon"},
["Ceremonial Dagger"]={6,"When Blind is selected, destroy Joker to the right and permanently add double its sell value to this Mult",99,"Uncommon"},
["Marble Joker"]={6,"When Blind is selected, add a stone card to your deck",99,"Uncommon"},
["Loyalty Card"]={5,"X4 Mult every 6 hands played",99,"Uncommon"},
["Dusk"]={5,"Retrigger all scored cards final hand of round",99,"Uncommon"},
["Fibonacci"]={8,"Each played Ace, 2, 3, 5, or 8 gives +8 Mult when scored",99,"Uncommon"},
["Steel Joker"]={7,"Gives X0.2 Mult for each Steel Card in your full deck",99,"Uncommon"},
["Hack"]={6,"Retrigger each played 2, 3, 4, or 5",99,"Uncommon"},
["Pareidolia"]={5,"All cards count as face cards",99,"Uncommon"},
["Space Joker"]={5,"1 in 4 chance to upgrade level of played poker hand",99,"Uncommon"},
["Burglar"]={6,"When Blind selected, gain +3 hands and lose all discards",99,"Uncommon"},
["Blackboard"]={6,"X3 Mult if all cards held in hand are spades or clubs",99,"Uncommon"},
["Sixth Sense"]={6,"If first hand of round is a single 6, destroy it and create a Spectral card",99,"Uncommon"},
["Constellation"]={6,"Gain X0.1 Mult everytime a planet card is used, Min X1 is retroactive",99,"Uncommon"},
["Hiker"]={5,"Every played card permanently gains +5 Chips when scored",99,"Uncommon"},
["Card Sharp"]={6,"X3 Mult is played poker hand has already been played this round",99,"Uncommon"},
["Madness"]={7,"When Small Blind or Big Blind is selected, gain X0.5 Mult and destroy a random Joker",99,"Uncommon"},
["Seance"]={6,"If poker hand is a straight flush create a random Spectral card",99,"Uncommon"},
["Vampire"]={7,"This Joker gains X0.1 Mult per scoring Enhanced card played, removes card Enhancement",99,"Uncommon"},
["Shortcut"]={7,"Straights can be made with gaps of 1",99,"Uncommon"},
["Hologram"]={7,"Gains X0.25 Mult whenever a card is added to deck, Min X1",99,"Uncommon"},
["Cloud 9"]={7,"Earn $1 for each 9 in your full deck at end of round",99,"Uncommon"},
["Rocket"]={6,"Earn $1 at end of round. Payout increases by $2 when Boss Blind is defeated",99,"Uncommon"},
["Midas Mask"]={7,"All played face cards become gold cards when scored",99,"Uncommon"},
["Luchador"]={5,"Sell this to disable current boss blind",99,"Uncommon"},
["Gift Card"]={6,"Jokers gain $1 of sell value at round end",99,"Uncommon"},
["Turtle Bean"]={6,"+5 hand size reduces by 1 each round",99,"Uncommon"},
["Erosion"]={6,"+4 Mult for each card below the starting number of cards",99,"Uncommon"},
["To the Moon"]={5,"Earn an extra $1 of interest for every $5 you have at end of round",99,"Uncommon"},
["Stone Joker"]={6,"Gives +25 Chips for each Stone Card in your full deck",99,"Uncommon"},
["Lucky Cat"]={6,"Gain X0.25 Mult every time a glass card is destroyed",99,"Uncommon"},
["Bull"]={6,"+2 chips for each $1",99,"Uncommon"},
["Diet Cola"]={6,"Gain a Double tag when this is sold",99,"Uncommon"},
["Trading Card"]={6,"If first discard of round has only 1 card, destroy it and earn $3",99,"Uncommon"},
["Flash Card"]={5,"Gains 2 Mult when shop is rerolled",99,"Uncommon"},
["Spare Trousers"]={6,"Gain +2 Mult if played hand contains a Two Pair",99,"Uncommon"},
["Ramen"]={6,"X2 Mult, loses X0.01 per card discarded",99,"Uncommon"},
["Seltzer"]={6,"Retrigger all cards played for the next 10 hands",99,"Uncommon"},
["Castle"]={6,"Gain +3 chips for each discarded ",99,"Uncommon"},
["Mr Bones"]={5,"Prevent Death if score at least 25% of minimum score",99,"Uncommon"},
["Acrobat"]={6,"X2 Mult on final hand of round",99,"Uncommon"},
["Sock and Buskin"]={6,"Retrigger all played face cards",99,"Uncommon"},
["Troubadour"]={6,"+2 hand size, -1 hand",99,"Uncommon"},
["Certificate"]={6,"When round begins, add a random playing card with a random seal to your hand",99,"Uncommon"},
["Smeared Joker"]={7,"Hearts and Diamonds count as the same suit, Spades and Clubs count as the same suit",99,"Uncommon"},
["Throwback"]={6,"Additional X0.25 Mult for every blind skipped starts at X1 is retroactive",99,"Uncommon"},
["Rough Gem"]={7,"Scoring Diamond give $1",99,"Uncommon"},
["Bloodstone"]={7,"1 in 2 chance for scoring Hearts to give X1.5 Mult",99,"Uncommon"},
["Arrowhead"]={7,"Scoring Spades give +50 chips",99,"Uncommon"},
["Onyx Agate"]={7,"Scoring Clubs give +7 Mult",99,"Uncommon"},
["Glass Joker"]={6,"Gains X0.75 Mult for every glass card destroyed, Min X1",99,"Uncommon"},
["Showman"]={5,"Joker, Tarot, Planet and Spectral cards may appear multiple times",99,"Uncommon"},
["Flower Pot"]={6,"X3 Mult if poker hand contains a  Diamond card, Club card, Heart card, and Spade card",99,"Uncommon"},
["Merry Andy"]={7,"+3 discards, -1 hand size",99,"Uncommon"},
["Oops! All 6s"]={4,"Doubles all listed probabilities",99,"Uncommon"},
["The Idol"]={6,"X2 Mult when scoring card is ",99,"Uncommon"},
["Seeing Double"]={6,"X2 Mult if played hand has a scoring  Club card and a scoring card of any other suit",99,"Uncommon"},
["Matador"]={7,"Gives $8 if played hand triggers boss ability",99,"Uncommon"},
["Satellite"]={6,"Earn $1 for every unique planet card used",99,"Uncommon"},
["Cartomancer"]={6,"Create a Tarot card whenBlind is selected",99,"Uncommon"},
["Astronomer"] = {8, "All planet cards and celestial packs are free",99,"Uncommon"},
["Bootstraps"]={7,"+2 Mult for every $5",99,"Uncommon"},
["DNA"] = {8,"If first hand of round has only 1 card, add a permanent copy to deck and draw it to hand",99,"Rare"},
["Vagabond"] = {8,"Create a Tarot card if hand is played with $4 or less",99,"Rare"},
["Baron"] = {8,"Each King held in hand gives X1.5 Mult",99,"Rare"},
["Obelisk"] = {8,"This Joker gains X0.2 Mult per consecutive hand played without playing your most played poker hand",99,"Rare"},
["Baseball Card"] = {8, "Each uncommon joker give an additional X1.5 Mult",99,"Rare"},
["Ancient Joker"] = {8,"X1.5 Mult for scoring cards with suit",99,"Rare"},
["Campfire"] = {9,"This Joker gains X0.25 Mult for each card sold, resets when Boss Blind is defeated",99,"Rare"},
["Blueprint"] = {10,"Copies ablity of joker to the right",99,"Rare"},
["Wee Joker"] = {8,"This Joker gains +8 Chips when each played 2 is scored",99,"Rare"},
["Hit the Road"] = {8,"This Joker gains X0.5 Mult for every Jack discarded",99,"Rare"},
["The Duo"] = {8, "X2 Mult if played hand contains a pair",99,"Rare"},
["The Trio"] = {8,"X3 Mult if played hand contains a Three of a Kind",99,"Rare"},
["The Family"] = {8,"X4 Mult if played hand contains a Four of a Kind",99,"Rare"},
["The Order"] = {8,"X3 Mult if played hand contains a Straight",99,"Rare"},
["The Tribe"] = {8,"X2 Mult if played hand contains a Flush",99,"Rare"},
["Stuntman"] = {7,"+250 Chips, -2 hand Size",99,"Rare"},
["Invisible Joker"] = {8,"After 2 rounds, sell this card to Duplicate a random Joker",99,"Rare"},
["Brainstorm"] = {10,"Copies ability of leftmost joker",99,"Rare"},
["Driver's License"] = {7,"X3 Mult if aleast 16 enhanced cards in full deck",99,"Rare"},
["Burnt Joker"] = {8,"Upgrade the level of the first discarded poker hand of the round",99,"Rare"},
["Canio"] = {20,"Gains X1 Mult when a Face card is destroyed",99,"Legendary"},
["Triboulet"] = {20,"Played Kings and Queens give X2 mult when scored",99,"Legendary"},
["Yorick"] = {20,"Gains X1 Mult every 23 cards discarded",99,"Legendary"},
["Perkeo"] = {20,"At the end of shop, add a negative copy of a random consumable",99,"Legendary"},
["Chicot"] = {20,"Disable Boss Blind ability",99,"Legendary"}
}
smear_link = {["h"] = "d", ["d"] = "h", ["s"] = "c", ["c"] = "d"}

shop_costs = {1,3,3,4,{4,6,8},10}--playing cards,tarots,planets,spectral,packs,vouchers

min_hand_multipliers = {
    [""] = {0,0},
    ["High Card"] = {5, 1},
    ["Pair"] = {10, 2},
    ["Two Pair"] = {20, 2},
    ["3 of a Kind"] = {30, 3},
    ["Straight"] = {30, 4},
    ["Flush"] = {35, 4,},
    ["Full House"] = {40, 4},
    ["4 of a Kind"] = {60, 7},
    ["Straight Flush"] = {100, 8},
    ["5 of a Kind"] = {120, 12},
    ["Flush House"] = {140, 14},
    ["Flush Five"] = {160, 16}
}

pack_size = {
    [1] = "normal, Choose 1 card to be used immediately",
    [2] = "jumbo, Choose 1 card to be used immediately",
    [3] = "mega, Choose 2 cards to be used immediately"
}

planets_info = {
    [""] = {0,0,""},
    ["Pluto"] = {10,1,"High Card"}, 
    ["Mercury"] = {15,1,"Pair"}, 
    ["Uranus"] = {20,1,"Two Pair"}, 
    ["Venus"] = {20,2,"3 of a Kind"}, 
    ["Saturn"] = {30,3,"Straight"}, 
    ["Jupiter"] = {15,2,"Flush"}, 
    ["Earth"] = {25,2,"Full House"}, 
    ["Mars"] = {30,3,"4 of a Kind"}, 
    ["Neptune"] = {40,4,"Straight Flush"}, 
    ["Planet X"] = {35,3,"5 of a Kind"}, 
    ["Ceres"] = {40,4,"Flush House"}, 
    ["Eris"] = {50,3,"Flush Five"}
}

consumable_deck = {
    ["The Fool"] = {"Creates the last Tarot or Planet card used during this run","Tarot",1},
    ["The Magician"] = {"Convert up to 2 cards to Lucky cards","Tarot",2},
    ["The High Priestess"] = {"Create and use up to 2 planet cards","Tarot",3},
    ["The Empress"] = {"Convert up to 2 cards to Mult cards","Tarot",4},
    ["The Emperor"] = {"Creates up to 2 tarot cards","Tarot",5},
    ["The Heirophant"] = {"Converts up to 2 cards to Bonus cards","Tarot",6},
    ["The Lovers"] = {"Convert 1 card to a Wild card","Tarot",7},
    ["The Chariot"] = {"Convert 1 card into a Steel card","Tarot",8},
    ["Justice"] = {"Convert 1 card into a Glass card","Tarot",9},
    ["The Hermit"] = {"Double money (max $20)","Tarot",10},
    ["The Wheel of Fortune"] = {"1 in 4 cahnce to give a random joker Foil, Holographic or Polychrome","Tarot",11},
    ["Strength"] = {"Increase the rank on up to 2 cards by 1","Tarot",12},
    ["The Hanged Man"] = {"Destroy up to 2 Cards","Tarot",13},
    ["Death"] = {"Convert the left card into the right card","Tarot",14},
    ["Temperence"] = {"Gives total sell value of all jokers (max $50)","Tarot",15},
    ["The Tower"] = {"Convert 1 card to a Stone card (+50 chips, always scores)","Tarot",16},
    ["The Devil"] = {"Convert 1 card into a Gold card","Tarot",17},
    ["The Star"] = {"Convert up to 3 cards to Diamonds","Tarot",18},
    ["The Moon"] = {"Convert up to 3 cards to Clubs","Tarot",19},
    ["The Sun"] = {"Convert up to 3 cards to Hearts","Tarot",20},
    ["Judgement"] = {"creates a random joker (must have room)","Tarot",21},
    ["The World"] = {"Convert up to 3 cards to Spades","Tarot",22},
    ["Pluto"] = {"High Card","Planet",1}, 
    ["Mercury"] = {"Pair","Planet",2}, 
    ["Uranus"] = {"Two Pair","Planet",3}, 
    ["Venus"] = {"3 of a Kind","Planet",4}, 
    ["Saturn"] = {"Straight","Planet",5}, 
    ["Jupiter"] = {"Flush","Planet",6}, 
    ["Earth"] = {"Full House","Planet",7}, 
    ["Mars"] = {"4 of a Kind","Planet",8}, 
    ["Neptune"] = {"Straight Flush","Planet",9}, 
    ["Planet X"] = {"5 of a Kind","Planet",10}, 
    ["Ceres"] = {"Flush House","Planet",11}, 
    ["Eris"] = {"Flush Five","Planet",12},
    ["Familiar"] = {"Destroy 1 random card in hand but add 3 random enchanted face cards","Spectral",1},
    ["Grim"] = {"Destroy 1 random card in hand but add 2 random enchanted ace cards","Spectral",2},
    ["Incantation"] = {"Destroy 1 random card in hand but add 4 random numbered cards","Spectral",3},
    ["Talisman"] = {"Add Gold Seal to 1 card","Spectral",4},
    ["Aura"] = {"Add Foil, Holographic or Polychrome to a selected card in hand","Spectral",5},
    ["Wraith"] = {"Create a random rare joker, set money to $0","Spectral",6},
    ["Sigil"] = {"Convert all cards in hand to a single random suit","Spectral",7},
    ["Ouija"] = {"Convert all cards in hand to a single random rank but -1 hand size","Spectral",8},
    ["Ectoplasm"] = {"Add Negative to a random joker, but -1 hand size, plus another -1 hand size for each time Ectoplasm has been used this run","Spectral",9},
    ["Immolate"] = {"Destroy 5 random cards in hand, gain $20","Spectral",10},
    ["Ankh"] = {"Creates an exact copy of 1 of your Jokers at random, then destroys the others","Spectral",11},
    ["Deja Vu"] = {"Add a Red-Seal to a selected card","Spectral",12},
    ["Hex"] = {"Add Polychrome to a random joker but destroys the rest","Spectral",13},
    ["Trance"] = {"Add a blue seal to a selected card","Spectral",14},
    ["Medium"] = {"Add a Purple Seal to a selected card","Spectral",15},
    ["Cryptid"] = {"Create 2 exact copies of a selected card","Spectral",16},
    ["The Soul"] = {"Create a legendary Joker","Spectral",17},--0.3% chance
    ["Black Hole"] = {"Increase all poker hands by 1 level","Spectral",18},--0.3% chance

}

vouchers_info = {
    ["Overstock"] = "Up to 3 Card slots in shop",
    ["Clearence Sale"] = "All cards and packs in shop are 25% off",
    ["Reroll Surplus"] = "Rerolls cost $2 less",
    ["Crystal Ball"] = "+1 consumable slot",
    ["Grabber"] = "+1 hand permanently",
    ["Wasteful"] = "+1 discard permanently",
    ["Seed Money"] = "interest capped at $10",
    ["Heiroglyph"] = "-1 ante, -1 hand",
    ["Director's Cut"] = "Reroll boss blind once for $10",
    ["Paint Brush"] = "+1 hand size",
    ["Tarot Merchant"] = "Tarot appear 2x as often",
    ["Planet Merchant"] = "Planets appear 2x as often",
    ["Telescope"] = "Most common poker hand always shows up in celestial packs",
    ["Magic Trick"] = "Playing Cards can be purchased from the shop",
    ["Hone"] = "Foil,Holographic and Polychrome cards appear 2X as often",
    ["Blank"] = "Does nothing?",
    ["Antimatter"] = "+1 Joker Slot",
    ["Overstock Plus"] = "Up to 4 Card slots in shop",
    ["Liquidation"] = "All cards and packs in shop are an additional 25% off",
    ["Reroll Glut"] = "Rerolls cost an additional $2 less",
    ["Observatory"] = "Planet cards in your consumable slot give X1.5 Mult to their poker hand",
    ["Nacho Tong"] = "+1 hand permanently",
    ["Recyclomancy"] = "+1 discard permanently",
    ["Tarot Tycoon"] = "Tarot cards appear and additional 2X",
    ["Planet Tycoon"] = "Planet cards appear and additional 2X",
    ["Money Tree"] = "interest capped at $20",
    ["Petroglyph"] = "-1 ante, -1 hand",
    ["Palette"] = "+1 hand size",
    ["Retcon"] = "Reroll boss blind an unlimited number of times",
    ["Glow Up"] = "Foil,Holographic and Polychrome cards appear an additional 2X as often",
    ["Illusion"] = "Standard cards in the shop can have enchancements"
}

tag_info = {
    ["Foil"] = "Next Base edition joker is Foil and free",
    ["Holographic"] = "Next Base edition joker is Holographic and free",
    ["Polychrome"] = "Next Base edition joker is Polychrome and free",
    ["Negative"] = "Next Base edition joker is Negative and free",
    ["Economy"] = "Doubles your money (Max $40)",
    ["Speed"] = "Gain $5 for number of blinds skipped",
    ["D6"] = "In next shop rerolls start at $0",
    ["Juggle"] = "+3 hands next round only",
    ["Double"] = "Gains copy of next tag selected",
    ["Charm"] = "Open a Mega arcana pack immediately",
    ["Boss"] = "Reroll boss blind",
    ["Voucher"] = "Add Voucher to shop",
    ["Coupon"] = "Add total cost of shop excluidng voucher to cash",--not exactly but in the spirit
    ["Investment"] = "Gain $25 after defeating boss blind",
    ["Uncommon"] = "Adds a free uncommon joker to shop",
    ["Rare"] = "Adds a free rare joker to the shop",
    ["Standard"] = "Open a Mega standard pack immediately",
    ["Meteor"] = "Open a Mega Celestial pack",
    ["Bufoon"] = "Open a Mega Bufoon pack",
    ["Handy"] = "Gain $1 for each hand played this run",
    ["Garbage"] = "Gain $1 for each discard used this run",
    ["Ethereal"] = "Open a Mega Spectral pack",
    ["Top-Up"] = "Create up to 2 random common Jokers",
    ["Orbital"] = "Upgrade a most played Poker Hand by 3 levels"--i know this isnt what it is but is very awkward to get to work and display
}

card_enhancement = {"Gold","Steel","Glass","Lucky","Mult","Wild","Stone"}
editions = {"Polychrome", "Holographic","Foil"}--negative, excluded
seals = {"Gold-Seal", "Blue-Seal", "Purple-Seal", "Red-Seal"}

enhancement_info = {
    ["Gold"] = {"Gain $3 if held at round end","Enhancement"},
    ["Steel"] = {"x1.5 mult if held when hand played","Enhancement"},
    ["Glass"] = {"x2 mult and 25% chance to break when played","Enhancement"},
    ["Mult"] = {"+4 mult","Enhancement"},
    ["Lucky"] = {"x1.5 mult: 1 in 5 chance, $20: 1 in 15 chance when played","Enhancement"},
    ["Wild"] = {"Counts as any suit","Enhancement"},
    ["Stone"] = {"+50 Chips, always scores no rank or suit","Enhancement"},
    ["Foil"] = {"+50 chips","Edition"},
    ["Polychrome"] = {"x1.5 mult","Edition"},
    ["Holographic"] = {"+10 mult","Edition"},
    ["Negative"] = {"+1 Slot","Edition"},
    ["Gold-Seal"] = {"$3 when scoring", "Seal"},
    ["Blue-Seal"] = {"Planet card of winning hand added to consumable slot if held in hand","Seal"},
    ["Purple-Seal"] = {"When discarded create a tarot card","Seal"},--not setup with The Hook
    ["Red-Seal"] = {"Retrigger this acrd 1 additional time"},
    ["Eternal"] = {"Joker cannot be sold or destroyed","Sticker"},
    ["Perishable"] = {"Joker disabled in 5 rounds","Sticker"},
    ["Rental"] = {"Cost $1, lose $3 at end of round","Sticker"}
}

rank_graphics = {["t"] = Image.load("sprites/cards/1.png", VRAM), ["2"] = Image.load("sprites/cards/2.png", VRAM), ["3"] = Image.load("sprites/cards/3.png", VRAM), ["4"] = Image.load("sprites/cards/4.png", VRAM), ["5"] = Image.load("sprites/cards/5.png", VRAM), ["6"] = Image.load("sprites/cards/6.png", VRAM), ["7"] = Image.load("sprites/cards/7.png", VRAM), ["8"] = Image.load("sprites/cards/8.png", VRAM), ["9"] = Image.load("sprites/cards/9.png", VRAM), ["j"] = Image.load("sprites/cards/j.png", VRAM), ["k"] = Image.load("sprites/cards/k.png", VRAM), ["q"] = Image.load("sprites/cards/q.png", VRAM), ["a"] = Image.load("sprites/cards/a.png", VRAM),}
suit_graphics = {["d"] = Image.load("sprites/cards/d.png", VRAM), ["c"] = Image.load("sprites/cards/c.png", VRAM), ["s"] = Image.load("sprites/cards/s.png", VRAM), ["h"] = Image.load("sprites/cards/h.png", VRAM),}
edition_seal_col = {["Foil"] = Color.new256(180, 10, 180), ["Holographic"] = Color.new256(10, 180, 180), ["Polychrome"] = Color.new256(180, 180, 10), ["Red-Seal"] = Color.new256(255,0,0), ["Blue-Seal"] = Color.new256(0,0,255), ["Purple-Seal"] = Color.new256(255, 0, 255), ["Gold-Seal"] = Color.new256(218,165,32)}
joker_graphics = Image.load("sprites/cards/jokers.png", VRAM)
--joker_graphics_table = {["Common"] = Image.load("sprites/cards/common_jokers.png", VRAM), ["Uncommon"] = Image.load("sprites/cards/uncommon_jokers.png", VRAM), ["Rare"] = Image.load("sprites/cards/rare_jokers.png", VRAM), ["Legendary"] = Image.load("sprites/cards/legendary_jokers.png", VRAM) }
consumable_graphics_table = {["Tarot"] = Image.load("sprites/cards/Tarots.png", VRAM), ["Planet"] = Image.load("sprites/cards/Planets.png", VRAM), ["Spectral"] = Image.load("sprites/cards/Spectral.png", VRAM)}
hudbg = Image.load("sprites/ui/hudbackground.png", VRAM)
hud = Image.load("sprites/ui/hud.png", VRAM)
blind_ui = Image.load("sprites/ui/blindui.png", VRAM)--can move to screen.drawFillRect
blind_ui_box = Image.load("sprites/ui/blinduibox.png", VRAM)
tutorial_sheet = Image.load("sprites/ui/ui.png", VRAM)
shop_sheet = Image.load("sprites/ui/moreui.png", VRAM)
img_packs = Image.load("sprites/cards/packs.png", VRAM)
menubg = Image.load("sprites/ui/mainmenubg.png", VRAM)
Image.scale(menubg, SCREEN_WIDTH, SCREEN_HEIGHT)
logo = Image.load("sprites/ui/logo.png", VRAM)

Sound.loadBank("soundbanks/soundbank.bin") 
Sound.loadMod(0)
Sound.loadSFX(0)
Sound.loadSFX(1)
MOD_max=100
Sound.setModVolume(MOD_max)
Sound.setSFXVolume(0,255)
Sound.setSFXVolume(1,255)
Sound.startMod(0, PLAY_LOOP) -- sounds bad
MOD_volume = 1
SFX_volume = 1
music_vol = true

function hard_reset()--done when resetting run
    round = 0
    blind = 1--up to 3, 3 is boss
    ante = 1--up to 8 then endless
    boss_blind = {"The Psychic", "The Hook", "The Manacle", "The Club", "The Goad", "The Window", "The Head"}
    minimumscore = {}--small,big,boss
    tag_select = {}
    blind_tags = {}
    blind_payouts = {3, 4, 5}--money need to add finisher 
    cash = 0
    hand_cash = 1
    discard_cash = 0
    gameplay_phase = 0
    consumable_size = 2
    shop_card_size = 2
    max_interest = 5
    min_cash = 0 --used for credit card
    discount_percent = 1
    packs = {}
    consumable = {}
    consumable_enhancement = {}--only used for perkeo
    planets_deck = {"","Pluto", "Mercury", "Uranus", "Venus", "Saturn", "Jupiter", "Earth", "Mars", "Neptune"}--used for reset
    general_used = false
    total_consumable = 0
    total_planets = 0
    jokers = {}
    jokers_enhancement = {}--effect details, enhancements
    last_played_hand = ""
    logo_bop = -120
    kind = 1
    boss_reroll, omen_globe = false, false
    boss_reroll_num = 0
    joker_size = 5
    max_hands = 4
    max_discards = 3
    max_hand_size = 8
    min_reroll = 5
    selected_card = 1
    deck_kind = 1
    selected_deck = 1
    selected_stake = 1
    seeded_run, seeded_num = false, 0 
    ecto_used = 0 
    no_blinds_skipped = 0
    no_hands_played = 0
    no_discards_used = 0
    num_bought = 0
    boss_active = true
    showman_active = false
    do_ignore, contains_shortcut, contains_fingers, smeared = true, false, false, false--splash, shorcut, four fingers, smeared joker
    all_face = false
    dice_prob = 1--oops all 6s
    hand_multipliers = {
        [""] = {0, 0, 0, ""},--chips, mult, times played, planet
        ["High Card"] = {5, 1, 0, "Pluto"},
        ["Pair"] = {10, 2, 0, "Mercury"},
        ["Two Pair"] = {20, 2, 0, "Uranus"},
        ["3 of a Kind"] = {30, 3, 0, "Venus"},
        ["Straight"] = {30, 4, 0, "Saturn"},
        ["Flush"] = {35, 4, 0, "Jupiter"},
        ["Full House"] = {40, 4, 0, "Earth"},
        ["4 of a Kind"] = {60, 7, 0, "Mars"},
        ["Straight Flush"] = {100, 8, 0, "Neptune"},
        ["5 of a Kind"] = {120, 12, 0, "Planet X"},
        ["Flush House"] = {140, 14, 0,"Ceres"},
        ["Flush Five"] = {160, 16, 0,"Eris"}
    }
    shop_weights = {{20,"Jokers"},{4,"Tarots"},{4,"Planets"}}--joker,tarots,planets
    shop_locked_weights = {{4,"Cards"},{2,"Spectral"}}--playing cards, spectral
    shop_jokers_enhancement_weight = {0.003,0.017,0.037}--Cumilative negative,poly, holo, foil
    neg_joker_prob = 0.003
    shop_cards_enhancement_weight = {0.4,0.08,0.2}--enhancement,edition,seal
    cards_edition_prob = {0.15,0.5,1}--Cumilative poly,holo, foil for cards
    reset_shop_weights()
    reset_challenge()
    reset_pack_prob()
    ante_bases = {300, 800, 2000, 5000, 11000, 20000, 35000, 50000, 110000, 560000, 72e5, 1e8}--above this the numbers go beyond the 32 bit integer limit
    telescope, observatory, shop_enhanced = false, false, false
    vouchers = {"Overstock", "Clearence Sale", "Reroll Surplus", "Crystal Ball", "Grabber", "Wasteful", "Seed Money", "Heiroglyph", "Director's Cut", "Paint Brush", "Tarot Merchant", "Planet Merchant", "Telescope", "Magic Trick","Blank","Hone"}--all cost $10
    full_deck_enhancement = {}
    stickers = {}--insert when deck selected
    pack_interior = {}
    pack_interior_enhancement = {}
    pack_cards = {}
    pack_cards_enhancements = {}
    active = {}
    active_enhancement = {}
end

function soft_reset()--done when increasing blind/ante
    kind = 2
    round_score = 0.0
    hand = {}
    hand_enhancement = {}
    dealt = {}
    dealt_enhancement = {}
    played_hand_type = {}
    shop_jokers = {}
    shop_jokers_enhancement = {}
    used_cards = {}
    packs = {}
    pack_enhancement = {}
    selected_card = 1
    first = 0
    chips = 0.0--do as float ue to being able to store a larger number 10^38 vs 10^9if possible but lua doesnt realy have fixed type i am trying
    multiplier = 0.0
    reroll_price = min_reroll
    hand_type = ""
    hands = max_hands
    discards = max_discards
    hand_size = max_hand_size
    win = false
    sort_mode = false--false = rank , true = suit
    can_play_hand = false
    can_discard = false
    joker_sale = false--only used for 1 boss
    reset_deck()
    collectgarbage()
end

function reset_shop_weights()
    shop_weights_active = {}
    local shop_tot_prob = 0
    for i,v in ipairs(shop_weights) do 
        shop_tot_prob = shop_tot_prob + v[1]
    end
    for i,v in ipairs(shop_weights) do
        shop_weights_active[i] = v[1]/shop_tot_prob
    end
end

function reset_challenge()--certain challenge decks require alterations to loaded elements
    boss_blind_locked = {"The House","The Wall", "The Wheel","The Fish", "The Mark", "The Needle","The Arm", "The Water","The Flint", "The Mouth","The Eye", "The Tooth", "The Plant","The Serpent","The Ox"}
    finisher_blinds = {"Amber Acorn","Verdent Leaf","Violet Vessel","Crimson Heart","Cerulean Bell"}
    common_joker = {
        "Joker",
        "Greedy Joker",
        "Lusty Joker",
        "Wrathful Joker",
        "Gluttonous Joker",
        "Jolly Joker", 
        "Zany Joker",
        "Mad Joker", 
        "Crazy Joker",
        "Droll Joker",
        "Sly Joker",
        "Willy Joker",
        "Clever Joker",
        "Devious Joker",
        "Crafty Joker",
        "Half Joker",
        "Credit Card",
        "Banner",
        "Mystic Summit",
        "8 Ball",
        "Misprint",
        "Raised Fist",
        "Chaos the Clown",
        "Scary Face",
        "Abstract Joker",
        "Delayed Gratification",
        "Gros Michel",
        "Even Steven",
        "Odd Todd",
        "Scholar",
        "Business Card",
        "Supernova",
        "Ride the Bus",
        "Egg",
        "Runner",
        "Ice Cream",
        "Splash",
        "Blue Joker",
        "Faceless Joker",
        "Green Joker",
        "Superposition",
        "To do List",
        "Red Card",
        "Square Joker",
        "Riff-Raff",
        "Photograph",
        "Reserved Parking",
        "Mail in Rebate",
        "Hallucination",
        "Fortune Teller",
        "Juggler",
        "Drunkard",
        "Golden Joker",
        "Popcorn",
        "Walkie Talkie",
        "Smiley Face",
        "Golden Ticket",
        "Swashbuckler",
        "Hanging Chad",
        "Shoot the Moon"
    }
    uncommon_joker = {
        "Joker Stencil",
        "Four Fingers",
        "Mime",
        "Ceremonial Dagger",
        "Marble Joker",
        "Loyalty Card",
        "Dusk",
        "Fibonacci",
        "Steel Joker",
        "Hack",
        "Pareidolia",
        "Space Joker",
        "Burglar",
        "Blackboard",
        "Sixth Sense",
        "Constellation",
        "Hiker",
        "Card Sharp",
        "Madness",
        "Seance",
        "Vampire",
        "Shortcut",
        "Hologram",
        "Cloud 9",
        "Rocket",
        "Midas Mask",
        "Luchador",
        "Gift Card",
        "Turtle Bean",
        "Erosion",
        "To the Moon",
        "Stone Joker",
        "Lucky Cat",
        "Bull",
        "Diet Cola",
        "Trading Card",
        "Flash Card",
        "Spare Trousers",
        "Ramen",
        "Seltzer",
        "Castle",
        "Mr Bones",
        "Acrobat",
        "Sock and Buskin",
        "Troubadour",
        "Certificate",
        "Smeared Joker",
        "Throwback",
        "Rough Gem",
        "Bloodstone",
        "Arrowhead",
        "Onyx Agate",
        "Glass Joker",
        "Showman",
        "Flower Pot",
        "Merry Andy",
        "Oops! All 6s",
        "The Idol",
        "Seeing Double",
        "Matador",
        "Satellite",
        "Cartomancer",
        "Astronomer",
        "Bootstraps",
    }
    rare_joker = {
        "DNA",
        "Vagabond",
        "Baron",
        "Obelisk",
        "Baseball Card",
        "Ancient Joker",
        "Campfire",
        "Blueprint",
        "Wee Joker",
        "Hit the Road",
        "The Duo",
        "The Trio",
        "The Family",
        "The Order",
        "The Tribe",
        "Stuntman",
        "Invisible Joker",
        "Brainstorm",
        "Driver's License",
        "Burnt Joker"
    }
    tarots_deck = {"The Fool","The Magician", "The High Priestess", "The Empress", "The Emperor", "The Heirophant", "The Lovers", "The Chariot","Justice", "The Hermit", "The Wheel of Fortune", "Strength", "The Hanged Man", "Death", "Temperence", "The Tower", "The Devil", "The Star", "The Moon", "The Sun", "Judgement", "The World"}
    spectral_deck = {"Familiar","Grim", "Incantation", "Aura", "Sigil", "Ouija", "Ectoplasm","Immolate", "Ankh", "Deja Vu", "Hex", "Trance", "Medium", "Cryptid"}--dejavu
    pack_type = {"standard", "arcana", "celestial", "bufoon", "spectral"}

    tag_deck = {"Economy", "Speed", "D6", "Juggle", "Double","Charm","Boss", "Voucher", "Investment","Rare","Uncommon","Foil","Holographic","Polychrome","Coupon"}
    tag_unlock_2 = {"Standard", "Meteor", "Bufoon","Handy","Garbage", "Ethereal","Top-Up", "Orbital","Negative"}
    type_base_prob = {20/3,20/3,20/3,2,1}--standard,tarot, planet, bufoon,spectral
    size_base_prob = {4,2,1}--small,mid,large pack
end

function challenge_removal(rm_from, to_rm)--table to remove from, table of things to remove
    for i=#rm_from,1,-1 do
        for j=#to_rm,1,-1 do
            if to_rm[j] == rm_from[i] then
                table.remove(rm_from,i)
                table.remove(to_rm,j)
                break
            end
        end
    end
end

function reset_pack_prob()
    local type_tot_prob = 0
    local size_tot_prob = 0
    size_active_prob = {}
    type_active_prob = {}
    for i,v in ipairs(type_base_prob) do 
        type_tot_prob = type_tot_prob + v
    end
    for i,v in ipairs(size_base_prob) do
        size_tot_prob = size_tot_prob + v
    end
    for i,v in ipairs(type_base_prob) do
        type_active_prob[i] = v/type_tot_prob
    end
    for i,v in ipairs(size_base_prob) do
        size_active_prob[i] = v/size_tot_prob
    end
end

function reset_deck()
    deck = {}
    deck_enhancement = {}--chips, card_enhancement
    for i, v in ipairs(full_deck) do
        table.insert(deck,v)
    end
    for i,v in ipairs(full_deck_enhancement) do
        table.insert(deck_enhancement,v)
    end
end

function get_deck_adjust(deck_name)
    if deck_kind == 2 then
        cash =4
    end
    if deck_name == "Red Deck" then
        max_discards = max_discards + 1
    elseif deck_name == "Blue Deck" then
        max_hands = max_hands + 1
    elseif deck_name == "Yellow Deck" then
        cash = 10
    elseif deck_name == "Green Deck" then
        hand_cash = 2
        discard_cash = 1
        max_interest = 0
        table.remove(vouchers,7)
    elseif deck_name == "Black Deck" then
        max_hands = max_hands-1
        joker_size = joker_size+1
    elseif deck_name == "Magic Deck" then
        table.insert(consumable,"The Fool")
        table.insert(consumable,"The Fool")
        table.insert(consumable_enhancement," ")
        table.insert(consumable_enhancement," ")
        use_vouchers("Crystal Ball")
    elseif deck_name == "Nebula Deck" then
        consumable_size = consumable_size-1
        use_vouchers("Telescope")
    elseif deck_name == "Ghost Deck" then
        for i,v in ipairs(shop_locked_weights) do
            if v[2] == "Spectral" then
                table.insert(shop_weights,shop_locked_weights[i])
                reset_shop_weights()
                break
            end
        end
        table.insert(consumable,"Hex")
        table.insert(consumable_enhancement," ")
    elseif deck_name == "Zodiac Deck" then
        use_vouchers("Overstock")
        use_vouchers("Tarot Merchant")
        use_vouchers("Planet Merchant")
    elseif deck_name == "Painted Deck" then
        max_hand_size = max_hand_size + 2
        joker_size = joker_size -1
    elseif deck_name == "The Omlette" then
        for i=1,5 do
            add_jokers_to_selection("Egg",{})
        end
        for index, value in ipairs(blind_payouts) do
            blind_payouts[index] = 0
        end
        max_interest = 0
        hand_cash = 0
        challenge_removal(vouchers,{"Seed Money"})
        challenge_removal(uncommon_joker,{"To the Moon", "Rocket", "Satellite"})
        challenge_removal(common_joker,{"Golden Joker"})
    elseif deck_name == "15 Minute City" then
        add_jokers_to_selection("Ride the Bus",{"","Eternal"})
        add_jokers_to_selection("Shortcut",{"","Eternal"})
    elseif deck_name == "Rich get Richer" then
        use_vouchers("Seed Money")
        use_vouchers("Money Tree")
        cash = 100
    elseif deck_name == "On a Knife's Edge" then
        add_jokers_to_selection("Ceremonial Dagger",{"","Eternal","Pinned: 1"})
    elseif deck_name == "Mad World" then
        hand_cash=0
        max_interest=0
        add_jokers_to_selection("Business Card", {"","Eternal"})
        add_jokers_to_selection("Pareidolia", {"","Eternal","Negative"})
        challenge_removal(boss_blind_locked,{"The Plant"})
    elseif deck_name == "Luxury Tax" then
        max_hand_size=10
    elseif deck_name == "Non-Perishable" then
        if selected_stake<4 then
            table.insert(stickers,"Eternal")
        end
        challenge_removal(common_joker,non_eternal_sticker)
        challenge_removal(uncommon_joker,non_eternal_sticker)
        challenge_removal(finisher_blinds,{"Verdent Leaf"})
    elseif deck_name == "Medusa" then
        add_jokers_to_selection("Marble Joker",{"","Eternal"})
    elseif deck_name == "Typecast" then
        challenge_removal(finisher_blinds,{"Verdent Leaf"})
    elseif deck_name == "Inflation" then
        add_jokers_to_selection("Credit Card",{})
        challenge_removal(vouchers,{"Clearence Sale"})
    elseif deck_name == "Bram Poker" then
        for i,v in ipairs(shop_weights) do
            if v[2] == "Jokers" then
                table.remove(shop_weights,i) 
                reset_shop_weights()
                break
            end
        end
        add_jokers_to_selection("Vampire",{"","Eternal"})
        use_vouchers("Magic Trick")
        use_vouchers("Illusion")
        consumable = {"The Emperor","The Empress"}
        consumable_enhancement = {"",""}
    elseif deck_name == "Fragile" then
        add_jokers_to_selection("Oops! All 6s",{"","Eternal", "Negative"})
        add_jokers_to_selection("Oops! All 6s",{"","Eternal", "Negative"})
        challenge_removal(vouchers,{"Magic Trick"})
        challenge_removal(tag_unlock_2, {"Standard"})
        challenge_removal(spectral_deck,{"Incantation", "Familiar", "Grim"})
        challenge_removal(tarots_deck, {"The Magician","The Empress", "The Heirophant", "The Lovers","The Chariot","The Tower", "The Devil"})
        challenge_removal(uncommon_joker, {"Marble Joker","Vampire", "Midas Mask", "Certificate"})
        for i,v in ipairs(pack_type) do
            if v == "standard" then
                table.remove(pack_type,i)
                table.remove(type_base_prob,i)
                break
            end
        end
    elseif deck_name == "Monolith" then
        add_jokers_to_selection("Obelisk",{"","Eternal"})
        add_jokers_to_selection("Marble Joker",{"","Eternal","Negative"})
    elseif deck_name == "Blast Off" then
        max_hands = 2
        max_discards = 2
        joker_size = 4
        use_vouchers("Planet Merchant")
        use_vouchers("Planet Tycoon")
        add_jokers_to_selection("Rocket",{"","Eternal"})
        add_jokers_to_selection("Constellation",{"","Eternal"})
        challenge_removal(vouchers,{"Grabber"})
        challenge_removal(uncommon_joker, {"Burglar"})
    elseif deck_name == "5 Card Draw" then
        max_discards = 6
        max_hand_size=5
        joker_size=7
        add_jokers_to_selection("Joker",{})
        add_jokers_to_selection("Card Sharp",{})
        challenge_removal(common_joker,{"Juggler"})
        challenge_removal(uncommon_joker,{"Troubadour","Turtle Bean"})
    elseif deck_name == "Golden Needle" then
        max_hands = 1
        max_discards = 6
        cash = 10
        add_jokers_to_selection("Credit Card",{})
        challenge_removal(vouchers,{"Grabber"})
        challenge_removal(uncommon_joker, {"Burglar"})
    elseif deck_name == "Cruelty" then
        joker_size = 3
        blind_payouts[1] = 0
        blind_payouts[2] = 0
    elseif deck_name == "Jokerless" then
        joker_size=0
        for i,v in ipairs(shop_weights) do
            if v[2] == "Jokers" then
                table.remove(shop_weights,i) 
                reset_shop_weights()
                break
            end
        end
        challenge_removal(tag_deck,{"Uncommon","Polychrome","Rare","Foil","Holographic"})
        challenge_removal(tag_unlock_2,{"Negative","Bufoon","Top-Up"})
        for i,v in ipairs(pack_type) do
            if v == "bufoon" then
                table.remove(pack_type,i)
                table.remove(type_base_prob,i)
                break
            end
        end
        reset_pack_prob()
        challenge_removal(spectral_deck,{"Wraith"})
        challenge_removal(tarots_deck,{"Judgement"})
        challenge_removal(finisher_blinds,{"Crimson Heart", "Amber Acorn", "Verdent Leaf"})
    end
    if selected_stake > 3 then
        table.insert(stickers,"Eternal")
        if selected_stake > 6 then
            table.insert(stickers,"Perishable")
            if selected_stake == 8 then
                table.insert(stickers,"Rental")
            end
        end
    end
end

function get_deck(deck_name)
    if deck_name == "Abandoned Deck" then
        full_deck = {
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "ah",
            "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "td", "ad",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "as",
            "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "tc", "ac",
        }
    elseif deck_name == "Checkered Deck" then
        full_deck = {
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "jh", "qh", "kh", "ah",
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "jh", "qh", "kh", "ah",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "js", "qs", "ks", "as",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "js", "qs", "ks", "as",
        }
    elseif deck_name == "Erratic Deck" then
        full_deck = {}
        for i = 1, 52 do
            local index = math.random(#standard_deck)
            table.insert(full_deck,standard_deck[index])
        end
    elseif deck_name == "15 Minute City" then
        full_deck = {
            "4h", "5h", "6h", "7h", "8h", "9h", "th", "jh", "qh", "kh",
            "4d", "5d", "6d", "7d", "8d", "9d", "td", "jd", "qd", "kd",
            "4s", "5s", "6s", "7s", "8s", "9s", "ts", "js", "qs", "ks",
            "4c", "5c", "6c", "7c", "8c", "9c", "tc", "jc", "qc", "kc",
        }
    elseif deck_name == "Mad World" then
        full_deck = {
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h",
            "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
            "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c",
        }
    elseif deck_name == "Medusa" then
        full_deck = {
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "st", "st", "st", "ah",
            "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "td", "st", "st", "st", "ad",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "st", "st", "st", "as",
            "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "tc", "st", "st", "st", "ac",
        }
    else
        full_deck = {
            "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "th", "jh", "qh", "kh", "ah",
            "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "td", "jd", "qd", "kd", "ad",
            "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "ts", "js", "qs", "ks", "as",
            "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "tc", "jc", "qc", "kc", "ac",
        }
    end
    full_deck_enhancement = {}
    for i,v in ipairs(full_deck) do
        local rank  = string.sub(v,1,1)
        table.insert(full_deck_enhancement,{convert_rank_to_num(rank),"","",""})--chips,enhancement,editions,seal
        if v == "st" then
            full_deck_enhancement[i][2] = "Stone"
        end
    end
    if deck_name == "Fragile" then
        for i=1,#full_deck do
            full_deck_enhancement[i][2] = "Glass"
        end
    elseif deck_name == "Double or Nothing" then
        for i=1,#full_deck do
            full_deck_enhancement[i][4] = "Red-Seal"
        end
    end
    deck_size = #full_deck
end

function get_random_enhance(name)
    local rand = math.random()
    local addition = {convert_rank_to_num(string.sub(name,1,1)),"","",""}
    for i,v in ipairs(shop_cards_enhancement_weight) do
        if rand<v then
            if i ==1 then
                local j = math.random(#card_enhancement)
                addition[i+1]=card_enhancement[j]
                if card_enhancement[j] == "Stone" then
                    addition[1] = 50
                    name = "st"
                end
            elseif i == 2 then
                local rand2 = math.random()
                for j,k in ipairs(cards_edition_prob) do
                    if rand2 < k then
                        addition[i+1]=editions[j]
                        break
                    end
                end
            elseif i == 3 then
                local j = math.random(#seals)
                addition[i+1]=seals[j]
            end
        end
    end
    return name,addition
end

function stake_begin(stake_name)
    if stake_name == "Red" then
        blind_payouts[1] = 0
    elseif stake_name == "Green" then
        local ante_fast = {300,900,2600,8000,20000,36000,60000}
        for i,v in ipairs(ante_bases)do
            if i<8 then
                ante_bases[i] = ante_fast[i]
            else
                ante_bases[i] = 2*v
            end
        end
    elseif stake_name == "Blue" then
        max_discards = max_discards-1
    elseif stake_name == "Purple" then
        local ante_fast = {300,1000,3200,9000,25000,60000,110000}
        for i,v in ipairs(ante_bases)do
            if i<8 then
                ante_bases[i] = ante_fast[i]
            else
                ante_bases[i] = 4*v
            end
        end
    end 
end

function position(rank)
    if rank == "k" then
        return 13
    elseif rank == "q" then
        return 12
    elseif rank == "j" then
        return 11
    elseif rank == "t" then
        return 10
    elseif rank == "a" then
        return 14
    elseif rank == "s" then
        return 15
    else
        return tonumber(rank)
    end
end

function sort_deck(deck,deck_enhancement)
    if sort_mode == false then
        return sort_deck_rank(deck,deck_enhancement)
    else
        return sort_deck_suit(deck,deck_enhancement)
    end
end

function sort_deck_rank(deck,deck_enhancement)
    local rearrange1 = {}
    for i,v in ipairs(deck) do
        rearrange1[i] = position(string.sub(v,1,1))--issue with dna
    end
    for j = 2, #deck do
        local key = rearrange1[j]
        local key2 = deck[j]
        local key3 = deck_enhancement[j]
        local i = j - 1
        while i > 0 and rearrange1[i] > key do
            rearrange1[i + 1] = rearrange1[i]
            deck[i + 1] = deck[i]
            deck_enhancement[i+1] = deck_enhancement[i]
            i = i - 1
        end
        rearrange1[i + 1] = key
        deck[i + 1] = key2
        deck_enhancement[i+1] = key3
    end
    return deck, deck_enhancement
end

function sort_deck_suit(deck,deck_enhancement)
    local rearrange1 = {}
    for i,v in ipairs(deck) do
        if string.sub(v,2,2) == "h" then
            rearrange1[i] = 1
        elseif string.sub(v,2,2) == "d" then
            rearrange1[i] = 2
        elseif string.sub(v,2,2) == "s" then
            rearrange1[i] = 3
        elseif string.sub(v,2,2) == "c" then
            rearrange1[i] = 4
        else
            rearrange1[i] = 5
        end
    end
    for j = 2, #deck do
        local key = rearrange1[j]
        local key2 = deck[j]
        local key3 = deck_enhancement[j]
        local i = j - 1
        while i > 0 and rearrange1[i] > key do
            rearrange1[i + 1] = rearrange1[i]
            deck[i + 1] = deck[i]
            deck_enhancement[i+1] = deck_enhancement[i]
            i = i - 1
        end
        rearrange1[i + 1] = key
        deck[i + 1] = key2
        deck_enhancement[i+1] = key3
    end
    return deck, deck_enhancement
end

function bounds(deck,selected)
    if #deck ~= 0 then
        if selected > #deck then
            selected = 1
        elseif selected < 1 then
            selected = #deck
        end
    end
    return selected
end

function dic_size(rank_dupe,ranked)
    local unique = {rank_dupe[ranked[1]]}
    local done = {ranked[1]}
    for i=2, #ranked do
        if done[#done] ~= ranked[i] then
            table.insert(done,ranked[i])
            table.insert(unique,rank_dupe[ranked[i]])
        end
    end
    return unique
end

function hand_ignore(handplay, unique,rank_dupe,card_count,do_ignore)--i dont remember how this works,this is bad news
    local count = 0
    local i = 1
    local count_ignore = {}
    if do_ignore then
        while count<#handplay-card_count do
            if handplay[i] ~= "st" then
                if rank_dupe[position(string.sub(handplay[i],1,1))] < unique[#unique] then
                    count = count + 1
                    table.insert(count_ignore,count,i)
                end
            else
                count = count +1
            end
            i = i+1
        end
        return count_ignore
    else
        return {}
    end
end

function is_straight(ranked)--this is a mess
    local min_cards = 5
    if contains_fingers then
        min_cards = 4
    end
    if ranked[#ranked]==14 and ranked[min_cards-1] < 8 then 
        ranked[#ranked] = 1
        table.sort(ranked)
    end
    local gaps = 1
    if contains_shortcut then
        gaps = 2
    end
    local potential_ignore={}
    local current_straight = {ranked[1]}
    for i=2,#ranked do
        if ranked[i] - ranked[i-1]<gaps+1 and ranked[i] ~= ranked[i-1] then
            table.insert(current_straight,i)
        else
            if contains_fingers and #potential_ignore <2 then
                if i == 2 then
                    table.insert(potential_ignore,ranked[i-1])
                    current_straight = {}
                else
                    table.insert(potential_ignore,ranked[i])
                end
            else
                return {}
            end
        end
    end
    if #current_straight >= min_cards then
        straight = true
        card_count = #current_straight
    end
    return potential_ignore
end

function is_flush(suited)
    local potential_ignore = {}
    if contains_fingers then--doing quick checks
        if suited[1] == suited[4] then
            flush = true
            if #suited == 5 and suited[5] ~= suited[4] then
                table.insert(potential_ignore,suited[5])
            end
        else
            if #suited == 5 and suited[2] == suited[5] then
                table.insert(potential_ignore,suited[1])
                flush = true
            end
        end
    else
        if suited[1] == suited[#suited] and #suited == 5 then
            flush = true
        end
    end
    if flush then
        return potential_ignore
    else
        local min_cards =5
        if contains_fingers then
            min_cards = 4 
        end
        local suit_table = {["h"] = 0, ["d"] = 0, ["s"] = 0, ["c"] = 0, ["w"] = 0}
        local current = {suited[1],1}
        for i =1, #suited do
            local v = string.sub(hand[i],2,2)
            if hand_enhancement[i][2] ~= "Wild" and hand_enhancement[i][2] ~= "Stone" then
                suit_table[v] = suit_table[v] +1
                if current[2]<suit_table[v] then
                    current[1] = v
                    current[2] = suit_table[v]
                end
            elseif hand_enhancement[i][2] == "Wild" then
                suit_table["w"] = suit_table["w"] + 1
            end
        end
        if smeared then
            suit_table["h"] = suit_table["h"] + suit_table["d"]
            suit_table["s"] = suit_table["s"] + suit_table["c"]
            if current[2] < math.max(suit_table["s"],suit_table["h"]) then
                current[2] = math.max(suit_table["s"],suit_table["h"])
                if suit_table["s"]>suit_table["h"] then
                    current[1] = "s"
                else
                    current[1] = "h"
                end
            end
        end
        if current[2]+suit_table["w"]>min_cards-1 then
            flush = true
            for k,v in pairs(suit_table) do
                if v~=0 and k~= current[1] and k ~= "w" then
                    if smeared and k == smear_link[current[1]] then
                        goto continue
                    end
                    table.insert(potential_ignore,k)
                end
                ::continue::
            end
        end
        return potential_ignore
    end
end

function get_hand_type(hand_play)
    straight = false
    flush = false
    contains_5 = false
    contains_4 = false
    contains_2pair = false
    contains_3 = false
    conatins_pair = false
    local rank_dupe = {}
    local ranked = {}
    local suited = {}
    local card_count
    local potential_ignore_s, potential_ignore_f
    ignore = {}
    for i,v in ipairs(hand_play) do
        suited[i] = string.sub(v,2,2)
        ranked[i] = position(string.sub(v,1,1))
        if v ~= "st" then--chance this screws up the indexing
            if rank_dupe[ranked[i]] == nil then
                rank_dupe[ranked[i]] = 1
            else
                rank_dupe[ranked[i]] = rank_dupe[ranked[i]] + 1
            end
        end
    end
    for i,v in ipairs(jokers) do-- issue
        if v =="Splash" then
            do_ignore = false
        elseif v == "Shortcut" then
            contains_shortcut = true
        elseif v == "Four Fingers" then
            contains_fingers = true
        end
    end
    table.sort(ranked)
    table.sort(suited)-- dont need to be fancy here just checking if 1st and last element
    local range = ranked[#ranked] - ranked[1]
    local unique = dic_size(rank_dupe,ranked) --values from dictionary
    table.sort(unique) --sort low to high
    if unique[#unique] == 5 then
        contains_5 = true
        contains_4 = true
        contains_3 = true
        conatins_pair = true
    elseif unique[#unique] == 4 then
        contains_4 = true
        contains_3 = true
        conatins_pair = true
    elseif unique[#unique] == 3 then
        contains_3 = true
        conatins_pair = true
        if unique[#unique-1] == 2 then
            contains_2pair = true
        end
    elseif unique[#unique] == 2 then
        conatins_pair = true
        if unique[#unique-1] == 2 then
            contains_2pair = true
        end
    end

    if #hand_play >3 then
        potential_ignore_s = is_straight(ranked)
        potential_ignore_f = is_flush(suited)
    end

    if #unique == 2 and unique[2] == 3 and unique[1] == 2 then
        card_count = 5
        if flush == true then
            return "Flush House"
        else
            return "Full House"
        end
    end
    
    if #unique == 1 and unique[1] == 5 then
        card_count = 5
        if flush == true then
            return "Flush Five"
        else 
            return "5 of a Kind"
        end
    end

    if straight == true and flush == true then
        if #potential_ignore_s ==1 and #potential_ignore_f == 1 and do_ignore then
            local card_aim = potential_ignore_s[1]..potential_ignore_f[1]
            for i=#hand_play,1,-1 do--only length 1 potential atm
                if hand_play[i] == card_aim and hand_enhancement[i][2] ~= "Wild" then
                    table.insert(ignore,i)
                    break
                end
            end
        end
        return "Straight Flush"
    elseif straight == true and flush == false then
        if do_ignore then
            for i=#hand_play,1,-1 do--only length 1 potential atm
                if string.sub(hand_play[i],1,1) == potential_ignore_s[1] then
                    table.insert(ignore,i)
                    break
                end
            end
        end
        return "Straight"
    elseif straight == false and flush == true then
        if do_ignore then
            for i=#hand_play,1,-1 do--only length 1 potential atm
                if string.sub(hand_play[i],2,2) == potential_ignore_f[1] then
                    table.insert(ignore,i)
                    break
                end
            end
        end
        return "Flush"
    end

    if #unique == 1 and unique[1] == 4 then
        card_count = 4
        return "4 of a Kind"
    elseif #unique == 2 and unique[2] == 4 then
        card_count = 4
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "4 of a Kind"
    end

    if #unique == 1 and unique[1] == 3 then
        card_count = 3
        return "3 of a Kind"
    elseif #unique == 2 and unique[2] == 3 then
        card_count = 3
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "3 of a Kind"
    elseif #unique == 3 and unique[3] == 3 then
        card_count = 3
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "3 of a Kind"
    end

    if #unique == 2 and unique[1] == unique[2] and unique[2] == 2 then
        card_count = 4
        return "Two Pair"
    elseif #unique == 3 and unique[2] == unique[3] and unique[3] == 2 then
        card_count = 4
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "Two Pair"
    end

    if #unique == 1 and unique[1] == 2 then
        card_count = 2
        return "Pair"
    elseif #unique == 2 and unique[2] == 2 then
        card_count = 2
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "Pair"
    elseif #unique == 3 and unique[3] == 2 then
        card_count = 2
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "Pair"
    elseif #unique == 4 and unique[4] == 2 then
        card_count = 2
        ignore = hand_ignore(hand_play,unique,rank_dupe,card_count,do_ignore)
        return "Pair"
    end

    ignore = {}
    local count = 0
    for i,v in ipairs(hand_play) do
        if v == "st" then
            count = count +1
        end
    end
    if do_ignore then
        for i,v in ipairs(hand_play) do
            if position(string.sub(v,1,1)) ~= ranked[#ranked-count] and v ~= "st" then
                table.insert(ignore,v)
            end
        end
    end
    return "High Card"
end

function on_play_jokers(joker,joker_index,played)
    if joker == "To do List" then
        if hand_type == jokers_enhancement[joker_index][1] then
            cash = cash + 4
        end
    elseif joker == "Midas Mask" then
        for j,k in ipairs(hand) do
            if string.sub(k,1,1) == "k" or string.sub(k,1,1) == "q" or string.sub(k,1,1) == "j" or all_face == true then
                local index = find_matching(j,hand,hand_enhancement)
                full_deck_enhancement[index][2] = "Gold"
                hand_enhancement[j][2] = "Gold"
            end
        end
    elseif joker == "Space Joker" then
        local rand = math.random()
        if rand < 0.25*dice_prob then
            local planet = hand_multipliers[hand_type][4]
            hand_multipliers[hand_type][1] = hand_multipliers[hand_type][1] + planets_info[planet][1]
            hand_multipliers[hand_type][2] = hand_multipliers[hand_type][2] + planets_info[planet][2]
        end
    elseif joker == "DNA" then
        if #hand==1 and hands == max_hands -1 then
            table.insert(dealt,hand[1])
            table.insert(full_deck,hand[1])
            table.insert(dealt_enhancement,hand_enhancement[1])
            table.insert(full_deck_enhancement,hand_enhancement[1])
            for j,k in ipairs(jokers) do
                added_to_deck_jokers(k,j)
            end
        end
    elseif joker == "Hiker" then
        for i,v in ipairs(played) do
            local index = find_matching(i,played,hand_enhancement)
            hand_enhancement[i][1] = hand_enhancement[i][1] + 5
            full_deck_enhancement[index][1] = full_deck_enhancement[index][1] + 5
        end            
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            on_play_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            on_play_jokers(jokers[1],1)
        end
    end
    if joker_info[joker][#joker_info[joker]] == "Uncommon" then
        for i,v in ipairs(jokers) do
            if v == "Baseball Card" then
                multiplier = multiplier*1.5
            end
        end
    end
end

function per_card_joker(joker,joker_index, card, card_index)
    local wild_card = false
    if hand_enhancement[card_index][2] == "Wild" then
        wild_card = true
    end
    if joker == "Wrathful Joker" then
        if string.sub(card, 2, 2) == "s" or wild_card then
            multiplier = multiplier + 3
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "s" then
            multiplier = multiplier + 3
        end
    elseif joker == "Greedy Joker" then
        if string.sub(card, 2, 2) == "d" or wild_card then
            multiplier = multiplier + 3
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "d" then
            multiplier = multiplier + 3
        end
    elseif joker == "Lusty Joker" then
        if string.sub(card, 2, 2) == "h" or wild_card then
            multiplier = multiplier + 3
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "h" then
            multiplier = multiplier + 3
        end
    elseif joker == "Gluttonous Joker" then
        if string.sub(card, 2, 2) == "c" or wild_card then
            multiplier = multiplier + 3
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "c" then
            multiplier = multiplier + 3
        end
    elseif joker == "Business Card" then
        if string.sub(card,1,1) == "j" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "k" or all_face == true then
            local rand = math.random()
            if rand < 0.5*dice_prob then
                cash = cash + 2
            end
        end
    elseif joker == "8 ball" then
        if string.sub(card,1,1) == "8" then
            local rand = math.random()
            if rand < 0.25*dice_prob and #consumable < consumable_size then
                local rand_tarot = math.random(#tarots_deck)
                table.insert(consumable,tarots_deck[rand_tarot])
                table.insert(consumable_enhancement," ")
            end
        end
    elseif joker == "Scholar" then
        if string.sub(card,1,1) == "a" then
            chips = chips + 20
            multiplier = multiplier + 4
        end
    elseif joker == "Scary Face" then
        if string.sub(card,1,1) == "j" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "k" or all_face == true then
            chips = chips + 30
        end
    elseif joker == "Smiley Face" then
        if string.sub(card,1,1) == "j" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "k" or all_face == true then
            multiplier = multiplier + 5
        end
    elseif joker == "Walkie Talkie" then
        if string.sub(card,1,1) == "t" or string.sub(card,1,1) == "4" then
            chips = chips + 10
            multiplier = multiplier + 4
        end
    elseif joker == "Even Steven" then
        local num = convert_rank_to_num(string.sub(card,1,1))
        if string.sub(card,1,1) ~= "k" and string.sub(card,1,1) ~= "q" and string.sub(card,1,1) ~= "j" then
            if num%2 == 0 then
                multiplier = multiplier + 4
            end
        end
    elseif joker == "Odd Todd" then
        local num = convert_rank_to_num(string.sub(card,1,1))
        if num%2 == 1  then
            chips = chips + 31
        end
    elseif joker == "Photograph" then
        if string.sub(card,1,1) == "j" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "k" or all_face == true then
            if card_index == 1 then
                multiplier = multiplier*2
            else
                for i=1, card_index-1 do
                    if string.sub(hand[i],1,1) == "j" or string.sub(hand[i],1,1) == "q" or string.sub(hand[i],1,1) == "k" or all_face == true then
                        break
                    end
                    if i == card_index-1 then
                        multiplier = multiplier*2
                    end
                end
            end
        end
    elseif joker == "Golden Ticket" then
        if hand_enhancement[card_index][3] == "Gold" then
            cash = cash + 4
        end
    elseif joker == "Fibonacci" then
        if string.sub(card,1,1) == "a" or string.sub(card,1,1) == "2" or string.sub(card,1,1) == "3" or string.sub(card,1,1) == "5" or string.sub(card,1,1) == "8" then
            multiplier = multiplier + 8
        end
    elseif joker == "Vampire" then
        if hand_enhancement[card_index][2] ~= "" then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 0.1
            if hand_enhancement[card_index][2] == "Stone" then
                local new_card = standard_deck[math.random(#standard_deck)]
                hand_enhancement[card_index][1] = hand_enhancement[card_index][1] - convert_rank_to_num(string.sub(card,1,1)) + convert_rank_to_num(string.sub(new_card,1,1))
                hand[card_index] = new_card
            end
            hand_enhancement[card_index][2]=""
        end
    elseif joker == "The Idol" then
        if card == jokers_enhancement[joker_index][1] then
            multiplier = multiplier*2
        elseif string.sub(card, 1,1) == string.sub(jokers_enhancement[joker_index][1], 1, 1) and smeared and smear_link[string.sub(card, 2, 2)] == string.sub(jokers_enhancement[joker_index][1],2,2) then
            multiplier = multiplier*2
        end
    elseif joker == "Onyx Agate" then
        if string.sub(card,2,2) == "c" or wild_card then
            multiplier = multiplier + 7
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "c" then
            multiplier = multiplier + 7
        end
    elseif joker == "Arrowhead" then
        if string.sub(card,2,2) == "s" or wild_card then
            chips = chips + 50
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "s" then
            multiplier = multiplier + 50
        end
    elseif joker == "Bloodstone" then
        if string.sub(card,2,2) == "h" or wild_card then
            local rand = math.random()
            if rand<0.5*dice_prob then
                multiplier = multiplier*1.5
            end
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "h" then
            local rand = math.random()
            if rand<0.5 then
                multiplier = multiplier*1.5
            end
        end
    elseif joker == "Rough Gem" then
        if string.sub(card,2,2) == "d" or wild_card then
            cash = cash +1
        elseif smeared and smear_link[string.sub(card, 2, 2)] == "d" then
            cash = cash +1
        end
    elseif joker == "Ancient Joker" then
        if string.sub(card,2,2) == jokers_enhancement[joker_index][1] or wild_card then
            multiplier = multiplier*1.5
        elseif smeared and smear_link[string.sub(card, 2, 2)] == jokers_enhancement[joker_index][1] then
            multiplier = multiplier*1.5
        end
    elseif joker == "Wee Joker" then
        if string.sub(card,1,1) == "2" then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 8
        end
    elseif joker == "Triboulet" then
        if string.sub(card,1,1) == "k" or string.sub(card,1,1) == "q" then
            multiplier = multiplier*2
        end
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            per_card_joker(jokers[joker_index+1],joker_index+1,card,card_index)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            per_card_joker(jokers[1],1,card,card_index)
        end
    end
    if joker_info[joker][#joker_info[joker]] == "Uncommon" then
        for i,v in ipairs(jokers) do
            if v == "Baseball Card" then
                multiplier = multiplier*1.5
            end
        end
    end
end

function final_jokers(joker,joker_index,played)
    if joker == "Jolly Joker" then
        if conatins_pair == true then
            multiplier = multiplier + 8
        end
    elseif joker == "Zany Joker" then
        if contains_3 == true then
            multiplier = multiplier + 12
        end
    elseif joker == "Mad Joker" then
        if contains_2pair == true then
            multiplier = multiplier + 10
        end
    elseif joker == "Crazy Joker" then
        if straight == true then
            multiplier = multiplier + 12
        end
    elseif joker == "Droll Joker" then
        if flush == true then
            multiplier = multiplier + 10
        end
    elseif joker == "Sly Joker" then
        if conatins_pair == true then
            chips = chips + 50
        end
    elseif joker == "Clever Joker" then
        if contains_2pair == true then
            chips = chips + 80
        end
    elseif joker == "Half Joker" then
        if #hand < 4 then
            multiplier = multiplier + 20
        end
    elseif joker == "Willy Joker" then
        if contains_3 == true then
            chips = chips + 100
        end
    elseif joker == "Crafty Joker" then
        if flush == true then
            chips = chips +80
        end
    elseif joker == "Runner" then
        if straight == true then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] +15
        end
        chips = chips + jokers_enhancement[joker_index][1]
    elseif joker == "Mystic Summit" then
        if discards == 0 then
            multiplier = multiplier + 15 
        end
    elseif joker == "Misprint" then
        multiplier = multiplier + math.random(0,23)
    elseif joker == "Raised Fist" then
        local lowest = convert_rank_to_num(string.sub(dealt[1],1,1))
        for i=2, #dealt do
            local current = convert_rank_to_num(string.sub(dealt[i],1,1))
            if current<lowest then
                lowest = current
            end
        end
        multiplier = multiplier + 2*lowest
    elseif joker == "Devious Joker" then
        if straight == true then
            chips = chips +100
        end
    elseif joker == "Blue Joker" then
        chips = chips + 2*#deck
    elseif joker == "Green Joker" then
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] +1
        multiplier = multiplier + jokers_enhancement[joker_index][1] 
    elseif joker == "Joker" then
        multiplier = multiplier + 4
    elseif joker == "Popcorn" then
        multiplier = multiplier + jokers_enhancement[joker_index][1]
    elseif joker == "Ceremonial Dagger" then
        multiplier = multiplier+jokers_enhancement[joker_index][1]
    elseif joker == "Gros Michel" then
        multiplier = multiplier + 15
    elseif joker == "Joker Stencil" then
        multiplier = multiplier * (5 - #jokers)
    elseif joker == "Abstract Joker" then
        multiplier = multiplier + 3*#jokers
    elseif joker == "Banner" then
        chips = chips + (discards * 30)
    elseif joker == "Supernova" then
        multiplier  = multiplier + hand_multipliers[hand_type][3]
    elseif joker == "Swashbuckler" then--issue, may have to make it a new cost table dont want to
        for i=1,#jokers_enhancement do
            multiplier = multiplier + jokers_enhancement[i][2]
        end
        multiplier = multiplier - jokers_enhancement[joker_index][2]
    elseif joker == "Red Card" then
        multiplier = multiplier + jokers_enhancement[joker_index][1]
    elseif joker == "Superposition" then
        if straight == true then
            local i = 0
            repeat
                i = i+1
            until string.sub(played[i],1,1) == "a" or i==#played
            if string.sub(played[i],1,1) == "a" and #consumable < consumable_size then
                local rand = math.random(#tarots_deck)
                table.insert(consumable,tarots_deck[rand])
                table.insert(consumable_enhancement," ")
            end
        end
    elseif joker == "Fortune Teller" then
        multiplier = multiplier+(total_consumable-total_planets)
    elseif joker == "Cavendish" then
        multiplier = multiplier*3
    elseif joker == "Square Joker" then
        if #hand == 4 then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 4
        end
        multiplier = multiplier + jokers_enhancement[joker_index][1]
    elseif joker == "Ice Cream" then
        chips = chips + jokers_enhancement[joker_index][1]
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] - 5
        if jokers_enhancement[joker_index][1] == 0 then
            removal_joker(joker,joker_index)
        end
    elseif joker == "Ride the Bus" then
        if all_face == false then
            local count = 0
            for i,v in ipairs(played) do
                if string.sub(v,1,1) ~= "k" and string.sub(v,1,1) ~= "q" and string.sub(v,1,1) ~= "j" then
                    count = count + 1
                end
            end
            if count == #hand then
                jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 1
            else
                jokers_enhancement[joker_index][1] = 0
            end
        else
            jokers_enhancement[joker_index][1] = 0
        end
        multiplier = multiplier + jokers_enhancement[joker_index][1]
    elseif joker == "Loyalty Card" then
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1]-1
        if jokers_enhancement[joker_index][1] == 0 then
            multiplier = multiplier * 4
        end
    elseif joker == "Stone Joker" then
        local count = 0
        for i,v in ipairs(full_deck_enhancement) do
            for j,k in ipairs(v) do
                if k == "Stone" then
                    count = count + 1
                end
            end
        end
        chips = chips+25*count
    elseif joker == "Lucky Cat" then
        multiplier = multiplier + jokers_enhancement[joker_index][1]
    elseif joker == "Steel Joker" then
        local count = 0
        for i,v in ipairs(full_deck_enhancement) do
            for j,k in ipairs(v) do
                if k == "Steel" then
                    count = count + 1
                end
            end
        end
        multiplier = multiplier*(1+0.2*count)
    elseif joker == "Sixth Sense" then
        if #hand == 1 and string.sub(hand[1],1,1) == "6" and hands == max_hands-1 then
            if #consumable<consumable_size then
                table.insert(consumable,spectral_deck[math.random(#spectral_deck)])
                table.insert(consumable_enhancement," ")
                local index = find_matching(1,hand,hand_enhancement)
                for i,v in ipairs(jokers) do
                    card_destroyed(v,i,hand[1],hand_enhancement[1])
                end
                table.remove(full_deck,index)
                table.remove(full_deck_enhancement,index)
            end
        end
    elseif joker == "Blackboard" then
        local count = 0
        for i,v in ipairs(dealt) do
            local wild_card = false
            if v[2] == "Wild" then
                wild_card = true
            end
            if string.sub(v,2,2) == "s" or string.sub(v,2,2) == "c" or wild_card then
                count = count +1
            end
        end
        if count == #dealt then
            multiplier=multiplier*3
        end
    elseif joker == "Constellation" then
        multiplier = multiplier*(1+0.1*total_planets)
    elseif joker == "Card Sharp" then
        local count = 0
        for i,v in ipairs(played_hand_type) do
            if v == hand_type then
                count = count +1
            end
        end
        if count >1 then--needs to be >1 as it counts itself
            multiplier = multiplier*3
        end
    elseif joker == "Seance" then
        if straight and flush then
            if #consumable<consumable_size then
                table.insert(consumable,spectral_deck[math.random(#spectral_deck)])
                table.insert(consumable_enhancement," ")
            end
        end
    elseif joker == "Hologram" then
        multiplier = multiplier*(jokers_enhancement[joker_index][1])
    elseif joker == "Vampire" then
        multiplier = multiplier*(jokers_enhancement[joker_index][1])
    elseif joker == "Erosion" then
        if #full_deck>deck_size then
            multiplier = multiplier+4*(#full_deck-deck_size)
        end
    elseif joker == "Bull" then
        chips = chips+2*cash
    elseif joker == "Bootstraps" then
        multiplier = multiplier+2*math.floor(cash/5)
    elseif joker == "Seeing Double" then
        local has_club = false
        local num_wild = 0
        local has_other = false
        for i,v in ipairs(played) do
            if hand_enhancement[i][2] == "Wild" then
                num_wild = num_wild + 1
            else
                if string.sub(v,2,2) == "c" then
                    if has_club == false then
                        has_club = true
                    else
                        if smeared and has_other == false then
                            has_other = true
                        end
                    end
                elseif string.sub(v,2,2) == "h" or string.sub(v,2,2) == "d" or string.sub(v,2,2) == "s" then
                    if has_other == false then
                        has_other = true
                    else
                        if smeared and string.sub(v,2,2) == "s" and has_club == false then
                            has_club = true
                        end
                    end
                end
            end
        end
        if num_wild >1 then
            has_club, has_other = true, true
        elseif num_wild == 1 and #played>1 then
            has_club, has_other = true, true
        end
        if has_club and has_other then
            multiplier = multiplier*2
        end
    elseif joker == "Glass Joker" then
        multiplier = multiplier*(1+jokers_enhancement[joker_index][1])
    elseif joker == "Flower Pot" then
        if #played >3 then
            local suit_table = {["h"] = false, ["d"] = false, ["s"] = false, ["c"] = false}
            local num_wild = 0
            for i, v in ipairs(played) do
                if hand_enhancement[i][2] == "Wild" then
                    num_wild = num_wild + 1
                else
                    if string.sub(v,2,2) ~= "t" then--not stone
                        if suit_table[string.sub(v,2,2)] == false then
                            suit_table[string.sub(v,2,2)] = true
                        elseif suit_table[string.sub(v,2,2)] == true and smeared then
                            suit_table[smear_link[string.sub(v,2,2)]] = true
                        end
                    end
                end
            end
            for k,v in pairs(suit_table) do
                if v == false and num_wild >0 then
                    suit_table[k] = true
                    num_wild = num_wild-1
                end
            end
            if suit_table["h"] == true and suit_table["d"] == true and suit_table["s"] == true and suit_table["c"] == true then
                multiplier = multiplier*3
            end
        end
    elseif joker == "Acrobat" then
        if hands == 0 then
            multiplier = multiplier*3
        end
    elseif joker == "Throwback" then
        multiplier = multiplier*(1+0.25*no_blinds_skipped)
    elseif joker == "Castle" then
        chips = chips + jokers_enhancement[joker_index][1][2]
    elseif joker == "Spare Trousers" then
        if contains_2pair then
            jokers_enhancement[joker_index][1] =jokers_enhancement[joker_index][1]+2
        end
        multiplier = multiplier+jokers_enhancement[joker_index][1]
    elseif joker == "Flash Card" then
        multiplier = multiplier+jokers_enhancement[joker_index][1]
    elseif joker == "The Duo" then
        if conatins_pair then
            multiplier = multiplier*2
        end
    elseif joker == "The Trio" then
        if contains_3 then
            multiplier = multiplier*3
        end
    elseif joker == "The Family" then
        if contains_4 then
            multiplier = multiplier*4
        end
    elseif joker == "The Order" then
        if straight then
            multiplier = multiplier*3
        end
    elseif joker == "The Tribe" then
        if flush then
            multiplier = multiplier*2
        end
    elseif joker == "Stuntman" then
        chips = chips +250
    elseif joker == "Driver's License" then
        local count = 0
        for i,v in ipairs(full_deck_enhancement) do
            for j = 2,#v do
                if string.len(v[j]) > 0 then
                    count = count +1
                    break
                end
            end
        end
        if count >15 then
            multiplier = multiplier*3
        end
    elseif joker == "Campfire" then
        multiplier = multiplier+jokers_enhancement[joker_index][1]
    elseif joker == "Vagabond" then
        if cash < 5 and #consumable < consumable_size then
            table.insert(consumable,tarots_deck[math.random(#tarots_deck)])
            table.insert(consumable_enhancement," ")
        end
    elseif joker == "Wee Joker" then
        chips = chips + jokers_enhancement[joker_index][1]
    elseif joker == "Obelisk" then
        local hand_num = hand_multipliers[hand_type][3]
        local max_hand = true
        for k,v in pairs(hand_multipliers) do
            if v[3] >= hand_num and k ~= hand_type then
                max_hand = false
            end
        end
        if max_hand == false then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] +0.2
            mult = mult +jokers_enhancement[joker_index][1]
        else
            jokers_enhancement[joker_index][1] = 0
        end
    elseif joker == "Hit the Road" then
        multiplier = multiplier*jokers_enhancement[joker_index][1]
    elseif joker == "Canio" then
        multiplier = multiplier*jokers_enhancement[joker_index][1]
    elseif joker == "Yorick" then
        multiplier = multiplier*jokers_enhancement[joker_index][1][1]
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            final_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            final_jokers(jokers[1],1)
        end
    end
    if joker_info[joker][#joker_info[joker]] == "Uncommon" then
        for i,v in ipairs(jokers) do
            if v == "Baseball Card" then
                multiplier = multiplier*1.5
            end
        end
    end
end

function held_jokers(joker,joker_index,card)
    if joker == "Reserved Parking" then
        if string.sub(card,1,1) == "j" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "k" or all_face == true then
            local rand = math.random()
            if rand <0.5*dice_prob then
                cash =cash +1
            end
        end
    elseif joker == "Shoot the Moon" then
        if string.sub(card,1,1) == "q" then
            multiplier = multiplier + 13
        end
    elseif joker == "Baron" then
        if string.sub(card,1,1) == "k" then
            multiplier = multiplier*1.5
        end
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            held_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            held_jokers(jokers[1],1)
        end
    end
    if joker_info[joker][#joker_info[joker]] == "Uncommon" then
        for i,v in ipairs(jokers) do
            if v == "Baseball Card" then
                multiplier = multiplier*1.5
            end
        end
    end
end

function retrigger_joker(joker,joker_index,card,card_index,card_type,max_loop)
    if card_type == "played" then
        if joker == "Hanging Chad" then
            if card_index == 1 then
                max_loop = max_loop+2
            end
        elseif joker == "Dusk" then
            if hands == 0 then
                max_loop = max_loop +1
            end
        elseif joker == "Hack" then
            if string.sub(card,1,1) == "2" or string.sub(card,1,1) == "3" or string.sub(card,1,1) == "4" or string.sub(card,1,1) == "5" then
                max_loop = max_loop +1
            end
        elseif joker == "Seltzer" then
            max_loop = max_loop +1
            if card_index == 1 then--only want this to trigger once
                jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] - 1
                if jokers_enhancement[joker_index][1] == 0 then
                    removal_joker("Seltzer",joker_index)
                end
            end
        elseif joker == "Sock and Buskin" then
            if string.sub(card,1,1) == "k" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "j" or all_face == true then
                max_loop = max_loop+1
            end
        elseif joker == "Blueprint" then
            if joker_index ~= #jokers then
                max_loop = retrigger_joker(jokers[joker_index+1],joker_index+1,card,card_index,card_type,max_loop)
            end
        elseif joker == "Brainstorm" then
            if joker_index >1 then
                max_loop = retrigger_joker(jokers[1],1,card,card_index,card_type,max_loop)
            end
        end
    elseif card_type == "hand" then
        if joker == "Mime" then
            max_loop = max_loop + 1
        elseif joker == "Blueprint" then
            if joker_index ~= #jokers then
                max_loop = retrigger_joker(jokers[joker_index+1],joker_index+1,card,card_index,card_type,max_loop)
            end
        elseif joker == "Brainstorm" then
            if joker_index >1 then
                max_loop = retrigger_joker(jokers[1],1,card,card_index,card_type,max_loop)
            end
        end
    end
    return max_loop
end

function round_end_jokers(joker,index)
    if joker == "Golden Joker" then
        cash = cash + 4
    elseif joker == "Popcorn" then
        if jokers_enhancement[index][1] >0 then
            jokers_enhancement[index][1] = jokers_enhancement[index][1] - 4
        end
        if jokers_enhancement[index][1] == 0 then
            removal_joker(joker,index)
        end
    elseif joker == "Egg" then
        jokers_enhancement[index][2] = jokers_enhancement[index][2] + 3
    elseif joker == "Delayed Gratification" then
        if discards == max_discards then
            cash = cash + 2*max_discards
        end
    elseif joker == "Gros Michel" then
        local rand = math.random()
        if rand < dice_prob*1/6 then
            table.remove(jokers,index)
            for i =1,#common_joker do
                if common_joker[i] == joker then
                    table.remove(common_joker,i)
                    break
                end
            end
            table.insert(common_joker,"Cavendish")
        end
    elseif joker == "Cavendish" then
        local rand = math.random()
        if rand < 0.001*dice_prob then
            table.remove(jokers,index)
        end
    elseif joker == "To do List" then
        local poker_hand = planets_info[planets_deck[math.random(2,#planets_deck)]][3]
        jokers_enhancement[index][1] = poker_hand
    elseif joker == "Mail in Rebate" then
        local card = full_deck[math.random(#full_deck)]
        local rank = string.sub(card,1,1)
        jokers_enhancement[index][1] = rank
    elseif joker == "Rocket" then
        if blind == 3 then
            jokers_enhancement[index][1] = jokers_enhancement[index][1] + 2
        end
        cash = cash + jokers_enhancement[index][1]
    elseif joker == "Cloud 9" then
        local count = 0
        for i,v in ipairs(full_deck) do
            if string.sub(v,1,1) == "9" then
                count = count + 1
            end
        end
        cash =cash + count
    elseif joker == "Gift Card" then
        for i,v in ipairs(jokers_enhancement) do
            jokers_enhancement[i][2] = v[2] + 1
        end
    elseif joker == "Invisible Joker" then
        jokers_enhancement[index][1] = jokers_enhancement[index][1] + 1
    elseif joker == "Turtle Bean" then
        if jokers_enhancement[index][1]>0 then
            jokers_enhancement[index][1] = jokers_enhancement[index][1] - 1
            max_hand_size = max_hand_size-5+jokers_enhancement[index][1]
        end
        if jokers_enhancement[index][1] == 0 then
            removal_joker(joker,index)
        end
    elseif joker == "Castle" then
        local rand_suit = string.sub(standard_deck[math.random(#standard_deck)],2,2)
        jokers_enhancement[index][1][1] = rand_suit
    elseif joker == "The Idol" then
        local rand_card = full_deck[math.random(#full_deck)]
        jokers_enhancement[index][1] = rand_card
    elseif joker == "To the Moon" then
        cash = cash+ math.Clamp(math.floor(cash / 5), 0, max_interest)
    elseif joker == "Satellite" then
        local count = 0
        for k,v in pairs(hand_multipliers) do
            if v[1] ~= min_hand_multipliers[k][1] then--i know technically this check if it different from base which isnt true if the arm is encountered
                count = count +1
            end
        end
        cash = cash + count
    end

    for i=#jokers_enhancement[index],1,-1 do
        local v = jokers_enhancement[index][i]
        if type(v) == "table" then
            if v[1] == "Perishable" then
                jokers_enhancement[index][i][2] = v[2] -1
                if jokers_enhancement[index][i][2] == 0 then
                    table.insert(jokers_enhancement[index],3,"Disabled by perishable")
                    table.remove(jokers_enhancement[index],i)
                end
            end
        else
            if v == "Rental" then
                cash = cash - 3
            end
        end
    end
end

function shop_end_jokers(joker, index)
    if joker == "Perkeo" then
        if #consumable>0 then
            local rand = math.random(#consumable)
            consumable_size = consumable_size+1
            table.insert(consumable,consumable[rand])
            table.insert(consumable_enhancement,"Negative")
        end
    elseif joker == "Blueprint" then
        if index ~= #jokers then
            shop_end_jokers(jokers[index+1],index+1)
        end
    elseif joker == "Brainstorm" then
        if index ~=1 then
            shop_end_jokers(jokers[1],1)
        end
    end
end

function discard_jokers(joker,joker_index)
    if joker == "Faceless Joker" then
        local count = 0 
        for i,v in ipairs(hand) do
            if string.sub(v,1,1) == "j" or string.sub(v,1,1) == "q" or string.sub(v,1,1) == "k" or all_face then
                count = count +1
            end
        end
        if count >2 then
            cash = cash + 5
        end
    elseif joker == "Green Joker" then
        if jokers_enhancement[joker_index][1] > 0 then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] - 1
        end
    elseif joker == "Mail in Rebate" then
        for i,v in ipairs(hand) do
            if string.sub(v,1,1) == jokers_enhancement[joker_index][1] then
                cash = cash + 5
            end
        end
    elseif joker == "Castle" then
        for i,v in ipairs(hand) do
            if string.sub(v,2,2) == jokers_enhancement[joker_index][1][1] then
                jokers_enhancement[joker_index][1][2] = jokers_enhancement[joker_index][1][2] +3
            elseif smeared and smear_link[string.sub(v,2,2)] == jokers_enhancement[joker_index][1][1] then
                jokers_enhancement[joker_index][1][2] = jokers_enhancement[joker_index][1][2] +3
            end
        end
    elseif joker == "Trading Card" then
        if discards==max_discards and #hand ==1 then
            local full_index = find_matching(1,hand,hand_enhancement)
            for i,v in ipairs(jokers) do
                card_destroyed(v,i,hand[1],hand_enhancement[1])
            end
            table.remove(full_deck,full_index)
            table.remove(full_deck_enhancement,full_index)
            cash = cash+3
        end
    elseif joker == "Ramen" then
        for i,v in ipairs(hand) do
            if jokers_enhancement[joker_index][1] >0 then
                jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1]-0.01
            elseif jokers_enhancement[joker_index][1] == 0 then
                removal_joker(joker,joker_index)
            end
        end
    elseif joker == "Burnt Joker" then
        if discards == max_discards then
            local planet = hand_multipliers[hand_type][4]
            hand_multipliers[hand_type][1] = hand_multipliers[hand_type][1] + planets_info[planet][1]
            hand_multipliers[hand_type][2] = hand_multipliers[hand_type][2] + planets_info[planet][2]
        end
    elseif joker == "Hit the Road" then
        for i,v in ipairs(hand) do
            if string.sub(v,1,1) == "j" then
                jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 0.5
            end
        end
    elseif joker == "Yorick" then
        for i,v in ipairs(hand) do
            if jokers_enhancement[joker_index][1][2]>1 then
                jokers_enhancement[joker_index][1][2] = jokers_enhancement[joker_index][1][2] - 1
            else
                jokers_enhancement[joker_index][1][1] = jokers_enhancement[joker_index][1][1]+1
                jokers_enhancement[joker_index][1][2] = 23
            end
        end
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            discard_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            discard_jokers(jokers[1],1)
        end
    end
end

function selected_blind_jokers(joker,index)
    sale_possible = true
    if joker == "Riff-Raff" then
        local rand
        for i=1,2 do
            if #jokers<joker_size then
                rand = math.random(#common_joker)
                if showman_active == false then
                    local repeated = showman_ability(common_joker[rand])
                    while repeated == true do
                        rand = math.random(#common_joker)
                        repeated = showman_ability(common_joker[rand])
                    end
                end
                local addition = {}
                for j,k in ipairs(stickers) do
                    addition = add_stickers(k,addition)
                end
                add_jokers_to_selection(common_joker[rand],addition)
            end
        end
    elseif joker == "Marble Joker" then
        table.insert(full_deck,"st")
        table.insert(full_deck_enhancement,{50,"Stone","",""})
        for j,k in ipairs(jokers) do
            added_to_deck_jokers(k,j)
        end
        reset_deck()
    elseif joker == "Burglar" then
        hands = hands+3
        discards = 0
    elseif joker == "Ceremonial Dagger" then
        if#jokers>1 and index<#jokers then
            for i,v in ipairs(jokers_enhancement[index+1]) do
                if v == "Eternal" then
                    sale_possible = false
                end
            end
            jokers_enhancement[index][1] = jokers_enhancement[index][1] + 2*jokers_enhancement[index+1][2]
            if sale_possible then
                removal_joker(jokers[index+1],index+1)
            end
        end
    elseif joker == "Madness" then
        if blind <3 then
            if #jokers>1 then
                local rand 
                repeat
                    rand = math.random(#jokers)
                until rand ~= index
                for i,v in ipairs(jokers_enhancement[rand]) do
                    if v == "Eternal" then
                        sale_possible = false
                    end
                end
                if sale_possible then
                    removal_joker(jokers[rand])
                end
                jokers_enhancement[index][1] = jokers_enhancement[index][1] +0.5
            end
        end
    elseif joker == "Cartomancer" then
        if #consumable<consumable_size then
            table.insert(consumable,tarots_deck[math.random(#tarots_deck)])
            table.insert(consumable_enhancement," ")
        end
    elseif joker == "Blueprint" then
        if index ~= #jokers then
            selected_blind_jokers(jokers[index+1],index+1)
        end
    elseif joker == "Brainstorm" then
        if index ~=1 then
            selected_blind_jokers(jokers[1],1)
        end
    end
end

function selected_blind_after_dealt_jokers(joker,index)
    if joker == "Certificate" then
        local playing_card = standard_deck[math.random(#standard_deck)]
        local rand_seal = seals[math.random(#seals)]
        local num = convert_rank_to_num(string.sub(playing_card,1,1))
        table.insert(dealt,playing_card)
        table.insert(dealt_enhancement,{num,"","",rand_seal})
        table.insert(full_deck,playing_card)
        table.insert(full_deck_enhancement,{num,"","",rand_seal})
        face_down_blinds(dealt[#dealt],#dealt)
        for j,k in ipairs(jokers) do
            added_to_deck_jokers(k,j)
        end
    elseif joker == "Blueprint" then
        if index ~= #jokers then
            selected_blind_after_dealt_jokers(jokers[index+1],index+1)
        end
    elseif joker == "Brainstorm" then
        if index ~=1 then
            selected_blind_after_dealt_jokers(jokers[1],1)
        end
    end
end

function reroll_jokers(joker,joker_index)
    if joker == "Chaos the Clown" and reroll_price == 0 then
        reroll_price = min_reroll
    elseif joker == "Flash Card" then
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 2
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            reroll_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index >1 then
            reroll_jokers(jokers[1],1)
        end
    end
end

function pack_skip_jokers(joker,joker_index)
    if joker == "Red Card" then
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 3
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            pack_skip_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index >1 then
            pack_skip_jokers(jokers[1],1)
        end
    end
end

function open_pack_jokers(joker,joker_index)
    if joker == "Hallucination" then
        local rand = math.random()
        if rand<0.5*dice_prob and #consumable<consumable_size then
            table.insert(consumable,tarots_deck[math.random(#tarots_deck)])
            table.insert(consumable_enhancement," ")
        end
    elseif joker == "Blueprint" then
        if joker_index ~= #joker then
            open_pack_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~= #joker then
            open_pack_jokers(jokers[1],1)
        end
    end
end

function added_to_deck_jokers(joker,joker_index)--wish i could think of a better way, maybe with reset_deck
    if joker == "Hologram" then
        jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 0.25
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            added_to_deck_jokers(jokers[joker_index+1],joker_index+1)
        end
    elseif joker == "Brainstorm" then
        if joker_index >1 then
            added_to_deck_jokers(jokers[1],1)
        end
    end
end

function sell_jokers(joker,index)
    sale_possible = true
    for i,v in ipairs(jokers_enhancement[index]) do
        if v == "Eternal" then
            sale_possible = false
        end
    end
    if sale_possible then
        if joker == "Diet Cola" then
            table.insert(tag_select,"Double")
        elseif joker == "Invisible Joker" then
            if jokers_enhancement[index][1] > 1 and #jokers>0 then
                local rand 
                repeat 
                    rand = math.random(#jokers)
                until rand ~= index
                local add = {}
                for i,v in ipairs(jokers_enhancement[rand])do
                    if type(v) == "table" then
                        table.insert(add,{v[1],v[2]})--only has length 2 for any inner table
                    else
                        table.insert(add,v)
                    end
                end
                table.insert(jokers,jokers[rand])
                table.insert(jokers_enhancement,add)
                if jokers[rand] == "Juggler" then
                    max_hand_size = max_hand_size+1
                    hand_size = hand_size+1
                elseif jokers[rand] == "Drunkard" then
                    max_discards = max_discards + 1
                    discards = discards +1
                elseif jokers[rand] == "Merry Andy" then
                    max_discards = max_discards+3
                    discards = discards +3
                    max_hand_size = max_hand_size-1
                    hand_size = hand_size-1
                elseif jokers[rand] == "Troubadour" then
                    max_hand_size = max_hand_size+2
                    hand_size = hand_size+2
                    max_hands = max_hands-1
                elseif jokers[rand] == "Turtle Bean" then
                    max_hand_size = max_hand_size+jokers_enhancement[rand][1]
                    hand_size = hand_size+jokers_enhancement[rand][1]
                elseif jokers[rand] == "Stuntman" then
                    max_hand_size = max_hand_size-2
                    hand_size = hand_size-2
                elseif jokers[rand] == "Oops! All 6s" then
                    dice_prob = dice_prob*2
                end
            end
        elseif joker == "Luchador" then
            if gameplay_phase == 2 and blind == 3 then
                boss_active = false
            end
        end
        cash = cash + jokers_enhancement[index][2]
        removal_joker(joker,index)
        joker_sale = true--for a finisher blind
    end
end

function removal_joker(joker,index)--done for stuff like dagger/madness
    if joker == "Juggler" then
        max_hand_size = max_hand_size-1
        hand_size = hand_size -1
    elseif joker == "Drunkard" then
        max_discards = max_discards - 1
        if discards == max_discards then
            discards = discards-1
        end
    elseif joker == "Credit Card" then
        local count = 0
        for i, v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            min_cash = 0
        end
    elseif joker == "Merry Andy" then
        max_discards = max_discards-3
        if discards > max_discards-3 then
            discards = discards-3
        end
        max_hand_size = max_hand_size+1
        hand_size = hand_size+1
    elseif joker == "Troubadour" then
        max_hand_size = max_hand_size-2
        hand_size = hand_size -2
        max_hands = max_hands+1
    elseif joker == "Turtle Bean" then
        max_hand_size = max_hand_size-jokers_enhancement[index][1]
        hand_size = hand_size-jokers_enhancement[index][1]
    elseif joker == "Oops! All 6s" then
        dice_prob = dice_prob/2
    elseif joker == "Stuntman" then
        max_hand_size = max_hand_size+2
        hand_size = hand_size+2
    elseif joker == "Showman" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            showman_active = false
        end
    elseif joker == "Chicot" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            boss_active = false
        end
    elseif joker == "Splash" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            do_ignore = true
        end
    elseif joker == "Four Fingers" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            contains_fingers = false
        end
    elseif joker == "Shortcut" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            contains_shortcut = false
        end
    elseif joker == "Pareidolia" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            all_face = false
        end
    elseif joker == "Smeared Joker" then
        local count = 0
        for i,v in ipairs(jokers) do
            if v == joker then
                count = count +1
            end
        end
        if count == 1 then
            smeared = false
        end
    end
    for i,v in ipairs(jokers_enhancement[index]) do
        if v == "Negative" then
            joker_size = joker_size-1
        end
    end
    table.remove(jokers,index)
    table.remove(jokers_enhancement,index)
end

function add_jokers_to_selection(initial,initial_enhancement)--adding needed values at the start of the enhancement
    local addition ={}
    if initial == "Ice Cream" then
        table.insert(addition,100)
    elseif initial == "Popcorn" then
        table.insert(addition,20)
    elseif initial == "Chaos the Clown" then
        table.insert(addition,"")
        reroll_price = 0
    elseif initial == "Credit Card" then
        table.insert(addition,"")
        min_cash = -20
    elseif initial == "Red Card" then
        table.insert(addition,0)
    elseif initial == "To do List" then
        local poker_hand = planets_info[planets_deck[math.random(#planets_deck)]][3]
        table.insert(addition,poker_hand)
    elseif initial == "Ride the Bus" then
        table.insert(addition,0)
    elseif initial == "Runner" then
        table.insert(addition,0)
    elseif initial == "Square Joker" then
        table.insert(addition,0)
    elseif initial == "Juggler" then
        table.insert(addition,"")
        max_hand_size = max_hand_size + 1
    elseif initial == "Drunkard" then
        table.insert(addition,"")
        max_discards = max_discards + 1
    elseif initial == "Green Joker" then
        table.insert(addition,0)
    elseif initial == "Vampire" then
        table.insert(addition,1)
    elseif initial == "Mail in Rebate" then
        local rank = convert_num_to_rank(math.random(2,14))
        table.insert(addition,rank)
    elseif initial == "Ceremonial Dagger" then
        table.insert(addition,0)
    elseif initial =="Ancient Joker" then
        table.insert(addition,string.sub(full_deck[math.random(#full_deck)],2,2))
    elseif initial == "Loyalty Card" then
        table.insert(addition,6)
    elseif initial == "Madness" then
        table.insert(addition,0)
    elseif initial == "Rocket" then
        table.insert(addition,1)
    elseif initial == "Turtle Bean" then
        table.insert(addition,5)
        max_hand_size= max_hand_size+5
    elseif initial == "Lucky Cat" then
        table.insert(addition,0)
    elseif initial == "Spare Trousers" then
        table.insert(addition,0)
    elseif initial == "Flash Card" then
        table.insert(addition,0)
    elseif initial == "Ramen" then
        table.insert(addition,2)
    elseif initial == "Seltzer" then
        table.insert(addition,10)
    elseif initial == "Castle" then
        local rand_suit = string.sub(standard_deck[math.random(#standard_deck)],2,2)
        table.insert(addition,{rand_suit,0})
    elseif initial == "Glass Joker" then
        table.insert(addition,0)
    elseif initial == "Showman" then
        showman_active=true
        table.insert(addition,"")
    elseif initial == "The Idol" then
        local rand_card = full_deck[math.random(#full_deck)]
        table.insert(addition,rand_card)
    elseif initial == "Merry Andy" then
        table.insert(addition,"")
        max_discards = max_discards+3
        max_hand_size = max_hand_size-1
    elseif initial == "Troubadour" then
        table.insert(addition,"")
        max_hand_size = max_hand_size+2
        max_hands = max_hands-1
    elseif initial == "Obelisk" then
        table.insert(addition,1)
    elseif initial == "Campfire" then
        table.insert(addition,{1,0})
    elseif initial == "Wee Joker" then
        table.insert(addition,0)
    elseif initial == "Hit the Road" then
        table.insert(addition,1)
    elseif initial == "Stuntman" then
        table.insert(addition,"")
        max_hand_size = max_hand_size-2
    elseif initial == "Invisible Joker" then
        table.insert(addition,0)
    elseif initial == "Canio" then
        table.insert(addition,1)
    elseif initial == "Yorick" then
        table.insert(addition,{1,23})
    elseif initial == "Chicot" then
        table.insert(addition,"")
        boss_active = false
    elseif initial == "Splash" then
        table.insert(addition,"")
        do_ignore = false
    elseif initial == "Four Fingers" then
        table.insert(addition,"")
        contains_fingers = true
    elseif initial == "Shortcut" then
        table.insert(addition,"")
        contains_shorcut = true
    elseif initial == "Pareidolia" then
        table.insert(addition,"")
        all_face = true
    elseif initial == "Smeared Joker" then
        table.insert(addition,"")
        smeared = true
    elseif initial == "Oops! All 6s" then
        table.insert(addition,"")
        dice_prob = dice_prob*2
    elseif initial == "Hologram" then
        table.insert(addition,1)
    elseif initial == "Astronomer" then
        table.insert(addition,"")
        if gameplay_phase == 4 or gameplay_phase == 4.5 then
            for i= 1, #shop_jokers do
                if consumable_deck[shop_jokers[i]] ~= nil then
                    if consumable_deck[shop_jokers[i]][2] == "Planet" then
                        shop_jokers_enhancement[i][1] = 0
                    end
                end
            end
            for i=1, #packs do
                if packs[i][1] == "celestial" then
                    packs[i][4] = 0
                end
            end
        end
    else
        table.insert(addition," ")
    end
    local cost_val = math.floor(joker_info[initial][1]*discount_percent/2)
    table.insert(addition,math.max(1,cost_val))
    for i=2,#initial_enhancement do
        local v = initial_enhancement[i]
        if v == "Negative" then
            joker_size = joker_size+1
        end
        if v =="Perishable" then
            table.insert(addition,{v,5})
        else
            table.insert(addition,v)
        end
    end
    table.insert(jokers,initial)
    table.insert(jokers_enhancement,addition)
end

function card_destroyed(joker,joker_index,card,card_enhancement)
    local rank = string.sub(card,1,1)
    local suit = string.sub(card,2,2)
    if joker == "Canio" then
        if rank == "k" or rank =="q" or rank == "j" or all_face == true then
            jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] +1
        end
    elseif joker == "Glass Joker" then
        for i,v in ipairs(card_enhancement) do
            if v == "Glass" then
                jokers_enhancement[joker_index][1] = jokers_enhancement[joker_index][1] + 0.75
            end
        end
    elseif joker == "Blueprint" then
        if joker_index ~= #jokers then
            card_destroyed(jokers[joker_index+1],joker_index+1,card,card_enhancement)
        end
    elseif joker == "Brainstorm" then
        if joker_index ~=1 then
            card_destroyed(jokers[1],1,card,card_enhancement)
        end
    end
end

function calculate_minimum_score()
    for i =1, #blind_multis do
        minimumscore[i] = ante_bases[ante] * blind_multis[i]
        if deck_name == "Plasma Deck" then
            minimumscore[i] = 2*minimumscore[i]
        end
    end
    if ante%8 ~= 0 then
        if boss_blind[boss_num] == "The Wall" then
            minimumscore[3] = minimumscore[3]*2--look at later it re-runs when the boss is rerolled but only the last one needs to
        elseif boss_blind[boss_num] == "The Needle" then
            minimumscore[3] = minimumscore[3]/2
        end
    else
        if finisher_blinds[boss_num] == "Violet Vessel" then
            minimumscore[3] = minimumscore[3]*3
        end
    end
end

function convert_rank_to_num(rank)
    if rank == "k" or rank == "q" or rank == "j" or rank == "t" then
        return 10
    elseif rank == "a" then
        return 11
    elseif rank == "s" then
        return 50
    else
        return tonumber(rank)
    end
end

function convert_num_to_rank(num)
    if num == 13 then
        return "k"
    elseif num == 12 then
        return "q"
    elseif num == 11 then
        return "j"
    elseif num == 10 then
        return "t"
    elseif num == 14 then
        return "a"
    elseif num == 15 then
        return "2"
    else
        return tostring(num)
    end
end

function set_boss_blind()
    local boss_type
    if ante%8 == 0 then
        boss_type = finisher_blinds
    else
        boss_type = boss_blind
    end
    repeat
        boss_num = math.random(#boss_type)
    until boss_type[boss_num] ~= last_boss
    last_boss = boss_type[boss_num]
end

function get_boss_info()
    local boss_type
    if ante%8 == 0 then
        boss_type = finisher_blinds
    else
        boss_type = boss_blind
    end
    local col = boss_blind_description[boss_type[boss_num]][1]
    local info = boss_blind_description[boss_type[boss_num]][2]
    local boss_info_table = text_width(info,(SCREEN_WIDTH-(hud_width+10))/6)--6 is a good estimate for the average with of a character on the screen
    return col, boss_info_table
end

function text_width(info,width)--fit text to screen
    local boss_part = ""
    local boss_info_table = {}
    if string.len(info) > width then
        for i in string.gmatch(info,"%S+") do
            if string.len(boss_part) + string.len(i) < width then
                boss_part = boss_part..i.." "
            else
                table.insert(boss_info_table,boss_part)
                boss_part = i.." "
            end
        end
        table.insert(boss_info_table,boss_part)
    else
        table.insert(boss_info_table,info)
    end
    return boss_info_table
end

function add_to_dealt()
    local cards_added = 0
    local goal
    if blind == 3 and boss_active == true then
        if ante%8 ~= 0 and boss_blind[boss_num] == "The Serpent" then
            if hands<max_hands or discards<max_discards then
                goal = 3
            else
                goal = hand_size - #dealt
            end
        else
            goal = hand_size - #dealt
        end
    else
        goal = hand_size - #dealt
    end
    if deck_name == "Luxury Tax" then
        goal = goal - math.floor(cash/5)
    end
    while cards_added < goal and #deck >0 do
        local randomvalue = math.random(#deck)
        table.insert(dealt, deck[randomvalue])-- need to decouple
        table.insert(dealt_enhancement,{})
        for i,v in ipairs(deck_enhancement[randomvalue]) do
            table.insert(dealt_enhancement[#dealt_enhancement],v)
        end
        table.insert(used_cards, deck[randomvalue])
        face_down_blinds(dealt[#dealt],#dealt)
        table.remove(deck, randomvalue)
        table.remove(deck_enhancement, randomvalue)
        cards_added = cards_added + 1
        if deck_name == "X-ray Vision" then
            if #used_cards%math.max(1,4/dice_prob) == 0 then
                table.insert(dealt_enhancement[#dealt_enhancement],true)
            end
        end
    end
end

function do_boss_debuff(played,held_in_hand_enhanced)
    local boss_activated = false
    if ante%0 ~= 0 then
        if boss_blind[boss_num] == "The Club" then
            for i,v in ipairs(played) do
                if string.sub(v,2,2) == "c" then
                    table.remove(played,i)
                    table.remove(hand_enhancement,i)
                    boss_activated = true
                end
            end
        elseif boss_blind[boss_num] == "The Goad" then
            for i,v in ipairs(played) do
                if string.sub(v,2,2) == "s" then
                    table.remove(played,i)
                    table.remove(hand_enhancement,i)
                    boss_activated = true
                end
            end
        elseif boss_blind[boss_num] == "The Window" then
            for i,v in ipairs(played) do
                if string.sub(v,2,2) == "d" then
                    table.remove(played,i)
                    table.remove(hand_enhancement,i)
                    boss_activated = true
                end
            end
        elseif boss_blind[boss_num] == "The Head" then
            for i,v in ipairs(played) do
                if string.sub(v,2,2) == "h" then
                    table.remove(played,i)
                    table.remove(hand_enhancement,i)
                    boss_activated = true
                end
            end
        elseif boss_blind[boss_num] == "The Plant" then
            for i,v in ipairs(played) do
                if string.sub(v,1,1) == "k" or string.sub(v,1,1) == "q" or string.sub(v,1,1) == "j" or all_face then
                    table.remove(played,i)
                    table.remove(hand_enhancement,i)
                    boss_activated = true
                end
            end
        elseif boss_blind[boss_num] == "The Hook" then--some boss_blind stuff
            for i=1, 2 do
                table.remove(dealt, math.random(#dealt))--discard 2 cards
                boss_activated = true
            end
        elseif boss_blind[boss_num] == "The Tooth" then
            for i=1,#hand do
                if cash >min_cash then
                    cash = cash - 1
                end
            end
            boss_activated = true
        elseif boss_blind[boss_num] == "The Flint" then
            chips = chips/2
            multiplier = multiplier/2
            boss_activated = true
        elseif boss_blind[boss_num] == "The Ox" then
            local maximum = hand_multipliers[hand_type][3]
            local max_hand = true
            for k,v in pairs(hand_multipliers) do
                if v[3] >= maximum and k ~= hand_type then
                    max_hand = false
                end
            end
            if max_hand then
                cash = 0
                boss_activated = true
            end
        elseif boss_blind[boss_num] == "The Arm" then
            if hand_multipliers[hand_type][1] > min_hand_multipliers[hand_type][1] then
                local planet = hand_multipliers[hand_type][4]
                hand_multipliers[hand_type][1] = hand_multipliers[hand_type][1] - planets_info[planet][1]
                hand_multipliers[hand_type][2] = hand_multipliers[hand_type][2] - planets_info[planet][2]
                chips = hand_multipliers[hand_type][1]
                multiplier = hand_multipliers[hand_type][2]
                boss_activated = true
            end
        end
    else
        if finisher_blinds[boss_num] == "Verdent Leaf" then
            if joker_sale == false then
                played = {}
                held_in_hand_enhanced = {}
                boss_activated = true
            end
        end
    end
    if boss_activated then
        for i,v in ipairs(jokers) do
            if v == "Matador" then
                cash = cash + 8
            end
        end
    end
    return played,held_in_hand_enhanced
end

function calculate_total_score(hand)
    local played = {}
    for i,v in ipairs(hand) do--decoupling
        table.insert(played,v)
    end
    local held_in_hand_enhanced = dealt_enhancement
    for i=#played,1,-1 do
        for j=1, #ignore do
            if i == ignore[j] then
                table.remove(played,i)
                table.remove(hand_enhancement,i)
            end
        end
    end
    if blind == 3 and boss_active == true then
        played,held_in_hand_enhanced = do_boss_debuff(played,held_in_hand_enhanced)
    end
    for j,k in ipairs(jokers) do
        on_play_jokers(k,j,played)
    end
    local begin_chips = chips
    local begin_mult = multiplier
    for i, v in ipairs(played) do--chips from cards and conditional jokers
        local current_loop = 0
        local max_loop = 1
        repeat
            chips = chips + hand_enhancement[i][1]--chips from card
            Sound.startSFX(0)
            Sound.stopSFX(1)
            local delay = Timer.new(0)
            delay:start()
            while delay:getTime()<100*speed_init/2 do 
            end
            Sound.startSFX(1)
            Sound.stopSFX(1)
            played_enhancement(hand_enhancement[i])
            for j,k in ipairs(jokers) do
                if jokers_enhancement[j][3] ~= "Disabled" then 
                    per_card_joker(k,j,v,i)--chips and mult from jokers
                end
            end
            while delay:getTime()<200*speed_init/2 do 
            end
            if current_loop == 0 then
                for j,k in ipairs(jokers) do
                    if jokers_enhancement[j][3] ~= "Disabled" then 
                        max_loop = retrigger_joker(k,j,v,i,"played",max_loop)
                    end
                end
                if hand_enhancement[i][4] == "Red-Seal" then
                    max_loop = max_loop+1
                end
            end
            current_loop = current_loop+1
        until current_loop==max_loop
    end
    for i,v in ipairs(jokers) do
        if jokers_enhancement[i][3] ~= "Disabled" then 
            final_jokers(v,i,played)
        end
    end
    for i,v in ipairs(held_in_hand_enhanced) do
        local current_loop = 0
        local max_loop = 1
        repeat
            held_enhancement(v)
            for j,k in ipairs(jokers) do
                if jokers_enhancement[j][3] ~= "Disabled" then 
                    held_jokers(k,j,dealt[i])
                end
            end
            if current_loop == 0 then
                for j,k in ipairs(jokers) do
                    if jokers_enhancement[j][3] ~= "Disabled" then 
                        max_loop = retrigger_joker(k,j,dealt[i],i,"hand",max_loop)
                    end
                end
                if v[4] == "Red-Seal" then
                    max_loop = max_loop+1
                end
            end
            current_loop = current_loop+1
        until current_loop==max_loop
    end
    for i,v in ipairs(jokers_enhancement) do
        played_enhancement(v)
    end
    if observatory then
        for i,v in ipairs(consumable) do
            if planets_info[v] ~= nil then
                if planets_info[v][3] == hand_type then
                    multiplier = multiplier*1.5
                end
            end
        end
    end
    for i,v in ipairs(hand_enhancement) do--may revisit
        if v[2] == "Glass" then
            local broken = math.random()
            if broken <0.25 then
                local index = find_matching(i,hand,hand_enhancement)
                for a,b in ipairs(jokers) do
                    card_destroyed(b,a,hand[i],v)
                end
                table.remove(full_deck,index)
                table.remove(full_deck_enhancement,index)
            end
        end
    end
    if deck_name == "Plasma Deck" then
        local total = chips +multiplier
        chips = total/2
        multiplier = total/2
    elseif deck_name == "Rich get Richer" then
        if chips>cash then
            chips = cash
        end
    end
    local value
    local success, error_message = pcall(function()
        return chips*multiplier
    end)

    if success then
        value = chips*multiplier
    else
        value = 4294967295
        Debug.print(error_message)
    end
    return value
end

function number_to_payout(num)
    local payout = ""
    for i=1, tonumber(num) do
        payout = payout .. "$"
    end
    return payout
end

function lose()
    win = false
    gameplay_phase = 5
end

function add_joker_enhancements(addition)
    local rand_neg = math.random()
    local rand_enhance = math.random()
    if rand_neg<neg_joker_prob then
        table.insert(addition,"Negative")
    end
    for i,v in ipairs(shop_jokers_enhancement_weight) do
        if rand_enhance < v then
            table.insert(addition,editions[i])
            break
        end
    end
    for i,v in ipairs(stickers) do
        addition = add_stickers(v,addition)
    end
    return addition
end

function add_stickers(sticker,addition,joker)
    local rand = math.random()
    if sticker == "Eternal" then-- to not do for food jokers
        for i,v in ipairs(non_eternal_sticker) do
            if v == joker then
                return addition
            end
        end
        if deck_name == "Non-Perishable" then
            table.insert(addition,"Eternal")
        else
            if rand< 0.3 then
                table.insert(addition,"Eternal")
            end
        end
    elseif sticker == "Perishable" then
        if rand< 0.3 then
            for i,v in ipairs(non_perishable_sticker) do
                if v == joker then
                    return addition
                end
            end
            for i,v in ipairs(addition) do
                if v == "Eternal" then
                    return addition
                end
            end
            table.insert(addition,"Perishable")
        end
    elseif sticker == "Rental" then--keep an eye on this
        if rand< 0.3 then
            table.insert(addition,"Rental")
            addition[1] = 1
        end
    end
    return addition
end

function add_to_shop()
    local cards_added = 0
    local goal = shop_card_size - #shop_jokers
    while cards_added < goal do
        local shop_count = 0
        local index = math.random()
        repeat
            shop_count = shop_count + 1
            index = index - shop_weights_active[shop_count]
        until index <= 0
        if shop_weights[shop_count][2] == "Jokers" then--jokers
            local rand = math.random()
            local rarity
            if rand <0.70 then
                rarity = common_joker
            elseif rand>=0.95 then
                rarity = rare_joker
            else
                rarity = uncommon_joker
            end
            local randomvalue = math.random(#rarity)
            if showman_active == false then
                local same = showman_ability(rarity[randomvalue])
                while same == true do
                    randomvalue = math.random(#rarity)
                    same = showman_ability(rarity[randomvalue])
                end
            end
            table.insert(shop_jokers, rarity[randomvalue])
            local cost = math.floor(joker_info[rarity[randomvalue]][1]*discount_percent)
            local addition = {cost}
            addition = add_joker_enhancements(addition)
            table.insert(shop_jokers_enhancement,addition)
        elseif shop_weights[shop_count][2] == "Tarots" then--tarots
            local randomvalue = math.random(#tarots_deck)
            if showman_active == false then
                local same = showman_ability(tarots_deck[randomvalue])
                while same do
                    randomvalue = math.random(#tarots_deck)
                    same = showman_ability(tarots_deck[randomvalue])
                end
            end
            local cost = math.floor(shop_costs[2]*discount_percent)
            table.insert(shop_jokers, tarots_deck[randomvalue])
            table.insert(shop_jokers_enhancement,{cost})
        elseif shop_weights[shop_count][2] == "Planets" then--planets
            local randomvalue = math.random(2,#planets_deck)
            if showman_active == false then
                local same = showman_ability(planets_deck[randomvalue])
                while same do
                    randomvalue = math.random(2,#planets_deck)
                    same = showman_ability(planets_deck[randomvalue])
                end
            end
            local cost = math.floor(shop_costs[3]*discount_percent)
            table.insert(shop_jokers, planets_deck[randomvalue])
            table.insert(shop_jokers_enhancement,{cost})
        elseif shop_weights[shop_count][2] == "Cards" then--playing cards
            local randomvalue = math.random(#standard_deck)
            local cost = shop_costs[1]--always cost 1
            table.insert(shop_jokers, standard_deck[randomvalue])
            local num = convert_rank_to_num(string.sub(standard_deck[randomvalue],1,1))
            local addition = {cost,num,"","",""}
            if shop_enhanced then
                local name,rand_add = get_random_enhance(standard_deck[randomvalue])
                shop_jokers[#shop_jokers] = name
                for i = 1,#rand_add do
                    addition[i+1] = rand_add[i]
                end
            end
            table.insert(shop_jokers_enhancement,addition)
        elseif shop_weights[shop_count][2] == "Spectral" then--spectral
            local randomvalue = math.random(#spectral_deck)
            if showman_active == false then
                local same = showman_ability(spectral_deck[randomvalue])
                while same do
                    randomvalue = math.random(#spectral_deck)
                    same = showman_ability(spectral_deck[randomvalue])
                end
            end
            local cost = math.floor(shop_costs[4]*discount_percent)
            table.insert(shop_jokers, spectral_deck[randomvalue])
            table.insert(shop_jokers_enhancement,{cost})
        end
        cards_added = cards_added + 1
    end
end

function math.Clamp(val, lower, upper)--cash out
    if lower > upper then lower, upper = upper, lower end -- swap if boundaries supplied the wrong way
    return math.max(lower, math.min(upper, val))
end

function draw_title_screen()
    screen.blit(SCREEN_DOWN, 0, 0, menubg)--bottom screen background
    screen.blit(SCREEN_UP, 0, 0, menubg)
    screen.blit(SCREEN_UP, 39, 44 - (logo_bop / 30), logo)--logo
    screen.setAlpha(50)
    screen.drawFillRect(SCREEN_DOWN, 0, 78, SCREEN_WIDTH, SCREEN_HEIGHT, Color.new(0, 0, 0))--press a to start background 1
    screen.drawFillRect(SCREEN_UP, 0, 192, 256, 178, Color.new(0, 0, 0))--"GAME BY LOCAL THUNK, RECREATED FOR THE DS" background
    screen.setAlpha(100)
    screen.drawFillRect(SCREEN_DOWN, 0, 50, SCREEN_WIDTH, SCREEN_HEIGHT, Color.new256(111, 111, 111))--press a to start background 2
    screen.print(SCREEN_DOWN, SCREEN_WIDTH/2-20, SCREEN_HEIGHT-10, "A: Play")
    screen.print(SCREEN_DOWN, 0, 5, "Y: Cycle Seeded")
    screen.print(SCREEN_DOWN, 0, 15, "Up/Down: Select Seed")
    screen.print(SCREEN_DOWN, 115, 5, "Left/Right: Select Deck")
    screen.print(SCREEN_DOWN, 150, 15, "X/B: Select Stake")
    local deck_name = text_width(total_deck[deck_kind][selected_deck],hud_width/6)
    for i=1,#deck_name do
        screen.print(SCREEN_DOWN, 0, 65+10*(i-1), deck_name[i])
    end
    local deck_text = text_width(deck_details[total_deck[deck_kind][selected_deck]],(SCREEN_WIDTH-(hud_width+10))/6)
    for i,v in ipairs(deck_text) do 
        screen.print(SCREEN_DOWN, hud_width+10, 65+10*(i-1), v)
    end
    screen.print(SCREEN_DOWN, 0, 120, stakes[selected_stake].." Stake")
    local stake_text = text_width(stakes_info[stakes[selected_stake]],(SCREEN_WIDTH-(hud_width+10))/6)
    for i,v in ipairs(stake_text) do 
        screen.print(SCREEN_DOWN, hud_width+10, 120+10*(i-1), v)
    end
    screen.print(SCREEN_DOWN, 0, 150, "Seeded run: " .. tostring(seeded_run))
    screen.print(SCREEN_DOWN, 160, 150, seeded_num)
    screen.print(SCREEN_UP, 2, 185, "GAME BY LOCAL THUNK, RECREATED FOR THE DS")
    logo_bop = logo_bop + 1
    if logo_bop > 119 then
        logo_bop = -120
    end
end

function draw_blind_menu()
    local offset = 4
    local x = 1 --the left position of the small blind
    local x_width = 84
    local y = SCREEN_HEIGHT/2 - 10
    Image.setTint(blind_ui, Color.new256(241, 184, 91))--tint box behind name
    tutorial_graphics = Sprite.new(tutorial_sheet, 96, 16, VRAM)
    for i =1, 2 do
        screen.setAlpha(70)
        screen.drawFillRect(SCREEN_DOWN, i*(x + x_width)-x_width, y, i*(x + x_width), SCREEN_HEIGHT, normal_blind[i][2])--small blind colour big box
        screen.setAlpha(100)
        screen.blit(SCREEN_DOWN, i*(x+x_width) + 4 - x_width, y + 3, blind_ui)--"box behind name"
        screen.print(SCREEN_DOWN, i*(x+x_width) + 6 - x_width, y + 8, normal_blind[i][1], normal_blind[i][2])--Text "small blind"
        screen.blit(SCREEN_DOWN, i*(x+x_width) + 4 - x_width, y + 21 + offset, blind_ui_box)--grey box
        tutorial_graphics:drawFrame(SCREEN_DOWN, i*(x+x_width) + 5 - x_width, y + 23 + offset,5)--"score at least:" 
        screen.print(SCREEN_DOWN, i*(x+x_width) + 6 - x_width, y + 40, minimumscore[i], Color.new256(255, 255, 255))--score needed
        screen.print(SCREEN_DOWN, i*(x+x_width) + 6 - x_width, y +  21 + offset + 46 + 3 , "Skip Reward:", Color.new256(255, 255, 255))
        screen.print(SCREEN_DOWN, i*(x+x_width) + 6 - x_width, y +  21 + offset + 46 +13, blind_tags[i], Color.new256(255, 255, 255))
    end
    local display_tag = "Tags owned: "
    for i, v in ipairs(tag_select) do
        display_tag=display_tag..v..", "
    end
    local display_width = text_width(display_tag,(SCREEN_WIDTH-(hud_width+10))/6)
    for i,v in ipairs(display_width) do
        screen.print(SCREEN_DOWN, (SCREEN_WIDTH - 6*string.len(v))/2 ,5+10*i,v)
    end
    if blind < 3 then
        screen.print(SCREEN_DOWN, (SCREEN_WIDTH - 6*string.len("Blind Tag(L/R):"..blind_tags[blind]))/2, 5+10*#display_width+20, "Blind Tag(L/R):"..blind_tags[blind], Color.new256(255, 255, 255))
        local tag_details = text_width(tag_info[blind_tags[blind]],SCREEN_WIDTH/6)
        for i,v in ipairs(tag_details) do
            screen.print(SCREEN_DOWN, (SCREEN_WIDTH - 6*string.len(v))/2 , 5+10*#display_width+20 +10*(i), v) 
        end
    end

    if boss_reroll then
        screen.print(SCREEN_DOWN, SCREEN_WIDTH/2 - string.len("X: Reroll Boss Blind ($10)")*3, 5, "X: Reroll Boss Blind ($10)")
    end

    screen.drawFillRect(SCREEN_DOWN, 3*x + 2*x_width, y, 3*(x + x_width), SCREEN_HEIGHT, boss_col)--boss blind colour big box
    screen.blit(SCREEN_DOWN, 3*x + 4 + 2*x_width, y + 3, blind_ui)--"box behind name"
    if ante%8 == 0 then
        screen.print(SCREEN_DOWN, 3*x + 2*x_width + 6, y + 8, finisher_blinds[boss_num], Color.new(0, 0, 0))--name
    else
        screen.print(SCREEN_DOWN, 3*x + 2*x_width + 6, y + 8, boss_blind[boss_num], Color.new(0, 0, 0))--name
    end
    screen.blit(SCREEN_DOWN, x + 2*x_width + 4, y + 21 + offset, blind_ui_box)
    tutorial_graphics:drawFrame(SCREEN_DOWN, 3*x + 2*x_width + 5, y + 23 + offset, 5)
    screen.print(SCREEN_DOWN, x + 6 + 2*x_width, y + 40, minimumscore[3], Color.new(31, 31, 31))--score needed
    screen.print(SCREEN_DOWN, 3*x + 2*x_width + 6, y +  21 + offset + 46 + 3, "A Challenging", Color.new(0,0,0))
    screen.print(SCREEN_DOWN, 3*x + 2*x_width + 6, y +  21 + offset + 46 + 13, "Encounter", Color.new(0,0,0))
    screen.setAlpha(30)
    screen.drawFillRect(SCREEN_DOWN, blind*(x + x_width)+4-x_width, y+3, blind*(x + x_width)-4, y+3+17, Color.new(0,0,0))
    screen.setAlpha(100)
end

function upper_display()
    local offset = 10
    local rhs = hud_width/2 + offset
    local lhs = offset
    local chip_display = chips
    local mult_display = multiplier
    local hand_type_display = hand_type
    screen.drawFillRect(SCREEN_UP, 0,0,hud_width,SCREEN_HEIGHT,Color.new256(49,49,51))
    screen.blit(SCREEN_UP, 0,0,hudbg)
    screen.blit(SCREEN_UP, 0,0,hud)
    screen.print(SCREEN_UP, lhs, 180, ante.."/8")
    screen.print(SCREEN_UP, rhs, 180, round)
    screen.print(SCREEN_UP, 35, 77, round_score)
    if gameplay_phase == 2 and blind == 3 then
        for i,v in ipairs(hand_enhancement) do
            if #v == 5 then
                chip_display = ""
                mult_display = ""
                hand_type_display = ""
                break
            end
        end
    end
    screen.print(SCREEN_UP, lhs, 98, hand_type_display)
    screen.print(SCREEN_UP, lhs, 115, chip_display)
    screen.print(SCREEN_UP, rhs, 115, mult_display)
    screen.print(SCREEN_UP, lhs, 140, hands,Color.new(0,0,31))
    screen.print(SCREEN_UP, rhs, 140, discards,Color.new(31,0,0))
    screen.print(SCREEN_UP, 15, 157, cash)
    if gameplay_phase>0 then
        screen.print(SCREEN_UP, hud_width + 10, 10, "Boss Blind ability:",Color.new(0,0,0))
        for i, v in ipairs(boss_info) do
            screen.print(SCREEN_UP, hud_width+10, 10+10*(i), v, Color.new(0,0,0))
        end
    end
    if gameplay_phase < 4 and gameplay_phase>0 then
        screen.blit(SCREEN_UP, 0, 10, blind_ui)--"box behind name"
        screen.print(SCREEN_UP, 0, 30, "Minimum Score")
        screen.print(SCREEN_UP, 0, 50, "Reward: $"..blind_payouts[blind])
        if blind < 3 then
            screen.print(SCREEN_UP, 5, 15, normal_blind[blind][1],normal_blind[blind][2])--Text "small blind" 
            screen.print(SCREEN_UP, 0, 40, minimumscore[blind])
        else
            if ante%8 == 0 then
                screen.print(SCREEN_UP, 5, 15, finisher_blinds[boss_num],Color.new(0,0,0))
            else
                screen.print(SCREEN_UP, 5, 15, boss_blind[boss_num],Color.new(0,0,0))
            end
            screen.print(SCREEN_UP, 0, 40, minimumscore[blind],Color.new(31,0,5))
        end
    end
end

function draw_card_base_graphic(x, y, scale, enhancement_type)
    Image.scale(card_graphic, math.floor(card_size[1] * scale), math.floor(card_size[2] * scale))--white card base
    Image.setTint(card_graphic,Color.new256(255,255,255))
    if #enhancement_type == 4 then
        if enhancement_type[2] == "Gold" then
            Image.setTint(card_graphic,Color.new256(255,215,0))
        elseif enhancement_type[2] == "Steel" then
            Image.setTint(card_graphic,Color.new256(192,192,192))
        elseif enhancement_type[2] == "Glass" then
            screen.setAlpha(30)
        elseif enhancement_type[2] == "Stone" then
            Image.setTint(card_graphic,Color.new256(0,0,0))
        elseif enhancement_type[2] == "Bonus" then
            Image.setTint(card_graphic,Color.new256(66, 215, 255))
        elseif enhancement_type[2] == "Lucky" then
            Image.setTint(card_graphic,Color.new256(0, 100, 0))
        elseif enhancement_type[2] == "Mult" then
            Image.setTint(card_graphic,Color.new256(255, 126, 66))
        end
    end
    screen.blit(SCREEN_DOWN, x, y, card_graphic)
    screen.setAlpha(100)
end

function draw_card_detail(x, y, scale, rank, suit, enhancement_type)
    if rank ~= "s" then
        local rank_num = rank_graphics[rank]
        local suit_display = suit_graphics[suit]
        Image.scale(rank_num, math.floor(card_size[1] * scale), math.floor(card_size[2] * scale)) 
        Image.scale(suit_display, math.floor(card_size[1] * scale), math.floor(card_size[2] * scale))
        screen.blit(SCREEN_DOWN, x, y, rank_num)
        if enhancement_type[2] == "Wild" then
            screen.setAlpha(50)
        end
        screen.blit(SCREEN_DOWN, x, y, suit_display)
        screen.setAlpha(100)
    end
    if enhancement_type[4] ~= "" then
        screen.drawFillRect(SCREEN_DOWN,x+math.floor((card_size[1]-6) * scale),y+math.floor(2* scale),x+math.floor((card_size[1]-2) * scale),y+math.floor(6* scale),edition_seal_col[enhancement_type[4]])
    end
    if enhancement_type[3] ~= "" then
        screen.drawFillRect(SCREEN_DOWN,x+math.floor(2* scale),y+ math.floor((card_size[2] -6) * scale),x+math.floor(6* scale),y+math.floor((card_size[2] -2) * scale),edition_seal_col[enhancement_type[3]])
    end
end

function draw_card_deck_graphic(deck, raise_selected, usage)
    local x_space = math.floor(SCREEN_WIDTH/(#deck+1))-- need #dealt+1 due to number of gaps
    local y_pos
    local spacing = 5
    local scale = 1
    local enhancement_type
    local show_active = true
    if usage == "hand" and blind == 3 then
        for i=1,#hand do
            if #hand[i] == 5 then
                show_active = false
                break
            end
        end
    end
    for i=#deck,1,-1 do
        if usage == "dealt" then
            if raise_selected == i and gameplay_phase == 2 and kind == 1 then
                y_pos =  SCREEN_HEIGHT - 2*card_size[2] - 4*spacing--raising up to see better
                scale = 1.25
            else
                y_pos = SCREEN_HEIGHT - card_size[2] - spacing
            end
            enhancement_type = dealt_enhancement
        elseif usage == "hand" then
            y_pos = SCREEN_HEIGHT/2 - card_size[2]/2
            enhancement_type = hand_enhancement
            if show_active and gameplay_phase ~= 2 then
                for j=1,#ignore do
                    if j == i then
                        y_pos = y_pos+card_size[2]/2
                    end
                end
            end
        end
        local rank = string.sub(deck[i],1,1)
        local suit = string.sub(deck[i],2,2)
        local x = x_space*i
        draw_card_base_graphic(x-card_size[1]/2,y_pos,scale,enhancement_type[i])
        if #enhancement_type[i] == 4 then
            draw_card_detail(x-card_size[1]/2,y_pos,scale,rank,suit,enhancement_type[i]) 
        end
        scale = 1
    end
end

function draw_joker_card_graphic()
    local x = (SCREEN_WIDTH-hud_width)/(#jokers+1)
    local y_place = SCREEN_HEIGHT-card_size[2]-2
    if blind == 3 and ante%8 == 0 and finisher_blinds[boss_num] == "Amber Acorn" and boss_active then
        if gameplay_phase == 2 or gameplay_phase==3 then
            for i,v in ipairs(jokers) do
                screen.drawFillRect(SCREEN_UP, hud_width + x + (i-1)*card_size[1],y_place,hud_width + x + (i)*card_size[1],y_place+card_size[2],colours[3])
            end
        end
    else
        local joke_index = 0
        for i,v in ipairs(jokers) do
            joke_index = joker_info[v][3]
            if joke_index ~= 99 then
                screen.blit(SCREEN_UP, hud_width + x + (i-1)*card_size[1], y_place, joker_graphics, card_size[1]*(joke_index-1),0, card_size[1], card_size[2])
            else
                screen.drawFillRect(SCREEN_UP, hud_width + x + (i-1)*card_size[1],y_place,hud_width + x + (i)*card_size[1],y_place+card_size[2],colours[3])
            end
            for j = 2, #jokers_enhancement[i] do
                if type(jokers_enhancement[i][j]) ~= "table" then
                    if jokers_enhancement[i][j] == "Foil" or jokers_enhancement[i][j] == "Polychrome" or jokers_enhancement[i][j] == "Holographic" then
                        screen.drawFillRect(SCREEN_UP, hud_width + x + (i-1)*card_size[1]+2, y_place+card_size[2]-6, hud_width + x + (i-1)*card_size[1]+6, y_place+card_size[2]-2,edition_seal_col[jokers_enhancement[i][j]])
                    elseif jokers_enhancement[i][j] == "Negative" then
                        screen.drawFillRect(SCREEN_UP, hud_width + x + (i-1)*card_size[1]+2, y_place+2, hud_width + x + (i-1)*card_size[1]+6, y_place+6,Color.new(0,0,0))
                    elseif jokers_enhancement[i][j] == "Eternal" then
                        screen.drawFillRect(SCREEN_UP, hud_width + x + (i)*card_size[1]-6, y_place+2, hud_width + x + (i)*card_size[1]-2, y_place+6,edition_seal_col["Blue-Seal"])
                    elseif jokers_enhancement[i][j] == "Rental" then
                        screen.drawFillRect(SCREEN_UP, hud_width + x + (i)*card_size[1]-6, y_place+card_size[2]-6, hud_width + x + (i)*card_size[1]-2, y_place+card_size[2]-2,edition_seal_col["Red-Seal"])
                    end
                else
                    if jokers_enhancement[i][j][1] == "Perishable" then
                        screen.drawFillRect(SCREEN_UP, hud_width + x + (i)*card_size[1]-6, y_place+2, hud_width + x + (i)*card_size[1]-2, y_place+6,edition_seal_col["Purple-Seal"])
                    end
                end
            end
        end
    end
end

function draw_shop_main()
    local x = SCREEN_WIDTH/(3)--chosen for looks but if decide to add many jokers to shop do full width
    local y_place = SCREEN_HEIGHT/2
    for i,v in ipairs(shop_jokers) do
        if joker_info[v] ~= nil then
            local joke_index = joker_info[v][3]
            if joke_index ~= 99 then
                screen.blit(SCREEN_DOWN, x + (i-1)*card_size[1], y_place, joker_graphics, card_size[1]*(joke_index-1),0, card_size[1], card_size[2])--change to joker_display
            else
                screen.drawFillRect(SCREEN_DOWN,x + (i-1)*card_size[1], y_place,x + (i)*card_size[1], y_place+card_size[2],colours[3])
            end
            for j = 2, #shop_jokers_enhancement[i] do
                if type(shop_jokers_enhancement[i][j]) ~= "table" then
                    if shop_jokers_enhancement[i][j] == "Foil" or shop_jokers_enhancement[i][j] == "Polychrome" or shop_jokers_enhancement[i][j] == "Holographic" then
                        screen.drawFillRect(SCREEN_DOWN, x + (i-1)*card_size[1]+2, y_place+card_size[2]-6, x + (i-1)*card_size[1]+6, y_place+card_size[2]-2,edition_seal_col[shop_jokers_enhancement[i][j]])
                    elseif shop_jokers_enhancement[i][j] == "Negative" then
                        screen.drawFillRect(SCREEN_DOWN, x + (i-1)*card_size[1]+2, y_place+2, x + (i-1)*card_size[1]+6, y_place+6,Color.new(0,0,0))
                    elseif shop_jokers_enhancement[i][j] == "Eternal" then
                        screen.drawFillRect(SCREEN_DOWN, x + (i)*card_size[1]-6, y_place+2, x + (i)*card_size[1]-2, y_place+6,edition_seal_col["Blue-Seal"])
                    elseif shop_jokers_enhancement[i][j] == "Rental" then
                        screen.drawFillRect(SCREEN_DOWN, x + (i)*card_size[1]-6, y_place+card_size[2]-6, x + (i)*card_size[1]-2, y_place+card_size[2]-2,edition_seal_col["Red-Seal"])
                    end
                else
                    if shop_jokers_enhancement[i][j][1] == "Perishable" then
                        screen.drawFillRect(SCREEN_DOWN, x + (i)*card_size[1]-6, y_place+2, x + (i)*card_size[1]-2, y_place+6,edition_seal_col["Purple-Seal"])
                    end
                end
            end
        elseif string.len(v) == 2 then
            draw_card_base_graphic(x + (i-1)*card_size[1], y_place,1,shop_jokers_enhancement[i])
            draw_card_detail(x + (i-1)*card_size[1], y_place,1,string.sub(v,1,1),string.sub(v,2,2),shop_jokers_enhancement[i])
        else
            local cons_type = consumable_deck[v][2] 
            local index = consumable_deck[v][3]
            screen.blit(SCREEN_DOWN, x+card_size[1]*(i-1), y_place, consumable_graphics_table[cons_type], card_size[1]*(index-1),0, card_size[1], card_size[2])
        end
    end
end

function draw_pack_graphics()
    local x = 2*SCREEN_WIDTH/(3)--chosen for looks but if decide to add many jokers to shop do full width
    local y_place = SCREEN_HEIGHT/2
    for i,v in ipairs(packs) do
        screen.blit(SCREEN_DOWN, x+card_size[1]*(i-1), y_place, img_packs, card_size[1]*(v[3]-1),0, card_size[1], card_size[2])
    end
end

function draw_tarots_graphics()
    local x = (SCREEN_WIDTH-hud_width)/(#consumable+1)
    local y_place = SCREEN_HEIGHT-2*card_size[2]-10
    for i,v in ipairs(consumable) do
        local cons_type = consumable_deck[v][2] 
        local index = consumable_deck[v][3]
        screen.blit(SCREEN_UP, hud_width + x+card_size[1]*(i-1), y_place, consumable_graphics_table[cons_type], card_size[1]*(index-1),0, card_size[1], card_size[2])
        if consumable_enhancement[i] == "Negative" then
            screen.drawFillRect(SCREEN_UP,hud_width + x+card_size[1]*(i-1)+2, y_place+2,hud_width + x+card_size[1]*(i-1)+6, y_place+6,Color.new(0,0,0))
        end
    end
end

function card_details(kind)
    if kind == 1 then--playing cards
        if #dealt >0 then
            if #dealt_enhancement[selected_card] == 4 then
                screen.print(SCREEN_UP,hud_width+10,50,dealt[selected_card],colours[1])
                screen.print(SCREEN_UP, hud_width+10, 50+10, "+"..dealt_enhancement[selected_card][1].." Chips", colours[1])
                for i=2,#dealt_enhancement[selected_card] do
                    local v = dealt_enhancement[selected_card][i]
                    screen.print(SCREEN_UP, hud_width+10, 50+10*i, v, colours[1])
                end
            end
        else
            screen.print(SCREEN_UP,hud_width+10,50,"No card selected",colours[1])
        end
    elseif kind == 1.5 and gameplay_phase==4 then--main shop
        if #shop_jokers > 0 then-- currently no additional foil polychrome etc in shop
            local x_pos = SCREEN_WIDTH/(3)--chosen for looks but if decide to add many jokers to shop do full width
            local y_pos = SCREEN_HEIGHT/2
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_DOWN, x_pos+(selected_card-1)*card_size[1], y_pos, x_pos+selected_card*card_size[1],y_pos+card_size[2],Color.new(0,0,0))
            screen.setAlpha(100)
            screen.print(SCREEN_UP,hud_width+10,50,shop_jokers[selected_card]..": "..selected_card.."/"..#shop_jokers,colours[2])
            if joker_info[shop_jokers[selected_card]] ~= nil then
                local joker_info_text = text_width(joker_info[shop_jokers[selected_card]][2],(SCREEN_WIDTH-(hud_width+10))/6)
                for i,v in ipairs(joker_info_text) do
                    screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v,colours[2])
                end
                screen.print(SCREEN_UP,hud_width+10,60+10*#joker_info_text,"Buy(Y):$"..shop_jokers_enhancement[selected_card][1],colours[2])
                for i=2,#shop_jokers_enhancement[selected_card] do
                    local v = shop_jokers_enhancement[selected_card][i]
                    screen.print(SCREEN_UP,hud_width+10,60+10*#joker_info_text+10*(i-1),v,colours[2])
                end
            elseif string.len(shop_jokers[selected_card]) == 2 then
                screen.print(SCREEN_UP,hud_width+10,50,shop_jokers[selected_card],colours[2])
                screen.print(SCREEN_UP,hud_width+10,60,"Buy(Y):$".. shop_jokers_enhancement[selected_card][1],colours[2])
            else
                local info_text = text_width(consumable_deck[shop_jokers[selected_card]][1],(SCREEN_WIDTH-(hud_width+10))/6)
                for i,v in ipairs(info_text) do
                    screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v,colours[2])
                end
                screen.print(SCREEN_UP,hud_width+10,60+10*#info_text,"Buy(Y):$"..shop_jokers_enhancement[selected_card][1],colours[2])
            end
        else
            screen.print(SCREEN_UP,hud_width+10,60,"No Jokers Available to Buy",colours[2])
        end
    elseif kind == 2 then--jokers
        if #jokers >0 then
            local x_pos = hud_width+(SCREEN_WIDTH-hud_width)/(#jokers+1)
            local y_pos = SCREEN_HEIGHT-card_size[2]-2
            local joker_info_text = text_width(joker_info[jokers[selected_card]][2],(SCREEN_WIDTH-(hud_width+10))/6)
            if blind == 3 and ante%8 == 0 and finisher_blinds[boss_num] == "Amber Acorn" and boss_active then
                if gameplay_phase == 2 or gamplay_phase == 3 then
                    screen.print(SCREEN_UP,hud_width+10,50,"Boss ability in effect",colours[3])
                end
            else
                screen.print(SCREEN_UP,hud_width+10,50,jokers[selected_card]..": "..selected_card.."/"..joker_size,colours[3])
                for i,v in ipairs(joker_info_text) do
                    screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v,colours[3])
                end
                display_joker_specifics(jokers[selected_card],selected_card,#joker_info_text)
                screen.print(SCREEN_UP,hud_width+10,60 + 10*#joker_info_text+10,"Sell(Y): $"..jokers_enhancement[selected_card][2],colours[3])
                for i=3,#jokers_enhancement[selected_card] do
                    if type(jokers_enhancement[selected_card][i]) ~= "table" then
                        screen.print(SCREEN_UP, hud_width+10, 60 + 10*#joker_info_text+10*(i-1), jokers_enhancement[selected_card][i], colours[3])
                    else
                        screen.print(SCREEN_UP, hud_width+10, 60 + 10*#joker_info_text+10*(i-1), jokers_enhancement[selected_card][i][1].." Rounds left:"..jokers_enhancement[selected_card][i][2], colours[3])
                    end
                end
            end
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_UP, x_pos+(selected_card-1)*card_size[1], y_pos, x_pos+selected_card*card_size[1],y_pos+card_size[2],Color.new(0,0,0))--may make a better way
            screen.setAlpha(100)
        else
            screen.print(SCREEN_UP,hud_width+10,50,"No joker selected",colours[3])
        end
    elseif kind == 2.5 and gameplay_phase ==4 then--packs
        if #packs > 0 then
            local x_pos = 2*SCREEN_WIDTH/(3)--chosen for looks but if decide to add many jokers to shop do full width
            local y_pos = SCREEN_HEIGHT/2
            screen.print(SCREEN_UP,hud_width+10,50,packs[selected_card][1]..": "..selected_card.."/"..#packs,colours[4])--name
            local pack_text = text_width(pack_size[packs[selected_card][2]],(SCREEN_WIDTH-(hud_width+10))/6)
            for i,v in ipairs(pack_text) do
                screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v,colours[4])
            end
            screen.print(SCREEN_UP,hud_width+10,60+10*#pack_text,"Buy(Y):$"..packs[selected_card][4],colours[4])--cost
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_DOWN, x_pos+(selected_card-1)*card_size[1], y_pos, x_pos+selected_card*card_size[1],y_pos+card_size[2],Color.new(0,0,0))
            screen.setAlpha(100)
        else
            screen.print(SCREEN_UP,hud_width+10,60,"No packs Available to Buy",colours[4])
        end
    elseif kind == 3 then--consumables
        if #consumable > 0 then
            local x = (SCREEN_WIDTH-hud_width)/(#consumable+1)
            local y_place = SCREEN_HEIGHT-2*card_size[2]-10
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_UP, hud_width + x + (selected_card-1)*card_size[1], y_place, hud_width + x + (selected_card)*card_size[1], y_place+card_size[2],Color.new(0,0,0))
            screen.setAlpha(100)
            screen.print(SCREEN_UP,hud_width+10,50,consumable[selected_card]..": "..selected_card.."/"..consumable_size,colours[5])
            local info_text = text_width("Use(B):"..consumable_deck[consumable[selected_card]][1],(SCREEN_WIDTH-(hud_width+10))/6)
            for i,v in ipairs(info_text) do
                screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v,colours[5])
            end
            local consumable_cost = {["Planet"] = 2, ["Tarot"] = 3, ["Spectral"] = 4}
            local shop_cost_position = consumable_cost[consumable_deck[consumable[selected_card]][2]]
            screen.print(SCREEN_UP, hud_width+10,60+10*#info_text,"Sell(Y):$"..math.floor(shop_costs[shop_cost_position]*discount_percent/2),colours[5])
            screen.print(SCREEN_UP, hud_width+10,60+10*#info_text+10,consumable_enhancement[selected_card],colours[5])
        else
            screen.print(SCREEN_UP,hud_width+10,60,"No consumable Available",colours[5])
        end
    elseif kind == 3.5 and gameplay_phase == 4 then--voucher
        if #voucher_show>0 then
            local x = (SCREEN_WIDTH/2-card_size[1]*(#voucher_show-1)/2)
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_DOWN,x+(selected_card-1)*card_size[1],SCREEN_HEIGHT/3-card_size[2],x+(selected_card)*card_size[1],SCREEN_HEIGHT/3,Color.new(0,0,0))
            screen.setAlpha(100)
            screen.print(SCREEN_UP,hud_width+10,50,voucher_show[selected_card][1]..":"..selected_card.."/"..#voucher_show,Color.new(31,0,0))--name
            local voucher_info_text = text_width(vouchers_info[voucher_show[selected_card][1]],(SCREEN_WIDTH-(hud_width+10))/6)
            for i,v in ipairs(voucher_info_text) do
                screen.print(SCREEN_UP,hud_width+10,50+10*i,v,Color.new(31,0,0))--details
            end
            screen.print(SCREEN_UP,hud_width+10,50 + 10*(#voucher_info_text+1),"Buy(Y): $"..voucher_show[selected_card][2],Color.new(31,0,0))--cost
        else
            screen.print(SCREEN_UP,hud_width+10,60,"No Voucher Available",Color.new(31,0,0))
        end
    elseif kind == 4 and gameplay_phase == 4.5 then--pack_interior
        local y_pack_pos = SCREEN_HEIGHT/2
        screen.print(SCREEN_UP, hud_width+10, 50, pack_interior[selected_card]..": "..selected_card.."/"..cele_size)
        if name_pack == "standard" then
            screen.print(SCREEN_UP, hud_width+10, 50+10, "+"..pack_interior_enhancement[selected_card][1].." Chips", colours[1])
            for i=2,#pack_interior_enhancement[selected_card] do--work out how to format with multiple modifiers
                local v = pack_interior_enhancement[selected_card][i]
                screen.print(SCREEN_UP, hud_width+10, 50+10*i, v, colours[1])
            end
        elseif name_pack == "bufoon" then
            local joker_info_text = text_width(joker_info[pack_interior[selected_card]][2],(SCREEN_WIDTH-(hud_width+10))/6)
            for i,v in ipairs(joker_info_text) do
                screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v)
            end
        else
            if name_pack ~= "celestial" then
                y_pack_pos = SCREEN_HEIGHT-2*card_size[2]
            end
            local consumable_info_text = text_width(consumable_deck[pack_interior[selected_card]][1],(SCREEN_WIDTH-(hud_width+10))/6)
            for i,v in ipairs(consumable_info_text) do
                screen.print(SCREEN_UP,hud_width+10,60+10*(i-1),v)
            end
        end
        screen.setAlpha(30)
        screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(selected_card)/(#pack_interior+1), y_pack_pos, SCREEN_WIDTH*(selected_card)/(#pack_interior+1)+card_size[1],y_pack_pos+card_size[2],Color.new(0,0,0))--may make a better way
        screen.setAlpha(100)
    elseif kind == 5 and gameplay_phase == 4.5 then
        if #pack_cards >0 then
            local height = 50
            screen.print(SCREEN_UP,hud_width+10,height,pack_cards[selected_card],colours[1])
            screen.print(SCREEN_UP,hud_width+10,height +10,"Y: add to selection",colours[1])
            screen.print(SCREEN_UP,hud_width+10,height+20,"B: reset selection",colours[1])
            screen.setAlpha(30)
            screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(selected_card)/(#pack_cards+1),SCREEN_HEIGHT/2,SCREEN_WIDTH*(selected_card)/(#pack_cards+1)+card_size[1],SCREEN_HEIGHT/2+card_size[2],Color.new(0,0,0))--black shadow
            screen.setAlpha(100)
            screen.print(SCREEN_UP, hud_width+10, height+30, "+"..pack_cards_enhancements[selected_card][1].." Chips", colours[1])
            for i=2,#pack_cards_enhancements[selected_card] do
                local v = pack_cards_enhancements[selected_card][i]
                screen.print(SCREEN_UP, hud_width+10, height+30+10*(i-1), v, colours[1])
            end
        else
            screen.print(SCREEN_UP,hud_width+10,50,"No card selected",colours[1])
        end
    end
end

function display_joker_specifics(joker,index,text_len)
    local display = jokers_enhancement[index][1]
    if joker == "Castle" then
        screen.print(SCREEN_UP,hud_width+10,60 + 10*text_len,display[1]..", Currently "..display[2],colours[3])
    elseif joker == "Campfire" then 
        screen.print(SCREEN_UP,hud_width+10,60 + 10*text_len,"Currently "..display[1]..", Cards sold "..display[2],colours[3])
    elseif joker == "Yorick" then
        screen.print(SCREEN_UP,hud_width+10,60 + 10*text_len,"Currently X"..display[1]..", Cards left "..display[2],colours[3])
    else
        screen.print(SCREEN_UP,hud_width+10,60 + 10*text_len,display,colours[3])
    end
end

function draw_cashout()
    screen.drawFillRect(SCREEN_DOWN, 31, 63, 228, 192, Color.new256(32, 32, 34))
    screen.drawFillRect(SCREEN_DOWN, 34, 64, 225, 96, Color.new256(49, 49, 51))
    screen.drawFillRect(SCREEN_DOWN, 32, 66, 227, 192, Color.new256(49, 49, 51))
    screen.drawFillRect(SCREEN_DOWN, 36, 66, 223, 96, Color.new256(39, 39, 46))
    screen.drawFillRect(SCREEN_DOWN, 36, 98, 223, 192, Color.new256(39, 39, 46))
    Image.setTint(blind_ui, Color.new256(245, 136, 42))
    screen.blit(SCREEN_DOWN, 94, 72, blind_ui)
    adv_sign = Sprite.new(shop_sheet, 76, 35, VRAM)
    adv_sign:drawFrame(SCREEN_DOWN, 94 + 4, 72 + 4, 2)
    screen.print(SCREEN_DOWN, 148, 77, "$" .. tostring(cash_out), Color.new(31, 31, 31))
    local y = 0
    for i,v in ipairs({blind_payouts[blind], hands,discards, interest}) do
        if v ~= 0 then
            local names = {"Blind Reward", "Leftover Hands {$"..hand_cash.." Each}", "Leftover Discards{$"..discard_cash.." Each}","Interest {"..max_interest.." Max}"}
            screen.print(SCREEN_DOWN, 40, 104 + y, names[i], Color.new(31, 31, 31))
            screen.print(SCREEN_DOWN, 46 + (string.len(names[i]) * 6), 104 + y, number_to_payout(v), Color.new256(241, 184, 91))
            y = y + 12
        end
    end
end

function draw_shop()
    local fit = SCREEN_WIDTH/4
    screen.print(SCREEN_DOWN, 0, 165, "Advance:")
    screen.print(SCREEN_DOWN, 0, 175, "A")
    screen.print(SCREEN_DOWN, fit, 165, "Selection:")
    screen.print(SCREEN_DOWN, fit, 175, "Up/Down")
    screen.print(SCREEN_DOWN, fit*2, 165, "Move/Use:")
    screen.print(SCREEN_DOWN, fit*2, 175, "B")
    screen.print(SCREEN_DOWN, fit*3, 165, "Reroll:")
    screen.print(SCREEN_DOWN, fit*3, 175, "X: $" .. tostring(reroll_price))
    draw_shop_main()
    draw_pack_graphics()
    for i,v in ipairs(voucher_show) do
        local x = (SCREEN_WIDTH/2-card_size[1]*(#voucher_show-1)/2)
        screen.drawFillRect(SCREEN_DOWN,x+(i-1)*card_size[1],SCREEN_HEIGHT/3-card_size[2],x+(i)*card_size[1],SCREEN_HEIGHT/3,Color.new(31,0,0))
    end
end

function movement() --draw red background for moving card
    if kind == 1 then
        local x_pos = math.floor(SCREEN_WIDTH/(#dealt+1))
        local y_pos = SCREEN_HEIGHT - card_size[2] - 5
        screen.setAlpha(30)
        screen.drawFillRect(SCREEN_DOWN, x_pos*first-card_size[1]/2, y_pos, x_pos*first+card_size[1]/2,y_pos+card_size[2],Color.new(31,0,0))
        screen.setAlpha(100)
    elseif kind == 2 then
        local x_pos = hud_width+(SCREEN_WIDTH-hud_width)/(#jokers+1)
        local y_pos = SCREEN_HEIGHT - card_size[2] - 2
        screen.setAlpha(30)
        screen.drawFillRect(SCREEN_UP, x_pos+(first-1)*card_size[1], y_pos, x_pos+first*card_size[1],y_pos+card_size[2],Color.new(31,0,0))
        screen.setAlpha(100)
    end
end

function move_action(kind_type,kind_type_enhancement)
    if first == 0 then
        first = selected_card
    else
        if deck_name == "On a Knife's Edge" and kind_type == jokers then
            if first == 1 or selected_card == 1 then
                first = 0
                return
            end
        end
        local store_card = kind_type[first]
        local store_enhancemnt = kind_type_enhancement[first]
        table.remove(kind_type,first)
        table.remove(kind_type_enhancement,first)
        table.insert(kind_type,selected_card,store_card)
        table.insert(kind_type_enhancement,selected_card,store_enhancemnt)
        first = 0
    end
end

function find_matching (index,active_cards,active_cards_enhancement)
    local potential_match = {}
    for i,v in ipairs(full_deck) do
        if v == active_cards[index] then
            table.insert(potential_match,i)
        end
    end
    for i,v in ipairs(potential_match) do
        local count = 0
        for j,k in ipairs(active_cards_enhancement[index]) do
            if k == full_deck_enhancement[v][j] then
                count = count + 1
            end
        end
        if count == #active_cards_enhancement[index] then
            return v
        end
    end
end

function use_consumable_non_target(stand_cards,stand_enhancement)
    local store = consumable[selected_card]
    general_used = false
    if consumable_deck[consumable[selected_card]][2] == "Tarot" then
        consumable = use_tarots(consumable)
    elseif consumable_deck[consumable[selected_card]][2] == "Planet" then
        local plan_hand = planets_info[consumable[selected_card]]
        hand_multipliers[plan_hand[3]][1] = hand_multipliers[plan_hand[3]][1] + plan_hand[1]
        hand_multipliers[plan_hand[3]][2] = hand_multipliers[plan_hand[3]][2] + plan_hand[2]
        last_used_consumable = consumable[selected_card]
        table.remove(consumable,selected_card)
        total_planets = total_planets+1
        general_used = true
    elseif consumable_deck[consumable[selected_card]][2] == "Spectral" then
        stand_cards,stand_enhancement,consumable = use_spectral(stand_cards,stand_enhancement,consumable)
    end
    if #consumable < #consumable_enhancement then
        if consumable_enhancement[selected_card] == "Negative" then
            consumable_size = consumable_size-1
        end
        table.remove(consumable_enhancement, selected_card)
        total_consumable = total_consumable+1
    elseif store == "The Fool" and last_used_consumable ~= nil then
        if consumable_enhancement[selected_card] == "Negative" then
            consumable_size = consumable_size-1
        end
        table.remove(consumable_enhancement, selected_card)
        total_consumable = total_consumable+1
    elseif store == "The High Priestess" then
        if consumable_enhancement[selected_card] == "Negative" then
            consumable_size = consumable_size-1
        end
        table.remove(consumable_enhancement, selected_card)
        total_consumable = total_consumable+1
    end
    return stand_cards,stand_enhancement
end

function use_consumable_target(active_cards,active_cards_enhancement,stand_cards,stand_enhancement)
    if consumable_deck[consumable[selected_card]][2] == "Tarot" then
        active_cards,active_cards_enhancement,stand_cards,stand_enhancement,consumable = use_target_tarots(active_cards,active_cards_enhancement,stand_cards,stand_enhancement,consumable)
    elseif consumable_deck[consumable[selected_card]][2] == "Spectral" then
        active_cards,active_cards_enhancement,stand_cards,stand_enhancement,consumable = use_target_spectral(active_cards,active_cards_enhancement,stand_cards,stand_enhancement,consumable)
    end
    if #consumable < #consumable_enhancement then
        if consumable_enhancement[selected_card] == "Negative" then
            consumable_size = consumable_size-1
        end
        table.remove(consumable_enhancement, selected_card)
        total_consumable = total_consumable+1
    end
    return active_cards,active_cards_enhancement,stand_cards,stand_enhancement
end

function use_tarots(tarots_select)
    general_used = false
    if tarots_select[selected_card] == "The Fool" and last_used_consumable ~= nil then
        table.insert(consumable, last_used_consumable)
        table.insert(consumable_enhancement, "")
        general_used = true
    elseif tarots_select[selected_card] == "The High Priestess" then
        local i = 1
        while #consumable < consumable_size+kind%2 and i < 3 do --kind = 3 for consumable
            local randomvalue = math.random(2,#planets_deck)
            if showman_active == false then
                local same = showman_ability(planets_deck[randomvalue])
                while same do
                    randomvalue = math.random(2,#planets_deck)
                    same = showman_ability(planets_deck[randomvalue])
                end
            end
            table.insert(consumable,planet)
            table.insert(consumable_enhancement, " ")
            i = i+1
        end
        general_used = true
    elseif tarots_select[selected_card] == "The Emperor" then
        local i = 1
        while #consumable<consumable_size+kind%2 and i < 3 do--needs to be +1 as removed later
            local randomvalue = math.random(#tarots_deck)
            if showman_active == false then
                local same = showman_ability(tarots_deck[randomvalue])
                while same do
                    randomvalue = math.random(#tarots_deck)
                    same = showman_ability(tarots_deck[randomvalue])
                end
            end
            table.insert(consumable,tarots_deck[math.random(#tarots_deck)])
            table.insert(consumable_enhancement," ")
            i = i+1
        end
        general_used = true
    elseif tarots_select[selected_card] == "The Hermit" then
        if cash > 20 then
            cash = cash + 20
        else
            cash = 2*cash
        end
        general_used = true
    elseif tarots_select[selected_card] == "Temperence" then
        local tot = 0
        for i=1,#jokers_enhancement do
            tot = tot + jokers_enhancement[i][2]  
        end
        if tot > 50 then
            tot = 50
        end
        cash = cash + tot
        general_used = true
    elseif tarots_select[selected_card] == "Judgement" and #jokers<joker_size then
        local rand = math.random()
        local rarity
        if rand <0.70 then
            rarity = common_joker
        elseif rand>=0.95 then
            rarity = rare_joker
        else
            rarity = uncommon_joker
        end
        local randomvalue = math.random(#rarity)
        if showman_active == false then
            local same = showman_ability(rarity[randomvalue])
            while same do
                randomvalue = math.random(#rarity)
                same = showman_ability(rarity[randomvalue])
            end
        end
        add_jokers_to_selection(rarity[randomvalue],{})
        general_used = true
    elseif tarots_select[selected_card] == "The Wheel of Fortune" then
        local possible_jokers = {}
        for i,v in ipairs(jokers_enhancement) do
            local count = 0
            for j=3,#v do
                if enhancement_info[v[j]][2] ~= "Edition" then
                    count = count +1
                end
            end
            if count == #v-2 then
                table.insert(possible_jokers,i)
            end
        end
        if #possible_jokers>0 then
            local rand = math.random()
            local joker_index = math.random(#possible_jokers)
            local wheel_prob = math.max(4,dice_prob)
            if rand < 0.125*wheel_prob then
                table.insert(jokers_enhancement[possible_jokers[joker_index]],"Foil")
            elseif rand>=0.125*wheel_prob and rand<0.2*wheel_prob then
                table.insert(jokers_enhancement[possible_jokers[joker_index]],"Holographic")
            elseif rand>=0.2*wheel_prob and rand<0.25*wheel_prob then
                table.insert(jokers_enhancement[possible_jokers[joker_index]],"Polychrome")
            end
            general_used = true
        end
    end
    if general_used == true then
        last_used_consumable = tarots_select[selected_card]
        table.remove(tarots_select,selected_card)
        if gameplay_phase ~= 2 then
            reset_deck()
        end
    end
    return tarots_select
end

function use_target_tarots(active_cards,active_cards_enhancement,stand_cards,stand_enhancement,tarots_select)
    if tarots_select[selected_card] == "Death" then
        if #active_cards == 2 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            full_deck[index] = active_cards[2]
            active_cards[1] = active_cards[2]
            for a,b in ipairs(active_cards_enhancement[2]) do
                full_deck_enhancement[index][a] = b
                active_cards_enhancement[1][a] = b
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Hanged Man" then
        if #active_cards <= 2 then
            for a=#active_cards,1,-1 do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                for i,v in ipairs(jokers) do
                    card_destroyed(v,i,active_cards[a],active_cards_enhancement[a])
                end
                table.remove(full_deck,index)
                table.remove(full_deck_enhancement,index)
            end
            active_cards = {}
            active_cards_enhancement = {}
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "Strength" then
        if #active_cards <= 2 then
            for a,b in ipairs(active_cards) do
                if b ~= "st" then
                    local index = find_matching(a,active_cards,active_cards_enhancement)
                    local suit  = string.sub(b,2,2)
                    local store = full_deck_enhancement[index][1]-convert_rank_to_num(string.sub(b,1,1))
                    local rank = convert_num_to_rank(position(string.sub(b,1,1))+1)
                    full_deck[index] = rank..suit
                    full_deck_enhancement[index][1] = store+convert_rank_to_num(rank)
                    active_cards[a] = rank..suit
                    active_cards_enhancement[a][1] = store+convert_rank_to_num(rank)
                end
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Star" then
        if #active_cards <= 3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                full_deck[index] = string.sub(full_deck[index],1,1).."d"
                active_cards[a] = string.sub(b,1,1).."d"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Sun" then
        if #active_cards <= 3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                full_deck[index] = string.sub(full_deck[index],1,1).."h"
                active_cards[a] = string.sub(b,1,1).."h"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The World" then
        if #active_cards <= 3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                full_deck[index] = string.sub(full_deck[index],1,1).."s"
                active_cards[a] = string.sub(b,1,1).."s"
                local potential_match = {}
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Moon" then
        if #active_cards <= 3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                full_deck[index] = string.sub(full_deck[index],1,1).."c"
                active_cards[a] = string.sub(b,1,1).."c"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Magician" then
        if #active_cards<3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                if full_deck_enhancement[index][2]=="Stone" then
                    active_cards[a] = standard_deck[math.random(#standard_deck)]
                    full_deck[index] = active_cards[1]
                    assert(active_cards[a]~="st", "stone in standard deck")
                    local store = full_deck_enhancement[index][1]
                    full_deck_enhancement[index][1] = store - convert_rank_to_num("s")  + convert_rank_to_num(string.sub(active_cards[1],1,1))
                    active_cards_enhancement[a][1] = full_deck_enhancement[index][1]
                end
                full_deck_enhancement[index][2]="Lucky"
                active_cards_enhancement[a][2] = "Lucky"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Empress" then
        if #active_cards<3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                if full_deck_enhancement[index][2]=="Stone" then
                    active_cards[a] = standard_deck[math.random(#standard_deck)]
                    full_deck[index] = active_cards[1]
                    assert(active_cards[a]~="st", "stone in standard deck")
                    local store = full_deck_enhancement[index][1]
                    full_deck_enhancement[index][1] = store - convert_rank_to_num("s")  + convert_rank_to_num(string.sub(active_cards[1],1,1))
                    active_cards_enhancement[a][1] = full_deck_enhancement[index][1]
                end
                full_deck_enhancement[index][2]="Mult"
                active_cards_enhancement[a][2] = "Mult"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Heirophant" then
        if #active_cards<3 then
            for a,b in ipairs(active_cards) do
                local index = find_matching(a,active_cards,active_cards_enhancement)
                if full_deck_enhancement[index][2]=="Stone" then
                    active_cards[a] = standard_deck[math.random(#standard_deck)]
                    full_deck[index] = active_cards[1]
                    assert(active_cards[a]~="st", "stone in standard deck")
                    local store = full_deck_enhancement[index][1]
                    full_deck_enhancement[index][1] = store - convert_rank_to_num("s")  + convert_rank_to_num(string.sub(active_cards[1],1,1))
                    active_cards_enhancement[a][1] = full_deck_enhancement[index][1]
                end
                full_deck_enhancement[index][2]="Bonus"
                 active_cards_enhancement[a][2] = "Bonus"
            end
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Chariot" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            if full_deck_enhancement[index][2]=="Stone" then
                active_cards[1] = standard_deck[math.random(#standard_deck)]
                full_deck[index] = active_cards[1]
                assert(active_cards[1]~="st", "stone in standard deck")
                local store = full_deck_enhancement[index][1]
                full_deck_enhancement[index][1] = store - convert_rank_to_num("s") + convert_rank_to_num(string.sub(active_cards[1],1,1))
                active_cards_enhancement[1][1] = full_deck_enhancement[index][1]
            end
            full_deck_enhancement[index][2]="Steel"
            active_cards_enhancement[1][2] = "Steel"
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "Justice" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            if full_deck_enhancement[index][2]=="Stone" then
                active_cards[1] = standard_deck[math.random(#standard_deck)]
                full_deck[index] = active_cards[1]
                assert(active_cards[1]~="st", "stone in standard deck")
                local store = full_deck_enhancement[index][1]
                full_deck_enhancement[index][1] = store - convert_rank_to_num("s")  + convert_rank_to_num(string.sub(active_cards[1],1,1))
                active_cards_enhancement[1][1] = full_deck_enhancement[index][1]
            end
            full_deck_enhancement[index][2]="Glass"
            active_cards_enhancement[1][2] = "Glass"
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Devil" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            if full_deck_enhancement[index][2]=="Stone" then
                active_cards[1] = standard_deck[math.random(#standard_deck)]
                full_deck[index] = active_cards[1]
                assert(active_cards[1]~="st", "stone in standard deck")
                local store = full_deck_enhancement[index][1]
                full_deck_enhancement[index][1] = store - convert_rank_to_num("s")  + convert_rank_to_num(string.sub(active_cards[1],1,1))
                active_cards_enhancement[1][1] = full_deck_enhancement[index][1]
            end
            full_deck_enhancement[index][2]="Gold"
             active_cards_enhancement[1][2] = "Gold"
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Tower" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            active_cards[1] = "st"
            full_deck[index] = "st"
            active_cards_enhancement[1][1] = convert_rank_to_num("s")
            full_deck_enhancement[index][1] = convert_rank_to_num("s")
            active_cards_enhancement[1][2] = "Stone"
            full_deck_enhancement[index][2] = "Stone"
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    elseif tarots_select[selected_card] == "The Lovers" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            if full_deck_enhancement[index][2]== "Stone" then
                active_cards[1] = standard_deck[math.random(#standard_deck)]
                full_deck[index] = active_cards[1]
                assert(active_cards[1]~="st", "stone in standard deck")--shouldnt do this but has may be fixed now dont know
                local store = full_deck_enhancement[index][1]
                full_deck_enhancement[index][1] = store - convert_rank_to_num("s") + convert_rank_to_num(string.sub(active_cards[1],1,1))
                active_cards_enhancement[1][1] = full_deck_enhancement[index][1]
            end
            active_cards_enhancement[1][2] = "Wild"
            full_deck_enhancement[index][2] = "Wild"
            last_used_consumable = tarots_select[selected_card]
            table.remove(tarots_select,selected_card)
        end
    end
    if gameplay_phase==2 and ante%8==0 and finisher_blinds[boss_num] == "Cerulean Bell" and boss_active == true and blind == 3 then
        for counter=#active_cards,2,-1 do
            local v = active_cards[counter]
            table.insert(stand_cards,#stand_cards+1, v)
            table.insert(stand_enhancement,#stand_enhancement+1, active_cards_enhancement[counter])
            table.remove(active_cards,counter)
            table.remove(active_cards_enhancement,counter)
        end
        stand_cards, stand_enhancement = sort_deck(stand_cards, stand_enhancement)
    else
        for counter,v in ipairs(active_cards) do
            table.insert(stand_cards,#stand_cards+1, v)
            table.insert(stand_enhancement,#stand_enhancement+1, active_cards_enhancement[counter])
        end
        stand_cards, stand_enhancement = sort_deck(stand_cards, stand_enhancement)
        active_cards = {}
        active_cards_enhancement = {}
    end
    if gameplay_phase ~= 2 then
        reset_deck()
    end
    return active_cards,active_cards_enhancement,stand_cards, stand_enhancement,tarots_select
end

function use_vouchers(select)
    if select == "Overstock" then
        shop_card_size = shop_card_size + 1
        add_to_shop()
        table.insert(vouchers,"Overstock Plus")
    elseif select == "Clearence Sale" then
        discount_percent = 0.75
        for i,v in ipairs(jokers) do
            jokers_enhancement[i][2] = jokers_enhancement[i][2] - joker_info[v][1] + math.floor(joker_info[v][1]*discount_percent)--done for egg and gift card
            jokers_enhancement[i][2] = math.max(1,jokers_enhancement[i][2])
        end
        for i,v in ipairs(shop_jokers) do
            if string.len(v) ~= 2 then
                shop_jokers_enhancement[i][1] = math.floor(shop_jokers_enhancement[i][1]*discount_percent)
            end
        end
        table.insert(vouchers,"Liquidation")
    elseif select == "Reroll Surplus" then
        min_reroll = min_reroll - 2
        reroll_price = math.max(0,reroll_price - 2)
        table.insert(vouchers,"Reroll Glut")
    elseif select == "Crystal Ball" then
        consumable_size = consumable_size + 1
        table.insert(vouchers,"Omen Globe")
    elseif select == "Grabber" then
        max_hands = max_hands + 1
        table.insert(vouchers,"Nacho Tong")
    elseif select == "Wasteful" then
        max_discards = max_discards +1
        table.insert(vouchers,"Recyclomancy")
    elseif select == "Seed Money" then
        max_interest = 10
        table.insert(vouchers,"Money Tree")
    elseif select == "Heiroglyph" then
        ante = ante - 1
        max_hands = max_hands-1
        calculate_minimum_score()
        table.insert(vouchers,"Petroglyph")
    elseif select == "Director's Cut" then
        boss_reroll = true
        total_boss_reroll = 1
        table.insert(vouchers,"Retcon")
    elseif select == "Paint Brush" then
        max_hand_size = max_hand_size +1
        table.insert(vouchers,"Palette")
    elseif select == "Tarot Merchant" then
        for i,v in ipairs(shop_weights) do
            if v[2]=="Tarots" then
                shop_weights[i][1] = 2*v[1]
                reset_shop_weights()
                break
            end
        end
        table.insert(vouchers,"Tarot Tycoon")
    elseif select == "Planet Merchant" then
        for i,v in ipairs(shop_weights) do
            if v[2]=="Planets" then
                shop_weights[i][1] = 2*v[1]
                reset_shop_weights()
                break
            end
        end
        table.insert(vouchers,"Planet Tycoon")
    elseif select == "Telescope" then
        telescope = true
        table.insert(vouchers,"Observatory")
    elseif select == "Magic Trick" then
        for i,v in ipairs(shop_locked_weights) do
            if v[2] == "Cards" then
                table.insert(shop_weights,shop_locked_weights[i])
                reset_shop_weights()
            end
        end
        table.insert(vouchers,"Illusion")
    elseif select == "Hone" then
        local count = shop_jokers_enhancement_weight[1]
        for i=1,#shop_jokers_enhancement_weight do
            shop_jokers_enhancement_weight[i] = 2*shop_jokers_enhancement_weight[i] + neg_joker_prob
        end
        shop_cards_enhancement_weight[2] = 2*shop_cards_enhancement_weight[2]
        table.insert(vouchers,"Glow Up")
    elseif select == "Blank" then
        table.insert(vouchers,"Antimatter")
    elseif select == "Antimatter" then
        joker_size = joker_size+1
    elseif select == "Petroglyph" then
        ante = ante - 1
        max_discards = max_discards -1
        calculate_minimum_score()
    elseif select == "Overstock Plus" then
        shop_card_size = shop_card_size + 1
        add_to_shop()
    elseif select == "Liquidation" then
        discount_percent = 0.5
        for i,v in ipairs(jokers) do
            jokers_enhancement[i][2] = jokers_enhancement[i][2] - math.floor(joker_info[v][1]*0.75) + math.floor(joker_info[v][1]*discount_percent)--done for egg and gift card
            jokers_enhancement[i][2] = math.max(1,jokers_enhancement[i][2])
        end
        for i,v in ipairs(shop_jokers) do
            if string.len(v) ~= 2 then
                local total = math.ceil(shop_jokers_enhancement[i][1]*4/3)
                shop_jokers_enhancement[i][1] = math.floor(total*discount_percent)
            end
        end
    elseif select == "Reroll Glut" then--may be an issue with The Clown
        min_reroll = min_reroll - 2
        reroll_price = math.max(0,reroll_price - 2)
    elseif select == "Observatory" then
        observatory = true
    elseif select == "Omen Globe" then
        omen_globe = true
    elseif select == "Nacho Tong" then
        max_hands = max_hands + 1
    elseif select == "Recyclomancy" then
        max_discards = max_discards +1
    elseif select == "Tarot Tycoon" then
        for i,v in ipairs(shop_weights) do
            if v[2]=="Tarots" then
                shop_weights[i][1] = 2*v[1]
                reset_shop_weights()
                break
            end
        end
    elseif select == "Planet Tycoon" then
        for i,v in ipairs(shop_weights) do
            if v[2]=="Planets" then
                shop_weights[i][1] = 2*v[1]
                reset_shop_weights()
                break
            end
        end
    elseif select == "Money Tree" then
        max_interest = 20
    elseif select == "Palette" then
        max_hand_size = max_hand_size + 1
    elseif select == "Retcon" then
        total_boss_reroll = -1
    elseif select == "Glow Up" then
        for i=1,#shop_jokers_enhancement_weight do
            shop_jokers_enhancement_weight[i] = 2*shop_jokers_enhancement_weight[i]+neg_joker_prob
        end
        shop_cards_enhancement_weight[2] = 2*shop_cards_enhancement_weight[2]
    elseif select == "Illusion" then
        shop_enhanced = true
    end
    for i,v in ipairs(vouchers) do
        if v == select then
        table.remove(vouchers,i)
        end
    end
end

function use_spectral(stand_cards, stand_cards_enhancement, spectral_select)
    general_used = false
    if spectral_select[selected_card] == "The Soul" then
        if #jokers < joker_size then
            add_jokers_to_selection(legendary_joker[math.random(#legendary_joker)],{})
            general_used = true
        end
    elseif spectral_select[selected_card] == "Black Hole" then
        for i = 2, #planets_deck do
            local plan_hand = planets_info[planets_deck[i]][3]
            hand_multipliers[plan_hand][1] = hand_multipliers[plan_hand][1] + planets_info[planets_deck[i]][1]
            hand_multipliers[plan_hand][2] = hand_multipliers[plan_hand][2] + planets_info[planets_deck[i]][2]
        end
        general_used = true
    elseif spectral_select[selected_card] == "Sigil" then
        if #stand_cards >0 then
            local suits_rand = {"h","d","s","c"}
            local rand = math.random(#suits_rand)
            for i=1, #stand_cards do
                local new_card = string.sub(stand_cards[i],1,1)..suits_rand[rand]
                local index = find_matching(i,stand_cards,stand_cards_enhancement)
                full_deck[index] = new_card
                stand_cards[i] = new_card
            end
            general_used = true
        end
    elseif spectral_select[selected_card] == "Ouija" then
        if #stand_cards > 0 then
            local index = math.random(13)
            for i=1, #stand_cards do
                local new_card = string.sub(standard_deck[index],1,1)..string.sub(stand_cards[i],2,2)
                local index = find_matching(i,stand_cards,stand_cards_enhancement)
                full_deck[index] = new_card
                stand_cards[i] = new_card
            end
            max_hand_size = max_hand_size-1
            hand_size = hand_size -1
            general_used = true
        end
    elseif spectral_select[selected_card] == "Immolate" then
        if #stand_cards > 0 then
            local total 
            if #stand_cards>=5 then
                total = 5
            else 
                total = #stand_cards
            end
            for i=1,total do
                local stand_index = math.random(#stand_cards)
                local index = find_matching(stand_index,stand_cards,stand_cards_enhancement)
                for i,v in ipairs(jokers) do
                    card_destroyed(v,i,full_deck[index],full_deck_enhancement[index])
                end
                table.remove(stand_cards,stand_index)
                table.remove(stand_cards_enhancement,stand_index)
                table.remove(full_deck,index)
                table.remove(full_deck_enhancement,index)
            end
            cash = cash + 20
            general_used = true
        end
    elseif spectral_select[selected_card] == "Ankh" then
        local rand = math.random(#jokers)
        local add = {}
        for i,v in ipairs(jokers_enhancement[rand])do
            if type(v) == "table" then
                table.insert(add,{v[1],v[2]})--only has length 2 for any inner table
            else
                table.insert(add,v)
            end
        end
        table.insert(jokers,jokers[rand])
        table.insert(jokers_enhancement,add)
        if jokers[rand] == "Juggler" then--will have missed some
            max_hand_size = max_hand_size+1
            hand_size = hand_size+1
        elseif jokers[rand] == "Drunkard" then
            max_discards = max_discards + 1
            discards = discards +1
        elseif jokers[rand] == "Merry Andy" then
            max_discards = max_discards+3
            discards = discards +3
            max_hand_size = max_hand_size-1
            hand_size = hand_size-1
        elseif jokers[rand] == "Troubadour" then
            max_hand_size = max_hand_size+2
            hand_size = hand_size+2
            max_hands = max_hands-1
        elseif jokers[rand] == "Turtle Bean" then
            max_hand_size = max_hand_size+jokers_enhancement[#jokers_enhancement][1]
            hand_size = hand_size+jokers_enhancement[#jokers_enhancement][1]
        elseif jokers[rand] == "Stuntman" then
            max_hand_size = max_hand_size-2
            hand_size = hand_size-2
        elseif jokers[rand] == "Oops! All 6s" then
            dice_prob = dice_prob*2
        end
        for i=#jokers-1,1,-1 do
            if i ~= rand then
                removal_joker(jokers[i],i)
            end
        end
        general_used = true
    elseif spectral_select[selected_card] == "Familiar" then
        if #stand_cards>0 then
            local index = math.random(#stand_cards)
            for i,v in ipairs(jokers) do
                card_destroyed(v,i,stand_cards[index],stand_cards_enhancement[index])
            end
            local full_index = find_matching(index,stand_cards,stand_cards_enhancement)
            table.remove(stand_cards,index)
            table.remove(stand_cards_enhancement,index)
            table.remove(full_deck,full_index)
            table.remove(full_deck_enhancement,full_index)
            for i=1, 3 do
                local value
                repeat
                    value = standard_deck[math.random(#standard_deck)]
                until string.sub(value,1,1) == "k" or string.sub(value,1,1) == "q" or string.sub(value,1,1) == "j"
                local enhancement = card_enhancement[math.random(#card_enhancement)]
                if enhancement == "Stone" then
                    value = "st"
                end
                local add = {convert_rank_to_num(string.sub(value,1,1)),enhancement,"",""}
                table.insert(stand_cards,value)
                table.insert(stand_cards_enhancement,add)
                table.insert(full_deck,value)
                table.insert(full_deck_enhancement,add)
                for j,k in ipairs(jokers) do
                    added_to_deck_jokers(k,j)
                end
            end
            general_used = true
        end
    elseif spectral_select[selected_card] == "Grim" then
        if #stand_cards>0 then
            local index = math.random(#stand_cards)
            for i,v in ipairs(jokers) do
                card_destroyed(v,i,stand_cards[index],stand_cards_enhancement[index])
            end
            local full_index = find_matching(index,stand_cards,stand_cards_enhancement)
            table.remove(stand_cards,index)
            table.remove(stand_cards_enhancement,index)
            table.remove(full_deck,full_index)
            table.remove(full_deck_enhancement,full_index)
            for i=1, 2 do
                local value 
                repeat
                    value = standard_deck[math.random(#standard_deck)]
                until string.sub(value,1,1) == "a"
                local enhancement = card_enhancement[math.random(#card_enhancement)]
                if enhancement == "Stone" then
                    value = "st"
                end
                local add = {convert_rank_to_num(string.sub(value,1,1)),enhancement,"",""}
                table.insert(stand_cards,value)
                table.insert(stand_cards_enhancement,add)
                table.insert(full_deck,value)
                table.insert(full_deck_enhancement,add)
                for j,k in ipairs(jokers) do
                    added_to_deck_jokers(k,j)
                end
            end
            general_used = true
        end
    elseif spectral_select[selected_card] == "Incantation" then
        if #stand_cards>0 then
            local index = math.random(#stand_cards)
            for i,v in ipairs(jokers) do
                card_destroyed(v,i,stand_cards[index],stand_cards_enhancement[index])
            end
            local full_index = find_matching(index,stand_cards,stand_cards_enhancement)
            table.remove(stand_cards,index)
            table.remove(stand_cards_enhancement,index)
            table.remove(full_deck,full_index)
            table.remove(full_deck_enhancement,full_index)
            for i=1, 4 do
                local value
                repeat
                    value = standard_deck[math.random(#standard_deck)]
                until tonumber(string.sub(value,1,1)) ~= nil
                local enhancement = card_enhancement[math.random(#card_enhancement)]
                if enhancement == "Stone" then
                    value = "st"
                end
                local add = {convert_rank_to_num(string.sub(value,1,1)),enhancement,"",""}
                table.insert(stand_cards,value)
                table.insert(stand_cards_enhancement,add)
                table.insert(full_deck,value)
                table.insert(full_deck_enhancement,add)
                for j,k in ipairs(jokers) do
                    added_to_deck_jokers(k,j)
                end
            end
            general_used = true
        end
    elseif spectral_select[selected_card] == "Wraith" then
        if #jokers<joker_size then
            add_jokers_to_selection(rare_joker[math.random(#rare_joker)],{})
            cash = 0
            general_used = true
        end
    elseif spectral_select[selected_card] == "Hex" then
        if #jokers >0 then
            local index = math.random(#jokers)
            if #jokers_enhancement[index] >2 then
                for i = 3,#jokers_enhancement[index] do
                    local info = enhancement_info[jokers_enhancement[index][i]]
                    if info ~= nil then
                        if info[2] == "Edition" and jokers_enhancement[index][i] ~= "Negative" then
                            jokers_enhancement[index][i] = "Polychrome"
                            break
                        end
                    end
                    if i == #jokers_enhancement[index] then
                        table.insert(jokers_enhancement[index],"Polychrome")
                    end
                end
            else
                table.insert(jokers_enhancement[index],"Polychrome")
            end
            for i=#jokers,1,-1 do
                if i~=index then
                    removal_joker(jokers[i],i)
                end
            end
            general_used = true
        end
    elseif spectral_select[selected_card] == "Ectoplasm" then
        if #jokers>0 then
            local possible_jokers = {}
            for i,v in ipairs(jokers_enhancement) do
                for j=2,#v do
                    if v[j] == "Negative" then
                        break
                    end
                    if j==#v then
                        table.insert(possible_jokers,i)
                    end
                end
            end
            if #possible_jokers>0 then
                ecto_used = ecto_used +1
                local joker_index = math.random(#possible_jokers)
                table.insert(jokers_enhancement[joker_index],"Negative")
                max_hand_size = max_hand_size-ecto_used*(ecto_used+1)/2
                joker_size = joker_size+1
                general_used = true
            end
        end
    end
    if general_used == true then
        table.remove(spectral_select,selected_card)
        if gameplay_phase ~= 2 then
            reset_deck()
        end
    end
    return stand_cards, stand_cards_enhancement, spectral_select
end

function use_target_spectral(active_cards,active_cards_enhancement,stand_cards,stand_enhancement,spectral_select)
    if spectral_select[selected_card] == "Cryptid" then
        if #active_cards == 1 then
            for i = 1 ,2 do
                table.insert(full_deck,active_cards[1])
                table.insert(full_deck_enhancement,active_cards_enhancement[1])
                table.insert(stand_cards,active_cards[1])
                table.insert(stand_enhancement,active_cards_enhancement[1])
                for j,k in ipairs(jokers) do
                    added_to_deck_jokers(k,j)
                end
            end
            if gameplay_phase~=2 then
                reset_deck()
            end
            table.remove(spectral_select,selected_card)
        end
    elseif spectral_select[selected_card] == "Aura" then--add 50% foil 35 holo 15 poly
        if #active_cards == 1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            local rand = math.random()
            local addition 
            if rand<0.5 then
                addition = "Foil"
            elseif rand>=0.85 then
                addition = "Polychrome"
            else
                addition = "Holographic"
            end
            full_deck_enhancement[index][3]=addition
            active_cards_enhancement[3]=addition
            table.remove(spectral_select,selected_card)
        end
    elseif spectral_select[selected_card] == "Medium" then
        if #active_cards==1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            full_deck_enhancement[index][4]="Purple-Seal"
            active_cards_enhancement[1][4] = "Purple-Seal"
            table.remove(spectral_select,selected_card)
        end
    elseif spectral_select[selected_card] == "Trance" then
        if #active_cards == 1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            full_deck_enhancement[index][4]="Blue-Seal"
            active_cards_enhancement[1][4] = "Blue-Seal"
            table.remove(spectral_select,selected_card)
        end
    elseif spectral_select[selected_card] == "Deja Vu" then
        if #active_cards == 1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            full_deck_enhancement[index][4]="Red-Seal"
            active_cards_enhancement[1][4] = "Red-Seal"
            table.remove(spectral_select,selected_card)
        end
    elseif spectral_select[selected_card] == "Talisman" then
        if #active_cards == 1 then
            local index = find_matching(1,active_cards,active_cards_enhancement)
            full_deck_enhancement[index][4]="Gold-Seal"
            active_cards_enhancement[1][4] = "Gold-Seal"
            table.remove(spectral_select,selected_card)
        end
    end
    if gameplay_phase==2 and ante%8==0 and finisher_blinds[boss_num] == "Cerulean Bell" and boss_active == true and blind == 3 then
        --do nothing as only length 1
    else
        for counter,v in ipairs(active_cards) do
            table.insert(stand_cards, v)
            table.insert(stand_enhancement,active_cards_enhancement[counter])
        end
        stand_cards, stand_enhancement = sort_deck(stand_cards, stand_enhancement)
        active_cards = {}
        active_cards_enhancement = {}
    end
    return active_cards,active_cards_enhancement,stand_cards, stand_enhancement,spectral_select
end

function open_pack()
    for i,v in ipairs(jokers) do
        open_pack_jokers(v,i)
    end
    pack_count_now = 0
    kind = 4
    gameplay_phase = 4.5
    local copy = {}
    local copy_enhancement = {}
    for i,v in ipairs(deck) do
        table.insert(copy,i,v)
        table.insert(copy_enhancement,i,deck_enhancement[i])
    end
    if name_pack == "celestial" then
        if telescope == true then
            local max_hand = ""
            local max_planet =""
            for k, t in pairs(hand_multipliers) do
                if t[3] >= hand_multipliers[max_hand][3] then
                    max_hand = k
                    max_planet = t[4]
                end
            end
            table.insert(pack_interior,max_planet)
        end
        for i=#pack_interior+1, cele_size do
            if math.random()<0.003 then
                table.insert(pack_interior,"Black Hole")
            else
                local index = math.random(2,#planets_deck)
                if showman_active == false then
                    local same = showman_ability(planets_deck[index])
                    while same do
                        index = math.random(2,#planets_deck)
                        same = showman_ability(planets_deck[index])
                    end
                end
                table.insert(pack_interior,planets_deck[index])
            end
        end
    elseif name_pack == "standard" then
        for i = 1, cele_size do
            local index = math.random(#standard_deck)
            local num = convert_rank_to_num(string.sub(standard_deck[index],1,1))
            local addition = {num,"","",""}
            local name, rand_add = get_random_enhance(standard_deck[index])
            for i = 1,#rand_add do
                addition[i] = rand_add[i]
            end
            table.insert(pack_interior, name)
            table.insert(pack_interior_enhancement,addition)
        end
    elseif name_pack == "bufoon" then
        for i = 1, cele_size do
            local rand = math.random()
            local rarity
            if rand <0.70 then
                rarity = common_joker
            elseif rand>=0.95 then
                rarity = rare_joker
            else
                rarity = uncommon_joker
            end
            local random_value = math.random(#rarity)
            if showman_active == false then
                local same = showman_ability(rarity[random_value])
                while same do
                    random_value = math.random(#rarity)
                    same = showman_ability(rarity[random_value])
                end
            end
            local addition = {""}
            addition = add_joker_enhancements(addition)
            table.insert(pack_interior, rarity[random_value])
            table.insert(pack_interior_enhancement,addition)
        end
    elseif name_pack == "arcana" then
        for i = 1, hand_size do
            local index = math.random(#copy)
            table.insert(pack_cards,copy[index])
            table.insert(pack_cards_enhancements,{})
            for j,v in ipairs(copy_enhancement[index]) do
                table.insert(pack_cards_enhancements[#pack_cards_enhancements],v)
            end
            table.remove(copy,index)
            table.remove(copy_enhancement,index)
        end
        for i = 1, cele_size do
            if math.random()<0.003 then
                table.insert(pack_interior,"The Soul")
            else
                if omen_globe == true and math.random()<0.2 then
                    local index = math.random(#spectral_deck)
                    if showman_active == false then
                        local same = showman_ability(spectral_deck[index])
                        while same do
                            index = math.random(#spectral_deck)
                            same = showman_ability(spectral_deck[index])
                        end
                    end
                    table.insert(pack_interior,spectral_deck[index])
                else
                    local index = math.random(#tarots_deck)
                    if showman_active == false then
                        local same = showman_ability(tarots_deck[index])
                        while same == true do
                            index = math.random(#tarots_deck)
                            same = showman_ability(tarots_deck[index])
                        end
                    end
                    table.insert(pack_interior,tarots_deck[index])
                end
            end
        end
    elseif name_pack == "spectral" then
        for i =1, hand_size do
            local index = math.random(#copy)
            table.insert(pack_cards,copy[index])
            table.insert(pack_cards_enhancements,{})
            for j,v in ipairs(copy_enhancement[index]) do
                table.insert(pack_cards_enhancements[#pack_cards_enhancements],v)
            end
            table.remove(copy,index)
            table.remove(copy_enhancement,index)
        end
        for i =1, cele_size do
            local rand = math.random()
            if rand < 0.003 then--wont put checks here for now as probabilty is very low
                table.insert(pack_interior,"Black Hole")
            elseif rand < 0.006 and rand>= 0.003 then
                if deck_name ~= "Jokerless" then
                    table.insert(pack_interior,"The Soul")
                else
                    local index = math.random(#spectral_deck)
                    if showman_active == false then
                        local same = showman_ability(spectral_deck[index])
                        while same == true do
                            index = math.random(#spectral_deck)
                            same = showman_ability(spectral_deck[index])
                        end
                    end
                    table.insert(pack_interior,spectral_deck[index])
                end
            else
                local index = math.random(#spectral_deck)
                if showman_active == false then
                    local same = showman_ability(spectral_deck[index])
                    while same do
                        index = math.random(#spectral_deck)
                        same = showman_ability(spectral_deck[index])
                    end
                end
                table.insert(pack_interior,spectral_deck[index])
            end
        end
    end
end

function tag_immediate()
    for i =#tag_select,1,-1 do
        local v = tag_select[i]
        if v == "Economy" then
            if cash >=40 then
                cash = cash + 40
            elseif cash >0 and cash <40 then
                cash = cash*2
            end
        table.remove(tag_select,i)
        elseif v == "Charm" then
            prev_phase = 1
            cele_size = 5
            type_pack = 3
            name_pack = "arcana"
            table.remove(tag_select,i)
            open_pack()
        elseif v == "Standard" then
            prev_phase = 1
            cele_size = 5
            type_pack = 3
            name_pack = "standard"
            table.remove(tag_select,i)
            open_pack()
        elseif v == "Meteor" then
            prev_phase = 1
            cele_size = 5
            type_pack = 3
            name_pack = "celestial"
            table.remove(tag_select,i)
            open_pack()
        elseif v == "Bufoon" then
            prev_phase = 1
            cele_size = 5
            type_pack = 3
            name_pack = "bufoon"
            table.remove(tag_select,i)
            open_pack()
        elseif v == "Boss" then
            set_boss_blind()
            calculate_minimum_score()
            boss_col, boss_info = get_boss_info()
            table.remove(tag_select,i)
        elseif v == "Ethereal" then
            prev_phase = 1
            cele_size = 4
            type_pack = 3
            name_pack = "spectral"
            table.remove(tag_select,i)
            open_pack()
        elseif v == "Top-Up" then
            local goal = joker_size-#jokers
            local count = 0
            while count<goal and count<2 do
                add_jokers_to_selection(common_joker[math.random(#common_joker)],{})
            end
            table.remove(tag_select,i)
        elseif v == "Orbital" then
            local maximum = 0 
            local plan_hand
            local planet
            for k, v in pairs(hand_multipliers) do
                if v[3]>maximum then
                    maximum = v[3]
                    plan_hand = k
                    planet = v[4]
                end
            end
            for i = 1, 3 do
                hand_multipliers[plan_hand][1] = hand_multipliers[plan_hand][1] + planets_info[planet][1]
                hand_multipliers[plan_hand][2] = hand_multipliers[plan_hand][2] + planets_info[planet][2] 
            end
            table.remove(tag_select,i)
        elseif v == "Speed" then
            cash = cash + no_blinds_skipped*5
            table.remove(tag_select,i)
        elseif v == "Handy" then
            cash = cash + no_hands_played
            table.remove(tag_select,i)
        elseif v == "Garbage" then
            cash = cash +no_discards_used
            table.remove(tag_select,i)
        elseif v == "Uncommon" then
            local card = uncommon_joker[math.random(#uncommon_joker)]
            table.insert(shop_jokers,card)
            table.insert(shop_jokers_enhancement,{0})
            table.remove(tag_select,i)
        elseif v == "Rare" then
            local card = rare_joker[math.random(#rare_joker)]
            table.insert(shop_jokers,card)
            table.insert(shop_jokers_enhancement,{0})
            table.remove(tag_select,i)
        end
    end
end

function tag_shop()
    for i=#tag_select,1,-1 do
        local v = tag_select[i]
        if v == "D6" then
            reroll_price = 0
            table.remove(tag_select,i)
        elseif v == "Voucher" then
            local rand_voucher
            repeat
                rand_voucher = math.random(#vouchers)
            until vouchers[math.random(#vouchers)] ~= voucher_show[1][1]--need to improve
            table.insert(voucher_show,{vouchers[math.random(#vouchers)],shop_costs[#shop_costs]})
            table.remove(tag_select,i)
        elseif v =="Coupon" then
            local total = 0
            for i =1,#shop_jokers do
                total = total + shop_jokers_enhancement[i][1]
            end
            for i=1,#packs do
                total = total + packs[i][3]
            end
            cash = cash + total
            table.remove(tag_select,i)
        elseif v == "Investment" and blind == 3 then
            cash = cash + 25
            table.remove(tag_select,i)
        end
        jokers_editions_tag(v,i)
    end
end

function jokers_editions_tag(tag,index)
    if tag == "Foil" then
        local shop_index = {}
        for i,v in ipairs(shop_jokers) do
            if joker_info[v] ~= nil then
                table.insert(shop_index,i)
            end
        end
        for i,v in ipairs(shop_index) do
            if #shop_jokers_enhancement[v] < 2 then
                table.insert(shop_jokers_enhancement[v],2,"Foil")
                shop_jokers_enhancement[v][1] = 0
                table.remove(tag_select,index)
                break
            else
                if enhancement_info[shop_jokers_enhancement[v][2]][2] ~= "Edition" then
                    table.insert(shop_jokers_enhancement[v],2,"Foil")
                    shop_jokers_enhancement[v][1] = 0
                    table.remove(tag_select,index)
                    break 
                end
            end
        end
    elseif tag == "Polychrome" then
        local shop_index = {}
        for i,v in ipairs(shop_jokers) do
            if joker_info[v] ~= nil then
                table.insert(shop_index,i)
            end
        end
        for i,v in ipairs(shop_index) do
            if #shop_jokers_enhancement[v] < 2 then
                table.insert(shop_jokers_enhancement[v],2,"Polychrome")
                shop_jokers_enhancement[v][1] = 0
                table.remove(tag_select,index)
                break
            else
                if enhancement_info[shop_jokers_enhancement[v][2]][2] ~= "Edition" then
                    table.insert(shop_jokers_enhancement[v],2,"Polychrome")
                    shop_jokers_enhancement[v][1] = 0
                    table.remove(tag_select,index)
                    break 
                end
            end
        end
    elseif tag == "Holographic" then
        local shop_index = {}
        for i,v in ipairs(shop_jokers) do
            if joker_info[v] ~= nil then
                table.insert(shop_index,i)
            end
        end
        for i,v in ipairs(shop_index) do
            if #shop_jokers_enhancement[v] < 2 then
                table.insert(shop_jokers_enhancement[v],2,"Holographic")
                shop_jokers_enhancement[v][1] = 0
                table.remove(tag_select,index)
                break
            else
                if enhancement_info[shop_jokers_enhancement[v][2]][2] ~= "Edition" then
                    table.insert(shop_jokers_enhancement[v],2,"Holographic")
                    shop_jokers_enhancement[v][1] = 0
                    table.remove(tag_select,index)
                    break 
                end
            end
        end 
    elseif tag == "Negative" then
        local shop_index = {}
        for i,v in ipairs(shop_jokers) do
            if joker_info[v] ~= nil then
                table.insert(shop_index,i)
            end
        end
        for i,v in ipairs(shop_index) do
            if #shop_jokers_enhancement[v] < 2 then
                table.insert(shop_jokers_enhancement[v],2,"Negative")
                shop_jokers_enhancement[v][1] = 0
                table.remove(tag_select,index)
                break
            else
                if enhancement_info[shop_jokers_enhancement[v][2]][2] ~= "Edition" then
                    table.insert(shop_jokers_enhancement[v],2,"Negative")
                    shop_jokers_enhancement[v][1] = 0
                    table.remove(tag_select,index)
                    break 
                end
            end
        end
    end
end

function played_enhancement(card_enhanced)
    for i,v in ipairs(card_enhanced) do
        if v == "Bonus" then
            chips = chips+30
        elseif v == "Mult" then
            multiplier = multiplier+4
        elseif v == "Glass" then
            multiplier = multiplier*2
        elseif v == "Lucky" then
            local money = math.random()
            local mult_add = math.random()
            if mult_add < 0.2*dice_prob then
                multiplier = multiplier +20
                for j,k in ipairs(jokers) do
                    if k == "Lucky Cat" then
                        jokers_enhancement[j][1] = jokers_enhancement[j][1]+0.25
                    end
                end
            end
            if money < dice_prob*1/15 then
                cash = cash +20
                for j,k in ipairs(jokers) do
                    if k == "Lucky Cat" then
                        jokers_enhancement[j][1] = jokers_enhancement[j][1]+0.25
                    end
                end
            end
        elseif v == "Foil" then
            chips = chips+20
        elseif v == "Holographic" then
            multiplier = multiplier + 10
        elseif v =="Polychrome" then
            multiplier = multiplier*1.5
        elseif v == "Gold-Seal" then
            cash = cash + 3
        end
    end
end

function held_enhancement(card_enhanced)
    if card_enhanced[2] == "Steel" then
        multiplier = multiplier*1.5
    end 
end

function discard_enhancements(card_enhanced)
    for i,v in ipairs(card_enhanced) do
        if v == "Purple-Seal" then
            if #consumable<consumable_size then
                local rand = math.random(#tarots_deck)
                table.insert(consumable,tarots_deck[rand])
                table.insert(consumable_enhancement," ")
            end
        end 
    end
end

function round_end_enhancement()
    for j,k in ipairs(dealt_enhancement) do
        for i,v in ipairs(k) do
            if v == "Gold" then
                cash = cash + 3
            elseif v == "Blue-Seal" then
                local plan_type = ""
                if #consumable<consumable_size then
                    for k,v in pairs(planets_info)do
                        if v[3] == hand_type then
                            plan_type = k
                            break
                        end
                    end
                    table.insert(consumable,plan_type)
                    table.insert(consumable_enhancement," ")
                end
            end
        end
    end
end

function showman_ability(name)
    for i,v in ipairs(jokers) do
        if v==name then
            return true
        end
    end
    for i,v in ipairs(consumable) do
        if v==name then
            return true
        end
    end
    for i,v in ipairs(shop_jokers) do
        if v==name then
            return true
        end
    end
    for i,v in ipairs(pack_interior) do
        if v==name then
            return true
        end
    end
    return false
end

function face_down_blinds(card,index)
    if ante%8 ~= 0 and blind == 3 and boss_active then
        if boss_blind[boss_num] == "The House" then
            if gameplay_phase == 1 then
                table.insert(dealt_enhancement[index],true)
            end
        elseif boss_blind[boss_num] == "The Wheel" then
            local rand = math.random()
            if rand < dice_prob*1/7 then
                table.insert(dealt_enhancement[index],true)
            end
        elseif boss_blind[boss_num] == "The Fish" then
            if gameplay_phase == 3 then
                table.insert(dealt_enhancement[index],true)
            end
        elseif boss_blind[boss_num] == "The Mark" then
            if string.sub(card,1,1) == "k" or string.sub(card,1,1) == "q" or string.sub(card,1,1) == "j" or all_face then
                table.insert(dealt_enhancement[index],true)
            end
        end
    end
end

function inflation_ability()
    local num_to_add
    if gameplay_phase == 4 or gameplay_phase == 4.5 then
        num_to_add = 1
        for i = 1, #voucher_show do
            voucher_show[i][2] = voucher_show[i][2] + num_to_add--not how i want to do it but should work
        end
    else
        num_to_add = num_bought
        if blind == 1 then
            for i = 1, #voucher_show do
                voucher_show[i][2] = voucher_show[i][2] + num_to_add
            end
        end
    end
    for j = 1, #shop_jokers do
        shop_jokers_enhancement[j][1] = shop_jokers_enhancement[j][1] + num_to_add
    end
    for j=1, #packs do
        packs[j][4] = packs[j][4] + num_to_add
    end
end

hard_reset()
collectgarbage("generational")--seems to work better
while not Keys.newPress.Select do
    Controls.read()
    if scene == "menu" then
        selected_deck = bounds(total_deck[deck_kind],selected_deck)
        selected_stake = bounds(stakes,selected_stake)
        draw_title_screen()
        if Keys.newPress.Left then
            selected_deck = selected_deck - 1
        elseif Keys.newPress.Right then
            selected_deck = selected_deck + 1
        end
        if Keys.newPress.X then
            selected_stake = selected_stake+1
        elseif Keys.newPress.B then
            selected_stake = selected_stake-1
        end
        if Keys.newPress.Y then
            if seeded_run == false then
                seeded_run = true
            else
                seeded_run = false
                seeded_num = 0
            end
        end
        if seeded_run == true then
            if Keys.held.Up then
                seeded_num= seeded_num +1
            elseif Keys.held.Down and seeded_num>0 then
                seeded_num = seeded_num -1
            end
        end
        if Keys.newPress.A then
            if seeded_run == true then
                math.randomseed(seeded_num)
            else
                math.randomseed(os.time())
            end
            scene = "game"
            deck_name = total_deck[deck_kind][selected_deck]
            stake_name = stakes[selected_stake]
            get_deck(deck_name)
            get_deck_adjust(deck_name)
            stake_begin(stake_name)
            soft_reset()
        end
        if Keys.newPress.R then
            deck_kind = 2
            selected_deck =1
        elseif Keys.newPress.L then
            deck_kind = 1
            selected_deck =1
        end
    elseif scene == "game" then
        screen.drawFillRect(SCREEN_UP,0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color.new256(0, 153, 76))
        screen.drawFillRect(SCREEN_DOWN,0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color.new256(0, 153, 76))
        upper_display()
        if gameplay_phase ~= 2.5 then--not drawing joker and tarot on pause menu for clarity, will move this to below when the jokers grahics are done
            draw_joker_card_graphic()
            draw_tarots_graphics()
        end
        if gameplay_phase == 0 then--initialise for first blind
            if ante == 5 then
                if deck_name == "Typecast" then
                    for i,v in ipairs(jokers_enhancement) do
                        for j,k in ipairs(v) do
                            if k == "Perishable" then
                                v[j] = "Eternal"
                                break
                            elseif k == "Eternal" then
                                break
                            end
                            if j == #v then
                                table.insert(v,"Eternal")
                            end
                        end
                    end
                    joker_size = #jokers
                end
            elseif ante == 2 then
                for i=#tag_unlock_2,1,-1 do
                    table.insert(tag_deck,tag_unlock_2[i])
                end
            end
            for i =1, 2 do
                local tag_num = math.random(#tag_deck)
                table.insert(blind_tags,tag_deck[tag_num])
            end
            voucher_show = {}
            if ante == 1 then
                repeat
                    table.remove(voucher_show,1)
                    table.insert(voucher_show, {vouchers[math.random(#vouchers)],shop_costs[#shop_costs]})
                until voucher_show[1][1] ~= "Heiroglyph" --heiroglyph not possible on ante 1 bc not set ante 0 score
            else
                for i=#boss_blind_locked,1,-1 do
                    local v = boss_blind_locked[i]
                    if boss_blind_description[v][3] == ante then
                        table.insert(boss_blind,v)
                    end
                end
                if deck_name == "Anaglyph Deck" then
                    table.insert(tag_select,"Double")
                end
                table.insert(voucher_show, {vouchers[math.random(#vouchers)],shop_costs[#shop_costs]})
            end
            set_boss_blind()
            calculate_minimum_score()
            boss_col, boss_info = get_boss_info()
            gameplay_phase = 1
        elseif gameplay_phase == 1 then--chossing blind
            draw_blind_menu()
            card_details(kind)
            if Keys.newPress.X and cash > 9+min_cash and boss_reroll==true then
                if total_boss_reroll ~= boss_reroll_num then
                    boss_reroll_num = boss_reroll_num+1
                    set_boss_blind()
                    calculate_minimum_score()
                    boss_col, boss_info = get_boss_info()
                    cash = cash - 10
                end
            end

            if Keys.newPress.A then
                for i, v in ipairs(jokers) do
                    selected_blind_jokers(v,i)
                end
                last_played_hand = ""
                hands = max_hands
                discards = max_discards
                hand_size = max_hand_size
                for i=#tag_select,1,-1 do
                    if tag_select[i] == "Juggle" then
                        hands = hands + 3
                        table.remove(tag_select,i)
                    end
                end
                if blind == 3 and boss_active == true then
                    if ante%8 == 0 then
                        if finisher_blinds[boss_num] == "Amber Acorn" then
                            local temp_jokers = {}
                            local temp_jokers_enhancement = {}
                            for i = 1, #jokers do--need to look at this
                                local index = math.random(#jokers)
                                table.insert(temp_jokers,jokers[index])
                                table.insert(temp_jokers_enhancement,jokers_enhancement[index])
                                table.remove(jokers,index)
                                table.remove(jokers_enhancement,index)
                            end
                            if deck_name == "On a Knife's Edge" then--not neat
                                for i,v in ipairs(temp_jokers_enhancement) do
                                    if type(v) ~= "table" then
                                        if string.find(v,":") ~= nil then
                                            table.insert(temp_jokers,1,temp_jokers[i])
                                            table.insert(temp_jokers_enhancement,1,temp_jokers_enhancement[i])
                                            table.remove(temp_jokers,i+1)
                                            table.remove(temp_jokers_enhancement,i+1)
                                        end
                                    end
                                end
                            end
                            jokers = temp_jokers
                            jokers_enhancement = temp_jokers_enhancement
                        elseif finisher_blinds[boss_num] == "Crimson Heart" then
                            local rand = math.random(#jokers)
                            table.insert(jokers_enhancement[rand],3,"Disabled")
                        end
                    else
                        if boss_blind[boss_num] == "The Needle" then
                            hands = 1
                        elseif boss_blind[boss_num] == "The Manacle" then
                            hand_size = hand_size - 1
                        elseif boss_blind[boss_num] == "The Water" then
                            discards = 0
                        end
                    end
                end
                add_to_dealt()
                if blind == 3 and boss_active == true then
                    if ante%8 == 0 then
                        if finisher_blinds[boss_num] == "Cerulean Bell" then--move this to after dealt
                            local rand = math.random(#dealt)
                            table.insert(hand,dealt[rand])
                            table.insert(hand_enhancement,dealt_enhancement[rand])
                            table.remove(dealt,rand)
                            table.remove(dealt_enhancement)
                        end
                    end
                end
                dealt,dealt_enhancement = sort_deck(dealt,dealt_enhancement)
                for i,v in ipairs(jokers) do
                    selected_blind_after_dealt_jokers(v,i)
                end
                gameplay_phase = 2
                kind = 1
                selected_card = 1
            end

            if Keys.newPress.R or Keys.newPress.L then
                if blind < 3 then
                    no_blinds_skipped = no_blinds_skipped+1
                    table.insert(tag_select,blind_tags[blind])
                    blind = blind + 1
                    for i=#tag_select-1,1,-1 do--doesnt work properly with multiple 
                        if tag_select[i] == "Double" then
                            tag_select[i] = tag_select[#tag_select]
                        end
                    end
                    tag_immediate()
                end
            end

            if Keys.newPress.Start then--game menu to look at deck/volume etc
                prev_phase = gameplay_phase
                gameplay_phase = 2.5
            end

            if Keys.newPress.Up and kind == 2 then
                kind = kind+1
            elseif Keys.newPress.Down and kind == 3 then
                kind = kind-1
            end

            if Keys.newPress.Left then
                selected_card = selected_card - 1
            elseif Keys.newPress.Right then
                selected_card = selected_card + 1
            end

            if kind == 2 then
                if Keys.newPress.Y and #jokers>0 then
                    sell_jokers(jokers[selected_card],selected_card)
                end
                if Keys.newPress.B and #jokers>1 then
                    move_action(jokers,jokers_enhancement)
                end
                selected_card = bounds(jokers,selected_card)
            elseif kind == 3 then
                if Keys.newPress.B and #consumable>0 then
                    pack_cards,pack_cards_enhancements = use_consumable_non_target(pack_cards,pack_cards_enhancements)
                    if #active>0 and general_used == false then
                        active,active_enhancement,pack_cards,pack_cards_enhancements = use_consumable_target(active,active_enhancement,pack_cards,pack_cards_enhancements,consumable)
                    end
                elseif Keys.newPress.Y and #consumable>0 then
                    local consumable_cost = {["Planet"] = 2, ["Tarot"] = 3, ["Spectral"] = 4}
                    local shop_cost_position = consumable_cost[consumable_deck[consumable[selected_card]][2]]
                    cash = cash + math.floor(shop_costs[shop_cost_position]*discount_percent/2)
                    if consumable_enhancement[selected_card] == "Negative" then
                        consumable_size = consumable_size-1
                    end
                    table.remove(consumable_enhancement, selected_card)
                    table.remove(consumable, selected_card)
                end
                selected_card = bounds(consumable,selected_card)
            end

        elseif gameplay_phase == 2 then--choosing hand
            tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 12, 0)--frame number is multiple of 96
            --tutorial_graphics:drawFrame(SCREEN_DOWN, 149, 4, 1)
            --tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 4, 2)--need to change from arrow to B/X
            tutorial_graphics:drawFrame(SCREEN_DOWN, 144, 12, 3)
            screen.print(SCREEN_DOWN,20,2,"X: Place Card")
            screen.print(SCREEN_DOWN,153,2,"B: Reset Hand")
            draw_card_base_graphic((SCREEN_WIDTH-card_size[1])/2,0,1,{})--card for deck
            screen.print(SCREEN_DOWN, (SCREEN_WIDTH-card_size[1])/2+2, 7,#deck, Color.new(0,0,0))
            draw_card_deck_graphic(dealt, selected_card, "dealt")--why does this show always

            if #hand >0 then
                draw_card_deck_graphic(hand, selected_card, "hand")
                local hand_description = ""
                local x_space = math.floor(SCREEN_WIDTH/(#hand_enhancement+1))
                for i,v in ipairs(hand_enhancement) do
                    if #v == 4 then
                        local status_string = ""
                        for j,k in ipairs(v) do
                            status_string= status_string..k.." "
                        end
                        local x = x_space*i
                        local indv_status = text_width(status_string,1)
                        for a,b in ipairs(indv_status) do
                            screen.print(SCREEN_DOWN,x-card_size[1],SCREEN_HEIGHT/3-10*(a-2),b,colours[1])
                        end
                    end
                end
                screen.print(SCREEN_DOWN,(SCREEN_WIDTH-6*string.len(hand_description))/2,SCREEN_HEIGHT/3,hand_description,colours[1])
            end

            if kind == 1 then
                selected_card = bounds(dealt,selected_card)
            elseif kind == 2 then
                selected_card = bounds(jokers,selected_card)
            elseif kind == 3 then
                selected_card = bounds(consumable,selected_card)
            end
            card_details(kind)

            if Keys.newPress.Left then
                selected_card = selected_card - 1
            elseif Keys.newPress.Right then
                selected_card = selected_card + 1
            end

            if Keys.newPress.L then
                sort_mode = false
                dealt,dealt_enhancement = sort_deck(dealt,dealt_enhancement)
            elseif Keys.newPress.R then
                sort_mode = true
                dealt, dealt_enhancement = sort_deck(dealt,dealt_enhancement)
            end
            
            if Keys.newPress.Up then
                kind = kind + 1
                first = 0
                selected_card = 1
                if kind > 3 then
                    kind = 1
                end
            end

            if Keys.newPress.B then
                if kind == 1 and #hand>0 then
                    for i=1,#hand do
                        if #hand == 1 and ante%8 == 0 then--not tested
                            if blind == 3 and finisher_blinds[boss_num] == "Cerulean Bell" and boss_active == true then
                                break
                            end
                        end
                        table.insert(dealt, hand[#hand])
                        table.insert(dealt_enhancement, hand_enhancement[#hand])
                        table.remove(hand_enhancement,#hand)
                        table.remove(hand,#hand)
                    end
                    dealt,dealt_enhancement = sort_deck(dealt,dealt_enhancement)
                    chips = 0.0
                    multiplier = 0.0
                    hand_type = ""
                elseif kind == 2 and #jokers>1 then
                    move_action(jokers,jokers_enhancement)
                elseif kind == 3 and #consumable>0 then
                    dealt,dealt_enhancement = use_consumable_non_target(dealt,dealt_enhancement)
                    if #hand > 0 and general_used == false then
                        hand, hand_enhancement, dealt,dealt_enhancement = use_consumable_target(hand, hand_enhancement, dealt,dealt_enhancement)
                    end
                end
            end

            if Keys.newPress.X and #hand < 5 and kind ==1 then
                table.insert(hand, dealt[selected_card])
                table.insert(hand_enhancement,dealt_enhancement[selected_card])
                table.remove(dealt, selected_card)
                table.remove(dealt_enhancement, selected_card)
                hand_type = get_hand_type(hand)
                chips = hand_multipliers[hand_type][1]
                multiplier = hand_multipliers[hand_type][2]
                selected_card = bounds(dealt,selected_card)--temp solution to bug with stone cards sometimes causing indexing issues
            end

            if Keys.newPress.Down then
                if kind~=1 then
                    kind = kind-1
                else
                    move_action(dealt,dealt_enhancement)
                end
            end
            if #hand > 0 and hands > 0 then
                can_play_hand = true
            else 
                can_play_hand = false
            end

            if #hand > 0 and discards > 0 then
                if deck_name == "Golden Needle" then
                    if cash > min_cash then
                        can_discard = true
                    end
                else
                    can_discard = true
                end
            else
                can_discard = false
            end

            if Keys.newPress.Y then
                if can_discard and kind == 1 then
                    for i,v in ipairs(hand_enhancement) do
                        if #v == 5 then
                            table.remove(hand_enhancement[i],#v)
                        end
                    end
                    if deck_name == "Golden Needle" then
                        cash = cash -1
                    end
                    no_discards_used = no_discards_used+1
                    for j,k in ipairs(jokers) do
                        discard_jokers(k,j)
                    end
                    for i,v in ipairs(hand) do
                        discard_enhancements(hand_enhancement[i])
                    end
                    hand = {}
                    hand_enhancement = {}
                    add_to_dealt()
                    if blind == 3 and ante%8 == 0 then
                        if finisher_blinds[boss_num] == "Cerulean Bell" and boss_active == true then
                            local rand = math.random(#dealt)
                            table.insert(hand,dealt[rand])
                            table.insert(hand_enhancement,dealt_enhancement[rand])
                            table.remove(dealt,rand)
                            table.remove(dealt_enhancement,rand)
                        end
                    end
                    dealt,dealt_enhancement = sort_deck(dealt,dealt_enhancement)
                    discards = discards - 1
                elseif kind == 2 and #jokers>0 then
                    sell_jokers(jokers[selected_card],selected_card)
                elseif kind == 3 and #consumable>0 then
                    local consumable_cost = {["Planet"] = 2, ["Tarot"] = 3, ["Spectral"] = 4}
                    local shop_cost_position = consumable_cost[consumable_deck[consumable[selected_card]][2]]
                    cash = cash + math.floor(shop_costs[shop_cost_position]*discount_percent/2)
                    if consumable_enhancement[selected_card] == "Negative" then
                        consumable_size = consumable_size-1
                    end
                    table.remove(consumable, selected_card)
                    table.remove(consumable_enhancement, selected_card)
                end
            end
            if blind == 3 and boss_active == true then
                if ante%8 ~= 0 then
                    if boss_blind[boss_num] == "The Mouth" then
                        screen.print(SCREEN_DOWN,SCREEN_WIDTH/2-3*string.len(last_played_hand),10 + card_size[2],last_played_hand)
                        if last_played_hand ~= hand_type and hands < max_hands then
                            can_play_hand = false
                        end
                    elseif boss_blind[boss_num] == "The Psychic" and #hand ~= 5 then
                        can_play_hand = false
                    elseif boss_blind[boss_num] == "The Eye" then
                        local hands_used = ""
                        for i,v in ipairs(played_hand_type) do
                            hands_used = hands_used..v..","
                            if hand_type == v then
                                can_play_hand = false
                            end
                        end
                        screen.print(SCREEN_DOWN,SCREEN_WIDTH/2-3*string.len(hands_used),10 + card_size[2],hands_used)
                    end
                end
            end
            if Keys.newPress.A then
                if can_play_hand and kind == 1 then
                    for i,v in ipairs(hand_enhancement) do
                        if #v == 5 then
                            table.remove(hand_enhancement[i],#v)
                        end
                    end
                    last_played_hand = hand_type
                    no_hands_played = no_hands_played+1
                    local count = 0
                    for k,v in pairs(planets_deck) do
                        if hand_multipliers[hand_type][4] == v then
                            break
                        end
                        if k == #planets_deck then
                            table.insert(planets_deck,hand_multipliers[hand_type][4])
                        end
                    end
                    table.insert(played_hand_type,hand_type)
                    gameplay_phase = 2.1
                    selected_card = 1
                    hands = hands - 1
                end
            end
            if Keys.newPress.Start then--game menu to look at deck/volume etc
                prev_phase = 2
                gameplay_phase = 2.5
            end
        elseif gameplay_phase == 2.1 then--temp solution to show cards, doesnt always works
            tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 12, 0)--frame number is multiple of 96
            --tutorial_graphics:drawFrame(SCREEN_DOWN, 149, 4, 1)
            --tutorial_graphics:drawFrame(SCREEN_DOWN, 16, 4, 2)--need to change from arrow to B/X
            tutorial_graphics:drawFrame(SCREEN_DOWN, 144, 12, 3)
            screen.print(SCREEN_DOWN,20,2,"X: Place Card")
            screen.print(SCREEN_DOWN,153,2,"B: Reset Hand")
            draw_card_base_graphic((SCREEN_WIDTH-card_size[1])/2,0,1,{})--card for deck
            screen.print(SCREEN_DOWN, (SCREEN_WIDTH-card_size[1])/2+2, 7,#deck, Color.new(0,0,0))
            draw_card_deck_graphic(dealt, -1, "dealt")
            draw_card_deck_graphic(hand, selected_card, "hand")
            gameplay_phase = 3
        elseif gameplay_phase == 2.5 then--game menu
            local index_menu_details = {"Show Deck","Show Hand Types","Show Enhancments", "Adjust Volume", "Adjust Animations", "Retire Run"}
            screen.print(SCREEN_UP, SCREEN_WIDTH/2 -5,SCREEN_HEIGHT/3,"Main Menu",Color.new(0,0,0))
            for i,v in ipairs(index_menu_details) do
                screen.print(SCREEN_UP, SCREEN_WIDTH/2 -5,SCREEN_HEIGHT/3+10*(i),v,Color.new(31,31,31))
            end
            index_menu = bounds(index_menu_details,index_menu)
            screen.drawFillRect(SCREEN_UP, SCREEN_WIDTH/2 - 15, SCREEN_HEIGHT/3+10*index_menu, SCREEN_WIDTH/2 - 6, SCREEN_HEIGHT/3+10*(index_menu)+7, Color.new(0, 0, 0))
            if index_menu_details[index_menu] == "Show Deck" then
                local rank_deck = {[2]=0,[3]=0,[4]=0,[5]=0,[6]=0,[7]=0,[8]=0,[9]=0,[10]=0,[11]=0,[12]=0,[13]=0,[14]=0,[15]=0}
                local suit_deck = {["h"]=0,["d"]=0,["c"]=0,["s"]=0}
                local wilds = 0
                for i,v in ipairs(deck) do--cards in deck
                    if string.sub(v,2,2) == "h" then
                        deck_y = SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "d" then
                        deck_y = 2*SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "s" then
                        deck_y = 3*SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "c" then
                        deck_y = 4*SCREEN_HEIGHT/5
                    else
                        rank_deck[position(string.sub(v,1,1))] = rank_deck[position(string.sub(v,1,1))]+1
                    end
                    if string.sub(v,2,2) ~= "t" then
                        suit_deck[string.sub(v,2,2)]= suit_deck[string.sub(v,2,2)]+1
                        rank_deck[position(string.sub(v,1,1))] = rank_deck[position(string.sub(v,1,1))]+1
                        screen.print(SCREEN_DOWN, 50 + 13*position(string.sub(v,1,1)), deck_y, v)
                    end
                end
                for i,v in ipairs(used_cards)do--cards used or in dealt
                    if string.sub(v,2,2) == "h" then
                        deck_y = SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "d" then
                        deck_y = 2*SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "s" then
                        deck_y = 3*SCREEN_HEIGHT/5
                    elseif string.sub(v,2,2) == "c" then
                        deck_y = 4*SCREEN_HEIGHT/5
                    else
                        rank_deck[position(string.sub(v,1,1))] = rank_deck[position(string.sub(v,1,1))]+1
                    end
                    if string.sub(v,2,2) ~= "t" then
                        suit_deck[string.sub(v,2,2)]= suit_deck[string.sub(v,2,2)]+1
                        rank_deck[position(string.sub(v,1,1))] = rank_deck[position(string.sub(v,1,1))] +1
                        screen.print(SCREEN_DOWN, 50 + 13*position(string.sub(v,1,1)), deck_y, v, Color.new(31,0,0))
                    end
                end
                for i=2,15 do
                    local k
                    if i<15 then
                        k = convert_num_to_rank(i)
                    else
                        k = "st"
                    end
                    screen.print(SCREEN_DOWN, 10 , 12*(i-1), k..": "..rank_deck[i], Color.new(0,0,0))
                end
                local count = 1
                for k,v in pairs(suit_deck) do
                    screen.print(SCREEN_DOWN, 40+40*count , 10, k..":"..v, Color.new(0,0,0))
                    count = count+1
                end
            elseif index_menu_details[index_menu] == "Show Hand Types" then
                screen.print(SCREEN_DOWN, SCREEN_WIDTH/4 ,10,"Poker Hand")
                screen.print(SCREEN_DOWN, 2*SCREEN_WIDTH/3-20 ,10,"Chips",Color.new(0,0,31))
                screen.print(SCREEN_DOWN, 3*SCREEN_WIDTH/4 ,10,"Mult",Color.new(31,0,0))
                screen.print(SCREEN_DOWN, SCREEN_WIDTH/5-10 ,10,"#",Color.new(0,0,0))
                for i = 2, #planets_deck do
                    local v = hand_multipliers[planets_info[planets_deck[i]][3]]
                    screen.print(SCREEN_DOWN, SCREEN_WIDTH/4, 10+ 12*(i-1), planets_info[planets_deck[i]][3])
                    screen.print(SCREEN_DOWN, 2*SCREEN_WIDTH/3-20, 10+12*(i-1), v[1],Color.new(0,0,31))
                    screen.print(SCREEN_DOWN, 3*SCREEN_WIDTH/4, 10+12*(i-1), v[2],Color.new(31,0,0))
                    screen.print(SCREEN_DOWN, SCREEN_WIDTH/5-10, 10+12*(i-1), v[3],Color.new(0,0,0))
                end
            elseif index_menu_details[index_menu] == "Show Enhancments" then
                if Keys.newPress.B then
                    enhancement_kind = enhancement_kind+1
                    if enhancement_kind >4 then
                        enhancement_kind = 1
                    end
                elseif Keys.newPress.Y then
                    enhancement_kind = enhancement_kind-1
                    if enhancement_kind <1 then
                        enhancement_kind = 4
                    end
                end
                screen.print(SCREEN_DOWN,SCREEN_WIDTH/5,10,"B/Y: Cycle enhancement type",Color.new(0,0,31))
                local total_enhancement = {card_enhancement,{"Polychrome", "Holographic","Foil","Negative"},seals,{"Eternal","Perishable","Rental"}}
                local descriptor = {"1 available on playing cards", "1 available on playing cards, Negative possible on jokers or consumables","1 available on playing cards","Applies to jokers, available on certain stakes"}
                local enhancement_kind = bounds(total_enhancement,enhancement_kind)
                local spacer = 10
                for i,v in ipairs(total_enhancement[enhancement_kind])do
                    screen.print(SCREEN_DOWN,5,10+10*i+spacer,v..":",Color.new(31*(i%2),31*(i%2),31*(i%2)))
                    local to_print = text_width(enhancement_info[v][1],2*SCREEN_WIDTH/(3*6))
                    for j,k in ipairs(to_print) do
                        screen.print(SCREEN_DOWN,SCREEN_WIDTH/3,10*(i+j)+spacer,k,Color.new(31*(i%2),31*(i%2),31*(i%2)))
                    end
                    spacer = spacer+10*(#to_print-1)
                end
                local descript = text_width(descriptor[enhancement_kind],3*SCREEN_WIDTH/(5*6))
                for i,v in ipairs(descript) do
                    screen.print(SCREEN_DOWN,SCREEN_WIDTH/4,SCREEN_HEIGHT-30+10*(i-1),v,Color.new(0,0,31))
                end
            elseif index_menu_details[index_menu] == "Adjust Volume" then
                if Keys.newPress.B then
                    if music_vol == true then
                        music_vol = false
                    else
                        music_vol = true
                    end
                end
                if Keys.held.Right then
                    if music_vol == true and MOD_volume<1 then
                        MOD_volume =  MOD_volume + 0.01
                        if MOD_volume >1 then
                            MOD_volume = 1
                        end
                    elseif music_vol == false and SFX_volume<1 then
                        SFX_volume = SFX_volume + 0.01
                        if SFX_volume >1 then
                            SFX_volume = 1
                        end
                    end
                elseif Keys.held.Left then
                    if music_vol == true and MOD_volume>0 then
                        MOD_volume = MOD_volume - 0.01
                        if MOD_volume <0 then
                            MOD_volume = 0
                        end
                    elseif music_vol == false and SFX_volume >0 then
                        SFX_volume = SFX_volume - 0.01
                        if SFX_volume <0 then
                            SFX_volume = 0
                        end
                    end
                end
                if music_vol then
                    screen.drawFillRect(SCREEN_DOWN,SCREEN_WIDTH/3,SCREEN_HEIGHT/2,SCREEN_WIDTH/3+30,SCREEN_HEIGHT/2+10,Color.new(0,0,0))
                else
                    screen.drawFillRect(SCREEN_DOWN,2*SCREEN_WIDTH/3,SCREEN_HEIGHT/2,2*SCREEN_WIDTH/3+20,SCREEN_HEIGHT/2+10,Color.new(0,0,0))
                end
                screen.print(SCREEN_DOWN,SCREEN_WIDTH/3, 5, "B: Switch type", Color.new(0,0,0))
                screen.print(SCREEN_DOWN, SCREEN_WIDTH/3, SCREEN_HEIGHT/2, "Music")
                screen.print(SCREEN_DOWN, SCREEN_WIDTH/3, SCREEN_HEIGHT/2+10, MOD_volume*100)
                screen.print(SCREEN_DOWN, 2*SCREEN_WIDTH/3, SCREEN_HEIGHT/2, "SFX")
                screen.print(SCREEN_DOWN, 2*SCREEN_WIDTH/3, SCREEN_HEIGHT/2+10, SFX_volume*100)
            elseif index_menu_details[index_menu] == "Adjust Animations" then
                screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(speed_init+1)/5,SCREEN_HEIGHT/2, SCREEN_WIDTH*(speed_init+1)/5 + 6*string.len(speed_details[speed_init]),SCREEN_HEIGHT/2+10, Color.new(0,0,0))
                for i=0,3 do
                    screen.print(SCREEN_DOWN, SCREEN_WIDTH*(i+1)/5,SCREEN_HEIGHT/2,speed_details[i])
                end
                if Keys.newPress.Right then
                    speed_init = speed_init+1
                    if speed_init>3 then
                        speed_init = 0
                    end
                elseif Keys.newPress.Left then
                    speed_init = speed_init-1
                    if speed_init<0 then
                        speed_init = 3
                    end
                end
            elseif index_menu_details[index_menu] == "Retire Run"  then
                screen.print(SCREEN_DOWN, 70, SCREEN_HEIGHT/2, "Hold A to retire run")
                if Keys.held.A then
                    index_menu = 1
                    scene = "menu"
                    hard_reset()
                end
            end
            if Keys.newPress.Up then
                index_menu= index_menu - 1
            elseif Keys.newPress.Down then
                index_menu= index_menu + 1
            end
            if Keys.newPress.Start then
                index_menu = 1
                gameplay_phase = prev_phase
                if gameplay_phase == 4 then
                    kind = 1.5
                elseif gameplay_phase == 4.5 then
                    kind = 4
                else 
                    kind = 1
                end
                Sound.setModVolume(math.floor(MOD_max*MOD_volume))
                Sound.setSFXVolume(0,math.floor(255*SFX_volume))
                Sound.setSFXVolume(1,math.floor(255*SFX_volume))
            end
        elseif gameplay_phase == 3 then--playing hand 
            Sound.setModVolume(0)
            can_play_hand = false
            can_discard = false
            interest = 0
            cash_out = 0
            hand_multipliers[hand_type][3] = hand_multipliers[hand_type][3]+1
            val = calculate_total_score(hand)
            local success, error_message = pcall(function()
                return round_score + val
            end)

            if success then
                round_score = round_score + val
            else
                round_score = 4294967295
                Debug.print(error_message)
            end
            hand = {}
            hand_enhancement = {}
            Sound.setModVolume(math.floor(MOD_max*MOD_volume))
            if hands == 0 and round_score < minimumscore[blind] then
                for i,v in ipairs(jokers) do
                    if v == "Mr Bones" and round_score >=minimumscore[blind]/4 then
                        gameplay_phase=3.5
                        interest = math.Clamp(math.floor(cash / 5), 0, max_interest)
                        cash_out = interest
                        shop_jokers = {}
                        table.remove(jokers,i)
                        table.remove(jokers_enhancement,i)
                        break
                    end 
                end
                if gameplay_phase ~= 3.5 then
                    lose()
                    dealt= {}
                    dealt_enhancement = {}
                end
            elseif round_score >= minimumscore[blind] then
                round_end_enhancement()
                dealt = {}
                dealt_enhancement = {}
                gameplay_phase = 3.5
                for i,v in ipairs(jokers) do
                    round_end_jokers(v,i)
                end
                interest = math.Clamp(math.floor(cash / 5), 0, max_interest)
                cash_out = blind_payouts[blind] + hands*hand_cash + discards*discard_cash + interest
                shop_jokers = {}
                if blind == 3 then
                    if ante==8 or ante == 12 then
                        win = true
                        gameplay_phase = 5
                    end
                end
            else
                add_to_dealt()
                gameplay_phase = 2
                if blind == 3 and ante%8 == 0 then
                    if finisher_blinds[boss_num] == "Cerulean Bell" and boss_active == true then
                        local rand = math.random(#dealt)
                        table.insert(hand,dealt[rand])
                        table.insert(hand_enhancement,dealt_enhancement[rand])
                        table.remove(dealt,rand)
                        table.remove(dealt_enhancement,rand)
                    elseif finisher_blinds[boss_num] == "Crimson Heart" then
                        for i,v in ipairs(jokers_enhancement) do
                            if v[3] == "Disabled" then
                                table.remove(jokers_enhancement[i],3)
                            end
                        end
                        local rand = math.random(#jokers)
                        table.insert(jokers_enhancement[rand],3,"Disabled")
                    end
                end
                dealt,dealt_enhancement = sort_deck(dealt,dealt_enhancement)
            end
        elseif gameplay_phase == 3.5 then--cash_out
            draw_cashout()
            if blind == 3 and boss_active == false then
                for i,v in ipairs(jokers) do
                    if v == "Chicot" then
                        break
                    end
                    if i == #jokers then
                        boss_active = true
                    end
                end
            end
            if Keys.newPress.A then
                hand_type = ""
                reset_deck()
                used_cards={}
                round_score = 0.0
                cash = cash + cash_out
                for i=1, 2 do
                    local p_type = 0
                    local p_size = 0
                    local initial_rand = math.random()
                    local second_rand = math.random()
                    repeat
                        p_type = p_type + 1
                        initial_rand = initial_rand - type_active_prob[p_type]
                    until initial_rand <= 0
                    repeat
                        p_size = p_size + 1
                        second_rand = second_rand - size_active_prob[p_size]
                    until second_rand <= 0
                    table.insert(packs,{pack_type[p_type],p_size,p_type,math.floor(shop_costs[5][p_size]*discount_percent)})
                end
                round = round +1
                kind = 1.5
                selected_card = 1
                add_to_shop()
                tag_shop()
                for i,v in ipairs(jokers) do
                    if v == "Chaos the Clown" then
                        reroll_price = 0
                    elseif v == "Astronomer" then
                        for j = 1, #shop_jokers do
                            if consumable_deck[shop_jokers[j]] ~= nil then
                                if consumable_deck[shop_jokers[j]][2] == "Planet" then
                                    shop_jokers_enhancement[j][1] = 0
                                end
                            end
                        end
                        for j=1, #packs do
                            if packs[j][1] == "celestial" then
                                packs[j][4] = 0
                            end
                        end
                    end
                end
                if deck_name == "Inflation" then
                    inflation_ability()
                end
                gameplay_phase = 4
            end
        elseif gameplay_phase == 4 then--shop
            if kind == 1.5 then
                selected_card = bounds(shop_jokers,selected_card)
            elseif kind == 2 then
                selected_card = bounds(jokers,selected_card)
            elseif kind == 2.5 then
                selected_card = bounds(packs,selected_card)
            elseif kind == 3 then--already bought not to buy
                selected_card = bounds(consumable,selected_card)
            elseif kind == 3.5 then
                selected_card = bounds(voucher_show,selected_card)
            end
            draw_shop()
            card_details(kind)
            if Keys.newPress.Left then
                selected_card = selected_card - 1
            elseif Keys.newPress.Right then
                selected_card = selected_card + 1
            end

            if Keys.newPress.Up then
                kind = kind + 0.5
                first = 0
                selected_card = 1
                if kind > 3.5 then
                    kind = 1.5
                end
            end

            if Keys.newPress.Down then
                kind = kind - 0.5
                first = 0
                selected_card = 1
                if kind < 1.5 then
                    kind = 3.5
                end
            end

            if Keys.newPress.Y then--sell or buy 
                if kind == 1.5 and #shop_jokers>0 then--shop_joker
                    if joker_info[shop_jokers[selected_card]] ~= nil then
                        if cash >= shop_jokers_enhancement[selected_card][1] + min_cash then
                            local negative_shop = false
                            for i,v in ipairs(shop_jokers_enhancement[selected_card]) do
                                if v == "Negative" then
                                    negative_shop = true
                                    break
                                end
                            end
                            if negative_shop == true then
                                cash = cash - shop_jokers_enhancement[selected_card][1]
                                add_jokers_to_selection(shop_jokers[selected_card],shop_jokers_enhancement[selected_card])
                                table.remove(shop_jokers, selected_card)
                                table.remove(shop_jokers_enhancement, selected_card)
                                selected_card = 1
                                if deck_name == "Inflation" then
                                    num_bought = num_bought + 1
                                    inflation_ability()
                                end
                            elseif negative_shop == false and #jokers < joker_size then
                                cash = cash - shop_jokers_enhancement[selected_card][1]
                                add_jokers_to_selection(shop_jokers[selected_card],shop_jokers_enhancement[selected_card])
                                table.remove(shop_jokers, selected_card)
                                table.remove(shop_jokers_enhancement, selected_card)
                                selected_card = 1
                                if deck_name == "Inflation" then
                                    num_bought = num_bought + 1
                                    inflation_ability()
                                end
                            end
                        end
                    elseif string.len(shop_jokers[selected_card]) == 2 then--may be a better way, works for now
                        local costs, num,detail1,detail2,detail3 = table.unpack(shop_jokers_enhancement[selected_card])--number and 3 max enhancement/edition/seal if not 3 they default to nil
                        if cash >= costs + min_cash then
                            cash = cash - costs
                            table.insert(full_deck, shop_jokers[selected_card])
                            table.insert(full_deck_enhancement,{num,detail1,detail2,detail3})
                            table.remove(shop_jokers, selected_card)
                            table.remove(shop_jokers_enhancement, selected_card)
                            selected_card = 1
                            for j,k in ipairs(jokers) do
                                added_to_deck_jokers(k,j)
                            end
                            if deck_name == "Inflation" then
                                num_bought = num_bought + 1
                                inflation_ability()
                            end
                            reset_deck()
                        end
                    else
                        if cash >= shop_jokers_enhancement[selected_card][1] + min_cash and #consumable<consumable_size then
                            cash = cash - shop_jokers_enhancement[selected_card][1]
                            table.insert(consumable,shop_jokers[selected_card])
                            table.insert(consumable_enhancement," ")
                            table.remove(shop_jokers, selected_card)
                            table.remove(shop_jokers_enhancement, selected_card)
                            if deck_name == "Inflation" then
                                num_bought = num_bought + 1
                                inflation_ability()
                            end
                        end
                    end
                elseif kind == 2 and #jokers>0 then--joker
                    sell_jokers(jokers[selected_card],selected_card)
                elseif kind == 2.5 and #packs>0 then--packs
                    name_pack = packs[selected_card][1]
                    type_pack = packs[selected_card][2]
                    if cash >= packs[selected_card][4] + min_cash and #packs > 0  then
                        cash = cash - packs[selected_card][4]
                        prev_phase = 4
                        if name_pack == "standard" or name_pack == "arcana" or name_pack == "celestial" then
                            if type_pack == 1 then
                                cele_size = 3
                            else
                                cele_size = 5
                            end
                        else
                            if type_pack == 1 then
                                cele_size = 2
                            else
                                cele_size = 4
                            end
                        end
                        table.remove(packs,selected_card)
                        selected_card=1
                        if deck_name == "Inflation" then
                            num_bought = num_bought + 1
                            inflation_ability()
                        end
                        open_pack()
                    end
                elseif kind == 3 and #consumable>0 then--consumable
                    local consumable_cost = {["Planet"] = 2, ["Tarot"] = 3, ["Spectral"] = 4}
                    local shop_cost_position = consumable_cost[consumable_deck[consumable[selected_card]][2]]
                    cash = cash + math.floor(shop_costs[shop_cost_position]*discount_percent/2)
                        if consumable_enhancement[selected_card] == "Negative" then
                            consumable_size = consumable_size-1
                        end
                    table.remove(consumable, selected_card)
                    table.remove(consumable_enhancement, selected_card)
                elseif kind == 3.5 and #vouchers>0 then--voucher
                    if cash >= voucher_show[selected_card][2] + min_cash then
                        cash = cash - voucher_show[selected_card][2]
                        use_vouchers(voucher_show[selected_card][1])
                        table.remove(voucher_show,selected_card)
                        kind = 1.5
                        if deck_name == "Inflation" then
                            num_bought = num_bought + 1
                            inflation_ability()
                        end
                    end
                end
            end

            if Keys.newPress.B then
                if kind == 2 and #jokers>1 then
                    move_action(jokers,jokers_enhancement)
                elseif kind == 3 and #consumable>0 then
                    local pack_cards_4 = {}
                    local pack_cards_enhancements_4 ={}
                    pack_cards_4,pack_cards_enhancements_4 = use_consumable_non_target(pack_cards_4,pack_cards_enhancements_4)
                end
            end

            if Keys.newPress.X and cash >= reroll_price-min_cash then
                cash = cash - reroll_price
                for i,v in ipairs(jokers) do
                    reroll_jokers(v,i)
                end
                reroll_price = reroll_price + 1
                shop_jokers = {}
                shop_jokers_enhancement = {}
                add_to_shop()
                for i,v in ipairs(tag_select) do
                    jokers_editions_tag(v,i)
                end
            end

            if Keys.newPress.A then
                kind = 1
                if blind == 3 then
                    boss_reroll_num = 0
                    blind = 1
                    ante = ante +1
                    blind_tags = {}
                    gameplay_phase = 0
                else
                    blind = blind + 1
                    gameplay_phase = 1
                end
                for i, v in ipairs(jokers) do
                    shop_end_jokers(v,i)
                end
                soft_reset()
            end

            if Keys.newPress.Start then--game menu to look at deck volume etc
                prev_phase = gameplay_phase
                gameplay_phase = 2.5
            end
        elseif gameplay_phase == 4.5 then--packs
            screen.print(SCREEN_DOWN,SCREEN_WIDTH/3,SCREEN_HEIGHT-card_size[2]/2,"X: Skip")
            screen.print(SCREEN_DOWN,2*SCREEN_WIDTH/3,SCREEN_HEIGHT-card_size[2]/2,"A: Use")
            local pack_count_tot = 1--number of cards to pick
            if type_pack == 3 then
                pack_count_tot = 2
            end
            screen.print(SCREEN_DOWN,SCREEN_WIDTH/3,card_size[2],"Choose "..pack_count_tot-pack_count_now)
            local y_pack_pos
            if name_pack == "arcana" or name_pack == "spectral" then
                y_pack_pos= SCREEN_HEIGHT-2*card_size[2]
                if kind > 5 then
                    kind =2
                elseif kind <2 then
                    kind = 5
                end
            else
                y_pack_pos = SCREEN_HEIGHT/2
                if kind > 4 then
                    kind =2
                elseif kind <2 then
                    kind = 4
                end
            end

            if name_pack == "celestial" then
                for i = 1, #pack_interior do
                    local cons_type = consumable_deck[pack_interior[i]][2] 
                    local index = consumable_deck[pack_interior[i]][3]
                    screen.blit(SCREEN_DOWN,  SCREEN_WIDTH*(i)/(#pack_interior+1), y_pack_pos, consumable_graphics_table[cons_type], card_size[1]*(index-1),0, card_size[1], card_size[2])
                end
            elseif name_pack == "standard" then
                for i,v in ipairs(pack_interior) do
                    local rank_c = string.sub(v,1,1)
                    local suit_c = string.sub(v,2,2)
                    draw_card_base_graphic(SCREEN_WIDTH*(i)/(#pack_interior+1),y_pack_pos,1,pack_interior_enhancement[i])
                    draw_card_detail(SCREEN_WIDTH*(i)/(#pack_interior+1),y_pack_pos,1,rank_c,suit_c,pack_interior_enhancement[i])
                end
            elseif name_pack == "bufoon" then
                local joke_index = 0
                for i,v in ipairs(pack_interior) do
                    joke_index = joker_info[v][3]
                    if joke_index~= 99 then
                        screen.blit(SCREEN_DOWN, SCREEN_WIDTH*(i)/(#pack_interior+1),y_pack_pos, joker_graphics, card_size[1]*(joke_index-1),0, card_size[1], card_size[2])
                    else
                        screen.drawFillRect(SCREEN_DOWN,SCREEN_WIDTH*(i)/(#pack_interior+1),y_pack_pos,SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1],y_pack_pos+card_size[2],colours[3])
                    end
                for j = 2, #pack_interior_enhancement[i] do
                    if type(pack_interior_enhancement[i][j]) ~= "table" then
                        if pack_interior_enhancement[i][j] == "Foil" or pack_interior_enhancement[i][j] == "Polychrome" or pack_interior_enhancement[i][j] == "Holographic" then
                            screen.drawFillRect(SCREEN_DOWN,SCREEN_WIDTH*(i)/(#pack_interior+1)+2, y_pack_pos+card_size[2]-6,SCREEN_WIDTH*(i)/(#pack_interior+1)+6, y_pack_pos+card_size[2]-2,edition_seal_col[jokers_enhancement[i][j]])
                        elseif pack_interior_enhancement[i][j] == "Negative" then
                            screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(i)/(#pack_interior+1)+2, y_pack_pos+2, SCREEN_WIDTH*(i)/(#pack_interior+1)+6, y_pack_pos+6,Color.new(0,0,0))
                        elseif pack_interior_enhancement[i][j] == "Eternal" then
                            screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-6, y_pack_pos+2, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-2, y_pack_pos+6,edition_seal_col["Blue-Seal"])
                        elseif pack_interior_enhancement[i][j] == "Rental" then
                            screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-6, y_pack_pos+card_size[2]-6, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-2, y_pack_pos+card_size[2]-2,edition_seal_col["Red-Seal"])
                        end
                    else
                        if pack_interior_enhancement[i][j][1] == "Perishable" then
                            screen.drawFillRect(SCREEN_DOWN, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-6, y_pack_pos+2, SCREEN_WIDTH*(i)/(#pack_interior+1)+card_size[1]-2, y_pack_pos+6,edition_seal_col["Purple-Seal"])
                        end
                    end
                end
                end
            elseif name_pack == "arcana" then
                for i,v in ipairs(active) do
                    local rank_c = string.sub(v,1,1)
                    local suit_c = string.sub(v,2,2)
                    draw_card_base_graphic(SCREEN_WIDTH*(i)/(hand_size+1),SCREEN_HEIGHT/3,1,active_enhancement[i])
                    draw_card_detail(SCREEN_WIDTH*(i)/(hand_size+1),SCREEN_HEIGHT/3,1,rank_c,suit_c,active_enhancement[i])
                end
                for i,v in ipairs(pack_cards) do
                    local rank_c = string.sub(v,1,1)
                    local suit_c = string.sub(v,2,2)
                    draw_card_base_graphic(SCREEN_WIDTH*(i)/(#pack_cards+1),SCREEN_HEIGHT/2,1,pack_cards_enhancements[i])
                    draw_card_detail(SCREEN_WIDTH*(i)/(#pack_cards+1),SCREEN_HEIGHT/2,1,rank_c,suit_c,pack_cards_enhancements[i])
                end
                for i,v in ipairs(pack_interior) do
                    local cons_type = consumable_deck[pack_interior[i]][2] 
                    local index = consumable_deck[pack_interior[i]][3]
                    screen.blit(SCREEN_DOWN,  SCREEN_WIDTH*(i)/(#pack_interior+1), y_pack_pos, consumable_graphics_table[cons_type], card_size[1]*(index-1),0, card_size[1], card_size[2])
                end
            elseif name_pack == "spectral" then
                for i,v in ipairs(active) do
                    local rank_c = string.sub(v,1,1)
                    local suit_c = string.sub(v,2,2)
                    draw_card_base_graphic(SCREEN_WIDTH*(i)/(hand_size+1),SCREEN_HEIGHT/3,1,active_enhancement[i])
                    draw_card_detail(SCREEN_WIDTH*(i)/(hand_size+1),SCREEN_HEIGHT/3,1,rank_c,suit_c,active_enhancement[i])
                end
                for i,v in ipairs(pack_cards) do
                    local rank_c = string.sub(v,1,1)
                    local suit_c = string.sub(v,2,2)
                    draw_card_base_graphic(SCREEN_WIDTH*(i)/(#pack_cards+1),SCREEN_HEIGHT/2,1,pack_cards_enhancements[i])
                    draw_card_detail(SCREEN_WIDTH*(i)/(#pack_cards+1),SCREEN_HEIGHT/2,1,rank_c,suit_c,pack_cards_enhancements[i])
                end
                for i,v in ipairs(pack_interior) do
                    local cons_type = consumable_deck[pack_interior[i]][2] 
                    local index = consumable_deck[pack_interior[i]][3]
                    screen.blit(SCREEN_DOWN,  SCREEN_WIDTH*(i)/(#pack_interior+1), y_pack_pos, consumable_graphics_table[cons_type], card_size[1]*(index-1),0, card_size[1], card_size[2])
                end
            end
            if kind == 4 then
                if Keys.newPress.A then
                    local initial_len = #pack_interior
                    if name_pack == "celestial" then
                        if consumable_deck[pack_interior[selected_card]][2] == "Planet" then
                            local plan_hand = planets_info[pack_interior[selected_card]]
                            hand_multipliers[plan_hand[3]][1] = hand_multipliers[plan_hand[3]][1] + plan_hand[1]
                            hand_multipliers[plan_hand[3]][2] = hand_multipliers[plan_hand[3]][2] + plan_hand[2]
                            last_used_consumable = pack_interior[selected_card]
                            table.remove(pack_interior,selected_card)
                            total_planets = total_planets+1
                        elseif consumable_deck[pack_interior[selected_card]][2] == "Spectral" then
                            use_spectral(pack_cards, pack_cards_enhancements, pack_interior)
                        end
                    elseif name_pack == "standard" then
                        table.insert(full_deck, pack_interior[selected_card])
                        table.insert(full_deck_enhancement, pack_interior_enhancement[selected_card])
                        table.remove(pack_interior,selected_card)
                        table.remove(pack_interior_enhancement,selected_card)
                        for j,k in ipairs(jokers) do
                            added_to_deck_jokers(k,j)
                        end
                    elseif name_pack == "bufoon" and #jokers < joker_size then
                        add_jokers_to_selection(pack_interior[selected_card],{joker_info[pack_interior[selected_card]][1]})
                        table.remove(pack_interior,selected_card)
                    elseif name_pack == "arcana" then
                        if consumable_deck[pack_interior[selected_card]][2] == "Tarot" then
                            pack_interior  = use_tarots(pack_interior)
                            if #active ~= 0 and general_used == false then
                                active, active_enhancement, pack_cards, pack_cards_enhancements, pack_interior = use_target_tarots(active,active_enhancement,pack_cards,pack_cards_enhancements,pack_interior)
                            end
                        elseif consumable_deck[pack_interior[selected_card]][2] == "Spectral" then
                            pack_cards,pack_cards_enhancements, pack_interior = use_spectral(pack_cards,pack_cards_enhancements, pack_interior)
                            if #active ~= 0 and general_used == false then
                                active, active_enhancement, pack_cards, pack_cards_enhancements,pack_interior= use_target_spectral(active, active_enhancement, pack_cards, pack_cards_enhancements,pack_interior)
                            end
                        end
                    elseif name_pack == "spectral" then
                        pack_cards,pack_cards_enhancements, pack_interior = use_spectral(pack_cards,pack_cards_enhancements, pack_interior)
                        if #active ~= 0 and general_used == false then
                            active, active_enhancement, pack_cards, pack_cards_enhancements,pack_interior= use_target_spectral(active, active_enhancement, pack_cards, pack_cards_enhancements,pack_interior)
                        end
                    end
                    if #pack_interior ~= initial_len then--checking whether something was used
                        pack_count_now = pack_count_now + 1 
                    end
                    if pack_count_now == pack_count_tot then
                        gameplay_phase = prev_phase
                        selected_card = 1
                        reset_deck()
                        pack_interior = {}
                        pack_interior_enhancement = {}
                        pack_cards = {}
                        pack_cards_enhancements = {}
                        active = {}
                        active_enhancement = {}
                        if prev_phase == 1 then
                            kind = 1
                        elseif prev_phase == 4 then
                            kind = 1.5
                        end
                    end
                end
                selected_card = bounds(pack_interior,selected_card)
            elseif kind == 5 then
                if Keys.newPress.Y then
                    table.insert(active_enhancement,pack_cards_enhancements[selected_card])
                    table.insert(active,pack_cards[selected_card])
                    table.remove(pack_cards_enhancements,selected_card)
                    table.remove(pack_cards,selected_card)
                elseif Keys.newPress.B then
                    for i, v in ipairs(active) do
                        table.insert(pack_cards,v)
                        table.insert(pack_cards_enhancements,active_enhancement[i])
                    end
                    active = {}
                    active_enhancement = {}
                end
                selected_card = bounds(pack_cards,selected_card)
            elseif kind == 2 then
                if Keys.newPress.Y and #jokers>0 then
                    sell_jokers(jokers[selected_card],selected_card)
                end
                if Keys.newPress.B and #jokers>1 then
                    move_action(jokers,jokers_enhancement)
                end
                selected_card = bounds(jokers,selected_card)
            elseif kind == 3 then
                if Keys.newPress.B and #consumable>0 then
                    pack_cards,pack_cards_enhancements = use_consumable_non_target(pack_cards,pack_cards_enhancements)
                    if #active>0 and general_used == false then
                        active,active_enhancement,pack_cards,pack_cards_enhancements = use_consumable_target(active,active_enhancement,pack_cards,pack_cards_enhancements,consumable)
                    end
                elseif Keys.newPress.Y and #consumable>0 then
                    local consumable_cost = {["Planet"] = 2, ["Tarot"] = 3, ["Spectral"] = 4}
                    local shop_cost_position = consumable_cost[consumable_deck[consumable[selected_card]][2]]
                    cash = cash + math.floor(shop_costs[shop_cost_position]*discount_percent/2)
                    if consumable_enhancement[selected_card] == "Negative" then
                        consumable_size = consumable_size-1
                    end
                    table.remove(consumable_enhancement, selected_card)
                    table.remove(consumable, selected_card)
                end
                selected_card = bounds(consumable,selected_card)
            end
            card_details(kind)
            if Keys.newPress.Up then
                kind = kind+1
                selected_card = 1
            elseif Keys.newPress.Down then
                kind = kind-1
                selected_card = 1
            end
        
            if Keys.newPress.Left then
                selected_card = selected_card - 1
            elseif Keys.newPress.Right then
                selected_card = selected_card + 1
            end
            if Keys.newPress.X then--without buying
                for i,v in ipairs(jokers) do
                    pack_skip_jokers(v,i)
                end
                gameplay_phase = prev_phase
                selected_card = 1
                reset_deck()
                pack_interior = {}
                pack_interior_enhancement = {}
                pack_cards = {}
                pack_cards_enhancements = {}
                active = {}
                active_enhancement = {}
                if prev_phase == 4 then
                    kind = 1.5
                elseif prev_phase == 1 then
                    kind = 1
                end
            end
        elseif gameplay_phase == 5 then--game over
            screen.setAlpha(40)
            screen.drawFillRect(SCREEN_DOWN, 0, 0, 256, 192, Color.new256(0, 255, 0))
            screen.drawFillRect(SCREEN_UP, 80, 0, 256, 192, Color.new256(0, 255, 0))
            screen.setAlpha(100)
            screen.drawFillRect(SCREEN_DOWN, 31, 63, 228, 192, Color.new256(255, 255, 255))
            screen.drawFillRect(SCREEN_DOWN, 34, 64, 225, 96, Color.new256(49, 49, 51))
            screen.drawFillRect(SCREEN_DOWN, 32, 66, 227, 192, Color.new256(49, 49, 51))
            screen.drawFillRect(SCREEN_DOWN, 36, 66, 223, 96, Color.new256(39, 39, 46))
            screen.drawFillRect(SCREEN_DOWN, 36, 154, 223, 192, Color.new256(39, 39, 46))
            screen.print(SCREEN_DOWN, 54, 172, "PRESS A TO RETURN TO MENU", Color.new(31, 31, 31))
            local joker_graphic = Sprite.new(joker_graphics, 19, 28, VRAM)
            screen.blit(SCREEN_DOWN, 64, 112, card_graphic)
            joker_graphic:drawFrame(SCREEN_DOWN, 64, 112, 0)
            if win then
                screen.print(SCREEN_DOWN, 88, 118, "Good thing I didnt", Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 88, 128, "bet against you!", Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 106, 76, "YOU WIN!", Color.new(31, 31, 31))
                if Keys.newPress.A then
                    if ante == 8 then
                        gameplay_phase = 3.5
                    else
                        gameplay_phase = 1
                    end
                end
            else
                screen.print(SCREEN_DOWN, 88, 118, "We folded like a", Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 88, 128, "cheap suit!", Color.new(31, 31, 31))
                screen.print(SCREEN_DOWN, 96, 76, "YOU LOSE...", Color.new(31, 31, 31))
                if Keys.newPress.A then
                    gameplay_phase = 0
                    scene = "menu"
                    hard_reset()
                end
            end
        end
        if gameplay_phase ~= 2.5 then
            if first~= 0 then
                movement()
            end
        end
        collectgarbage()
    end
    render()
end
collectgarbage()
Sound.unloadSFX(1)--unload in reverse order
Sound.unloadSFX(0)
Sound.unloadMod(0)
Sound.unloadBank()
Image.destroy(logo)
Image.destroy(menubg)
Image.destroy(img_packs)
Image.destroy(shop_sheet)
Image.destroy(tutorial_sheet)
Image.destroy(blind_ui_box)
Image.destroy(blind_ui)
Image.destroy(hud)
Image.destroy(hudbg)
Image.destroy(joker_graphics)
for k,v in pairs(suit_graphics) do
    Image.destroy(v)
end
for k,v in pairs(rank_graphics) do
    Image.destroy(v)
end
Image.destroy(card_graphic)
collectgarbage()