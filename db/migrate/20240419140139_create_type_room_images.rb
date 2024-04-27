class CreateTypeRoomImages < ActiveRecord::Migration[7.1]
  def change
    create_table :type_room_images do |t|
      t.bigint :type_room_id, null: false
      t.string :link, null: false
      t.timestamps
    end

    add_foreign_key :type_room_images , :type_rooms
  end
end
