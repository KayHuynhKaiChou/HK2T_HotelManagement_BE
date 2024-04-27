class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.bigint :user_id, null: false
      t.bigint :room_service_id, null: false
      t.datetime :checkin_at, null: false
      t.datetime :checkout_at, null: false
      t.string :status, null: false
      t.timestamps
    end

    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :room_services
  end
end
