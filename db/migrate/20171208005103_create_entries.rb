class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :text
      t.integer :year

      t.timestamps
    end
  end
end
