class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :firstname, null: false
      t.string :surname, null: false
      t.string :city
      t.string :district
      t.string :ward
      t.string :address
      t.bigint :id_card
      t.string :email, null: false
      t.string :password_digest, null: false
      t.datetime :birth_day
      t.bigint :gender
      t.bigint :position, null: false
      t.bigint :salary
      t.string :link_avatar
      t.timestamps
    end
  end
end
