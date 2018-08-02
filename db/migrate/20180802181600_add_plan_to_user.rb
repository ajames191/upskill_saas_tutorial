class AddPlanToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :plan_id, :integer #add a column to the users table and name it plan_id (either basic or pro plan). There will be an integer for a plan ID, e.g. 1 or 2
  end
end
