class AddModeratorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :moderator, :bollean, default: false
  end
end
