class AddCatsToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :cats, :string
  end
end
