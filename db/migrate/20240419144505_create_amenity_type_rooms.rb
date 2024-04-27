class CreateAmenityTypeRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :amenity_type_rooms do |t|
      t.bigint :type_room_id, null: false
      t.bigint :amenity_id, null: false
      t.timestamps
    end

    add_foreign_key :amenity_type_rooms , :type_rooms
    add_foreign_key :amenity_type_rooms , :amenities
  end
end
