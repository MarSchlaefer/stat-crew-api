class CreateUserSports < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sports do |t|

      t.timestamps
    end
  end
end
