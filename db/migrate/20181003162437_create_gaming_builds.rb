class CreateGamingBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :gaming_builds do |t|
      t.string :price_category
      t.integer :cpu
      t.integer :motherboard
      t.integer :ram
      t.integer :hdd
      t.integer :gpu
      t.integer :case
      t.integer :psu

      t.timestamps
    end
  end
end
