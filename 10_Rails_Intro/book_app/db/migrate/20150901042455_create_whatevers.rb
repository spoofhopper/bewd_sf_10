class CreateWhatevers < ActiveRecord::Migration
  def change
    create_table :whatevers do |t|
      t.string :title
      t.integer :year
      t.boolean :available

      t.timestamps null: false
    end
  end
end
