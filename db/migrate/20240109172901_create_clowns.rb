class CreateClowns < ActiveRecord::Migration[7.0]
  def change
    create_table :clowns do |t|
      t.string :name
      t.string :specialty
      t.float :shoe_size

      t.timestamps
    end
  end
end
