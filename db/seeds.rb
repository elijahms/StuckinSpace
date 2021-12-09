puts 'Seeding Data'

5.times do
  User.create(
    name: Faker::Name.name,
    health: rand(1..10),
    score: 0,
    is_dead: false,
    room_id: 1,
    minutes_in_game: 0,
    second_in_game: 0,
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
    " 'You're awake already? Most of the poor souls that I've shared this cell with are still asleep by now. Consider yourself unlucky, as you'll probably be awake through it all. ...Me? I got picked up a few weeks, months, maybe years ago. I've been told I'm not a 'proper specimen,' I'm too tight for the probe. \n 
  Anyway, they'll be in here any minute now to drag you away. Unless... you have any ideas? Between the two of us, there are plenty of classic 'break-out-of-jail' gambits we could pull.' \n
  1. Suggest he pretend to be sick-- you will call for help, and together you can overpower the guard. \n
  2. Suggest a fake prison fight-- you will hit him, and the guard will come break it up.",
  talk_choice_1:
    "Your cellmate lays on the ground, moaning and wailing. 'My stomach! I'm backed up! I'm just too tight! Nothing gets through!' Weirdly specific, but if you call the guard, this will definitely distract him.",
  talk_choice_2:
    " 'It's been so long since I've felt anything that I welcome pain. Hit me as hard as you can, so I can feel the sublime ecstasy of pleasure. Go on, do it! ' ",
  is_attackable: true,
  attack_response:
    " You punch your cellmate in the face. 'My nose! You broke my god damn nose! What is wrong with you?! Guard!!!' Blood flowing down his face, he calls for the guard: a tall, smooth, grey alien temporarily deactivates the laser wall with a Keycard and enters your cell. The Guard seems surprised to see you awake, so you have a chance to surprise him.",
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
    'You wave your Keycard at the Lasers, and they temporarily turn off. You may now EXIT the room freely.',
  exit_trigger: false,
  triggers_on: 'use',
  death_trigger: 'attack',
)
Item.create(
  name: 'Guard',
  is_takeable: false,
  description:
    "A tall, smooth, grey alien. Pretty generic as far as aliens go. Don't feel bad about attacking him, because they abducted you and were going to probe you. Also, he's a prison guard. ACAB.",
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    "You attempt to reason with the alien Guard. He seems to understand what you're saying-- perhaps these aliens have developed a universal translator. That being said, he does not seem particularly sympathetic to your situation. He shoots lasers from his eyes and you are burned alive. You die.",
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You punch the alien Guard in the face. Your fist tears through his soft, jelly-like flesh and you pulverize his brain. He falls dead to the floor and drops his Keycard. These aliens may look scary, but luckily for you, seem to be exceptionally weak.',
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
    'A thin card held by the alien Guard. When waved at the laser wall, lowers the Lasers and allows the holder to pass through.',
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
  name: 'Body',
  is_takeable: false,
  description:
    "The Body sprawled out on the table died with a smirk on his face, despite his cruel fate. His stomach has been cut open, and many organs have been removed. But even in this state, you can tell that this man was once quite handsome and, if you're checking, well-endowed. There seems to be something bulging out of a corner of his stomach.",
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    'You attempt to speak to the dead body, but there is no response. Not sure what you were expecting--a witty retort?',
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response: 'You attack the dead body. It does not fight back.',
  durability: 0.0,
  catalyst_item: 7,
  catalyst_response:
    "You cut the body open with the surgical Knife, and inside of the body's stomach, discover a USB.",
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Knife',
  is_takeable: true,
  description: 'A surgical Knife, presumably used for dissections.',
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
  catalyst_response: nil,
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'USB',
  is_takeable: true,
  description:
    'A USB-C drive, discovered hidden in the body of the dissected human. Why would it be there?',
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
  catalyst_response: nil,
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Desk',
  is_takeable: false,
  description:
    'A Desk, made of a foreign alien metal. On top of it sits a Computer. There a few empty drawers, and one locked drawer. You do not see a key for it anywhere nearby, but perhaps you could force it open.',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You smash the Desk, and try to rip open the desk drawer. After a few attempts, you force it open. Inside, you see various valuables collected from dissected humans. Most notably, a Wallet and an Omega Watch.',
  durability: 0.0,
  catalyst_item: 5,
  catalyst_response:
    "You wave the guard's Keycard near the locked drawer, and it pops open. Inside, you see various valuables collected from dissected humans. Most notably, a Wallet and an Omega Watch.",
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Watch',
  is_takeable: true,
  description:
    "A platinum Watch, very expensive, definitely out of your price range. It ticks and tells time, but seems to have a number of knobs and buttons whose functions you don't recognize.",
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
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Wallet',
  is_takeable: true,
  description:
    'A leather Wallet containing several passports with different identities, and £50,000 cash.',
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
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Computer',
  is_takeable: false,
  description:
    'An alien Computer, closely resembling the kind found on Earth. The information on the screen is in alien characters, so you cannot navigate through it. It does, weirdly enough, have a USB-C slot.',
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    "You attack the computer. Yes, 'the files are in the computer', but that's not the way to get them out.",
  durability: 0.0,
  catalyst_item: 8,
  catalyst_response:
    "You insert the USB-C drive into the Computer, and a message in English begins to display on the screen: \n
  Bond, \n
  If you're reading this message, the plan to have you abducted has gone swimmingly. I hope the USB drive didn't give you too much trouble coming out the other end. The information from the alien Computer has been downloaded to this drive, which will give us a great advantage in preventing future abductions. You have served Queen and Country again, now use the Teleporter and escape the ship. If you run into any of the buggers-- remember your Watch, it's quite an eyesore. \n God speed, James. \n -Q",
  exit_trigger: true,
  triggers_on: '',
  death_trigger: nil,
)
Item.create(
  name: 'Teleporter',
  is_takeable: false,
  description:
    "The teleporter, an impressive piece of alien technology. A touch screen with a blueprint of the ship determines your destination, currently set to the Airlock and Escape Pods, conveniently for you. Inconvenient however-- the Teleporter seems to be on the fritz; sparks and static seem to be coming from the machine. \n 1. Use the Teleporter \n 2. Reconsider",
  inspect_choice_1:
    "Hearing the steps of nearby aliens, you know you don't have time to worry about the state of the Teleporter. You hit the START button, ready to escape, but as it begins to whirr, smoke comes out of the machine and the machine reduces you to a pile of fleshy goop on the floor. You are dead.",
  inspect_choice_2:
    'You do not use the Teleporter. Is there a reliable, old fashioned way to get a complicated piece of tech working?',
  is_talkable: false,
  talk_response: nil,
  talk_choice_1: nil,
  talk_choice_2: nil,
  is_attackable: true,
  attack_response:
    'You smack the teleporter a few times, and all the sparks and static cease. It seems to be back to working perfectly. You may now EXIT the room.',
  durability: 0.0,
  catalyst_item: 8,
  catalyst_response:
    'You attempt to insert the USB-C drive into the Teleporter, but it only has USB-A and CD-ROM. Technology can be a pain in the butt. ',
  exit_trigger: false,
  triggers_on: 'attack',
  death_trigger: 1,
)
Item.create(
  name: 'Crew',
  is_takeable: false,
  description:
    "The alien Crew. Over a dozen-- they do not carry weapons but their eyes are glowing and fixed on your location. They have you surrounded in all directions, blocking your way to the ship's exit. They await your surrender.",
  inspect_choice_1: nil,
  inspect_choice_2: nil,
  is_talkable: true,
  talk_response:
    "There's no version of this where you make it out alive. Even if you had made it to the Escape Pods, our auto targeting system would blow you to pieces. Surrender or die, human scum. The road ends here. You are stuck in space. \n
  1. Surrender to the aliens and accept the probe \n
  2. Make a defiant quip and buy yourself some time",
  talk_choice_1:
    "'You've made a wise choice, human scum. The experiments we perform on your colon will lead to great innovations for our people.' \n 
  As the aliens accept your surrender, the glow in their eyes lessens. You may have bought yourself another moment.",
  talk_choice_2:
    'You search your mind for a moment, trying to think of the perfect quip. It is hard to be clever on demand.',
  is_attackable: true,
  attack_response:
    "You punch the nearest alien in the face; your fist tears through his soft, jelly-like flesh. You swing on two more aliens, destroying them instantly. But there are still many to deal with and one alien gives the order: 'Fire.'\n
    The alien Crew focuses on your with their glowing eyes, and they shoot red hot glowing lasers from their pupils. You are vaporized by the aliens' eye lasers. You are dead.",
  durability: 0.0,
  catalyst_item: 10,
  catalyst_response:
    "You take out the Watch you found earlier, frantically turning dials and pushing buttons. The face of the Watch displays a message: 'Device Armed.' \n
    You push down on the dial and a blinding white flash fills the room. Alien screams echo through the hallway, as their glowing eyes explode and set fire to the rest of their bodies. You think of the perfect quip: 'I thought you only had eyes for me.' \n Every alien in sight is dead-- you may now EXIT the hallway and head for the Escape Pods and Airlock.",
  exit_trigger: false,
  triggers_on: 'use',
  death_trigger: 'attack',
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
    'Beneath you, you feel the silent hum of an engine; the floors and walls are made of metal, but for one wall which seems to be made of powerful Lasers. You seem to be in some sort of cell. Additionally, the room has one Window and there seems to be a man, perhaps your Cellmate, babbling to himself nearby.',
  death_threshold: 5,
  death_threshold_met:
    'Two tall, grey, smooth aliens enter the room, one wearing a military like garb and the other a lab coat. They are surprised to see you awake, but do not panic. The one in military garb points a small device at you, and you experience a quick shock followed by full-body-paralysis. They carry you through the alien ship and to a laboratory like room, where you are probed. You do not survive the process. You are dead.',
  intro_description:
    'You open your eyes, awakening from a slumber. You feel groggy, and you do not recognize the place you are in. Your cellphone has no service. Beneath you, you feel the silent hum of an engine; the floors and walls are made of metal, but for one wall which seems to be made of powerful Lasers. You seem to be in some sort of cell. Additionally, the room has one Window and there seems to be a man, perhaps your Cellmate, babbling to himself nearby.',
)
Room.create(
  name: 'Laboratory',
  description:
    "You find yourself in some sort of Laboratory--a dissected human Body is displayed on a surgical table next to a surgical Knife and other instruments. Nearby is a scientist's Desk, on it a Computer. On the other end of the room, you see a device that resembles the classic Star Trek 'beam me up Scotty' Teleporter, with a blueprint of the ship on a screen.",
  death_threshold: 10,
  death_threshold_met:
    'You hear a pounding on the door, followed by a long silence. Just as you think you are safe, the vents in the room let out a green gas, that in addition to killing you, smells quite terrible.',
  intro_description:
    "You've escaped your cell, but hear the footsteps of more aliens quickly approaching. You open the door to the nearest room and shut the door behind you. You find yourself in some sort of Laboratory--a dissected human Body is displayed on a surgical table next to a surgical Knife and other instruments. Nearby is a scientist's Desk, on it a Computer. On the other end of the room, you see a device that resembles the classic Star Trek 'beam me up Scotty' Teleporter, with a blueprint of the ship on a screen.",
)

