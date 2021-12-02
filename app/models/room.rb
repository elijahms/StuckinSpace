class Room < ActiveRecord::Base
    has_many :item_locations
    has_many :items, through: :item_locations
end 