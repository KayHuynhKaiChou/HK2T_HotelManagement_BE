class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.bigint :price, null: false
      t.bigint :type, null: false
      t.timestamps
    end
  end
end
