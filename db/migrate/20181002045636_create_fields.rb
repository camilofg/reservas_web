class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.integer :number
      t.integer :size
      t.boolean :roofed
      t.boolean :illuminated

      t.timestamps
    end
  end
end
