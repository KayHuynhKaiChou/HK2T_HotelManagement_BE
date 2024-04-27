class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.bigint :type_room_id, null: false
      t.bigint :room_code, null: false
      t.bigint :floor, null: false
      t.string :description, null: false
      t.bigint :status, null: false
      t.timestamps
    end

    add_foreign_key :rooms, :type_rooms
  end
end
