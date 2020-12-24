class CreatePlastics < ActiveRecord::Migration[6.0]
  def change
    create_table :plastics do |t|
      t.integer :plastic_bags
      t.integer :coffee_cup
      t.integer :plastic_straw
      t.integer :six_pack_plastic_rings
      t.integer :plastic_water_bottle
      t.integer :coffee_pod
      t.integer :plastic_cup
      t.integer :disposable_diaper
      t.integer :plastic_toothbrush
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
