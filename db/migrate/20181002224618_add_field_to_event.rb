class AddFieldToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :field, foreign_key: true
  end
end
