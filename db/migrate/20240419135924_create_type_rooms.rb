class CreateTypeRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :type_rooms do |t|
      t.string :title, null: false
      t.bigint :type, null: false
      t.bigint :adult_capacity, null: false
      t.bigint :kids_capacity, null: false
      t.bigint :base_price, null: false
      t.bigint :status, null: false, default: 1
      t.timestamps
    end

  end
end
