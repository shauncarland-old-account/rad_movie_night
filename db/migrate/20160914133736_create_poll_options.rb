class CreatePollOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :poll_options do |t|
      t.belongs_to :poll, index: true
      t.timestamps
    end

    add_reference :poll_options, :movie, foreign_key: true
  end
end
