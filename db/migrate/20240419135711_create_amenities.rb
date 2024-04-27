class CreateAmenities < ActiveRecord::Migration[7.1]
  def change
    create_table :amenities do |t|
      t.string :name, null: false
      t.bigint :status, null: false, default: 1
      t.timestamps
    end
  end
end
