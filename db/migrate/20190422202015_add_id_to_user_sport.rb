class AddIdToUserSport < ActiveRecord::Migration[5.2]
  def change
    add_column :user_sports, :user_id, :integer
    add_column :user_sports, :sport_id, :integer
  end
end