Room.create(
  name: 'Hallway',
  description:
    "You are in a hallway. The door to the ship's Escape Pods and Airlock is across from you, but blocked by a large number of the alien Crew. They have you surrounded in all directions. They are too numerous to fight off.",
  death_threshold: 3,
  death_threshold_met: '',
  intro_description:
    "You emerge from the Teleporter--the feeling of your molecules being disassembled and reassembled was unnerving but all things considered, quite seamless. You are in a hallway, and across from you is the door to the Escape Pods and Airlock. Standing between you and salvation, however, is a large number of the ship's alien Crew. One of them speaks to you: \n 'You have done well to make it this far, human scum. But this is the end of the road for you. Surrender or die.",
)

ItemLocation.create(item_id: 1, room_id: 1, is_in: true)
ItemLocation.create(item_id: 2, room_id: 1, is_in: true)
ItemLocation.create(item_id: 3, room_id: 1, is_in: true)
ItemLocation.create(item_id: 4, room_id: 1, is_in: true)
ItemLocation.create(item_id: 5, room_id: 1, is_in: true)
ItemLocation.create(item_id: 6, room_id: 2, is_in: true)
ItemLocation.create(item_id: 7, room_id: 2, is_in: true)
ItemLocation.create(item_id: 8, room_id: 2, is_in: true)
ItemLocation.create(item_id: 9, room_id: 2, is_in: true)
ItemLocation.create(item_id: 10, room_id: 2, is_in: true)
ItemLocation.create(item_id: 11, room_id: 2, is_in: true)
ItemLocation.create(item_id: 12, room_id: 2, is_in: true)
ItemLocation.create(item_id: 13, room_id: 2, is_in: true)

puts 'done seeding'
