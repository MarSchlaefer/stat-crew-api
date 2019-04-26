class RemoveMascotFromSport < ActiveRecord::Migration[5.2]
  def change
    remove_column :sports, :mascot, :string
    remove_column :sports, :school, :string
  end
end
