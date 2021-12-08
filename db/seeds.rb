puts 'Seeding Data'

5.times do
  User.create(
    name: Faker::Name.name,
    health: rand(1..10),
    score: 0,
    is_dead: false,
    room_id: 1,
  )
end

# Item.create(name: "TV", is_takeble: false, is_talkable: false, is_attackable: true, durability: 4.5, description: "The TV has the launch of a phallic shaped rocket playing on repeat")
# Item.create(name: "ּBook", is_takeble: true, is_talkable: false, is_attackable: true, durability: 1.5, description: "Dune, open to page 467 'The path of the righteous'")
# Item.create(name: "Switch", is_takeble: false, is_talkable: false, is_attackable: false, durability: 0, description: "You've overloaded the room with light")

# item seeding
Item.create(
  name: 'Window',
  is_takeable: false,
  description:
    "You look out the window, and realize you are among the stars. You can still see Earth, and judging from its distance, you have not been on this ship for too long. If you haven't figured it out already, you are on a space ship. How you got here? That's for you to figure out.",
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You slam the window, but it is too sturdy to break... which is probably for the best, because if it did break, you would be pulled into the cold vacuum of space.',
  durability: 0.0,
  catalyst_item: 0,
  catalyst_response: nil,
  exit_trigger: true,
  triggers_on: nil,
  death_trigger: nil,
)
Item.create(
  name: 'Cellmate',
  is_takeable: false,
  description:
    'The man in the room with you has grown out his hair and beard, and gives off a strong odor. He seems like he has been here for a while.',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    " 'You're awake already? Most of the poor souls that I've shared this cell with are still asleep by now. Consider yourself unlucky, as you'll probably be awake through it all. ...Me? I got picked up a few weeks, months, maybe years ago. I've been told I'm not a 'proper specimen,' I'm too tight for the probe./n 
  Anyway, they'll be in here any minute now to drag you away. Unless... you have any ideas? Between the two of us, there are plenty of classic 'break-out-of-jail' gambits we could pull.'/n
  1. Suggest he pretend to be sick-- you will call for help, and together you can overpower the guard./n
  2. Suggest a fake prison fight-- you will hit him, and the guard will come break it up. /n",
  talk_choice_1:
    "Your cellmate lays on the ground, moaning and wailing. 'My stomach! I'm backed up! I'm just too tight! Nothing gets through!' Weirdly specific, but if you call the guard, this will definitely distract him.",
  talk_choice_2:
    " 'It's been so long since I've felt anything that I welcome pain. Hit me as hard as you can, so I can feel the sublime ecstasy of pleasure. Go on, do it! ' ",
  is_attackable: true,
  attack_response:
    " You punch your cellmate in the face. 'My nose! You broke my nose! What is wrong with you?! Guard!!!' Blood flowing down his face, he calls for the guard-- a tall, smooth, grey alien, temporarily deactivates the laser wall with a Keycard and enters your cell. The Guard seems surprised to see you awake, so you have a chance to surprise him.",
  durability: 1.0,
  catalyst_item: 0,
  catalyst_response: nil,
  exit_trigger: true,
  triggers_on: nil,
  death_trigger: nil,
)
Item.create(
  name: 'Lasers',
  is_takeable: false,
  description:
    'A blazing hot infrared laser wall, meant to keep you inside this cell. Anything that attmempted to pass through it would likely be reduced to ashes.',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    'You run up to the laser wall and call for help. Moments later, a tall, smooth, grey alien uses a Keycard to temporarily deactivate the laser wall and enters your cell. The Guard seems surprised to see you awake, so you have a chance to surprise him.',
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You attempt to punch the laser wall, and your entire arm is incinerated. You catch on fire and die.',
  durability: 0.0,
  catalyst_item: 5,
  catalyst_response:
    'You wave your keycard at the Lasers, and they temporarily turn off. You may now EXIT the room freely.',
  exit_trigger: false,
  triggers_on: 'use',
  death_trigger: 'attack',
)
Item.create(
  name: 'Guard',
  is_takeable: false,
  description:
    "A tall, smooth, grey alien. Pretty generic as far as aliens go. Don't feel bad about attacking him, because they kidnapped you and were going to probe you. Also, he's a prison guard and ACAB.",
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    "You attempt to reason with the alien Guard. He seems to understand what you're saying-- perhaps these aliens have developed a universal translator. That being said, he does not seem particularly sympathetic to your situation. He shoots lasers from his eyes and you are burned alive. You die.",
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You punch the alien in the face. Your fist tears through his soft, jelly-like flesh and you pulverize his brain. He falls dead to the floor and drops his Keycard. These aliens may look scary, but luckily for you, seem to be exceptionally weak. ',
  durability: 0.0,
  catalyst_item: 0,
  catalyst_response: '',
  exit_trigger: false,
  triggers_on: 'attack',
  death_trigger: 'talk',
)

