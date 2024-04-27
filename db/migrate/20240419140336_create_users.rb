class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :firstname, null: false
      t.string :surname, null: false
      t.string :city, null: false
      t.string :district, null: false
      t.string :ward, null: false
      t.string :address, null: false
      t.bigint :id_card, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.datetime :birth_day, null: false
      t.string :gender, null: false
      t.bigint :position, null: false
      t.bigint :salary
      t.string :link_avatar, null: false
      t.timestamps
    end
  end
end
