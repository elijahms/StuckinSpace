puts "Seeding Data"

5.times do
    User.create(name: Faker::Name.name, health: rand(1..10), score: 0,is_dead: false, room_id: 1)
end



Item.create(name: "TV", is_takeble: false, is_talkable: false, is_attackable: true, durability: 4.5, description: "The TV has the launch of a phallic shaped rocket playing on repeat")
Item.create(name: "ּBook", is_takeble: true, is_talkable: false, is_attackable: true, durability: 1.5, description: "Dune, open to page 467 'The path of the righteous'")
Item.create(name: "Switch", is_takeble: false, is_talkable: false, is_attackable: false, durability: 0, description: "You've overloaded the room with light")

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

puts "done seeding"