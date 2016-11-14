class AddIsOpenToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :is_open, :boolean
  end
end
