class CreateRoomServices < ActiveRecord::Migration[7.1]
  def change
    create_table :room_services do |t|
      t.bigint :service_id, null: false
      t.bigint :room_id, null: false
      t.bigint :quantity, null: false
      t.string :status, null: false
      t.datetime :order_at, null: false
      t.timestamps
    end

    add_foreign_key :room_services, :rooms
    add_foreign_key :room_services, :services
  end
end
