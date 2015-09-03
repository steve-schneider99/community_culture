class AddPointsToUsersClassifieds < ActiveRecord::Migration
  def change
    add_column :users, :points_balance, :integer
    add_column :users, :points_earned, :integer
    add_column :users, :points_spent, :integer
    add_column :classifieds, :point_value, :integer
  end
end
