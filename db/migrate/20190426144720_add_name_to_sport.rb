class AddNameToSport < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :name, :string
  end
end