Item.create(
  name: 'Keycard',
  is_takeable: true,
  description:
    'A thin card held by the alien Guard. When waved at the laser wall, lowers the lasers and allows the holder to pass through.',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response: nil,
  durability: 0.0,
  catalyst_item: 0,
  catalyst_response: nil,
  exit_trigger: false,
  triggers_on: 'take',
  death_trigger: nil,
)
Item.create(
  name: 'Log',
  is_takeable: true,
  description:
    'The Log is open and has a diagram that clearly depicts the man on the table. The text is not English, but you can discern that the person lying on the table was probed, and was considered a non-viable specimen. There are some numbers sribbled on the margins. ',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: false,
  attack_response: nil,
  durability: 0.0,
  catalyst_item: true,
  catalyst_response: '',
  exit_trigger: false,
  triggers_on: 'inspect',
  death_trigger: nil,
)

Inventory.create(user_id: 1, item_id: 1, has: false)
Inventory.create(user_id: 1, item_id: 2, has: false)
Inventory.create(user_id: 1, item_id: 3, has: false)
Inventory.create(user_id: 2, item_id: 1, has: false)
Inventory.create(user_id: 2, item_id: 2, has: false)
Inventory.create(user_id: 2, item_id: 3, has: false)
Inventory.create(user_id: 3, item_id: 1, has: false)
Inventory.create(user_id: 3, item_id: 2, has: false)
Inventory.create(user_id: 3, item_id: 3, has: false)
Inventory.create(user_id: 4, item_id: 1, has: false)
Inventory.create(user_id: 4, item_id: 2, has: false)
Inventory.create(user_id: 4, item_id: 3, has: false)
Inventory.create(user_id: 5, item_id: 1, has: false)
Inventory.create(user_id: 5, item_id: 2, has: false)
Inventory.create(user_id: 5, item_id: 3, has: false)

#Room seeding
Room.create(
  name: 'Cell',
  description:
    'You open your eyes, awakening from a slumber. You feel groggy, and you do not recognize the place you are in. Your cellphone has no service. Beneath you, you feel the silent hum of an engine; the floors and walls are made of metal, but for one wall which seems to be made of powerful Lasers. You seem to be in some sort of cell. Additionally, the room has one Window and there seems to be a man, perhaps your Cellmate, babbling to himself nearby.',
  death_threshold: 5,
  death_threshold_met:
    'Two tall, grey, smooth aliens enter the room, one wearing a military like garb and the other a lab coat. They are surprised to see you awake, but do not panic. The one in military garb points a small device at you, and you experience a quick shock followed by full-body-paralysis. They carry you through the alien ship and to a laboratory like room, where you are probed. You do not survive the process. You are dead.',
)
Room.create(
  name: 'Laboratory',
  description:
    'After stumbling through the disorienting labrynth of the ship, and attempting many doors you finally arrive on one that is ajar. You enter, the first thing that jumps out to you in the clearly Deadman lying on some sort of inspection table. Scanning the room you see a Teleporting station, a Log, a Computer, and a Stungun',
  death_threshold: 5,
  death_threshold_met:
    'You hear a frenzy of radio chatter outside, and realize you are surrounded. Frantically you rush towards the teleporter and press the big red "Beam me up" button. The last thing you hear is "Human butthole dectected, malfunctioning" You do not survive the process. You are dead.',
)

ItemLocation.create(item_id: 1, room_id: 1, is_in: true)
ItemLocation.create(item_id: 2, room_id: 1, is_in: true)
ItemLocation.create(item_id: 3, room_id: 1, is_in: true)
ItemLocation.create(item_id: 4, room_id: 1, is_in: true)
ItemLocation.create(item_id: 5, room_id: 1, is_in: true)

puts 'done seeding'
