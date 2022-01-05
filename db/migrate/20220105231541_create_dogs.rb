class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :weight
      t.string :sex
      t.integer :age

      t.timestamps
    end
  end
end
